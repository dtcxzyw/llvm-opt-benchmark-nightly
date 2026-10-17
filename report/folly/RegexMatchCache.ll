Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_:bb.a
  store i8 %i.j, ptr %i.ay, align 8, !tbaa !20227
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72
  store ptr %.sroa.4.8.copyload, ptr %i.az, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx.3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 %i.j, ptr %i.ba, align 8, !tbaa !20227
  %i.bb = add i64 %.01113.i.i.i.i, -4             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21090

_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.bd = phi ptr [ %i.d, %bb.e ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !20228
  %i.be = icmp eq ptr %1, %i.d
  br i1 %i.be, label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.l
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !20228
  br label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i70 ], [ %i.bd, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i72 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i72, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.bi, ptr %i.bg, align 8, !tbaa !20227
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 24
  %i.bl = icmp eq ptr %i.bj, %i.d
  br i1 %i.bl, label %.lr.ph.i.i.i76, label %.lr.ph.i.i.i.i.i70, !llvm.loop !21087

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i.i.i70
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !20228
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.l
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !20228
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i76
  %.06.i.i.i80 = phi ptr [ %1, %.lr.ph.i.i.i76 ], [ %i.bq, %bb.f ] ; 4 uses
  store ptr %.sroa.4.8.copyload, ptr %.06.i.i.i80, align 8, !tbaa !20225
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 8
  store ptr %.sroa.9.8.copyload, ptr %i.bo, align 8, !tbaa !20226
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 16
  store i8 %i.j, ptr %i.bp, align 8, !tbaa !20227
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 24 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.bq, %i.d
  br i1 %.not.i.i.i81, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %bb.f, !llvm.loop !754

bb.g:                                             ; preds = %bb.b
  %i.br = load ptr, ptr %0, align 8, !tbaa !20173 ; 5 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bt = sub i64 %i.f, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24                ; 4 uses
  %i.bv = sub nsw i64 384307168202282325, %i.bu
  %i.bw = icmp ult i64 %i.bv, %2
  br i1 %i.bw, label %bb.h, label %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #42
  unreachable

_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %2)
  %i.bx = add nsw i64 %.sroa.speculated.i, %i.bu  ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bu
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 384307168202282325)
  %i.ca = select i1 %i.by, i64 384307168202282325, i64 %i.bz ; 3 uses
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = sub i64 %i.cb, %i.bs
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i84, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.cd = mul nuw nsw i64 %i.ca, 24
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #43
  br label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %bb.i, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.cf = phi ptr [ %i.ce, %bb.i ], [ null, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 5 uses
  %xtraiter139 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i84, %.prol.preheader
  %.014.i.i.i.i85.prol = phi ptr [ %i.cl, %.prol.preheader ], [ %i.cg, %.lr.ph.i.i.i.i84 ] ; 3 uses
  %.01113.i.i.i.i86.prol = phi i64 [ %i.ck, %.prol.preheader ], [ %2, %.lr.ph.i.i.i.i84 ]
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i84 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85.prol, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 16
  store i8 %i.ci, ptr %i.cj, align 8, !tbaa !20227
  %i.ck = add i64 %.01113.i.i.i.i86.prol, -1      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 24 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !21091

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i84
  %.014.i.i.i.i85.unr = phi ptr [ %i.cg, %.lr.ph.i.i.i.i84 ], [ %i.cl, %.prol.preheader ]
  %.01113.i.i.i.i86.unr = phi i64 [ %2, %.lr.ph.i.i.i.i84 ], [ %i.ck, %.prol.preheader ]
  %i.cm = icmp ult i64 %2, 4
  br i1 %i.cm, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new

.lr.ph.i.i.i.i84.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i84.new
  %.014.i.i.i.i85 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i84.new ], [ %.014.i.i.i.i85.unr, %.prol.loopexit ] ; 9 uses
  %.01113.i.i.i.i86 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i84.new ], [ %.01113.i.i.i.i86.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 16
  store i8 %i.ci, ptr %i.cn, align 8, !tbaa !20227
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.co, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 40
  store i8 %i.ci, ptr %i.cp, align 8, !tbaa !20227
  %i.cq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cq, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 64
  store i8 %i.ci, ptr %i.cr, align 8, !tbaa !20227
  %i.cs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cs, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 88
  store i8 %i.ci, ptr %i.ct, align 8, !tbaa !20227
  %i.cu = add i64 %.01113.i.i.i.i86, -4           ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 96
  %.not.i.i.i.i87.3 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i87.3, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new, !llvm.loop !21090

_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89: ; preds = %.lr.ph.i.i.i.i84.new, %.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.br, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, %.lr.ph.i.i.i.i.i90
  %.015.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i90 ], [ %i.cf, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i90 ], [ %i.br, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.cy, ptr %i.cw, align 8, !tbaa !20227
  %i.cz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !21092

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89
  %.0.lcssa.i.i.i.i.i91 = phi ptr [ %i.cf, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ], [ %i.da, %.lr.ph.i.i.i.i.i90 ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i91, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i92 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i94 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i93 ], [ %i.db, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i95 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i93 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i94, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i95, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 16
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.de, ptr %i.dc, align 8, !tbaa !20227
  %i.df = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 24 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.df, %i.d
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93, !llvm.loop !21092

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98: ; preds = %.lr.ph.i.i.i.i.i93, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %i.db, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.dg, %.lr.ph.i.i.i.i.i93 ]
  %.not.i99 = icmp eq ptr %i.br, null
  br i1 %.not.i99, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !20174
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.dj) #40
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, %bb.j
  store ptr %i.cf, ptr %0, align 8, !tbaa !20173
  store ptr %.0.lcssa.i.i.i.i.i97, ptr %i.c, align 8, !tbaa !20228
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ca
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !20174
  br label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit

_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit: ; preds = %bb.f, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20228 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20173  ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20174
  %i.i = load ptr, ptr %0, align 8, !tbaa !20173  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, !prof !19683

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43 ; 4 uses
  %2 = icmp eq ptr %i.c, %i.b
  br i1 %2, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.s, ptr %i.q, align 8, !tbaa !20227
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.v = icmp eq ptr %i.t, %i.b
  br i1 %i.v, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !757

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !20173  ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !20174
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #40
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !20173
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !20174
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20228 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.af, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.f, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ah = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i26 = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i25 ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i25 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i25 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ai = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !19794
  store <2 x ptr> %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !19794
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !20227
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ao = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.ap = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !21093

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ar = icmp sgt i64 %i.af, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %bb.h
  %i.as = udiv exact i64 %i.af, 24
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29, %.lr.ph.preheader.i.i.i.i.i28
  %.012.i.i.i.i.i30 = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i29 ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i29 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i28 ] ; 3 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i29 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i28 ] ; 3 uses
  %i.at = load <2 x ptr>, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !19794
  store <2 x ptr> %i.at, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !19794
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 16
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !20227
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 24
  %i.az = add nsw i64 %.012.i.i.i.i.i30, -1
  %i.ba = icmp samesign ugt i64 %.012.i.i.i.i.i30, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i29, label %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !21094

_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i29, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 3 uses
  %.01214.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !20227
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !21095

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !20173
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.bg = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i25 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !20228
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #39 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt11logic_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt11logic_errorED2Ev) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost10wrapexceptISt11logic_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !797
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !19885
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.e, align 4, !tbaa !19886
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 16), ptr %0, align 8, !tbaa !797
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 64), ptr %i.a, align 8, !tbaa !797
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 104), ptr %i.b, align 8, !tbaa !797
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost10wrapexceptISt11logic_errorED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19887 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !797
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !732 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #41
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #39
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5boost10wrapexceptISt11logic_errorE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #43 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !797
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #39, !inline_history !21102
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !797
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19887 ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !19887
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
