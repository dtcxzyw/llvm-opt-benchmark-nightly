inline.NumInlined: 1808
inline.NumDeleted: 750
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit, !llvm.loop !117

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.z = icmp eq i8 %i.t, %i.u
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ult i8 %i.t, 61
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i8 %i.t, 1
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 61) ; 2 uses
  %i.ad = shl nuw i8 %i.ac, 2
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 16
  %i.ag = and i64 %i.af, 504
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26 ; 12 uses
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 0, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 0, ptr %i.aj, align 1, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  store i8 %i.ac, ptr %i.ak, align 1, !tbaa !39
  store ptr %i.ah, ptr %4, align 8, !tbaa !120
  %i.al = load i8, ptr %i.y, align 1, !tbaa !39   ; 3 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.am, 2          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ap = ptrtoaddr ptr %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 3 uses
  %i.ar = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  %i.au = sub i64 %i.ap, %i.w
  %diff.check = icmp ult i64 %i.au, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.ay ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4
  %wide.load22 = load <4 x i32>, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load22, ptr %i.ba, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.015.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i.i.i ], [ %i.aw, %middle.block ]
  %.01214.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.01214.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.bc = load i32, ptr %.01214.i.i.i, align 4
  store i32 %i.bc, ptr %.015.i.i.i, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i5 = icmp eq ptr %i.bd, %i.ao
  br i1 %.not.i.i.i5, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !210

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4, %middle.block, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %i.al, ptr %i.bf, align 1, !tbaa !39
  store i8 0, ptr %i.y, align 1, !tbaa !39
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.x)
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !60
  store ptr %i.ah, ptr %0, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bg = phi ptr [ %i.ah, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = and i32 %i.bh, 255                      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 10 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39  ; 3 uses
  %i.bm = icmp ugt i8 %i.bl, %i.bi
  %i.bn = zext nneg i32 %i.bj to i64              ; 2 uses
  br i1 %i.bm, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %narrow.i = sub nuw i8 %i.bl, %i.bi
  %i.bq = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bq, 2
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.br, ptr align 4 %i.bp, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bk, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bs = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bl, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bn
  %i.bv = load i32, ptr %3, align 4, !tbaa !61
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !61
  %i.bw = add i8 %i.bs, 1                         ; 3 uses
  store i8 %i.bw, ptr %i.bk, align 1, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not.i18.i = icmp eq i8 %i.by, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i
  %i.bz = zext i8 %i.bw to i32
  %i.ca = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 256 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i8 [ %i.bw, %.lr.ph.i ], [ %i.cd, %bb.h ] ; 3 uses
  %i.cd = add i8 %.019.i, -1                      ; 3 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %i.ch = zext i8 %.019.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %.019.i, ptr %i.cj, align 1, !tbaa !39
  %i.ck = zext i8 %i.cd to i32
  %i.cl = icmp samesign ult i32 %i.ca, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit, !llvm.loop !125

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !59
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !60     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !39    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39    ; 3 uses
  %i.n = icmp ult i8 %i.m, 61
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %i.m
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 61
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 61
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 4, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !39  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 61
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 61, %i.an
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 61
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !39
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 61
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !120
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !118
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %3, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bq, align 1, !tbaa !39
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !60
  store ptr %i.bo, ptr %0, align 8, !tbaa !60
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.br = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39
  %.not116 = icmp eq i8 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !39
  %i.bw = add i8 %i.bv, 1                         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #26 ; 9 uses
  store ptr %.082, ptr %i.by, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.bz, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 9
  store i8 0, ptr %i.ca, align 1, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  store i8 0, ptr %i.cb, align 2, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store i8 61, ptr %i.cc, align 1, !tbaa !39
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cd, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bx)
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !60
  %i.cf = load ptr, ptr %1, align 8, !tbaa !60
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !60
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ch = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 7 uses
  store ptr %.082, ptr %i.ch, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.bw, ptr %i.ci, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 0, ptr %i.cj, align 1, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 10
  store i8 0, ptr %i.ck, align 2, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 0, ptr %i.cl, align 1, !tbaa !39
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i32 noundef %i.cm, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.bx)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.by, %bb.q ], [ %i.by, %bb.p ], [ %i.ch, %bb.r ]
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !39
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = icmp sgt i32 %i.cn, %i.cr
  br i1 %i.cs, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ct = xor i32 %i.cr, -1
  %i.cu = add nsw i32 %i.cn, %i.ct
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cu, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 4, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 16
  %i.f = and i64 %i.e, 2040
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 1, !tbaa !39
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.l, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = zext i8 %i.p to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.q, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.r, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.147
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39    ; 2 uses
  %.not.i55 = icmp eq i8 %i.w, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.y, %.lr.ph66 ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39   ; 2 uses
  %.not.i56 = icmp eq i8 %i.aa, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !212

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.af = phi i8 [ %i.aa, %._crit_edge67 ], [ %i.w, %bb.d ]
  %.251 = phi ptr [ %i.y, %._crit_edge67 ], [ %i.u, %bb.d ]
  %.248 = phi i64 [ %i.ad, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ae, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = and i64 %i.ai, 2040
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.aj) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !39
  %i.am = zext i8 %i.al to i64
  %.not.not = icmp samesign ult i64 %.248, %i.am
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.at, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.ap, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !213

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.ap, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 2 uses
  %i.ap = load ptr, ptr %.3, align 8, !tbaa !60   ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 752) #24
  %i.aq = icmp eq ptr %i.ap, %i.j
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %.not = icmp ult i8 %i.ao, %i.as
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !214

bb.g:                                             ; preds = %bb.f
  %i.at = zext i8 %i.ao to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 752, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 4611686018427387902
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %i.z = add i64 %i.y, 4
  %i.aa = sub i64 %i.z, %i.a
  %diff.check = icmp ult i64 %i.aa, 32
  br i1 %diff.check, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
