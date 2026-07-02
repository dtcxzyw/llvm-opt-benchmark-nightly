inline.NumInlined: 1808
inline.NumDeleted: 750
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_:bb.a
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
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i.preheader82

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
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !216

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !39
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.ay = zext i8 %i.ar to i64
  %4 = sub nsw i64 %i.ay, %i.av
  %i.az = add nsw i64 %4, 4611686018427387903
  %5 = and i64 %i.az, 4611686018427387903         ; 2 uses
  %i.ba = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check66 = icmp samesign ult i64 %5, 7
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.ba, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bb
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.be = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.be ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4
  %wide.load75 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 1
  store <4 x i32> %wide.load75, ptr %i.bg, align 1
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bh, label %middle.block77, label %vector.body70, !llvm.loop !217

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.ba, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bc, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bd, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bk, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bj, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bi = load i32, ptr %.01214.i49, align 4
  store i32 %i.bi, ptr %.015.i48, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bj, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47, !llvm.loop !218

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bp = icmp eq i32 %i.p, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

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
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !39
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !39
  store ptr %0, ptr %i.bv, align 8, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.aq, align 1, !tbaa !39
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !39
  store ptr %0, ptr %i.cf, align 8, !tbaa !60
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !39
  store ptr %0, ptr %i.cn, align 8, !tbaa !60
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !219

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !39
  store ptr %2, ptr %i.cu, align 8, !tbaa !60
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !220

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !39
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !39
  %i.df = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.aq, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.preheader.i

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
end_hunk_0
