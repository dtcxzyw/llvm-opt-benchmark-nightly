Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE23rebalance_right_to_leftEiPSH_PSF_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.f ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !123
  store i32 %i.l, ptr %i.i, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !30
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.p, ptr %i.m, align 8, !tbaa !25
  %i.w = load i64, ptr %i.q, align 8, !tbaa !26
  store i64 %i.w, ptr %i.o, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !29
  store ptr %i.q, ptr %i.n, align 8, !tbaa !25
  store i64 0, ptr %i.x, align 8, !tbaa !29
  store i8 0, ptr %i.q, align 8, !tbaa !26
  %i.aa = add nsw i32 %1, -1                      ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %.not14.i = icmp eq i32 %i.aa, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %i.ae = load i8, ptr %i.a, align 2, !tbaa !26
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.af
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.016.i.pn = phi ptr [ %.016.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.ag, %.lr.ph.preheader.i ] ; 4 uses
  %.01215.i = phi ptr [ %i.aw, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.ac, %.lr.ph.preheader.i ] ; 6 uses
  %.016.i = getelementptr inbounds nuw i8, ptr %.016.i.pn, i64 40 ; 2 uses
  %i.ah = load i32, ptr %.01215.i, align 8, !tbaa !123
  store i32 %i.ah, ptr %.016.i, align 8, !tbaa !123
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i.pn, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.016.i.pn, i64 64 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !30
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01215.i, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43

bb.c:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43: ; preds = %.lr.ph.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !25
  %i.as = load i64, ptr %i.am, align 8, !tbaa !26
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.016.i.pn, i64 56
  store i64 %i.au, ptr %i.av, align 8, !tbaa !29
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !25
  store i64 0, ptr %i.at, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.ad
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !3

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !56
  %i.ay = load i8, ptr %i.d, align 8, !tbaa !26
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.az ; 4 uses
  %i.bc = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.ab ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !123
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !30
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !25 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46

bb.d:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !25
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !26
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !29
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !25
  store i64 0, ptr %i.bp, align 8, !tbaa !29
  store i8 0, ptr %i.bi, align 8, !tbaa !26
  %i.bs = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = sub nsw i32 %i.bu, %1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = sext i32 %1 to i64                      ; 2 uses
  %i.by = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.bx ; 2 uses
  %.idx.i50 = mul nuw nsw i64 %i.bw, 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i50
  %.not14.i51 = icmp eq i32 %1, %i.bu
  br i1 %.not14.i51, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit60, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58
  %.016.i55 = phi ptr [ %i.cq, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58 ], [ %i.ac, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48 ] ; 5 uses
  %.01215.i56 = phi ptr [ %i.cp, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58 ], [ %i.by, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48 ] ; 6 uses
  %i.ca = load i32, ptr %.01215.i56, align 8, !tbaa !123
  store i32 %i.ca, ptr %.016.i55, align 8, !tbaa !123
  %i.cb = getelementptr inbounds nuw i8, ptr %.016.i55, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01215.i56, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.016.i55, i64 24 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !30
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01215.i56, i64 24 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57

bb.e:                                             ; preds = %.lr.ph.i54
  %i.ch = getelementptr inbounds nuw i8, ptr %.01215.i56, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57: ; preds = %.lr.ph.i54
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !25
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !26
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %.01215.i56, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !29
  %i.co = getelementptr inbounds nuw i8, ptr %.016.i55, i64 16
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !29
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !25
  store i64 0, ptr %i.cm, align 8, !tbaa !29
  store i8 0, ptr %i.cf, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %.01215.i56, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.016.i55, i64 40
  %.not.i59 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i59, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit60, label %.lr.ph.i54, !llvm.loop !3

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit60: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i58, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit48
  %i.cr = getelementptr i8, ptr %0, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !26
  %.not.i61 = icmp eq i8 %i.cs, 0
  br i1 %.not.i61, label %.preheader62, label %.loopexit

.preheader62:                                     ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit60
  %i.ct = icmp sgt i32 %1, 0
  br i1 %i.ct, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader62
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cw = icmp eq i32 %1, 1
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.cx = load i8, ptr %i.a, align 2, !tbaa !26
  %i.cy = zext i8 %i.cx to i32
  %i.cz = trunc i64 %indvars.iv.epil.init to i32
  %i.da = add i32 %i.cz, 1
  %i.db = add nuw nsw i32 %i.da, %i.cy            ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.epil.init
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 3 uses
  %i.de = zext nneg i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.de
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !56
  %i.dg = trunc i32 %i.db to i8
  %i.dh = getelementptr i8, ptr %i.dd, i64 8
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !26
  store ptr %0, ptr %i.dd, align 8, !tbaa !56
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader62
  %i.di = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.dj = zext i8 %i.di to i32
  %.not64 = icmp sgt i32 %1, %i.dj
  br i1 %.not64, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.dk, i64 %i.bx
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.dl = load i8, ptr %i.a, align 2, !tbaa !26
  %i.dm = zext i8 %i.dl to i32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.do = add nuw nsw i32 %i.dn, %i.dm            ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !56 ; 3 uses
  %i.dr = zext nneg i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !56
  %i.dt = trunc i32 %i.do to i8
  %i.du = getelementptr i8, ptr %i.dq, i64 8
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !26
  store ptr %0, ptr %i.dq, align 8, !tbaa !56
  %i.dv = load i8, ptr %i.a, align 2, !tbaa !26
  %i.dw = zext i8 %i.dv to i32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dy = add nuw nsw i32 %i.dx, %i.dw            ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56 ; 3 uses
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !56
  %i.ed = trunc i32 %i.dy to i8
  %i.ee = getelementptr i8, ptr %i.ea, i64 8
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !26
  store ptr %0, ptr %i.ea, align 8, !tbaa !56
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !356

bb.g:                                             ; preds = %.lr.ph66, %bb.g
  %indvars.iv68 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next69, %bb.g ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv68
  %i.ef = load ptr, ptr %gep, align 8, !tbaa !56  ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv68
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !56
  %i.eh = trunc i64 %indvars.iv68 to i8
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !26
  store ptr %2, ptr %i.ef, align 8, !tbaa !56
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %i.ej = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 %i.ek, %1
  %i.em = sext i32 %i.el to i64
  %.not.not = icmp slt i64 %indvars.iv68, %i.em
  br i1 %.not.not, label %bb.g, label %.loopexit, !llvm.loop !357

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit60
  %i.en = load i8, ptr %i.a, align 2, !tbaa !26
  %i.eo = trunc i32 %1 to i8                      ; 2 uses
  %i.ep = add i8 %i.en, %i.eo
  store i8 %i.ep, ptr %i.a, align 2, !tbaa !26
  %i.eq = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.er = sub i8 %i.eq, %i.eo
  store i8 %i.er, ptr %i.bs, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE23rebalance_left_to_rightEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26    ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = shl nuw nsw i64 %i.c, 32
  %sext.i = add nsw i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %.idx.i = mul nsw i64 %i.c, -40
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %.not16.i = icmp eq i8 %i.b, 0
  br i1 %.not16.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %i.j = add nuw nsw i64 %i.c, %i.i
  %i.k = shl i64 %i.j, 32
  %sext15.i = add i64 %i.k, -4294967296
  %i.l = ashr exact i64 %sext15.i, 32
  %i.m = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.018.i = phi ptr [ %i.ad, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.m, %.lr.ph.preheader.i ] ; 5 uses
  %.01417.i = phi ptr [ %i.ac, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.g, %.lr.ph.preheader.i ] ; 6 uses
  %i.n = load i32, ptr %.01417.i, align 8, !tbaa !123
  store i32 %i.n, ptr %.018.i, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !30
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01417.i, i64 24 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !25
  %i.y = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.y, ptr %i.q, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !29
  store ptr %i.s, ptr %i.p, align 8, !tbaa !25
  store i64 0, ptr %i.z, align 8, !tbaa !29
  store i8 0, ptr %i.s, align 8, !tbaa !26
  %i.ac = getelementptr inbounds i8, ptr %.01417.i, i64 -40 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.018.i, i64 -40
  %.not.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !4

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %bb.a
  %i.ae = add nsw i32 %1, -1                      ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !56
  %i.ak = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.af ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ai ; 5 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !123
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !30
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !25
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
  %4 = and i64 %i.dc, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f
  %i.de = add nsw i64 %i.dc, %i.dd                ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !56 ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.de
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !56
  %i.di = trunc i64 %i.de to i8
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !26
  store ptr %2, ptr %i.dg, align 8, !tbaa !56
  %indvars.iv.next.prol = add nsw i64 %i.dc, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.f
  %indvars.iv.unr = phi i64 [ %i.dc, %bb.f ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i8 %i.da, 0
  br i1 %i.dk, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4462 = icmp slt i32 %1, 1
  br i1 %.not4462, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %5 = zext nneg i32 %1 to i64                    ; 2 uses
  %xtraiter82 = and i64 %5, 1
  %i.dm = icmp eq i32 %1, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %5, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.g

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.dn = add nsw i64 %indvars.iv, %i.dd          ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56 ; 3 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dn
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !56
  %i.dr = trunc i64 %i.dn to i8
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !26
  store ptr %2, ptr %i.dp, align 8, !tbaa !56
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dt = add nsw i64 %indvars.iv.next, %i.dd     ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56 ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dt
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !56
  %i.dx = trunc i64 %i.dt to i8
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !26
  store ptr %2, ptr %i.dv, align 8, !tbaa !56
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !358

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.dz = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.ea = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.eb = zext i8 %i.ea to i32
  %i.ec = trunc i64 %indvars.iv65 to i32
  %i.ed = sub i32 %i.ec, %1
  %i.ee = add i32 %i.ed, %i.eb
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !56 ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dz
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !56
  %i.ej = trunc i64 %i.dz to i8
  %i.ek = getelementptr i8, ptr %i.eh, i64 8
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !26
  store ptr %2, ptr %i.eh, align 8, !tbaa !56
  %i.el = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.em = zext i8 %i.el to i32
  %i.en = trunc i64 %indvars.iv65 to i32
  %.reass = add i32 %i.en, %invariant.op
  %i.eo = add i32 %.reass, %i.em
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !56 ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv65
  store ptr %i.er, ptr %i.es, align 8, !tbaa !56
  %i.et = trunc i64 %indvars.iv65 to i8
  %i.eu = getelementptr i8, ptr %i.er, i64 8
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !26
  store ptr %2, ptr %i.er, align 8, !tbaa !56
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
  %i.ev = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.ew = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.ex = zext i8 %i.ew to i32
  %i.ey = trunc i64 %indvars.iv65.epil.init to i32
  %i.ez = sub i32 %i.ey, %1
  %i.fa = add i32 %i.ez, %i.ex
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !56 ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ev
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !56
  %i.ff = trunc i64 %i.ev to i8
  %i.fg = getelementptr i8, ptr %i.fd, i64 8
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !26
  store ptr %2, ptr %i.fd, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit59
  %i.fh = load i8, ptr %i.bc, align 2, !tbaa !26
  %i.fi = trunc i32 %1 to i8                      ; 2 uses
  %i.fj = sub i8 %i.fh, %i.fi
  store i8 %i.fj, ptr %i.bc, align 2, !tbaa !26
  %i.fk = load i8, ptr %i.a, align 1, !tbaa !26
  %i.fl = add i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %i.a, align 1, !tbaa !26
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
end_hunk_0
begin_hunk_1_@_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERiPiEE:bb.a
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !83
  %i.ce = getelementptr i8, ptr %i.cd, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !26
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = icmp sgt i32 %i.cc, %i.cg
  br i1 %i.ch, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ci = xor i32 %i.cg, -1
  %i.cj = add nsw i32 %i.cc, %i.ci
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink118 = phi i32 [ %i.bg, %bb.k ], [ %i.ac, %bb.f ], [ %i.cj, %bb.t ]
  %.sink = phi ptr [ %i.aj, %bb.k ], [ %i.j, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink118, ptr %i.a, align 8, !tbaa !28
  store ptr %.sink, ptr %1, align 8, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = zext i8 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %sext.i = shl nuw nsw i64 %i.e, 2               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %sext.i ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %sext4.i = shl nuw nsw i64 %i.h, 2              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %sext4.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  store i32 %i.n, ptr %i.k, align 4, !tbaa !28
  %i.o = add nsw i32 %1, -1                       ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  %.idx.i = shl nsw i64 %i.p, 2
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i ; 2 uses
  %.not14.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.s = sext i32 %1 to i64
  %i.t = add nsw i64 %i.s, 4611686018427387902
  %i.u = and i64 %i.t, 4611686018427387903        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.w = add i64 %sext.i, %i.b
  %i.x = sub i64 %i.w, %i.a
  %i.y = add i64 %i.x, 3
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %.lr.ph.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !28
  %wide.load68 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ad, align 4, !tbaa !28
  store <4 x i32> %wide.load68, ptr %i.af, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.016.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01215.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.016.i.pn = phi ptr [ %.016.i, %.lr.ph.i ], [ %.016.i.pn.ph, %.lr.ph.i.preheader88 ]
  %.01215.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01215.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %.016.i = getelementptr inbounds nuw i8, ptr %.016.i.pn, i64 4 ; 2 uses
  %i.ah = load i32, ptr %.01215.i, align 4, !tbaa !28
  store i32 %i.ah, ptr %.016.i, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !369

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.f, align 8, !tbaa !26
  %.pre65 = zext i8 %.pre to i64
  %.pre66 = shl nuw nsw i64 %.pre65, 2
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %sext.i43.pre-phi = phi i64 [ %.pre66, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %sext4.i, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %sext.i43.pre-phi
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !28
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !28
  %i.al = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26  ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = sub nsw i32 %i.an, %1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sext i32 %1 to i64                      ; 3 uses
  %i.ar = shl nsw i64 %i.aq, 2                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar ; 4 uses
  %.idx.i46 = shl nuw nsw i64 %i.ap, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i46
  %.not14.i47 = icmp eq i32 %1, %i.an
  br i1 %.not14.i47, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.au = zext i8 %i.am to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = add nsw i64 %i.av, -4
  %i.ax = sub nsw i64 %i.aw, %i.ar                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.ax, 60
  %i.ba = shl nsw i64 %i.aq, 2
  %diff.check71 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check73, i1 true, i1 %diff.check71
  br i1 %or.cond, label %.lr.ph.i50.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i50.preheader
  %n.vec75 = and i64 %i.az, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.q, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.bb
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.be = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.q, i64 %i.be ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !28
  %wide.load81 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 4, !tbaa !28
  store <4 x i32> %wide.load81, ptr %i.bg, align 4, !tbaa !28
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.bh, label %middle.block83, label %vector.body76, !llvm.loop !370

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.az, %n.vec75
  br i1 %cmp.n84, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50.preheader87

.lr.ph.i50.preheader87:                           ; preds = %.lr.ph.i50.preheader, %middle.block83
  %.016.i51.ph = phi ptr [ %i.q, %.lr.ph.i50.preheader ], [ %i.bc, %middle.block83 ]
  %.01215.i52.ph = phi ptr [ %i.as, %.lr.ph.i50.preheader ], [ %i.bd, %middle.block83 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader87, %.lr.ph.i50
  %.016.i51 = phi ptr [ %i.bk, %.lr.ph.i50 ], [ %.016.i51.ph, %.lr.ph.i50.preheader87 ] ; 2 uses
  %.01215.i52 = phi ptr [ %i.bj, %.lr.ph.i50 ], [ %.01215.i52.ph, %.lr.ph.i50.preheader87 ] ; 2 uses
  %i.bi = load i32, ptr %.01215.i52, align 4, !tbaa !28
  store i32 %i.bi, ptr %.016.i51, align 4, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.01215.i52, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.016.i51, i64 4
  %.not.i53 = icmp eq ptr %i.bj, %i.at
  br i1 %.not.i53, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54, label %.lr.ph.i50, !llvm.loop !371

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54: ; preds = %.lr.ph.i50, %middle.block83, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bl = getelementptr i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  %.not.i55 = icmp eq i8 %i.bm, 0
  br i1 %.not.i55, label %.preheader56, label %.loopexit

.preheader56:                                     ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54
  %i.bn = icmp sgt i32 %1, 0
  br i1 %i.bn, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader56
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bq = icmp eq i32 %1, 1
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.br = load i8, ptr %i.c, align 2, !tbaa !26
  %i.bs = zext i8 %i.br to i32
  %i.bt = trunc i64 %indvars.iv.epil.init to i32
  %i.bu = add i32 %i.bt, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.bs            ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.epil.init
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !83 ; 3 uses
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !83
  %i.ca = trunc i32 %i.bv to i8
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !26
  store ptr %0, ptr %i.bx, align 8, !tbaa !83
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader56
  %i.cc = load i8, ptr %i.al, align 1, !tbaa !26
  %i.cd = zext i8 %i.cc to i32
  %.not58 = icmp sgt i32 %1, %i.cd
  br i1 %.not58, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ce, i64 %i.aq
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !26
  %i.cg = zext i8 %i.cf to i32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ci = add nuw nsw i32 %i.ch, %i.cg            ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83 ; 3 uses
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !83
  %i.cn = trunc i32 %i.ci to i8
  %i.co = getelementptr i8, ptr %i.ck, i64 8
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !26
  store ptr %0, ptr %i.ck, align 8, !tbaa !83
  %i.cp = load i8, ptr %i.c, align 2, !tbaa !26
  %i.cq = zext i8 %i.cp to i32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cq            ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 3 uses
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !83
  %i.cx = trunc i32 %i.cs to i8
  %i.cy = getelementptr i8, ptr %i.cu, i64 8
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !26
  store ptr %0, ptr %i.cu, align 8, !tbaa !83
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !372

bb.c:                                             ; preds = %.lr.ph60, %bb.c
  %indvars.iv62 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next63, %bb.c ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv62
  %i.cz = load ptr, ptr %gep, align 8, !tbaa !83  ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv62
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !83
  %i.db = trunc i64 %indvars.iv62 to i8
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !26
  store ptr %2, ptr %i.cz, align 8, !tbaa !83
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %i.dd = load i8, ptr %i.al, align 1, !tbaa !26
  %i.de = zext i8 %i.dd to i32
  %i.df = sub nsw i32 %i.de, %1
  %i.dg = sext i32 %i.df to i64
  %.not.not = icmp slt i64 %indvars.iv62, %i.dg
  br i1 %.not.not, label %bb.c, label %.loopexit, !llvm.loop !373

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit54
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !26
  %i.di = trunc i32 %1 to i8                      ; 2 uses
  %i.dj = add i8 %i.dh, %i.di
  store i8 %i.dj, ptr %i.c, align 2, !tbaa !26
  %i.dk = load i8, ptr %i.al, align 1, !tbaa !26
  %i.dl = sub i8 %i.dk, %i.di
  store i8 %i.dl, ptr %i.al, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.g = shl nuw nsw i64 %i.e, 32
  %sext.i = add nsw i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 30               ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 5 uses
  %.neg.i = mul nsw i64 %i.e, -4
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.neg.i
  %.not16.i = icmp eq i8 %i.d, 0
  br i1 %.not16.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.k = zext i32 %1 to i64
  %i.l = add nuw nsw i64 %i.e, %i.k
  %i.m = shl i64 %i.l, 32
  %sext15.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext15.i, 30             ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %i.n ; 4 uses
  %i.p = lshr exact i64 %i.h, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 76
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.r = shl nuw nsw i64 %i.e, 2
  %i.s = sub nsw i64 %i.r, %i.n
  %i.t = add nsw i64 %i.s, -5
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.u = mul i64 %n.vec, -4                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr i8, ptr %i.i, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.x ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep61, i64 -12
  %i.z = getelementptr i8, ptr %next.gep61, i64 -28
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !28
  %wide.load62 = load <4 x i32>, ptr %i.z, align 4, !tbaa !28
  %i.aa = getelementptr i8, ptr %next.gep, i64 -12
  %i.ab = getelementptr i8, ptr %next.gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !28
  store <4 x i32> %wide.load62, ptr %i.ab, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

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
  %4 = and i64 %i.ce, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %i.cg = add nsw i64 %i.ce, %i.cf                ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !83 ; 3 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cg
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !83
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !26
  store ptr %2, ptr %i.ci, align 8, !tbaa !83
  %indvars.iv.next.prol = add nsw i64 %i.ce, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.b
  %indvars.iv.unr = phi i64 [ %i.ce, %bb.b ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cm = icmp eq i8 %i.cc, 0
  br i1 %i.cm, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4454 = icmp slt i32 %1, 1
  br i1 %.not4454, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %5 = zext nneg i32 %1 to i64                    ; 2 uses
  %xtraiter82 = and i64 %5, 1
  %i.co = icmp eq i32 %1, 1
  br i1 %i.co, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %5, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.c

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.cp = add nsw i64 %indvars.iv, %i.cf          ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !83 ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cp
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !83
  %i.ct = trunc i64 %i.cp to i8
  %i.cu = getelementptr i8, ptr %i.cr, i64 8
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !26
  store ptr %2, ptr %i.cr, align 8, !tbaa !83
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cv = add nsw i64 %indvars.iv.next, %i.cf     ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !83 ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cv
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !83
  %i.cz = trunc i64 %i.cv to i8
  %i.da = getelementptr i8, ptr %i.cx, i64 8
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !26
  store ptr %2, ptr %i.cx, align 8, !tbaa !83
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !378

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv57 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next58.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.db = add nsw i64 %indvars.iv57, -1           ; 2 uses
  %i.dc = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.dd = zext i8 %i.dc to i32
  %i.de = trunc i64 %indvars.iv57 to i32
  %i.df = sub i32 %i.de, %1
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83 ; 3 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.db
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !83
  %i.dl = trunc i64 %i.db to i8
  %i.dm = getelementptr i8, ptr %i.dj, i64 8
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !26
  store ptr %2, ptr %i.dj, align 8, !tbaa !83
  %i.dn = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.do = zext i8 %i.dn to i32
  %i.dp = trunc i64 %indvars.iv57 to i32
  %.reass = add i32 %i.dp, %invariant.op
  %i.dq = add i32 %.reass, %i.do
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !83 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv57
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !83
  %i.dv = trunc i64 %indvars.iv57 to i8
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !26
  store ptr %2, ptr %i.dt, align 8, !tbaa !83
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
  %i.dx = add nsw i64 %indvars.iv57.epil.init, -1 ; 2 uses
  %i.dy = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.dz = zext i8 %i.dy to i32
  %i.ea = trunc i64 %indvars.iv57.epil.init to i32
  %i.eb = sub i32 %i.ea, %1
  %i.ec = add i32 %i.eb, %i.dz
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !83 ; 3 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.dx
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !83
  %i.eh = trunc i64 %i.dx to i8
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !26
  store ptr %2, ptr %i.ef, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ej = load i8, ptr %i.ar, align 2, !tbaa !26
  %i.ek = trunc i32 %1 to i8                      ; 2 uses
  %i.el = sub i8 %i.ej, %i.ek
  store i8 %i.el, ptr %i.ar, align 2, !tbaa !26
  %i.em = load i8, ptr %i.c, align 1, !tbaa !26
  %i.en = add i8 %i.em, %i.ek
  store i8 %i.en, ptr %i.c, align 1, !tbaa !26
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

end_hunk_1
begin_hunk_2_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_right_to_leftEiPSH_PSF_:bb.a
  br i1 %i.by, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i46
  %i.bz = load i64, ptr %i.az, align 8, !tbaa !26
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i47
  %i.cb = getelementptr inbounds nuw i8, ptr %.01215.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, %i.as
  br i1 %.not.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !5

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !90
  %i.cd = load i8, ptr %i.d, align 8, !tbaa !26
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %sext.i49 = shl nuw nsw i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %sext.i49 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !30
  %i.ci = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 7 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51

bb.f:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !25
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !26
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51, %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !29
  store ptr %i.cj, ptr %i.as, align 8, !tbaa !25
  store i64 0, ptr %i.cq, align 8, !tbaa !29
  store i8 0, ptr %i.cj, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 3 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !30
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 5 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i53

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i52
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !29 ; 2 uses
  %i.db = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i52
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !25
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !26
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i53, %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !29
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !25
  store i64 0, ptr %i.de, align 8, !tbaa !29
  store i8 0, ptr %i.cx, align 8, !tbaa !26
  %i.dh = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cj
  br i1 %i.di, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i54
  %i.dj = load i64, ptr %i.cj, align 8, !tbaa !26
  %i.dk = add i64 %i.dj, 1
  tail call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i55
  %i.dl = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = sub nsw i32 %i.dn, %1
  %i.dp = sext i32 %i.do to i64
  %i.dq = sext i32 %1 to i64                      ; 2 uses
  %i.dr = shl nsw i64 %i.dq, 6
  %i.ds = getelementptr inbounds i8, ptr %i.ar, i64 %i.dr ; 2 uses
  %.idx.i60 = shl nuw nsw i64 %i.dp, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i60
  %.not14.i61 = icmp eq i32 %1, %i.dn
  br i1 %.not14.i61, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit75, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72
  %.016.i65 = phi ptr [ %i.ez, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72 ], [ %i.ar, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58 ] ; 8 uses
  %.01215.i66 = phi ptr [ %i.ey, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72 ], [ %i.ds, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58 ] ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.016.i65, i64 16 ; 3 uses
  store ptr %i.du, ptr %.016.i65, align 8, !tbaa !30
  %i.dv = load ptr, ptr %.01215.i66, align 8, !tbaa !25 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 16 ; 7 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67

bb.h:                                             ; preds = %.lr.ph.i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !29 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 16
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = add nuw nsw i64 %i.dz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.dw, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67: ; preds = %.lr.ph.i64
  store ptr %i.dv, ptr %.016.i65, align 8, !tbaa !25
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !26
  store i64 %i.ec, ptr %i.du, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67, %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %.016.i65, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !29
  store ptr %i.dw, ptr %.01215.i66, align 8, !tbaa !25
  store i64 0, ptr %i.ed, align 8, !tbaa !29
  store i8 0, ptr %i.dw, align 8, !tbaa !26
  %i.eg = getelementptr inbounds nuw i8, ptr %.016.i65, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.016.i65, i64 48 ; 3 uses
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !30
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !25 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 48 ; 5 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i69

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i68
  %i.em = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  %i.eo = icmp ult i64 %i.en, 16
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i64 %i.ep, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i68
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !25
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !26
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i69, %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 40 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %.016.i65, i64 40
  store i64 %i.es, ptr %i.et, align 8, !tbaa !29
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !25
  store i64 0, ptr %i.er, align 8, !tbaa !29
  store i8 0, ptr %i.ek, align 8, !tbaa !26
  %i.eu = load ptr, ptr %.01215.i66, align 8, !tbaa !25 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dw
  br i1 %i.ev, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i70
  %i.ew = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.ex = add i64 %i.ew, 1
  tail call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i71
  %i.ey = getelementptr inbounds nuw i8, ptr %.01215.i66, i64 64 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.016.i65, i64 64
  %.not.i73 = icmp eq ptr %i.ey, %i.dt
  br i1 %.not.i73, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit75, label %.lr.ph.i64, !llvm.loop !5

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit75: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i72, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit58
  %i.fa = getelementptr i8, ptr %0, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !26
  %.not.i76 = icmp eq i8 %i.fb, 0
  br i1 %.not.i76, label %.preheader77, label %.loopexit

.preheader77:                                     ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit75
  %i.fc = icmp sgt i32 %1, 0
  br i1 %i.fc, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader77
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ff = icmp eq i32 %1, 1
  br i1 %i.ff, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.j

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod119 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.fg = load i8, ptr %i.a, align 2, !tbaa !26
  %i.fh = zext i8 %i.fg to i32
  %i.fi = trunc i64 %indvars.iv.epil.init to i32
  %i.fj = add i32 %i.fi, 1
  %i.fk = add nuw nsw i32 %i.fj, %i.fh            ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.epil.init
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !90 ; 3 uses
  %i.fn = zext nneg i32 %i.fk to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fn
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !90
  %i.fp = trunc i32 %i.fk to i8
  %i.fq = getelementptr i8, ptr %i.fm, i64 8
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !26
  store ptr %0, ptr %i.fm, align 8, !tbaa !90
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader77
  %i.fr = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.fs = zext i8 %i.fr to i32
  %.not79 = icmp sgt i32 %1, %i.fs
  br i1 %.not79, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ft, i64 %i.dq
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.fu = load i8, ptr %i.a, align 2, !tbaa !26
  %i.fv = zext i8 %i.fu to i32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fv            ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !90 ; 3 uses
  %i.ga = zext nneg i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ga
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !90
  %i.gc = trunc i32 %i.fx to i8
  %i.gd = getelementptr i8, ptr %i.fz, i64 8
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !26
  store ptr %0, ptr %i.fz, align 8, !tbaa !90
  %i.ge = load i8, ptr %i.a, align 2, !tbaa !26
  %i.gf = zext i8 %i.ge to i32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.gh = add nuw nsw i32 %i.gg, %i.gf            ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !90 ; 3 uses
  %i.gk = zext nneg i32 %i.gh to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.gk
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !90
  %i.gm = trunc i32 %i.gh to i8
  %i.gn = getelementptr i8, ptr %i.gj, i64 8
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !26
  store ptr %0, ptr %i.gj, align 8, !tbaa !90
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !406

bb.k:                                             ; preds = %.lr.ph81, %bb.k
  %indvars.iv83 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next84, %bb.k ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv83
  %i.go = load ptr, ptr %gep, align 8, !tbaa !90  ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv83
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !90
  %i.gq = trunc i64 %indvars.iv83 to i8
  %i.gr = getelementptr i8, ptr %i.go, i64 8
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !26
  store ptr %2, ptr %i.go, align 8, !tbaa !90
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %i.gs = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.gt = zext i8 %i.gs to i32
  %i.gu = sub nsw i32 %i.gt, %1
  %i.gv = sext i32 %i.gu to i64
  %.not.not = icmp slt i64 %indvars.iv83, %i.gv
  br i1 %.not.not, label %bb.k, label %.loopexit, !llvm.loop !407

.loopexit:                                        ; preds = %bb.k, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit75
  %i.gw = load i8, ptr %i.a, align 2, !tbaa !26
  %i.gx = trunc i32 %1 to i8                      ; 2 uses
  %i.gy = add i8 %i.gw, %i.gx
  store i8 %i.gy, ptr %i.a, align 2, !tbaa !26
  %i.gz = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.ha = sub i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.dl, align 1, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26    ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = shl nuw nsw i64 %i.c, 32
  %sext.i = add nsw i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 26
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 2 uses
  %.neg.i = mul nsw i64 %i.c, -64
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %.neg.i
  %.not16.i = icmp eq i8 %i.b, 0
  br i1 %.not16.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %i.j = add nuw nsw i64 %i.c, %i.i
  %i.k = shl i64 %i.j, 32
  %sext15.i = add i64 %i.k, -4294967296
  %i.l = ashr exact i64 %sext15.i, 26
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.018.i = phi ptr [ %i.as, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.m, %.lr.ph.preheader.i ] ; 8 uses
  %.01417.i = phi ptr [ %i.ar, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.g, %.lr.ph.preheader.i ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 16 ; 3 uses
  store ptr %i.n, ptr %.018.i, align 8, !tbaa !30
  %i.o = load ptr, ptr %.01417.i, align 8, !tbaa !25 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01417.i, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.o, ptr %.018.i, align 8, !tbaa !25
  %i.v = load i64, ptr %i.p, align 8, !tbaa !26
  store i64 %i.v, ptr %i.n, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !29
  store ptr %i.p, ptr %.01417.i, align 8, !tbaa !25
  store i64 0, ptr %i.w, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i, i64 48 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !30
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i, i64 48 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !25
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !26
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !25
  store i64 0, ptr %i.ak, align 8, !tbaa !29
  store i8 0, ptr %i.ad, align 8, !tbaa !26
  %i.an = load ptr, ptr %.01417.i, align 8, !tbaa !25 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.01417.i, i64 -64 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.018.i, i64 -64
  %.not.i = icmp eq ptr %i.ar, %i.h
end_hunk_2
begin_hunk_3_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEiPSH_PSF_:bb.a
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bf
  br i1 %i.ce, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i49
  %i.cf = load i64, ptr %i.bf, align 8, !tbaa !26
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i50
  %i.ch = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = sub nsw i32 %i.cj, %i.at
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = shl nsw i64 %i.cl, 6
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.az
  %.not14.i = icmp eq i32 %i.at, 0
  br i1 %.not14.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61
  %.016.i = phi ptr [ %i.dv, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61 ], [ %i.d, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ] ; 8 uses
  %.01215.i = phi ptr [ %i.du, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i61 ], [ %i.co, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit ] ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.016.i, i64 16 ; 3 uses
  store ptr %i.cq, ptr %.016.i, align 8, !tbaa !30
  %i.cr = load ptr, ptr %.01215.i, align 8, !tbaa !25 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01215.i, i64 16 ; 7 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i56

bb.f:                                             ; preds = %.lr.ph.i55
  %i.cu = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !29 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 16
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i64 %i.cx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i56: ; preds = %.lr.ph.i55
  store ptr %i.cr, ptr %.016.i, align 8, !tbaa !25
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !26
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i56, %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !29
  store ptr %i.cs, ptr %.01215.i, align 8, !tbaa !25
  store i64 0, ptr %i.cz, align 8, !tbaa !29
  store i8 0, ptr %i.cs, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %.016.i, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01215.i, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.016.i, i64 48 ; 3 uses
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !30
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !25 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01215.i, i64 48 ; 5 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i58

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i57
  %i.di = getelementptr inbounds nuw i8, ptr %.01215.i, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !29 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 16
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %i.dg, i64 %i.dl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i57
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !25
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !26
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i59

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
  %4 = and i64 %i.fn, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.j
  %i.fp = add nsw i64 %i.fn, %i.fo                ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !90 ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fp
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !90
  %i.ft = trunc i64 %i.fp to i8
  %i.fu = getelementptr i8, ptr %i.fr, i64 8
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !26
  store ptr %2, ptr %i.fr, align 8, !tbaa !90
  %indvars.iv.next.prol = add nsw i64 %i.fn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.j
  %indvars.iv.unr = phi i64 [ %i.fn, %bb.j ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.fv = icmp eq i8 %i.fl, 0
  br i1 %i.fv, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  %.not4476 = icmp slt i32 %1, 1
  br i1 %.not4476, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %5 = zext nneg i32 %1 to i64                    ; 2 uses
  %xtraiter115 = and i64 %5, 1
  %i.fx = icmp eq i32 %1, 1
  br i1 %i.fx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %5, 2147483646
  %invariant.op = sub i32 1, %1
  br label %bb.k

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.fy = add nsw i64 %indvars.iv, %i.fo          ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !90 ; 3 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fy
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !90
  %i.gc = trunc i64 %i.fy to i8
  %i.gd = getelementptr i8, ptr %i.ga, i64 8
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !26
  store ptr %2, ptr %i.ga, align 8, !tbaa !90
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ge = add nsw i64 %indvars.iv.next, %i.fo     ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !90 ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.ge
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !90
  %i.gi = trunc i64 %i.ge to i8
  %i.gj = getelementptr i8, ptr %i.gg, i64 8
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !26
  store ptr %2, ptr %i.gg, align 8, !tbaa !90
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.preheader, label %.new, !llvm.loop !408

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv79 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next80.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.gk = add nsw i64 %indvars.iv79, -1           ; 2 uses
  %i.gl = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.gm = zext i8 %i.gl to i32
  %i.gn = trunc i64 %indvars.iv79 to i32
  %i.go = sub i32 %i.gn, %1
  %i.gp = add i32 %i.go, %i.gm
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !90 ; 3 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gk
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !90
  %i.gu = trunc i64 %i.gk to i8
  %i.gv = getelementptr i8, ptr %i.gs, i64 8
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !26
  store ptr %2, ptr %i.gs, align 8, !tbaa !90
  %i.gw = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.gx = zext i8 %i.gw to i32
  %i.gy = trunc i64 %indvars.iv79 to i32
  %.reass = add i32 %i.gy, %invariant.op
  %i.gz = add i32 %.reass, %i.gx
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !90 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv79
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !90
  %i.he = trunc i64 %indvars.iv79 to i8
  %i.hf = getelementptr i8, ptr %i.hc, i64 8
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !26
  store ptr %2, ptr %i.hc, align 8, !tbaa !90
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
  %i.hg = add nsw i64 %indvars.iv79.epil.init, -1 ; 2 uses
  %i.hh = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.hi = zext i8 %i.hh to i32
  %i.hj = trunc i64 %indvars.iv79.epil.init to i32
  %i.hk = sub i32 %i.hj, %1
  %i.hl = add i32 %i.hk, %i.hi
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !90 ; 3 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.hg
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !90
  %i.hq = trunc i64 %i.hg to i8
  %i.hr = getelementptr i8, ptr %i.ho, i64 8
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !26
  store ptr %2, ptr %i.ho, align 8, !tbaa !90
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit73
  %i.hs = load i8, ptr %i.ch, align 2, !tbaa !26
  %i.ht = trunc i32 %1 to i8                      ; 2 uses
  %i.hu = sub i8 %i.hs, %i.ht
  store i8 %i.hu, ptr %i.ch, align 2, !tbaa !26
  %i.hv = load i8, ptr %i.a, align 1, !tbaa !26
  %i.hw = add i8 %i.hv, %i.ht
  store i8 %i.hw, ptr %i.a, align 1, !tbaa !26
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
end_hunk_3
