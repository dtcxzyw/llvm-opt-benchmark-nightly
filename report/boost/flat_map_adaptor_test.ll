Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 512
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_:bb.a
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader213 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bm, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader213 ] ; 2 uses
  %i.bk = load i64, ptr %.012.i.i, align 4
  store i64 %i.bk, ptr %.0911.i.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bl, %i.at
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !2904

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block145, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %.sroa.speculated58, ptr %i.i, align 8, !tbaa !372
  %i.bn = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = sub i64 %.sroa.speculated58, %i.bn
  %i.br = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.bp, i64 noundef %i.c, i64 noundef %i.bn, i64 noundef %3, i64 noundef %i.bq) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.d, label %.lr.ph.i49.preheader

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %i.bs = load ptr, ptr %4, align 8, !tbaa !371
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.sroa.speculated58 ; 3 uses
  %i.bu = sub i64 0, %i.br                        ; 3 uses
  %.not8.i = icmp eq i64 %i.br, 0
  br i1 %.not8.i, label %.loopexit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.bv = getelementptr [8 x i8], ptr %i.b, i64 %i.bu
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.c ; 6 uses
  %.idx = shl i64 %i.bu, 3
  %i.bx = getelementptr i8, ptr %i.bt, i64 %.idx  ; 6 uses
  %i.by = add i64 %i.br, 2305843009213693951
  %i.bz = and i64 %i.by, 2305843009213693951      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check185 = icmp samesign ult i64 %i.bz, 7
  br i1 %min.iters.check185, label %.lr.ph.i.preheader211, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.preheader
  %i.cb = shl i64 %1, 3
  %i.cc = getelementptr i8, ptr %0, i64 %i.cb
  %bound0187 = icmp ult ptr %i.bw, %i.bt
  %bound1188 = icmp ult ptr %i.bx, %i.cc
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph.i.preheader211, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck186
  %n.vec191 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec191, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bx, i64 %i.cd
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next206, %vector.body192 ] ; 2 uses
  %i.cg = shl i64 %index193, 3                    ; 3 uses
  %i.ch = or disjoint i64 %i.cg, 16               ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.bw, i64 %i.cg
  %next.gep195 = getelementptr i8, ptr %i.bw, i64 %i.ch
  %next.gep196 = getelementptr i8, ptr %i.bx, i64 %i.cg
  %next.gep197 = getelementptr i8, ptr %i.bx, i64 %i.ch
  %wide.vec198 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !337, !alias.scope !2919
  %wide.vec201 = load <4 x i32>, ptr %next.gep197, align 4, !tbaa !337, !alias.scope !2919
  store <4 x i32> %wide.vec198, ptr %next.gep194, align 4, !tbaa !337, !alias.scope !2920, !noalias !2919
  store <4 x i32> %wide.vec201, ptr %next.gep195, align 4, !tbaa !337, !alias.scope !2920, !noalias !2919
  %index.next206 = add nuw i64 %index193, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next206, %n.vec191
  br i1 %i.ci, label %middle.block207, label %vector.body192, !llvm.loop !2908

middle.block207:                                  ; preds = %vector.body192
  %cmp.n208 = icmp eq i64 %i.ca, %n.vec191
  br i1 %cmp.n208, label %.loopexit.thread, label %.lr.ph.i.preheader211

.lr.ph.i.preheader211:                            ; preds = %vector.memcheck186, %.lr.ph.i.preheader, %middle.block207
  %.010.i.ph = phi ptr [ %i.bw, %vector.memcheck186 ], [ %i.bw, %.lr.ph.i.preheader ], [ %i.ce, %middle.block207 ]
  %.079.i.ph = phi ptr [ %i.bx, %vector.memcheck186 ], [ %i.bx, %.lr.ph.i.preheader ], [ %i.cf, %middle.block207 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader211, %.lr.ph.i
  %.010.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader211 ] ; 3 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader211 ] ; 3 uses
  %i.cj = load i32, ptr %.079.i, align 4, !tbaa !337
  store i32 %i.cj, ptr %.010.i, align 4, !tbaa !346
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !337
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !347
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i47 = icmp eq ptr %i.cn, %i.bt
  br i1 %.not.i47, label %.loopexit.thread, label %.lr.ph.i, !llvm.loop !2909

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit: ; preds = %bb.a
  %i.cp = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.cq = sub i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ct = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairIiiEEET_S5_S5_S5_(ptr noundef %i.cr, ptr noundef %i.b, ptr noundef %i.cs) ; 0 uses
  %i.cu = sub i64 %3, %i.cp
  %i.cv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.cr, i64 noundef %i.c, i64 noundef %i.cp, i64 noundef %3, i64 noundef %i.cu) ; 0 uses
  br label %bb.e

.loopexit.thread:                                 ; preds = %.lr.ph.i, %middle.block207, %bb.d
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bu
  %i.cx = sub i64 %3, %i.br
  %i.cy = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef nonnull %i.cw, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.cx) ; 0 uses
  br label %bb.e

.lr.ph.i49.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE11move_assignIS4_EEvT_m.exit
  %.pre = sub i64 0, %i.br
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre
  %i.da = sub i64 %3, %i.br
  %i.db = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.cz, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.da) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.dc = load ptr, ptr %4, align 8, !tbaa !371   ; 7 uses
  %.idx83 = shl nuw nsw i64 %.sroa.speculated58, 3 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx83 ; 2 uses
  %i.de = add nsw i64 %.idx83, -8                 ; 2 uses
  %i.df = lshr exact i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.de, 40
  br i1 %min.iters.check154, label %.lr.ph.i49.preheader212, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i49.preheader
  %i.dh = getelementptr i8, ptr %0, i64 %.idx83
  %bound0156 = icmp ult ptr %0, %i.dd
  %bound1157 = icmp ult ptr %i.dc, %i.dh
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i49.preheader212, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.dg, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec160, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dc, i64 %i.di
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next175, %vector.body161 ] ; 2 uses
  %i.dl = shl i64 %index162, 3                    ; 3 uses
  %i.dm = or disjoint i64 %i.dl, 16               ; 2 uses
  %next.gep163 = getelementptr i8, ptr %0, i64 %i.dl
  %next.gep164 = getelementptr i8, ptr %0, i64 %i.dm
  %next.gep165 = getelementptr i8, ptr %i.dc, i64 %i.dl
  %next.gep166 = getelementptr i8, ptr %i.dc, i64 %i.dm
  %wide.vec167 = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !337, !alias.scope !2921
  %wide.vec170 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !337, !alias.scope !2921
  store <4 x i32> %wide.vec167, ptr %next.gep163, align 4, !tbaa !337, !alias.scope !2922, !noalias !2921
  store <4 x i32> %wide.vec170, ptr %next.gep164, align 4, !tbaa !337, !alias.scope !2922, !noalias !2921
  %index.next175 = add nuw i64 %index162, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next175, %n.vec160
  br i1 %i.dn, label %middle.block176, label %vector.body161, !llvm.loop !2913

middle.block176:                                  ; preds = %vector.body161
  %cmp.n177 = icmp eq i64 %i.dg, %n.vec160
  br i1 %cmp.n177, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49.preheader212

.lr.ph.i49.preheader212:                          ; preds = %vector.memcheck155, %.lr.ph.i49.preheader, %middle.block176
  %.010.i50.ph = phi ptr [ %0, %vector.memcheck155 ], [ %0, %.lr.ph.i49.preheader ], [ %i.dj, %middle.block176 ]
  %.079.i51.ph = phi ptr [ %i.dc, %vector.memcheck155 ], [ %i.dc, %.lr.ph.i49.preheader ], [ %i.dk, %middle.block176 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader212, %.lr.ph.i49
  %.010.i50 = phi ptr [ %i.dt, %.lr.ph.i49 ], [ %.010.i50.ph, %.lr.ph.i49.preheader212 ] ; 3 uses
  %.079.i51 = phi ptr [ %i.ds, %.lr.ph.i49 ], [ %.079.i51.ph, %.lr.ph.i49.preheader212 ] ; 3 uses
  %i.do = load i32, ptr %.079.i51, align 4, !tbaa !337
  store i32 %i.do, ptr %.010.i50, align 4, !tbaa !346
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i51, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !337
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i50, i64 4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !347
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i51, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i50, i64 8
  %.not.i52 = icmp eq ptr %i.ds, %i.dd
  br i1 %.not.i52, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, label %.lr.ph.i49, !llvm.loop !2914

bb.e:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54: ; preds = %.lr.ph.i49, %middle.block176, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !372
  %.not.i55 = icmp eq i64 %i.dv, 0
  br i1 %.not.i55, label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54
  store i64 0, ptr %i.du, align 8, !tbaa !372
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairIiiEPS3_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit54, %.preheader.preheader.i.i
  %i.dw = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.dw)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %5, align 8, !tbaa !367    ; 12 uses
  %i.d = getelementptr [8 x i8], ptr %2, i64 %i.c ; 7 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !367
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.e, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.c, 0
  %or.cond143.not189 = and i1 %.not139, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ule i64 %i.c, %i.j
  %or.cond187 = select i1 %or.cond143.not189, i1 %i.k, i1 false ; 8 uses
  br i1 %or.cond187, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !372  ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !371    ; 15 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.c, 3                   ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.p = add i64 %.idx.i, -8                      ; 2 uses
  %i.q = lshr exact i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.s = getelementptr i8, ptr %i.n, i64 %.idx.i
  %bound0 = icmp ult ptr %i.n, %i.o
  %bound1 = icmp ult ptr %2, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %i.v = getelementptr i8, ptr %2, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 3 uses
  %i.x = or disjoint i64 %i.w, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.w
  %next.gep245 = getelementptr i8, ptr %i.n, i64 %i.x
  %next.gep246 = getelementptr i8, ptr %2, i64 %i.w
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.x
  %wide.vec = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !337, !alias.scope !2951
  %wide.vec249 = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !337, !alias.scope !2951
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !alias.scope !2952, !noalias !2951
  store <4 x i32> %wide.vec249, ptr %next.gep245, align 4, !tbaa !337, !alias.scope !2952, !noalias !2951
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !2926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !346
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !337
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !347
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !2927

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 3                     ; 6 uses
  %i.af = getelementptr i8, ptr %2, i64 %.idx26.i ; 6 uses
  %.not8.i17.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.ag = add i64 %.idx26.i, -8                   ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check259 = icmp ult i64 %i.ag, 40
  br i1 %min.iters.check259, label %.lr.ph.i18.i.preheader525, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.lr.ph.i18.i.preheader
  %i.aj = getelementptr i8, ptr %i.n, i64 %.idx26.i
  %bound0261 = icmp ult ptr %i.n, %i.af
  %bound1262 = icmp ult ptr %2, %i.aj
  %found.conflict263 = and i1 %bound0261, %bound1262
  br i1 %found.conflict263, label %.lr.ph.i18.i.preheader525, label %vector.ph264

vector.ph264:                                     ; preds = %vector.memcheck260
  %n.vec265 = and i64 %i.ai, 4611686018427387900  ; 3 uses
  %i.ak = shl i64 %n.vec265, 3                    ; 2 uses
  %i.al = getelementptr i8, ptr %i.n, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.ak
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next280, %vector.body266 ] ; 2 uses
  %i.an = shl i64 %index267, 3                    ; 3 uses
  %i.ao = or disjoint i64 %i.an, 16               ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.n, i64 %i.an
  %next.gep269 = getelementptr i8, ptr %i.n, i64 %i.ao
  %next.gep270 = getelementptr i8, ptr %2, i64 %i.an
  %next.gep271 = getelementptr i8, ptr %2, i64 %i.ao
  %wide.vec272 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !337, !alias.scope !2953
  %wide.vec275 = load <4 x i32>, ptr %next.gep271, align 4, !tbaa !337, !alias.scope !2953
  store <4 x i32> %wide.vec272, ptr %next.gep268, align 4, !tbaa !337, !alias.scope !2954, !noalias !2953
  store <4 x i32> %wide.vec275, ptr %next.gep269, align 4, !tbaa !337, !alias.scope !2954, !noalias !2953
  %index.next280 = add nuw i64 %index267, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.ap, label %middle.block281, label %vector.body266, !llvm.loop !2931

middle.block281:                                  ; preds = %vector.body266
  %cmp.n282 = icmp eq i64 %i.ai, %n.vec265
  br i1 %cmp.n282, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i.preheader525

.lr.ph.i18.i.preheader525:                        ; preds = %vector.memcheck260, %.lr.ph.i18.i.preheader, %middle.block281
  %.010.i19.i.ph = phi ptr [ %i.n, %vector.memcheck260 ], [ %i.n, %.lr.ph.i18.i.preheader ], [ %i.al, %middle.block281 ]
  %.079.i20.i.ph = phi ptr [ %2, %vector.memcheck260 ], [ %2, %.lr.ph.i18.i.preheader ], [ %i.am, %middle.block281 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader525, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.av, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader525 ] ; 3 uses
  %.079.i20.i = phi ptr [ %i.au, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader525 ] ; 3 uses
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !337
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !346
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !337
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !347
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 8 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i21.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2932

_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i: ; preds = %.lr.ph.i18.i, %middle.block281, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.al, %middle.block281 ], [ %i.av, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i287 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 3                 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  %i.ax = add i64 %.idx27.i, -8
  %i.ay = sub i64 %i.ax, %.idx26.i                ; 2 uses
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.ay, 104
  br i1 %min.iters.check289, label %.lr.ph.i24.i.preheader524, label %vector.memcheck290

vector.memcheck290:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bb = add i64 %.idx26.i, %i.a
  %i.bc = sub i64 %i.bb, %.0.lcssa.i22.i287
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %.lr.ph.i24.i.preheader524, label %vector.ph291

vector.ph291:                                     ; preds = %vector.memcheck290
  %n.vec292 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec292, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bd
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next298, %vector.body293 ] ; 2 uses
  %i.bg = shl i64 %index294, 3                    ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.af, i64 %i.bg ; 2 uses
  %next.gep296 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep295, align 4
  %wide.load297 = load <2 x i64>, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %next.gep296, i64 16
  store <2 x i64> %wide.load, ptr %next.gep296, align 4
  store <2 x i64> %wide.load297, ptr %i.bi, align 4
  %index.next298 = add nuw i64 %index294, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next298, %n.vec292
  br i1 %i.bj, label %middle.block299, label %vector.body293, !llvm.loop !2933

middle.block299:                                  ; preds = %vector.body293
  %cmp.n300 = icmp eq i64 %i.ba, %n.vec292
  br i1 %cmp.n300, label %.thread, label %.lr.ph.i24.i.preheader524

.lr.ph.i24.i.preheader524:                        ; preds = %vector.memcheck290, %.lr.ph.i24.i.preheader, %middle.block299
  %.012.i.i.ph = phi ptr [ %i.af, %vector.memcheck290 ], [ %i.af, %.lr.ph.i24.i.preheader ], [ %i.be, %middle.block299 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck290 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bf, %middle.block299 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader524, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader524 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bm, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader524 ] ; 2 uses
  %i.bk = load i64, ptr %.012.i.i, align 4
  store i64 %i.bk, ptr %.0911.i.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.not.i25.i = icmp eq ptr %i.bl, %i.aw
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !2934

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block299, %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !372
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = shl i64 %3, 3                           ; 3 uses
  %7 = shl i64 %i.c, 3
  %8 = or disjoint i64 %7, 4                      ; 4 uses
  %9 = add i64 %i.bo, -4                          ; 4 uses
  %i.bp = shl i64 %3, 3
  %i.bq = add i64 %i.bp, -8
  %10 = getelementptr i8, ptr %2, i64 %8
  %11 = getelementptr i8, ptr %2, i64 %8
  %12 = getelementptr i8, ptr %2, i64 %8
  %13 = getelementptr i8, ptr %2, i64 %8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.br = select i1 %.1, i1 %i.cc, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !367
  %i.bs = sub i64 %i.g, %spec.select
  store i64 %i.bs, ptr %1, align 8, !tbaa !367
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bv, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.in, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ]
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 15 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.cc, %bb.s ]
  %i.bt = load i64, ptr %5, align 8, !tbaa !367   ; 2 uses
  %i.bu = load i64, ptr %1, align 8, !tbaa !367   ; 4 uses
  %i.bv = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.bt, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.bw = lshr i64 %i.bu, 1                       ; 3 uses
  %i.bx = sub nuw i64 %i.bu, %i.bw                ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 3
  br i1 %i.by, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bz = udiv i64 %i.bv, %i.bw
  %.not192 = icmp ult i64 %i.bx, %i.bz
  br i1 %.not192, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.ca = udiv i64 %i.bv, %i.bu
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.bw, %bb.f ], [ %i.ca, %.critedge.i ], [ %i.bt, %bb.d ] ; 14 uses
  %i.cb = and i64 %.0130204, 1
  %i.cc = icmp eq i64 %i.cb, 0                    ; 9 uses
  %i.cd = urem i64 %i.e, %i.bv                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cd, %.0205
  %i.ce = select i1 %.not.i145, i64 0, i64 %i.cd  ; 6 uses
  %spec.select15.i = sub i64 %i.e, %i.ce          ; 5 uses
  %i.cf = icmp ne i64 %.0130204, 0
  %or.cond = and i1 %i.cf, %.0131203
  %or.cond3 = select i1 %or.cond, i1 %.0134200, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.cc, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = sub i64 0, %.0132202
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cg ; 4 uses
  %.not8.i.i146 = icmp eq i64 %.0133201, 0        ; 2 uses
  br i1 %or.cond187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0133201 ; 2 uses
  %.idx13.i = shl i64 %.0133201, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx13.i ; 2 uses
  %i.ck = add i64 %.idx13.i, -8                   ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1
  %xtraiter528 = and i64 %i.cm, 3                 ; 2 uses
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol

.lr.ph.i.i149.prol:                               ; preds = %.lr.ph.i.preheader.i148, %.lr.ph.i.i149.prol
  %.010.i.i150.prol = phi ptr [ %i.co, %.lr.ph.i.i149.prol ], [ %i.ci, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %.079.i.i151.prol = phi ptr [ %i.cn, %.lr.ph.i.i149.prol ], [ %i.cj, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i149.prol ], [ 0, %.lr.ph.i.preheader.i148 ]
  %i.cn = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -8 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -8 ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !337
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !346
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i151.prol, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !337
  %i.cs = getelementptr inbounds i8, ptr %.010.i.i150.prol, i64 -4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !347
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter528
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i149.prol.loopexit, label %.lr.ph.i.i149.prol, !llvm.loop !2935

.lr.ph.i.i149.prol.loopexit:                      ; preds = %.lr.ph.i.i149.prol, %.lr.ph.i.preheader.i148
  %.010.i.i150.unr = phi ptr [ %i.ci, %.lr.ph.i.preheader.i148 ], [ %i.co, %.lr.ph.i.i149.prol ]
  %.079.i.i151.unr = phi ptr [ %i.cj, %.lr.ph.i.preheader.i148 ], [ %i.cn, %.lr.ph.i.i149.prol ]
  %i.ct = icmp ult i64 %i.ck, 24
  br i1 %i.ct, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.dn, %.lr.ph.i.i149 ], [ %.010.i.i150.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %.079.i.i151 = phi ptr [ %i.dm, %.lr.ph.i.i149 ], [ %.079.i.i151.unr, %.lr.ph.i.i149.prol.loopexit ] ; 8 uses
  %i.cu = getelementptr inbounds i8, ptr %.079.i.i151, i64 -8
  %i.cv = getelementptr inbounds i8, ptr %.010.i.i150, i64 -8
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !337
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !346
  %i.cx = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !337
  %i.cz = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !347
  %i.da = getelementptr inbounds i8, ptr %.079.i.i151, i64 -16
  %i.db = getelementptr inbounds i8, ptr %.010.i.i150, i64 -16
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !337
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !346
  %i.dd = getelementptr inbounds i8, ptr %.079.i.i151, i64 -12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !337
  %i.df = getelementptr inbounds i8, ptr %.010.i.i150, i64 -12
  store i32 %i.de, ptr %i.df, align 4, !tbaa !347
  %i.dg = getelementptr inbounds i8, ptr %.079.i.i151, i64 -24
  %i.dh = getelementptr inbounds i8, ptr %.010.i.i150, i64 -24
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !337
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !346
  %i.dj = getelementptr inbounds i8, ptr %.079.i.i151, i64 -20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !337
  %i.dl = getelementptr inbounds i8, ptr %.010.i.i150, i64 -20
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !347
  %i.dm = getelementptr inbounds i8, ptr %.079.i.i151, i64 -32 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.010.i.i150, i64 -32 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !337
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !346
  %i.dp = getelementptr inbounds i8, ptr %.079.i.i151, i64 -28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !337
  %i.dr = getelementptr inbounds i8, ptr %.010.i.i150, i64 -28
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !347
  %.not.i.i152.3 = icmp eq ptr %i.ch, %i.dm
  br i1 %.not.i.i152.3, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i149, !llvm.loop !32

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0133201 ; 3 uses
  %.idx.i147 = shl i64 %.0133201, 3               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i147 ; 3 uses
  %i.du = add i64 %.idx.i147, -8                  ; 2 uses
  %i.dv = and i64 %i.du, 8
  %lcmp.mod.not.not = icmp eq i64 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 3 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !337
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !337
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !337
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !337
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 2 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !337
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !337
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !337
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !337
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.ds, %.lr.ph.i10.preheader.i ], [ %i.dx, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.dt, %.lr.ph.i10.preheader.i ], [ %i.dw, %.lr.ph.i10.i.prol ]
  %i.ee = icmp eq i64 %i.du, 0
  br i1 %i.ee, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.eo, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %.057.i.i = phi ptr [ %i.en, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !337
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !337
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !337
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !337
  %i.ej = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !337
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !337
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !337
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !337
  %i.en = getelementptr inbounds i8, ptr %.057.i.i, i64 -16 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 3 uses
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !337
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !337
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !337
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !337
  %i.er = getelementptr inbounds i8, ptr %.057.i.i, i64 -12 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.08.i.i, i64 -12 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !337
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !337
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !337
  store i32 %i.et, ptr %i.es, align 4, !tbaa !337
  %.not.i11.i.1 = icmp eq ptr %i.ch, %i.en
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i, !llvm.loop !40

bb.k:                                             ; preds = %bb.g
  %i.ev = getelementptr [8 x i8], ptr %i.d, i64 %.0133201 ; 18 uses
  %i.ew = sub i64 0, %.1.i
  %i.ex = getelementptr [8 x i8], ptr %i.ev, i64 %i.ew ; 16 uses
  %i.ey = icmp ugt i64 %.0133201, %spec.select15.i
  br i1 %i.ey, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ez = sub nuw i64 %.0133201, %spec.select15.i ; 2 uses
  %i.fa = sub i64 0, %i.ez
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fa ; 3 uses
  %.idx13.i161 = shl nuw nsw i64 %i.ez, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx13.i161 ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i162, label %.lr.ph.i10.i156

.lr.ph.i.i162:                                    ; preds = %bb.l, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.fe, %.lr.ph.i.i162 ], [ %i.ev, %bb.l ] ; 2 uses
  %.079.i.i164 = phi ptr [ %i.fd, %.lr.ph.i.i162 ], [ %i.fc, %bb.l ] ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.079.i.i164, i64 -8 ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %.010.i.i163, i64 -8 ; 2 uses
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !337
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !346
  %i.fg = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !337
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !347
  %.not.i.i165 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i162, !llvm.loop !32

.lr.ph.i10.i156:                                  ; preds = %bb.l, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fk, %.lr.ph.i10.i156 ], [ %i.ev, %bb.l ] ; 2 uses
  %.057.i.i158 = phi ptr [ %i.fj, %.lr.ph.i10.i156 ], [ %i.fc, %bb.l ] ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %.057.i.i158, i64 -8 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.08.i.i157, i64 -8 ; 3 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !337
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !337
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !337
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !337
  %i.fn = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 2 uses
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !337
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !337
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !337
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !337
  %.not.i11.i159 = icmp eq ptr %i.fb, %i.fj
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i10.i156, !llvm.loop !40

bb.m:                                             ; preds = %bb.k
  %i.fr = icmp ult i64 %.0133201, %spec.select15.i
  br i1 %i.fr, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit

bb.n:                                             ; preds = %bb.m
  %i.fs = sub nuw i64 %spec.select15.i, %.0133201
  %.idx14.i = shl i64 %i.fs, 3
  %i.ft = getelementptr i8, ptr %i.ev, i64 %.idx14.i ; 7 uses
  %i.fu = add i64 %i.ce, %.0133201
  %i.fv = add i64 %i.fu, %i.c
  %i.fw = shl i64 %i.fv, 3
  %i.fx = sub i64 %i.bq, %i.fw                    ; 3 uses
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 4 uses
  br i1 %or.cond187, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.n
  %min.iters.check407 = icmp ult i64 %i.fx, 136
  br i1 %min.iters.check407, label %.lr.ph.i9.i.preheader520, label %vector.memcheck408

vector.memcheck408:                               ; preds = %.lr.ph.i9.i.preheader
  %i.ga = shl i64 %i.ce, 3
  %i.gb = sub i64 %9, %i.ga
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb     ; 3 uses
  %i.gd = add i64 %i.ce, %.1.i
  %i.ge = shl i64 %i.gd, 3                        ; 2 uses
  %i.gf = sub i64 %9, %i.ge
  %i.gg = getelementptr i8, ptr %2, i64 %i.gf     ; 3 uses
  %i.gh = shl i64 %.0133201, 3
  %i.gi = getelementptr i8, ptr %10, i64 %i.gh    ; 3 uses
  %14 = sub i64 %.0133201, %.1.i
  %15 = shl i64 %14, 3
  %i.gj = getelementptr i8, ptr %11, i64 %15      ; 3 uses
  %i.gk = sub i64 %i.bo, %i.ge
  %i.gl = getelementptr i8, ptr %2, i64 %i.gk     ; 3 uses
  %bound0409 = icmp ult ptr %i.ev, %i.gg
  %bound1410 = icmp ult ptr %i.ex, %i.gc
  %found.conflict411 = and i1 %bound0409, %bound1410
  %bound0412 = icmp ult ptr %i.ev, %i.ft
  %bound1413 = icmp ult ptr %i.gi, %i.gc
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %found.conflict411, %found.conflict414
  %bound0416 = icmp ult ptr %i.ev, %i.gl
  %bound1417 = icmp ult ptr %i.gj, %i.gc
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %i.ex, %i.ft
  %bound1421 = icmp ult ptr %i.gi, %i.gg
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  %bound0424 = icmp ult ptr %i.ex, %i.gl
  %bound1425 = icmp ult ptr %i.gj, %i.gg
  %found.conflict426 = and i1 %bound0424, %bound1425
  %conflict.rdx427 = or i1 %conflict.rdx423, %found.conflict426
  %bound0428 = icmp ult ptr %i.gi, %i.gl
  %bound1429 = icmp ult ptr %i.gj, %i.ft
  %found.conflict430 = and i1 %bound0428, %bound1429
  %conflict.rdx431 = or i1 %conflict.rdx427, %found.conflict430
  br i1 %conflict.rdx431, label %.lr.ph.i9.i.preheader520, label %vector.ph432

vector.ph432:                                     ; preds = %vector.memcheck408
  %n.vec433 = and i64 %i.fz, 4611686018427387902  ; 3 uses
  %i.gm = shl i64 %n.vec433, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.ex, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.ev, i64 %i.gm
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next446, %vector.body434 ] ; 2 uses
  %i.gp = shl i64 %index435, 3                    ; 2 uses
  %next.gep436 = getelementptr i8, ptr %i.ex, i64 %i.gp ; 2 uses
  %next.gep437 = getelementptr i8, ptr %i.ev, i64 %i.gp ; 2 uses
  %wide.vec438 = load <4 x i32>, ptr %next.gep437, align 4, !tbaa !337
  %wide.vec441 = load <4 x i32>, ptr %next.gep436, align 4, !tbaa !337
  store <4 x i32> %wide.vec441, ptr %next.gep437, align 4, !tbaa !337
  store <4 x i32> %wide.vec438, ptr %next.gep436, align 4, !tbaa !337
  %index.next446 = add nuw i64 %index435, 2       ; 2 uses
  %i.gq = icmp eq i64 %index.next446, %n.vec433
  br i1 %i.gq, label %middle.block447, label %vector.body434, !llvm.loop !2936

middle.block447:                                  ; preds = %vector.body434
  %cmp.n448 = icmp eq i64 %i.fz, %n.vec433
  br i1 %cmp.n448, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i9.i.preheader520

.lr.ph.i9.i.preheader520:                         ; preds = %vector.memcheck408, %.lr.ph.i9.i.preheader, %middle.block447
  %.010.i10.i.ph = phi ptr [ %i.ex, %vector.memcheck408 ], [ %i.ex, %.lr.ph.i9.i.preheader ], [ %i.gn, %middle.block447 ]
  %.079.i11.i.ph = phi ptr [ %i.ev, %vector.memcheck408 ], [ %i.ev, %.lr.ph.i9.i.preheader ], [ %i.go, %middle.block447 ]
  br label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.n
  %min.iters.check332 = icmp ult i64 %i.fx, 200
  br i1 %min.iters.check332, label %.lr.ph.i.i168.preheader518, label %vector.memcheck333

vector.memcheck333:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gr = add i64 %i.ce, %.1.i
  %i.gs = shl i64 %i.gr, 3                        ; 2 uses
  %i.gt = sub i64 %9, %i.gs
  %i.gu = getelementptr i8, ptr %2, i64 %i.gt     ; 3 uses
  %i.gv = shl i64 %.0133201, 3
  %16 = sub i64 %.0133201, %.1.i
  %i.gw = shl i64 %16, 3
  %i.gx = getelementptr i8, ptr %12, i64 %i.gw    ; 3 uses
  %i.gy = sub i64 %i.bo, %i.gs
  %i.gz = getelementptr i8, ptr %2, i64 %i.gy     ; 3 uses
  %i.ha = shl i64 %i.ce, 3
  %i.hb = sub i64 %9, %i.ha
  %i.hc = getelementptr i8, ptr %2, i64 %i.hb     ; 2 uses
  %i.hd = getelementptr i8, ptr %13, i64 %i.gv    ; 2 uses
  %bound0334 = icmp ult ptr %i.ex, %i.gz
  %bound1335 = icmp ult ptr %i.gx, %i.gu
  %found.conflict336 = and i1 %bound0334, %bound1335
  %bound0337 = icmp ult ptr %i.ex, %i.hc
  %bound1338 = icmp ult ptr %i.ev, %i.gu
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx = or i1 %found.conflict336, %found.conflict339
  %bound0340 = icmp ult ptr %i.ex, %i.ft
  %bound1341 = icmp ult ptr %i.hd, %i.gu
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx, %found.conflict342
  %bound0344 = icmp ult ptr %i.gx, %i.hc
  %bound1345 = icmp ult ptr %i.ev, %i.gz
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %i.gx, %i.ft
  %bound1349 = icmp ult ptr %i.hd, %i.gz
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  br i1 %conflict.rdx351, label %.lr.ph.i.i168.preheader518, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck333
  %n.vec353 = and i64 %i.fz, 4611686018427387900  ; 3 uses
  %i.he = shl i64 %n.vec353, 3                    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ex, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.ev, i64 %i.he
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next368, %vector.body354 ] ; 2 uses
  %i.hh = shl i64 %index355, 3                    ; 3 uses
  %i.hi = or disjoint i64 %i.hh, 16               ; 2 uses
  %next.gep356 = getelementptr i8, ptr %i.ex, i64 %i.hh
  %next.gep357 = getelementptr i8, ptr %i.ex, i64 %i.hi
  %next.gep358 = getelementptr i8, ptr %i.ev, i64 %i.hh
  %next.gep359 = getelementptr i8, ptr %i.ev, i64 %i.hi
  %wide.vec360 = load <4 x i32>, ptr %next.gep358, align 4, !tbaa !337
  %wide.vec363 = load <4 x i32>, ptr %next.gep359, align 4, !tbaa !337
  store <4 x i32> %wide.vec360, ptr %next.gep356, align 4, !tbaa !337
  store <4 x i32> %wide.vec363, ptr %next.gep357, align 4, !tbaa !337
  %index.next368 = add nuw i64 %index355, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next368, %n.vec353
  br i1 %i.hj, label %middle.block369, label %vector.body354, !llvm.loop !2937

middle.block369:                                  ; preds = %vector.body354
  %cmp.n370 = icmp eq i64 %i.fz, %n.vec353
  br i1 %cmp.n370, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i168.preheader518

.lr.ph.i.i168.preheader518:                       ; preds = %vector.memcheck333, %.lr.ph.i.i168.preheader, %middle.block369
  %.010.i.i169.ph = phi ptr [ %i.ex, %vector.memcheck333 ], [ %i.ex, %.lr.ph.i.i168.preheader ], [ %i.hf, %middle.block369 ]
  %.079.i.i170.ph = phi ptr [ %i.ev, %vector.memcheck333 ], [ %i.ev, %.lr.ph.i.i168.preheader ], [ %i.hg, %middle.block369 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader518, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.hp, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader518 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ho, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader518 ] ; 3 uses
  %i.hk = load i32, ptr %.079.i.i170, align 4, !tbaa !337
  store i32 %i.hk, ptr %.010.i.i169, align 4, !tbaa !346
  %i.hl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !337
  %i.hn = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !347
  %i.ho = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ho, %i.ft
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i.i168, !llvm.loop !2938

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader520, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.hx, %.lr.ph.i9.i ], [ %.010.i10.i.ph, %.lr.ph.i9.i.preheader520 ] ; 4 uses
  %.079.i11.i = phi ptr [ %i.hw, %.lr.ph.i9.i ], [ %.079.i11.i.ph, %.lr.ph.i9.i.preheader520 ] ; 4 uses
  %i.hq = load i32, ptr %.079.i11.i, align 4, !tbaa !337
  %i.hr = load i32, ptr %.010.i10.i, align 4, !tbaa !337
  store i32 %i.hr, ptr %.079.i11.i, align 4, !tbaa !337
  store i32 %i.hq, ptr %.010.i10.i, align 4, !tbaa !337
  %i.hs = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4 ; 2 uses
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !337
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !337
  store i32 %i.hv, ptr %i.hs, align 4, !tbaa !337
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !337
  %i.hw = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 8
  %.not.i12.i = icmp eq ptr %i.hw, %i.ft
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit, label %.lr.ph.i9.i, !llvm.loop !2939

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i149.prol.loopexit, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block447, %middle.block369, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.bu, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit
  %i.hy = udiv i64 %i.bv, %.1.i
  %i.hz = icmp ugt i64 %i.hy, 256
  br i1 %i.hz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.cc
  %i.ia = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.ia
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_13adaptive_xbufIS4_S5_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.ib, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cc)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.cc
  %i.ic = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.ic
  %i.id = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.id, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPSt4pairIiiEEEvT_NS0_9iter_sizeIS6_E4typeES6_b.exit
  %i.ie = load i64, ptr %i.bn, align 8, !tbaa !372
  %i.if = load ptr, ptr %6, align 8, !tbaa !371
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = add i64 %i.ih, 7
  %i.ij = and i64 %i.ii, -8
  %i.ik = inttoptr i64 %i.ij to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.cc
  %i.il = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.il
  %i.im = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef %i.ik, ptr noundef %i.im, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cc)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.in = add i64 %.0130204, 1
  %i.io = icmp ugt i64 %i.e, %i.bv
  br i1 %i.io, label %bb.d, label %._crit_edge, !llvm.loop !2940

bb.t:                                             ; preds = %._crit_edge
  %i.ip = load ptr, ptr %6, align 8, !tbaa !371   ; 13 uses
  %i.iq = load i64, ptr %5, align 8, !tbaa !367   ; 3 uses
  %.idx191 = shl i64 %i.iq, 3                     ; 4 uses
  %i.ir = getelementptr i8, ptr %i.ip, i64 %.idx191 ; 4 uses
  %.not8.i = icmp eq i64 %i.iq, 0                 ; 2 uses
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.is = getelementptr [8 x i8], ptr %2, i64 %i.e ; 6 uses
  %i.it = add i64 %.idx191, -8                    ; 2 uses
  %i.iu = lshr exact i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check487 = icmp ult i64 %i.it, 104
  br i1 %min.iters.check487, label %.lr.ph.i.preheader514, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph.i.preheader
  %.idx191513 = add i64 %i.iq, %3
  %i.iw = sub i64 %.idx191513, %i.c
  %i.ix = shl i64 %i.iw, 3
  %i.iy = getelementptr i8, ptr %2, i64 %i.ix
  %bound0489 = icmp ult ptr %i.is, %i.ir
  %bound1490 = icmp ult ptr %i.ip, %i.iy
  %found.conflict491 = and i1 %bound0489, %bound1490
  br i1 %found.conflict491, label %.lr.ph.i.preheader514, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %i.iv, 4611686018427387900  ; 3 uses
  %i.iz = shl i64 %n.vec493, 3                    ; 2 uses
  %i.ja = getelementptr i8, ptr %i.is, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ip, i64 %i.iz
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next508, %vector.body494 ] ; 2 uses
  %i.jc = shl i64 %index495, 3                    ; 3 uses
  %i.jd = or disjoint i64 %i.jc, 16               ; 2 uses
  %next.gep496 = getelementptr i8, ptr %i.is, i64 %i.jc
  %next.gep497 = getelementptr i8, ptr %i.is, i64 %i.jd
  %next.gep498 = getelementptr i8, ptr %i.ip, i64 %i.jc
  %next.gep499 = getelementptr i8, ptr %i.ip, i64 %i.jd
  %wide.vec500 = load <4 x i32>, ptr %next.gep498, align 4, !tbaa !337, !alias.scope !2955
  %wide.vec503 = load <4 x i32>, ptr %next.gep499, align 4, !tbaa !337, !alias.scope !2955
  store <4 x i32> %wide.vec500, ptr %next.gep496, align 4, !tbaa !337, !alias.scope !2956, !noalias !2955
  store <4 x i32> %wide.vec503, ptr %next.gep497, align 4, !tbaa !337, !alias.scope !2956, !noalias !2955
  %index.next508 = add nuw i64 %index495, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next508, %n.vec493
  br i1 %i.je, label %middle.block509, label %vector.body494, !llvm.loop !2944

middle.block509:                                  ; preds = %vector.body494
  %cmp.n510 = icmp eq i64 %i.iv, %n.vec493
  br i1 %cmp.n510, label %_ZN5boost4moveIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.preheader514

.lr.ph.i.preheader514:                            ; preds = %vector.memcheck488, %.lr.ph.i.preheader, %middle.block509
  %.010.i.ph = phi ptr [ %i.is, %vector.memcheck488 ], [ %i.is, %.lr.ph.i.preheader ], [ %i.ja, %middle.block509 ]
  %.079.i.ph = phi ptr [ %i.ip, %vector.memcheck488 ], [ %i.ip, %.lr.ph.i.preheader ], [ %i.jb, %middle.block509 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader514, %.lr.ph.i
  %.010.i = phi ptr [ %i.jk, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader514 ] ; 3 uses
  %.079.i = phi ptr [ %i.jj, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader514 ] ; 3 uses
  %i.jf = load i32, ptr %.079.i, align 4, !tbaa !337
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx60
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.an, i64 noundef %.04366, i64 noundef %i.ak)
  %i.ao = add i64 %.062, %i.ai                    ; 3 uses
  %i.ap = sub i64 %i.d, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.i, label %.loopexit, !llvm.loop !2986

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph68
  %.1 = phi i64 [ 0, %.lr.ph68 ], [ 0, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.ar = sub i64 %i.d, %.1
  %i.as = icmp ugt i64 %i.ar, %.04366
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04366 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.at, ptr noundef %i.au, ptr noundef %1, i64 noundef %.04366, i64 noundef %i.ax)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.ay = shl i64 %.04366, 1
  br i1 %i.ah, label %.lr.ph68, label %._crit_edge69, !llvm.loop !2987
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx37 = shl nuw nsw i64 %.sroa.speculated, 3
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph43.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
  %.038.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.038.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !2988

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  %.038.us39 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038.us39 ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b
  %i.h = load <2 x i32>, ptr %i.f, align 4, !tbaa !337
  store <2 x i32> %i.h, ptr %i.g, align 4, !tbaa !337
  %i.i = add i64 %.038.us39, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !2988

.lr.ph43.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit
  %.038 = phi i64 [ %i.af, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx37
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !337
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !337
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.ae, %.critedge.i ], [ %i.p, %.lr.ph43.i.preheader ] ; 5 uses
  %.pn41.i = phi ptr [ %.02642.i, %.critedge.i ], [ %i.n, %.lr.ph43.i.preheader ] ; 5 uses
  %.02740.i = phi ptr [ %i.q, %.critedge.i ], [ %i.l, %.lr.ph43.i.preheader ]
  %.02642.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !337
  %i.s = load i32, ptr %.pn41.i, align 4, !tbaa !337
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph43.i
  %i.u = load <2 x i32>, ptr %.pn41.i, align 4, !tbaa !337
  store <2 x i32> %i.u, ptr %.02642.i, align 4, !tbaa !337
  %.not3233.i = icmp eq ptr %.pn41.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.v, %bb.c ], [ %.pn41.i, %bb.b ] ; 3 uses
  %i.v = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !337
  %i.x = load i32, ptr %i.v, align 4, !tbaa !337
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = load <2 x i32>, ptr %i.v, align 4, !tbaa !337
  store <2 x i32> %i.z, ptr %.035.i, align 4, !tbaa !337
  %.not32.i = icmp eq ptr %i.v, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !71

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph43.i
  %.1.i = phi ptr [ %.02642.i, %.lr.ph43.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %i.q, align 4, !tbaa !337
  store i32 %i.aa, ptr %.1.i, align 4, !tbaa !346
  %i.ab = getelementptr inbounds nuw i8, ptr %.02740.i, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !337
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !347
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not31.i = icmp eq ptr %i.ae, %i.m
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit, label %.lr.ph43.i, !llvm.loop !72

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.af = add i64 %.038, %.sroa.speculated        ; 3 uses
  %i.ag = sub i64 %1, %i.af
  %i.ah = icmp ugt i64 %i.ag, %.sroa.speculated
  br i1 %i.ah, label %.lr.ph43.i.preheader, label %._crit_edge, !llvm.loop !2988

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us ], [ %i.af, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit ], [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %.idx36 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx36
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit34, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.al = load <2 x i32>, ptr %i.ai, align 4, !tbaa !337
  store <2 x i32> %i.al, ptr %i.ak, align 4, !tbaa !337
  %i.am = add nuw nsw i64 %.idx, 8
  %.not3139.i22 = icmp samesign eq i64 %i.am, %.idx36
  br i1 %.not3139.i22, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit34, label %.lr.ph43.i23.preheader

.lr.ph43.i23.preheader:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %.lr.ph43.i23

.lr.ph43.i23:                                     ; preds = %.lr.ph43.i23.preheader, %.critedge.i27
  %i.ao = phi ptr [ %i.bc, %.critedge.i27 ], [ %i.an, %.lr.ph43.i23.preheader ] ; 5 uses
  %.pn41.i24 = phi ptr [ %.02642.i26, %.critedge.i27 ], [ %i.ak, %.lr.ph43.i23.preheader ] ; 5 uses
  %.02740.i25 = phi ptr [ %i.ao, %.critedge.i27 ], [ %i.ai, %.lr.ph43.i23.preheader ]
  %.02642.i26 = getelementptr inbounds nuw i8, ptr %.pn41.i24, i64 8 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !337
  %i.aq = load i32, ptr %.pn41.i24, align 4, !tbaa !337
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %.critedge.i27

bb.e:                                             ; preds = %.lr.ph43.i23
  %i.as = load <2 x i32>, ptr %.pn41.i24, align 4, !tbaa !337
  store <2 x i32> %i.as, ptr %.02642.i26, align 4, !tbaa !337
  %.not3233.i30 = icmp eq ptr %.pn41.i24, %i.ak
  br i1 %.not3233.i30, label %.critedge.i27, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.e, %bb.f
  %.035.i32 = phi ptr [ %i.at, %bb.f ], [ %.pn41.i24, %bb.e ] ; 3 uses
  %i.at = getelementptr i8, ptr %.035.i32, i64 -8 ; 4 uses
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !337
  %i.av = load i32, ptr %i.at, align 4, !tbaa !337
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %.critedge.i27

bb.f:                                             ; preds = %.lr.ph.i31
  %i.ax = load <2 x i32>, ptr %i.at, align 4, !tbaa !337
  store <2 x i32> %i.ax, ptr %.035.i32, align 4, !tbaa !337
  %.not32.i33 = icmp eq ptr %i.at, %i.ak
  br i1 %.not32.i33, label %.critedge.i27, label %.lr.ph.i31, !llvm.loop !71

.critedge.i27:                                    ; preds = %bb.f, %.lr.ph.i31, %bb.e, %.lr.ph43.i23
  %.1.i28 = phi ptr [ %.02642.i26, %.lr.ph43.i23 ], [ %i.ak, %bb.e ], [ %.035.i32, %.lr.ph.i31 ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !337
  store i32 %i.ay, ptr %.1.i28, align 4, !tbaa !346
  %i.az = getelementptr inbounds nuw i8, ptr %.02740.i25, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !337
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i28, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !347
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.not31.i29 = icmp eq ptr %i.bc, %i.aj
  br i1 %.not31.i29, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit34, label %.lr.ph43.i23, !llvm.loop !72

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit34: ; preds = %.critedge.i27, %._crit_edge, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge91

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx71 = shl i64 %1, 3                         ; 5 uses
  %5 = add i64 %.idx71, -8                        ; 2 uses
  %invariant.op = add i64 %.idx71, -8
  %invariant.op548 = add i64 %.idx71, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70
  %.04090 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.iu, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70 ]
  %.04189 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.it, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70 ] ; 10 uses
  %.04288 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70 ] ; 15 uses
  %.04189226 = ptrtoaddr ptr %.04189 to i64       ; 7 uses
  %i.d = shl i64 %.04288, 1                       ; 8 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub i64 0, %.04288
  %.not43.i = icmp eq i64 %.04288, 0
  %i.g = shl i64 %.04288, 4                       ; 3 uses
  %i.h = add i64 %.04189226, -8                   ; 2 uses
  %i.i = shl i64 %.04288, 3                       ; 3 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = add i64 %i.h, %i.g
  %i.l = shl i64 %.04288, 4                       ; 2 uses
  %i.m = add i64 %i.l, %.04189226
  %i.n = add i64 %i.m, -8
  %i.o = shl i64 %.04288, 3
  %i.p = add i64 %i.o, %.04189226
  %i.q = add i64 %i.p, -8
  %i.r = shl i64 %.04288, 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit
  %indvar375 = phi i64 [ 0, %.lr.ph ], [ %indvar.next376, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 5 uses
  %.083 = phi ptr [ %.04189, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 5 uses
  %.03982 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %i.s = getelementptr [8 x i8], ptr %.083, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.083, i64 %.04288 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.083, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar451 = phi i64 [ %indvar.next452, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.t, %bb.b ] ; 15 uses
  %.02345.i = phi ptr [ %i.co, %bb.f ], [ %i.s, %bb.b ] ; 11 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.083, %bb.b ] ; 5 uses
  %i.v = icmp eq ptr %.02444.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i453.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.w = mul i64 %indvar375, %i.l
  %i.x = add i64 %i.n, %i.w                       ; 2 uses
  %i.y = sub i64 %i.x, %.02246.i453.le            ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check455 = icmp ult i64 %i.y, 184
  br i1 %min.iters.check455, label %.lr.ph.i.i.i.preheader505, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = mul i64 %indvar375, %i.g                ; 3 uses
  %reass.sub = sub i64 %i.ab, %i.i
  %i.ac = or disjoint i64 %reass.sub, 4
  %i.ad = shl i64 %indvar451, 3                   ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = add i64 %i.k, %i.ab
  %i.ag = sub i64 %i.af, %.02246.i453.le
  %i.ah = and i64 %i.ag, -8                       ; 4 uses
  %i.ai = getelementptr i8, ptr %.04189, i64 %i.ae
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah  ; 3 uses
  %i.ak = getelementptr i8, ptr %.04189, i64 %i.ae ; 3 uses
  %reass.sub501 = sub i64 %i.ab, %i.i
  %i.al = getelementptr i8, ptr %.04189, i64 %reass.sub501
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ad
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ah  ; 3 uses
  %i.ap = getelementptr i8, ptr %.02246.i, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %i.ar = getelementptr i8, ptr %.02246.i, i64 4  ; 2 uses
  %i.as = getelementptr i8, ptr %.02246.i, i64 %i.ah
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %bound0457 = icmp ult ptr %.02345.i, %i.ao
  %bound1458 = icmp ult ptr %i.ak, %i.aj
  %found.conflict459 = and i1 %bound0457, %bound1458
  %bound0460 = icmp ult ptr %.02345.i, %i.aq
  %bound1461 = icmp ult ptr %.02246.i, %i.aj
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %found.conflict459, %found.conflict462
  %bound0464 = icmp ult ptr %.02345.i, %i.at
  %bound1465 = icmp ult ptr %i.ar, %i.aj
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  %bound0468 = icmp ult ptr %i.ak, %i.aq
  %bound1469 = icmp ult ptr %.02246.i, %i.ao
  %found.conflict470 = and i1 %bound0468, %bound1469
  %conflict.rdx471 = or i1 %conflict.rdx467, %found.conflict470
  %bound0472 = icmp ult ptr %i.ak, %i.at
  %bound1473 = icmp ult ptr %i.ar, %i.ao
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx471, %found.conflict474
  br i1 %conflict.rdx475, label %.lr.ph.i.i.i.preheader505, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck456
  %n.vec477 = and i64 %i.aa, 4611686018427387900  ; 3 uses
  %i.au = shl i64 %n.vec477, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %.02345.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.02246.i, i64 %i.au
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next492, %vector.body478 ] ; 2 uses
  %i.ax = shl i64 %index479, 3                    ; 3 uses
  %i.ay = or disjoint i64 %i.ax, 16               ; 2 uses
  %next.gep480 = getelementptr i8, ptr %.02345.i, i64 %i.ax
  %next.gep481 = getelementptr i8, ptr %.02345.i, i64 %i.ay
  %next.gep482 = getelementptr i8, ptr %.02246.i, i64 %i.ax
  %next.gep483 = getelementptr i8, ptr %.02246.i, i64 %i.ay
  %wide.vec484 = load <4 x i32>, ptr %next.gep482, align 4, !tbaa !337
  %wide.vec487 = load <4 x i32>, ptr %next.gep483, align 4, !tbaa !337
  store <4 x i32> %wide.vec484, ptr %next.gep480, align 4, !tbaa !337
  store <4 x i32> %wide.vec487, ptr %next.gep481, align 4, !tbaa !337
  %index.next492 = add nuw i64 %index479, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next492, %n.vec477
  br i1 %i.az, label %middle.block493, label %vector.body478, !llvm.loop !2989

middle.block493:                                  ; preds = %vector.body478
  %cmp.n494 = icmp eq i64 %i.aa, %n.vec477
  br i1 %cmp.n494, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i.preheader505

.lr.ph.i.i.i.preheader505:                        ; preds = %vector.memcheck456, %.lr.ph.i.i.i.preheader, %middle.block493
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck456 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block493 ] ; 2 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck456 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.aw, %middle.block493 ] ; 3 uses
  %.079.i.i.i.ph525 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.ba = sub i64 %i.x, %.079.i.i.i.ph525         ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader505, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader505 ] ; 3 uses
  %.079.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader505 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader505 ]
  %i.bd = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !337
  store i32 %i.bd, ptr %.010.i.i.i.prol, align 4, !tbaa !346
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !337
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !347
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2990

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader505
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader505 ], [ %i.bi, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader505 ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %i.bj = icmp ult i64 %i.ba, 24
  br i1 %i.bj, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.bk = load i32, ptr %.079.i.i.i, align 4, !tbaa !337
  store i32 %i.bk, ptr %.010.i.i.i, align 4, !tbaa !346
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !337
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !347
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !337
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !346
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !337
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !347
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !337
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !346
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !337
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 20
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !347
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !337
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !346
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 28
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !347
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32
  %.not.i.i.i.3 = icmp eq ptr %i.cg, %i.u
  br i1 %.not.i.i.i.3, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !2991

bb.c:                                             ; preds = %.lr.ph.i
  %i.ci = load i32, ptr %.02246.i, align 4, !tbaa !337 ; 2 uses
  %i.cj = load i32, ptr %.02444.i, align 4, !tbaa !337 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %.02246.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %.02444.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %i.ci, %bb.d ], [ %i.cj, %bb.e ]
  %.02246.pn.i = phi ptr [ %.02246.i, %bb.d ], [ %.02444.i, %bb.e ]
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cm, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.cl, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %.02345.i, align 4, !tbaa !346
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.02246.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !337
  %i.cn = getelementptr inbounds nuw i8, ptr %.02345.i, i64 4
  store i32 %.sink.i, ptr %i.cn, align 4, !tbaa !347
  %i.co = getelementptr i8, ptr %.02345.i, i64 8  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next452 = add i64 %indvar451, 1
  br i1 %.not.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i, !llvm.loop !2992

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.083, %bb.b ], [ %.125.i, %bb.f ] ; 13 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.co, %bb.f ] ; 12 uses
  %.024.lcssa.i377 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i
  %i.cp = mul i64 %indvar375, %i.r
  %i.cq = add i64 %i.q, %i.cp                     ; 2 uses
  %i.cr = sub i64 %i.cq, %.024.lcssa.i377         ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.cr, 152
  br i1 %min.iters.check379, label %.lr.ph.i.i29.i.preheader504, label %vector.memcheck380

vector.memcheck380:                               ; preds = %.lr.ph.i.i29.i.preheader
  %i.cu = mul i64 %indvar375, %i.g
  %i.cv = add i64 %i.j, %i.cu
  %i.cw = sub i64 %i.cv, %.024.lcssa.i377
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %i.cy = or disjoint i64 %i.cx, 4                ; 2 uses
  %i.cz = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cy ; 3 uses
  %i.da = getelementptr i8, ptr %.023.lcssa.i, i64 4 ; 3 uses
  %i.db = add i64 %i.cx, 8                        ; 2 uses
  %i.dc = getelementptr i8, ptr %.023.lcssa.i, i64 %i.db ; 3 uses
  %i.dd = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cy ; 2 uses
  %i.de = getelementptr i8, ptr %.024.lcssa.i, i64 4 ; 2 uses
  %i.df = getelementptr i8, ptr %.024.lcssa.i, i64 %i.db ; 2 uses
  %bound0381 = icmp ult ptr %.023.lcssa.i, %i.dc
  %bound1382 = icmp ult ptr %i.da, %i.cz
  %found.conflict383 = and i1 %bound0381, %bound1382
  %bound0384 = icmp ult ptr %.023.lcssa.i, %i.dd
  %bound1385 = icmp ult ptr %.024.lcssa.i, %i.cz
  %found.conflict386 = and i1 %bound0384, %bound1385
  %conflict.rdx387 = or i1 %found.conflict383, %found.conflict386
  %bound0388 = icmp ult ptr %.023.lcssa.i, %i.df
  %bound1389 = icmp ult ptr %i.de, %i.cz
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx391 = or i1 %conflict.rdx387, %found.conflict390
  %bound0392 = icmp ult ptr %i.da, %i.dd
  %bound1393 = icmp ult ptr %.024.lcssa.i, %i.dc
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx395 = or i1 %conflict.rdx391, %found.conflict394
  %bound0396 = icmp ult ptr %i.da, %i.df
  %bound1397 = icmp ult ptr %i.de, %i.dc
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx399 = or i1 %conflict.rdx395, %found.conflict398
  br i1 %conflict.rdx399, label %.lr.ph.i.i29.i.preheader504, label %vector.ph400

vector.ph400:                                     ; preds = %vector.memcheck380
  %n.vec401 = and i64 %i.ct, 4611686018427387900  ; 3 uses
  %i.dg = shl i64 %n.vec401, 3                    ; 2 uses
  %i.dh = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dg
  %i.di = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dg
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next416, %vector.body402 ] ; 2 uses
  %i.dj = shl i64 %index403, 3                    ; 3 uses
  %i.dk = or disjoint i64 %i.dj, 16               ; 2 uses
  %next.gep404 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dj
  %next.gep405 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.dk
  %next.gep406 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dj
  %next.gep407 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.dk
  %wide.vec408 = load <4 x i32>, ptr %next.gep406, align 4, !tbaa !337
  %wide.vec411 = load <4 x i32>, ptr %next.gep407, align 4, !tbaa !337
  store <4 x i32> %wide.vec408, ptr %next.gep404, align 4, !tbaa !337
  store <4 x i32> %wide.vec411, ptr %next.gep405, align 4, !tbaa !337
  %index.next416 = add nuw i64 %index403, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next416, %n.vec401
  br i1 %i.dl, label %middle.block417, label %vector.body402, !llvm.loop !2993

middle.block417:                                  ; preds = %vector.body402
  %cmp.n418 = icmp eq i64 %i.ct, %n.vec401
  br i1 %cmp.n418, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader504

.lr.ph.i.i29.i.preheader504:                      ; preds = %vector.memcheck380, %.lr.ph.i.i29.i.preheader, %middle.block417
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck380 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.dh, %middle.block417 ] ; 2 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck380 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.di, %middle.block417 ] ; 3 uses
  %.079.i.i31.i.ph526 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.dm = sub i64 %i.cq, %.079.i.i31.i.ph526      ; 2 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = add nuw nsw i64 %i.dn, 1
  %xtraiter527 = and i64 %i.do, 3                 ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader504, %.lr.ph.i.i29.i.prol
  %.010.i.i30.i.prol = phi ptr [ %i.du, %.lr.ph.i.i29.i.prol ], [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader504 ] ; 3 uses
  %.079.i.i31.i.prol = phi ptr [ %i.dt, %.lr.ph.i.i29.i.prol ], [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader504 ] ; 3 uses
  %prol.iter529 = phi i64 [ %prol.iter529.next, %.lr.ph.i.i29.i.prol ], [ 0, %.lr.ph.i.i29.i.preheader504 ]
  %i.dp = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !337
  store i32 %i.dp, ptr %.010.i.i30.i.prol, align 4, !tbaa !346
  %i.dq = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !347
  %i.dt = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 8 ; 2 uses
  %prol.iter529.next = add i64 %prol.iter529, 1   ; 2 uses
  %prol.iter529.cmp.not = icmp eq i64 %prol.iter529.next, %xtraiter527
  br i1 %prol.iter529.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !2994

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader504
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader504 ], [ %i.du, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader504 ], [ %i.dt, %.lr.ph.i.i29.i.prol ]
  %i.dv = icmp ult i64 %i.dm, 24
  br i1 %i.dv, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.et, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %.079.i.i31.i = phi ptr [ %i.es, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %i.dw = load i32, ptr %.079.i.i31.i, align 4, !tbaa !337
  store i32 %i.dw, ptr %.010.i.i30.i, align 4, !tbaa !346
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !337
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !347
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !337
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !346
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !337
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !347
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !337
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !346
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !337
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 20
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !347
  %i.em = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 24
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !337
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !346
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !337
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 28
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !347
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 32
  %.not.i.i32.i.3 = icmp eq ptr %i.es, %i.t
  br i1 %.not.i.i32.i.3, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !2995

_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block493, %middle.block417, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i
  %i.eu = add i64 %.03982, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.eu, 3                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04189, i64 %.0.idx ; 2 uses
  %i.ev = sub i64 %1, %i.eu                       ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, %i.d
  %indvar.next376 = add i64 %indvar375, 1
  br i1 %i.ew, label %bb.b, label %._crit_edge, !llvm.loop !2996

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.eu, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04189, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 22 uses
  %.lcssa78 = phi i64 [ %1, %.preheader ], [ %i.ev, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.lcssa171 = ptrtoaddr ptr %.0.lcssa to i64   ; 3 uses
  %i.ex = icmp ugt i64 %.lcssa78, %.04288
  br i1 %i.ex, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ey = sub i64 0, %.04288                      ; 6 uses
  %i.ez = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.ey ; 2 uses
  %.idx = shl nuw nsw i64 %.04288, 3              ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.04189, i64 %.idx71 ; 2 uses
  %i.fc = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.fc, %.idx71
  br i1 %.not43.i45, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i52, %bb.k ], [ %i.fa, %bb.g ] ; 15 uses
  %.02345.i48 = phi ptr [ %i.gn, %bb.k ], [ %i.ez, %bb.g ] ; 11 uses
  %.02444.i49 = phi ptr [ %.125.i51, %bb.k ], [ %.0.lcssa, %bb.g ] ; 5 uses
  %i.fd = icmp eq ptr %.02444.i49, %i.fa
  br i1 %i.fd, label %.lr.ph.i.i.i66.preheader, label %bb.h

.lr.ph.i.i.i66.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47227 = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass549 = add i64 %.04189226, %invariant.op548
  %i.fe = sub i64 %.reass549, %.02246.i47227      ; 2 uses
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fe, 200
  br i1 %min.iters.check229, label %.lr.ph.i.i.i66.preheader508, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i66.preheader
  %i.fh = shl i64 %indvar, 3                      ; 2 uses
  %reass.sub502 = sub i64 %i.fh, %.idx
  %i.fi = or disjoint i64 %reass.sub502, 4        ; 2 uses
  %6 = sub i64 %.04189226, %.02246.i47227
  %7 = add i64 %5, %6
  %i.fj = and i64 %7, -8                          ; 4 uses
  %i.fk = getelementptr i8, ptr %.0.lcssa, i64 %i.fi
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj  ; 3 uses
  %i.fm = getelementptr i8, ptr %.0.lcssa, i64 %i.fi ; 3 uses
  %reass.sub503 = sub i64 %i.fh, %.idx
  %i.fn = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub503
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fj  ; 3 uses
  %i.fq = getelementptr i8, ptr %.02246.i47, i64 %i.fj
  %i.fr = getelementptr i8, ptr %i.fq, i64 4      ; 2 uses
  %i.fs = getelementptr i8, ptr %.02246.i47, i64 4 ; 2 uses
  %i.ft = getelementptr i8, ptr %.02246.i47, i64 %i.fj
  %i.fu = getelementptr i8, ptr %i.ft, i64 8      ; 2 uses
  %bound0231 = icmp ult ptr %.02345.i48, %i.fp
  %bound1232 = icmp ult ptr %i.fm, %i.fl
  %found.conflict233 = and i1 %bound0231, %bound1232
  %bound0234 = icmp ult ptr %.02345.i48, %i.fr
  %bound1235 = icmp ult ptr %.02246.i47, %i.fl
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %found.conflict233, %found.conflict236
  %bound0238 = icmp ult ptr %.02345.i48, %i.fu
  %bound1239 = icmp ult ptr %i.fs, %i.fl
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %i.fm, %i.fr
  %bound1243 = icmp ult ptr %.02246.i47, %i.fp
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %i.fm, %i.fu
  %bound1247 = icmp ult ptr %i.fs, %i.fp
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  br i1 %conflict.rdx249, label %.lr.ph.i.i.i66.preheader508, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck230
  %n.vec251 = and i64 %i.fg, 4611686018427387900  ; 3 uses
  %i.fv = shl i64 %n.vec251, 3                    ; 2 uses
  %i.fw = getelementptr i8, ptr %.02345.i48, i64 %i.fv
  %i.fx = getelementptr i8, ptr %.02246.i47, i64 %i.fv
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next266, %vector.body252 ] ; 2 uses
  %i.fy = shl i64 %index253, 3                    ; 3 uses
  %i.fz = or disjoint i64 %i.fy, 16               ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.02345.i48, i64 %i.fy
  %next.gep255 = getelementptr i8, ptr %.02345.i48, i64 %i.fz
  %next.gep256 = getelementptr i8, ptr %.02246.i47, i64 %i.fy
  %next.gep257 = getelementptr i8, ptr %.02246.i47, i64 %i.fz
  %wide.vec258 = load <4 x i32>, ptr %next.gep256, align 4, !tbaa !337
  %wide.vec261 = load <4 x i32>, ptr %next.gep257, align 4, !tbaa !337
  store <4 x i32> %wide.vec258, ptr %next.gep254, align 4, !tbaa !337
  store <4 x i32> %wide.vec261, ptr %next.gep255, align 4, !tbaa !337
  %index.next266 = add nuw i64 %index253, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next266, %n.vec251
  br i1 %i.ga, label %middle.block267, label %vector.body252, !llvm.loop !2997

middle.block267:                                  ; preds = %vector.body252
  %cmp.n268 = icmp eq i64 %i.fg, %n.vec251
  br i1 %cmp.n268, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i.i66.preheader508

.lr.ph.i.i.i66.preheader508:                      ; preds = %vector.memcheck230, %.lr.ph.i.i.i66.preheader, %middle.block267
  %.010.i.i.i67.ph = phi ptr [ %.02345.i48, %vector.memcheck230 ], [ %.02345.i48, %.lr.ph.i.i.i66.preheader ], [ %i.fw, %middle.block267 ]
  %.079.i.i.i68.ph = phi ptr [ %.02246.i47, %vector.memcheck230 ], [ %.02246.i47, %.lr.ph.i.i.i66.preheader ], [ %i.fx, %middle.block267 ]
  br label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %.lr.ph.i.i.i66.preheader508, %.lr.ph.i.i.i66
  %.010.i.i.i67 = phi ptr [ %i.gg, %.lr.ph.i.i.i66 ], [ %.010.i.i.i67.ph, %.lr.ph.i.i.i66.preheader508 ] ; 3 uses
  %.079.i.i.i68 = phi ptr [ %i.gf, %.lr.ph.i.i.i66 ], [ %.079.i.i.i68.ph, %.lr.ph.i.i.i66.preheader508 ] ; 3 uses
  %i.gb = load i32, ptr %.079.i.i.i68, align 4, !tbaa !337
  store i32 %i.gb, ptr %.010.i.i.i67, align 4, !tbaa !346
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i.i68, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !337
  %i.ge = getelementptr inbounds nuw i8, ptr %.010.i.i.i67, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !347
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i.i.i68, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.010.i.i.i67, i64 8
  %.not.i.i.i69 = icmp eq ptr %i.gf, %i.fb
  br i1 %.not.i.i.i69, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i.i66, !llvm.loop !2998

bb.h:                                             ; preds = %.lr.ph.i46
  %i.gh = load i32, ptr %.02246.i47, align 4, !tbaa !337 ; 2 uses
  %i.gi = load i32, ptr %.02444.i49, align 4, !tbaa !337 ; 2 uses
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink106 = phi i32 [ %i.gh, %bb.i ], [ %i.gi, %bb.j ]
  %.02246.pn.i50 = phi ptr [ %.02246.i47, %bb.i ], [ %.02444.i49, %bb.j ]
  %.125.i51 = phi ptr [ %.02444.i49, %bb.i ], [ %i.gl, %bb.j ] ; 2 uses
  %.1.i52 = phi ptr [ %i.gk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  store i32 %.sink106, ptr %.02345.i48, align 4, !tbaa !346
  %.sink.in.i53 = getelementptr inbounds nuw i8, ptr %.02246.pn.i50, i64 4
  %.sink.i54 = load i32, ptr %.sink.in.i53, align 4, !tbaa !337
  %i.gm = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4
  store i32 %.sink.i54, ptr %i.gm, align 4, !tbaa !347
  %i.gn = getelementptr i8, ptr %.02345.i48, i64 8 ; 2 uses
  %.not.i55 = icmp eq ptr %.1.i52, %i.fb
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i55, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56, label %.lr.ph.i46, !llvm.loop !2992

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56: ; preds = %bb.k, %bb.g
  %.024.lcssa.i57 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i51, %bb.k ] ; 13 uses
  %.023.lcssa.i58 = phi ptr [ %i.ez, %bb.g ], [ %i.gn, %bb.k ] ; 12 uses
  %.not27.i59 = icmp eq ptr %.023.lcssa.i58, %.024.lcssa.i57
  %.not8.i.i28.i60 = icmp eq ptr %.024.lcssa.i57, %i.fa
  %or.cond38.i61 = or i1 %.not8.i.i28.i60, %.not27.i59
  br i1 %or.cond38.i61, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i29.i62.preheader

.lr.ph.i.i29.i62.preheader:                       ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56
  %.024.lcssa.i57172 = ptrtoaddr ptr %.024.lcssa.i57 to i64
  %i.go = add i64 %.idx, %.0.lcssa171
  %i.gp = add i64 %i.go, -8
  %i.gq = sub i64 %i.gp, %.024.lcssa.i57172       ; 3 uses
  %i.gr = lshr i64 %i.gq, 3
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gq, 168
  br i1 %min.iters.check, label %.lr.ph.i.i29.i62.preheader507, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i62.preheader
  %i.gt = and i64 %i.gq, -8                       ; 2 uses
  %i.gu = or disjoint i64 %i.gt, 4                ; 2 uses
  %i.gv = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.gu ; 3 uses
  %i.gw = getelementptr i8, ptr %.023.lcssa.i58, i64 4 ; 3 uses
  %i.gx = add i64 %i.gt, 8                        ; 2 uses
  %i.gy = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.gu ; 2 uses
  %i.ha = getelementptr i8, ptr %.024.lcssa.i57, i64 4 ; 2 uses
  %i.hb = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.gx ; 2 uses
  %bound0 = icmp ult ptr %.023.lcssa.i58, %i.gy
  %bound1 = icmp ult ptr %i.gw, %i.gv
  %found.conflict = and i1 %bound0, %bound1
  %bound0173 = icmp ult ptr %.023.lcssa.i58, %i.gz
  %bound1174 = icmp ult ptr %.024.lcssa.i57, %i.gv
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx = or i1 %found.conflict, %found.conflict175
  %bound0176 = icmp ult ptr %.023.lcssa.i58, %i.hb
  %bound1177 = icmp ult ptr %i.ha, %i.gv
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx, %found.conflict178
  %bound0180 = icmp ult ptr %i.gw, %i.gz
  %bound1181 = icmp ult ptr %.024.lcssa.i57, %i.gy
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %i.gw, %i.hb
  %bound1185 = icmp ult ptr %i.ha, %i.gy
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  br i1 %conflict.rdx187, label %.lr.ph.i.i29.i62.preheader507, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gs, 4611686018427387900     ; 3 uses
  %i.hc = shl i64 %n.vec, 3                       ; 2 uses
  %i.hd = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.hc
  %i.he = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.hc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = shl i64 %index, 3                       ; 3 uses
  %i.hg = or disjoint i64 %i.hf, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.hf
  %next.gep188 = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.hg
  %next.gep189 = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.hf
  %next.gep190 = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.hg
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !337
  %wide.vec192 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec192, ptr %next.gep188, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !2999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gs, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i29.i62.preheader507

.lr.ph.i.i29.i62.preheader507:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i62.preheader, %middle.block
  %.010.i.i30.i63.ph = phi ptr [ %.023.lcssa.i58, %vector.memcheck ], [ %.023.lcssa.i58, %.lr.ph.i.i29.i62.preheader ], [ %i.hd, %middle.block ]
  %.079.i.i31.i64.ph = phi ptr [ %.024.lcssa.i57, %vector.memcheck ], [ %.024.lcssa.i57, %.lr.ph.i.i29.i62.preheader ], [ %i.he, %middle.block ]
  br label %.lr.ph.i.i29.i62

.lr.ph.i.i29.i62:                                 ; preds = %.lr.ph.i.i29.i62.preheader507, %.lr.ph.i.i29.i62
  %.010.i.i30.i63 = phi ptr [ %i.hn, %.lr.ph.i.i29.i62 ], [ %.010.i.i30.i63.ph, %.lr.ph.i.i29.i62.preheader507 ] ; 3 uses
  %.079.i.i31.i64 = phi ptr [ %i.hm, %.lr.ph.i.i29.i62 ], [ %.079.i.i31.i64.ph, %.lr.ph.i.i29.i62.preheader507 ] ; 3 uses
  %i.hi = load i32, ptr %.079.i.i31.i64, align 4, !tbaa !337
  store i32 %i.hi, ptr %.010.i.i30.i63, align 4, !tbaa !346
  %i.hj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i64, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !337
  %i.hl = getelementptr inbounds nuw i8, ptr %.010.i.i30.i63, i64 4
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !347
  %i.hm = getelementptr inbounds nuw i8, ptr %.079.i.i31.i64, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.010.i.i30.i63, i64 8
  %.not.i.i32.i65 = icmp eq ptr %i.hm, %i.fa
  br i1 %.not.i.i32.i65, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i29.i62, !llvm.loop !3000

bb.l:                                             ; preds = %._crit_edge
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.04189, i64 %1
  %i.hp = sub i64 0, %.04288                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.hq = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.hp ; 8 uses
  %.reass = add i64 %.04189226, %invariant.op
  %i.hr = sub i64 %.reass, %.0.lcssa171           ; 2 uses
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.hr, 200
  br i1 %min.iters.check303, label %.lr.ph.i.i.preheader510, label %vector.memcheck304

vector.memcheck304:                               ; preds = %.lr.ph.i.i.preheader
  %8 = sub i64 %.04189226, %.0.lcssa171
  %9 = add i64 %5, %8
  %i.hu = and i64 %9, -8                          ; 2 uses
  %i.hv = shl i64 %.04288, 3                      ; 3 uses
  %i.hw = or disjoint i64 %i.hu, 4                ; 2 uses
  %i.hx = sub i64 %i.hw, %i.hv
  %i.hy = getelementptr i8, ptr %.0.lcssa, i64 %i.hx ; 3 uses
  %i.hz = sub i64 4, %i.hv
  %i.ia = getelementptr i8, ptr %.0.lcssa, i64 %i.hz ; 3 uses
  %i.ib = add i64 %i.hu, 8                        ; 2 uses
  %i.ic = sub i64 %i.ib, %i.hv
  %i.id = getelementptr i8, ptr %.0.lcssa, i64 %i.ic ; 3 uses
  %i.ie = getelementptr i8, ptr %.0.lcssa, i64 %i.hw ; 2 uses
  %i.if = getelementptr i8, ptr %.0.lcssa, i64 4  ; 2 uses
  %i.ig = getelementptr i8, ptr %.0.lcssa, i64 %i.ib ; 2 uses
  %bound0305 = icmp ult ptr %i.hq, %i.id
  %bound1306 = icmp ult ptr %i.ia, %i.hy
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0308 = icmp ult ptr %i.hq, %i.ie
  %bound1309 = icmp ult ptr %.0.lcssa, %i.hy
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %found.conflict307, %found.conflict310
  %bound0312 = icmp ult ptr %i.hq, %i.ig
  %bound1313 = icmp ult ptr %i.if, %i.hy
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %i.ia, %i.ie
  %bound1317 = icmp ult ptr %.0.lcssa, %i.id
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %i.ia, %i.ig
  %bound1321 = icmp ult ptr %i.if, %i.id
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  br i1 %conflict.rdx323, label %.lr.ph.i.i.preheader510, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck304
  %n.vec325 = and i64 %i.ht, 4611686018427387900  ; 3 uses
  %i.ih = shl i64 %n.vec325, 3                    ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hq, i64 %i.ih
  %i.ij = getelementptr i8, ptr %.0.lcssa, i64 %i.ih
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next340, %vector.body326 ] ; 2 uses
  %i.ik = shl i64 %index327, 3                    ; 3 uses
  %i.il = or disjoint i64 %i.ik, 16               ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.hq, i64 %i.ik
  %next.gep329 = getelementptr i8, ptr %i.hq, i64 %i.il
  %next.gep330 = getelementptr i8, ptr %.0.lcssa, i64 %i.ik
  %next.gep331 = getelementptr i8, ptr %.0.lcssa, i64 %i.il
  %wide.vec332 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !337
  %wide.vec335 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !337
  store <4 x i32> %wide.vec332, ptr %next.gep328, align 4, !tbaa !337
  store <4 x i32> %wide.vec335, ptr %next.gep329, align 4, !tbaa !337
  %index.next340 = add nuw i64 %index327, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next340, %n.vec325
  br i1 %i.im, label %middle.block341, label %vector.body326, !llvm.loop !3001

middle.block341:                                  ; preds = %vector.body326
  %cmp.n342 = icmp eq i64 %i.ht, %n.vec325
  br i1 %cmp.n342, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i.preheader510

.lr.ph.i.i.preheader510:                          ; preds = %vector.memcheck304, %.lr.ph.i.i.preheader, %middle.block341
  %.010.i.i.ph = phi ptr [ %i.hq, %vector.memcheck304 ], [ %i.hq, %.lr.ph.i.i.preheader ], [ %i.ii, %middle.block341 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck304 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.ij, %middle.block341 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader510, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.is, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader510 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ir, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader510 ] ; 3 uses
  %i.in = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.in, ptr %.010.i.i, align 4, !tbaa !346
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !337
  %i.iq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !347
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ir, %i.ho
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, label %.lr.ph.i.i, !llvm.loop !3002

_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i66, %.lr.ph.i.i29.i62, %middle.block341, %middle.block267, %middle.block, %bb.l, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56
  %.pre-phi = phi i64 [ %i.ey, %middle.block267 ], [ %i.ey, %middle.block ], [ %i.ey, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i56 ], [ %i.hp, %bb.l ], [ %i.hp, %middle.block341 ], [ %i.ey, %.lr.ph.i.i.i66 ], [ %i.ey, %.lr.ph.i.i29.i62 ], [ %i.hp, %.lr.ph.i.i ]
  %i.it = getelementptr inbounds [8 x i8], ptr %.04189, i64 %.pre-phi
  %i.iu = sub nuw i64 %.04090, %.04288            ; 2 uses
  %i.iv = icmp ult i64 %i.d, %3
  %i.iw = icmp uge i64 %i.iu, %i.d
  %i.ix = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %i.ix, label %.preheader, label %._crit_edge91, !llvm.loop !3003

._crit_edge91:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7move_opEEEvT_SE_SE_SE_T0_T1_.exit70 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 7 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx34 = shl nuw nsw i64 %.sroa.speculated, 3
  %or.cond.i = icmp ult i64 %2, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us, label %.lr.ph37.i.preheader

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us
  %.035.us = phi i64 [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us ], [ 0, %.lr.ph ]
  %i.b = add i64 %.035.us, %.sroa.speculated      ; 3 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ugt i64 %i.c, %.sroa.speculated
  br i1 %i.d, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us, label %._crit_edge, !llvm.loop !3004

.lr.ph37.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit
  %.035 = phi i64 [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx34
  %.02233.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.preheader, %bb.d
  %.02236.i = phi ptr [ %.022.i, %bb.d ], [ %.02233.i, %.lr.ph37.i.preheader ] ; 5 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.d ], [ %i.e, %.lr.ph37.i.preheader ] ; 5 uses
  %i.g = load i32, ptr %.02236.i, align 4, !tbaa !337
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !337 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i, align 4, !tbaa !346
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !337
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !347
  %.not2628.i = icmp eq ptr %.pn35.i, %i.e
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.030.i = phi ptr [ %i.n, %bb.c ], [ %.pn35.i, %bb.b ] ; 3 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !337
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.021.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.030.i, %.lr.ph.i ], [ %i.e, %bb.c ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = load <2 x i32>, ptr %i.n, align 4, !tbaa !337
  store <2 x i32> %i.q, ptr %.030.i, align 4, !tbaa !337
  %.not26.i = icmp eq ptr %i.n, %i.e
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !67

bb.d:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %i.f
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit, label %.lr.ph37.i, !llvm.loop !68

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit: ; preds = %bb.d
  %i.r = add i64 %.035, %.sroa.speculated         ; 3 uses
  %i.s = sub i64 %1, %i.r
  %i.t = icmp ugt i64 %i.s, %.sroa.speculated
  br i1 %i.t, label %.lr.ph37.i.preheader, label %._crit_edge, !llvm.loop !3004

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.us ], [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit.loopexit ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %.idx33 = shl nuw nsw i64 %1, 3                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33
  %.not.i15 = icmp samesign eq i64 %.0.lcssa, %1
  %i.w = add nuw nsw i64 %.idx, 8
  %.not2534.i17 = icmp samesign eq i64 %i.w, %.idx33
  %or.cond.i18 = select i1 %.not.i15, i1 true, i1 %.not2534.i17
  br i1 %or.cond.i18, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit31, label %.lr.ph37.i19.preheader

.lr.ph37.i19.preheader:                           ; preds = %._crit_edge
  %.02233.i16 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %.lr.ph37.i19

.lr.ph37.i19:                                     ; preds = %.lr.ph37.i19.preheader, %bb.g
  %.02236.i20 = phi ptr [ %.022.i22, %bb.g ], [ %.02233.i16, %.lr.ph37.i19.preheader ] ; 5 uses
  %.pn35.i21 = phi ptr [ %.02236.i20, %bb.g ], [ %i.u, %.lr.ph37.i19.preheader ] ; 5 uses
  %i.x = load i32, ptr %.02236.i20, align 4, !tbaa !337
  %i.y = load i32, ptr %.pn35.i21, align 4, !tbaa !337 ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph37.i19
  %i.aa = load i64, ptr %.02236.i20, align 4      ; 2 uses
  %.sroa.0.0.extract.trunc.i24 = trunc i64 %i.aa to i32
  store i32 %i.y, ptr %.02236.i20, align 4, !tbaa !346
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn35.i21, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !337
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn35.i21, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !347
  %.not2628.i25 = icmp eq ptr %.pn35.i21, %i.u
  br i1 %.not2628.i25, label %.critedge.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.e, %bb.f
  %.030.i27 = phi ptr [ %i.ae, %bb.f ], [ %.pn35.i21, %bb.e ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.030.i27, i64 -8 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !337
  %i.ag = icmp sgt i32 %i.af, %.sroa.0.0.extract.trunc.i24
  br i1 %i.ag, label %bb.f, label %.critedge.i28

.critedge.i28:                                    ; preds = %bb.f, %.lr.ph.i26, %bb.e
  %.021.lcssa.i29 = phi ptr [ %i.u, %bb.e ], [ %.030.i27, %.lr.ph.i26 ], [ %i.u, %bb.f ]
  store i64 %i.aa, ptr %.021.lcssa.i29, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i26
  %i.ah = load <2 x i32>, ptr %i.ae, align 4, !tbaa !337
  store <2 x i32> %i.ah, ptr %.030.i27, align 4, !tbaa !337
  %.not26.i30 = icmp eq ptr %i.ae, %i.u
  br i1 %.not26.i30, label %.critedge.i28, label %.lr.ph.i26, !llvm.loop !67

bb.g:                                             ; preds = %.critedge.i28, %.lr.ph37.i19
  %.022.i22 = getelementptr inbounds nuw i8, ptr %.02236.i20, i64 8 ; 2 uses
  %.not25.i23 = icmp eq ptr %.022.i22, %i.v
  br i1 %.not25.i23, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit31, label %.lr.ph37.i19, !llvm.loop !68

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit31: ; preds = %bb.g, %._crit_edge
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx68 = shl i64 %1, 3                         ; 5 uses
  %5 = add i64 %.idx68, -8                        ; 2 uses
  %invariant.op = add i64 %.idx68, -8
  %invariant.op572 = add i64 %.idx68, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.iv, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.iu, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67 ] ; 10 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67 ] ; 15 uses
  %.04186234 = ptrtoaddr ptr %.04186 to i64       ; 7 uses
  %i.d = shl i64 %.04285, 1                       ; 8 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub i64 0, %.04285
  %.not43.i = icmp eq i64 %.04285, 0
  %i.g = shl i64 %.04285, 4                       ; 3 uses
  %i.h = add i64 %.04186234, -8                   ; 2 uses
  %i.i = shl i64 %.04285, 3                       ; 3 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = add i64 %i.h, %i.g
  %i.l = shl i64 %.04285, 4                       ; 2 uses
  %i.m = add i64 %i.l, %.04186234
  %i.n = add i64 %i.m, -8
  %i.o = shl i64 %.04285, 3
  %i.p = add i64 %i.o, %.04186234
  %i.q = add i64 %i.p, -8
  %i.r = shl i64 %.04285, 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit
  %indvar395 = phi i64 [ 0, %.lr.ph ], [ %indvar.next396, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.el, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %i.s = getelementptr [8 x i8], ptr %.080, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.080, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar479 = phi i64 [ %indvar.next480, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.t, %bb.b ] ; 16 uses
  %.02345.i = phi ptr [ %i.cn, %bb.f ], [ %i.s, %bb.b ] ; 12 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.080, %bb.b ] ; 6 uses
  %i.v = icmp eq ptr %.02444.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i478.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.w = mul i64 %indvar395, %i.l
  %i.x = add i64 %i.n, %i.w                       ; 2 uses
  %i.y = sub i64 %i.x, %.02246.i478.le            ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check482 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check482, label %.lr.ph.i.i.i.preheader534, label %vector.memcheck483

vector.memcheck483:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = mul i64 %indvar395, %i.g                ; 3 uses
  %i.ac = add i64 %i.k, %i.ab
  %i.ad = sub i64 %i.ac, %.02246.i478.le
  %i.ae = and i64 %i.ad, -8                       ; 4 uses
  %i.af = getelementptr i8, ptr %.02246.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4      ; 3 uses
  %reass.sub = sub i64 %i.ab, %i.i
  %i.ah = or disjoint i64 %reass.sub, 4
  %i.ai = shl i64 %indvar479, 3                   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr i8, ptr %.04186, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ae  ; 3 uses
  %i.am = getelementptr i8, ptr %.02246.i, i64 4  ; 3 uses
  %i.an = getelementptr i8, ptr %.02246.i, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 8      ; 3 uses
  %i.ap = getelementptr i8, ptr %.04186, i64 %i.aj ; 3 uses
  %reass.sub530 = sub i64 %i.ab, %i.i
  %i.aq = getelementptr i8, ptr %.04186, i64 %reass.sub530
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ai
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ae  ; 3 uses
  %bound0484 = icmp ult ptr %.02246.i, %i.al
  %bound1485 = icmp ult ptr %.02345.i, %i.ag
  %found.conflict486 = and i1 %bound0484, %bound1485
  %bound0487 = icmp ult ptr %.02246.i, %i.ao
  %bound1488 = icmp ult ptr %i.am, %i.ag
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx490 = or i1 %found.conflict486, %found.conflict489
  %bound0491 = icmp ult ptr %.02246.i, %i.at
  %bound1492 = icmp ult ptr %i.ap, %i.ag
  %found.conflict493 = and i1 %bound0491, %bound1492
  %conflict.rdx494 = or i1 %conflict.rdx490, %found.conflict493
  %bound0495 = icmp ult ptr %.02345.i, %i.ao
  %bound1496 = icmp ult ptr %i.am, %i.al
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx498 = or i1 %conflict.rdx494, %found.conflict497
  %bound0499 = icmp ult ptr %.02345.i, %i.at
  %bound1500 = icmp ult ptr %i.ap, %i.al
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx502 = or i1 %conflict.rdx498, %found.conflict501
  %bound0503 = icmp ult ptr %i.am, %i.at
  %bound1504 = icmp ult ptr %i.ap, %i.ao
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict505
  br i1 %conflict.rdx506, label %.lr.ph.i.i.i.preheader534, label %vector.ph507

vector.ph507:                                     ; preds = %vector.memcheck483
  %n.vec508 = and i64 %i.aa, 4611686018427387902  ; 3 uses
  %i.au = shl i64 %n.vec508, 3                    ; 2 uses
  %i.av = getelementptr i8, ptr %.02345.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.02246.i, i64 %i.au
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph507
  %index510 = phi i64 [ 0, %vector.ph507 ], [ %index.next521, %vector.body509 ] ; 2 uses
  %i.ax = shl i64 %index510, 3                    ; 2 uses
  %next.gep511 = getelementptr i8, ptr %.02345.i, i64 %i.ax ; 2 uses
  %next.gep512 = getelementptr i8, ptr %.02246.i, i64 %i.ax ; 2 uses
  %wide.vec513 = load <4 x i32>, ptr %next.gep512, align 4, !tbaa !337
  %wide.vec516 = load <4 x i32>, ptr %next.gep511, align 4, !tbaa !337
  store <4 x i32> %wide.vec516, ptr %next.gep512, align 4, !tbaa !337
  store <4 x i32> %wide.vec513, ptr %next.gep511, align 4, !tbaa !337
  %index.next521 = add nuw i64 %index510, 2       ; 2 uses
  %i.ay = icmp eq i64 %index.next521, %n.vec508
  br i1 %i.ay, label %middle.block522, label %vector.body509, !llvm.loop !3005

middle.block522:                                  ; preds = %vector.body509
  %cmp.n523 = icmp eq i64 %i.aa, %n.vec508
  br i1 %cmp.n523, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i.preheader534

.lr.ph.i.i.i.preheader534:                        ; preds = %vector.memcheck483, %.lr.ph.i.i.i.preheader, %middle.block522
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck483 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block522 ] ; 5 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck483 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.aw, %middle.block522 ] ; 6 uses
  %.079.i.i.i.ph554 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.az = sub i64 %i.x, %.079.i.i.i.ph554         ; 2 uses
  %i.ba = and i64 %i.az, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader534
  %i.bb = load i32, ptr %.079.i.i.i.ph, align 4, !tbaa !337
  %i.bc = load i32, ptr %.010.i.i.i.ph, align 4, !tbaa !337
  store i32 %i.bc, ptr %.079.i.i.i.ph, align 4, !tbaa !337
  store i32 %i.bb, ptr %.010.i.i.i.ph, align 4, !tbaa !337
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i.ph, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i.ph, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !337
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !337
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !337
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !337
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i.ph, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.ph, i64 8
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader534
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader534 ], [ %i.bi, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader534 ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %i.bj = icmp ult i64 %i.az, 8
  br i1 %i.bj, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bk = load i32, ptr %.079.i.i.i, align 4, !tbaa !337
  %i.bl = load i32, ptr %.010.i.i.i, align 4, !tbaa !337
  store i32 %i.bl, ptr %.079.i.i.i, align 4, !tbaa !337
  store i32 %i.bk, ptr %.010.i.i.i, align 4, !tbaa !337
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !337
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !337
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !337
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !337
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !337
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !337
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !337
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !337
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !337
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !337
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !337
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !337
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %.not.i.i.i.1 = icmp eq ptr %i.by, %i.u
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !3006

bb.c:                                             ; preds = %.lr.ph.i
  %i.ca = load i32, ptr %.02246.i, align 4, !tbaa !337 ; 2 uses
  %i.cb = load i32, ptr %.02444.i, align 4, !tbaa !337 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  %i.cd = load i32, ptr %.02345.i, align 4, !tbaa !337 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02345.i, i64 4 ; 4 uses
  br i1 %i.cc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.ca, ptr %.02345.i, align 4, !tbaa !337
  store i32 %i.cd, ptr %.02246.i, align 4, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.02246.i, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !337
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !337
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !337
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !337
  %i.ci = getelementptr inbounds nuw i8, ptr %.02246.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.cb, ptr %.02345.i, align 4, !tbaa !337
  store i32 %i.cd, ptr %.02444.i, align 4, !tbaa !337
  %i.cj = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.ce, align 4, !tbaa !337
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !337
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !337
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !337
  %i.cm = getelementptr inbounds nuw i8, ptr %.02444.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cm, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.ci, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.02345.i, i64 8  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next480 = add i64 %indvar479, 1
  br i1 %.not.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i, !llvm.loop !3007

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 13 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.cn, %bb.f ] ; 11 uses
  %.024.lcssa.i397 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i
  %i.co = mul i64 %indvar395, %i.r
  %i.cp = add i64 %i.q, %i.co                     ; 2 uses
  %i.cq = sub i64 %i.cp, %.024.lcssa.i397         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check399 = icmp ult i64 %i.cq, 104
  br i1 %min.iters.check399, label %.lr.ph.i.i29.i.preheader533, label %vector.memcheck400

vector.memcheck400:                               ; preds = %.lr.ph.i.i29.i.preheader
  %i.ct = mul i64 %indvar395, %i.g
  %i.cu = add i64 %i.j, %i.ct
  %i.cv = sub i64 %i.cu, %.024.lcssa.i397
  %i.cw = and i64 %i.cv, -8                       ; 2 uses
  %i.cx = or disjoint i64 %i.cw, 4                ; 2 uses
  %i.cy = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cx ; 3 uses
  %i.cz = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cx ; 3 uses
  %i.da = getelementptr i8, ptr %.024.lcssa.i, i64 4 ; 3 uses
  %i.db = add i64 %i.cw, 8                        ; 2 uses
  %i.dc = getelementptr i8, ptr %.024.lcssa.i, i64 %i.db ; 3 uses
  %i.dd = getelementptr i8, ptr %.023.lcssa.i, i64 4 ; 3 uses
  %i.de = getelementptr i8, ptr %.023.lcssa.i, i64 %i.db ; 3 uses
  %bound0401 = icmp ult ptr %.024.lcssa.i, %i.cz
  %bound1402 = icmp ult ptr %.023.lcssa.i, %i.cy
  %found.conflict403 = and i1 %bound0401, %bound1402
  %bound0404 = icmp ult ptr %.024.lcssa.i, %i.dc
  %bound1405 = icmp ult ptr %i.da, %i.cy
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %found.conflict403, %found.conflict406
  %bound0408 = icmp ult ptr %.024.lcssa.i, %i.de
  %bound1409 = icmp ult ptr %i.dd, %i.cy
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  %bound0412 = icmp ult ptr %.023.lcssa.i, %i.dc
  %bound1413 = icmp ult ptr %i.da, %i.cz
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %conflict.rdx411, %found.conflict414
  %bound0416 = icmp ult ptr %.023.lcssa.i, %i.de
  %bound1417 = icmp ult ptr %i.dd, %i.cz
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %i.da, %i.de
  %bound1421 = icmp ult ptr %i.dd, %i.dc
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  br i1 %conflict.rdx423, label %.lr.ph.i.i29.i.preheader533, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck400
  %n.vec425 = and i64 %i.cs, 4611686018427387902  ; 3 uses
  %i.df = shl i64 %n.vec425, 3                    ; 2 uses
  %i.dg = getelementptr i8, ptr %.023.lcssa.i, i64 %i.df
  %i.dh = getelementptr i8, ptr %.024.lcssa.i, i64 %i.df
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next438, %vector.body426 ] ; 2 uses
  %i.di = shl i64 %index427, 3                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.di ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.di ; 2 uses
  %wide.vec430 = load <4 x i32>, ptr %next.gep429, align 4, !tbaa !337
  %wide.vec433 = load <4 x i32>, ptr %next.gep428, align 4, !tbaa !337
  store <4 x i32> %wide.vec433, ptr %next.gep429, align 4, !tbaa !337
  store <4 x i32> %wide.vec430, ptr %next.gep428, align 4, !tbaa !337
  %index.next438 = add nuw i64 %index427, 2       ; 2 uses
  %i.dj = icmp eq i64 %index.next438, %n.vec425
  br i1 %i.dj, label %middle.block439, label %vector.body426, !llvm.loop !3008

middle.block439:                                  ; preds = %vector.body426
  %cmp.n440 = icmp eq i64 %i.cs, %n.vec425
  br i1 %cmp.n440, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader533

.lr.ph.i.i29.i.preheader533:                      ; preds = %vector.memcheck400, %.lr.ph.i.i29.i.preheader, %middle.block439
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck400 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.dg, %middle.block439 ] ; 5 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck400 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.dh, %middle.block439 ] ; 6 uses
  %.079.i.i31.i.ph555 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.dk = sub i64 %i.cp, %.079.i.i31.i.ph555      ; 2 uses
  %i.dl = and i64 %i.dk, 8
  %lcmp.mod557.not.not = icmp eq i64 %i.dl, 0
  br i1 %lcmp.mod557.not.not, label %.lr.ph.i.i29.i.prol, label %.lr.ph.i.i29.i.prol.loopexit

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader533
  %i.dm = load i32, ptr %.079.i.i31.i.ph, align 4, !tbaa !337
  %i.dn = load i32, ptr %.010.i.i30.i.ph, align 4, !tbaa !337
  store i32 %i.dn, ptr %.079.i.i31.i.ph, align 4, !tbaa !337
  store i32 %i.dm, ptr %.010.i.i30.i.ph, align 4, !tbaa !337
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.ph, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.ph, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !337
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.ph, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.ph, i64 8
  br label %.lr.ph.i.i29.i.prol.loopexit

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader533
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader533 ], [ %i.dt, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader533 ], [ %i.ds, %.lr.ph.i.i29.i.prol ]
  %i.du = icmp ult i64 %i.dk, 8
  br i1 %i.du, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ek, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 6 uses
  %.079.i.i31.i = phi ptr [ %i.ej, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 6 uses
  %i.dv = load i32, ptr %.079.i.i31.i, align 4, !tbaa !337
  %i.dw = load i32, ptr %.010.i.i30.i, align 4, !tbaa !337
  store i32 %i.dw, ptr %.079.i.i31.i, align 4, !tbaa !337
  store i32 %i.dv, ptr %.010.i.i30.i, align 4, !tbaa !337
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !337
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !337
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !337
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !337
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !337
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !337
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !337
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !337
  %i.ef = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !337
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !337
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !337
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !337
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %.not.i.i32.i.1 = icmp eq ptr %i.ej, %i.t
  br i1 %.not.i.i32.i.1, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !3009

_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block522, %middle.block439, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i
  %i.el = add i64 %.03979, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.el, 3                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.em = sub i64 %1, %i.el                       ; 2 uses
  %i.en = icmp ugt i64 %i.em, %i.d
  %indvar.next396 = add i64 %indvar395, 1
  br i1 %i.en, label %bb.b, label %._crit_edge, !llvm.loop !3010

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.el, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 22 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.em, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.lcssa172 = ptrtoaddr ptr %.0.lcssa to i64   ; 3 uses
  %i.eo = icmp ugt i64 %.lcssa75, %.04285
  br i1 %i.eo, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ep = sub i64 0, %.04285                      ; 6 uses
  %i.eq = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.ep ; 2 uses
  %.idx = shl nuw nsw i64 %.04285, 3              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.04186, i64 %.idx68 ; 2 uses
  %i.et = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.et, %.idx68
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.er, %bb.g ] ; 16 uses
  %.02345.i48 = phi ptr [ %i.gm, %bb.k ], [ %i.eq, %bb.g ] ; 12 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.eu = icmp eq ptr %.02444.i49, %i.er
  br i1 %i.eu, label %.lr.ph.i.i.i63.preheader, label %bb.h

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47235 = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass573 = add i64 %.04186234, %invariant.op572
  %i.ev = sub i64 %.reass573, %.02246.i47235      ; 2 uses
  %i.ew = lshr i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.ev, 136
  br i1 %min.iters.check237, label %.lr.ph.i.i.i63.preheader537, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.i.i.i63.preheader
  %6 = sub i64 %.04186234, %.02246.i47235
  %7 = add i64 %5, %6
  %i.ey = and i64 %7, -8                          ; 4 uses
  %i.ez = getelementptr i8, ptr %.02246.i47, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 4      ; 3 uses
  %i.fb = shl i64 %indvar, 3                      ; 2 uses
  %reass.sub531 = sub i64 %i.fb, %.idx
  %i.fc = or disjoint i64 %reass.sub531, 4        ; 2 uses
  %i.fd = getelementptr i8, ptr %.0.lcssa, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey  ; 3 uses
  %i.ff = getelementptr i8, ptr %.02246.i47, i64 4 ; 3 uses
  %i.fg = getelementptr i8, ptr %.02246.i47, i64 %i.ey
  %i.fh = getelementptr i8, ptr %i.fg, i64 8      ; 3 uses
  %i.fi = getelementptr i8, ptr %.0.lcssa, i64 %i.fc ; 3 uses
  %reass.sub532 = sub i64 %i.fb, %.idx
  %i.fj = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub532
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.ey  ; 3 uses
  %bound0239 = icmp ult ptr %.02246.i47, %i.fe
  %bound1240 = icmp ult ptr %.02345.i48, %i.fa
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0242 = icmp ult ptr %.02246.i47, %i.fh
  %bound1243 = icmp ult ptr %i.ff, %i.fa
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %found.conflict241, %found.conflict244
  %bound0246 = icmp ult ptr %.02246.i47, %i.fl
  %bound1247 = icmp ult ptr %i.fi, %i.fa
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %.02345.i48, %i.fh
  %bound1251 = icmp ult ptr %i.ff, %i.fe
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %.02345.i48, %i.fl
  %bound1255 = icmp ult ptr %i.fi, %i.fe
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %i.ff, %i.fl
  %bound1259 = icmp ult ptr %i.fi, %i.fh
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  br i1 %conflict.rdx261, label %.lr.ph.i.i.i63.preheader537, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck238
  %n.vec263 = and i64 %i.ex, 4611686018427387902  ; 3 uses
  %i.fm = shl i64 %n.vec263, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %.02345.i48, i64 %i.fm
  %i.fo = getelementptr i8, ptr %.02246.i47, i64 %i.fm
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next276, %vector.body264 ] ; 2 uses
  %i.fp = shl i64 %index265, 3                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %.02345.i48, i64 %i.fp ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.02246.i47, i64 %i.fp ; 2 uses
  %wide.vec268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !337
  %wide.vec271 = load <4 x i32>, ptr %next.gep266, align 4, !tbaa !337
  store <4 x i32> %wide.vec271, ptr %next.gep267, align 4, !tbaa !337
  store <4 x i32> %wide.vec268, ptr %next.gep266, align 4, !tbaa !337
  %index.next276 = add nuw i64 %index265, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next276, %n.vec263
  br i1 %i.fq, label %middle.block277, label %vector.body264, !llvm.loop !3011

middle.block277:                                  ; preds = %vector.body264
  %cmp.n278 = icmp eq i64 %i.ex, %n.vec263
  br i1 %cmp.n278, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader537

.lr.ph.i.i.i63.preheader537:                      ; preds = %vector.memcheck238, %.lr.ph.i.i.i63.preheader, %middle.block277
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck238 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.fn, %middle.block277 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck238 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.fo, %middle.block277 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader537, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.fy, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader537 ] ; 4 uses
  %.079.i.i.i65 = phi ptr [ %i.fx, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader537 ] ; 4 uses
  %i.fr = load i32, ptr %.079.i.i.i65, align 4, !tbaa !337
  %i.fs = load i32, ptr %.010.i.i.i64, align 4, !tbaa !337
  store i32 %i.fs, ptr %.079.i.i.i65, align 4, !tbaa !337
  store i32 %i.fr, ptr %.010.i.i.i64, align 4, !tbaa !337
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !337
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !337
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !337
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !337
  %i.fx = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 8
  %.not.i.i.i66 = icmp eq ptr %i.fx, %i.es
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3012

bb.h:                                             ; preds = %.lr.ph.i46
  %i.fz = load i32, ptr %.02246.i47, align 4, !tbaa !337 ; 2 uses
  %i.ga = load i32, ptr %.02444.i49, align 4, !tbaa !337 ; 2 uses
  %i.gb = icmp slt i32 %i.fz, %i.ga
  %i.gc = load i32, ptr %.02345.i48, align 4, !tbaa !337 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 4 uses
  br i1 %i.gb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.fz, ptr %.02345.i48, align 4, !tbaa !337
  store i32 %i.gc, ptr %.02246.i47, align 4, !tbaa !337
  %i.ge = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !337
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !337
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !337
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !337
  %i.gh = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.ga, ptr %.02345.i48, align 4, !tbaa !337
  store i32 %i.gc, ptr %.02444.i49, align 4, !tbaa !337
  %i.gi = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gd, align 4, !tbaa !337
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !337
  store i32 %i.gk, ptr %i.gd, align 4, !tbaa !337
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !337
  %i.gl = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.gl, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.gh, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.gm = getelementptr i8, ptr %.02345.i48, i64 8 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.es
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53, label %.lr.ph.i46, !llvm.loop !3007

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 13 uses
  %.023.lcssa.i55 = phi ptr [ %i.eq, %bb.g ], [ %i.gm, %bb.k ] ; 11 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.er
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53
  %.024.lcssa.i54173 = ptrtoaddr ptr %.024.lcssa.i54 to i64
  %i.gn = add i64 %.idx, %.0.lcssa172
  %i.go = add i64 %i.gn, -8
  %i.gp = sub i64 %i.go, %.024.lcssa.i54173       ; 3 uses
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gp, 120
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader536, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %i.gs = and i64 %i.gp, -8                       ; 2 uses
  %i.gt = or disjoint i64 %i.gs, 4                ; 2 uses
  %i.gu = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.gt ; 3 uses
  %i.gv = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.gt ; 3 uses
  %i.gw = getelementptr i8, ptr %.024.lcssa.i54, i64 4 ; 3 uses
  %i.gx = add i64 %i.gs, 8                        ; 2 uses
  %i.gy = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %.023.lcssa.i55, i64 4 ; 3 uses
  %i.ha = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.gx ; 3 uses
  %bound0 = icmp ult ptr %.024.lcssa.i54, %i.gv
  %bound1 = icmp ult ptr %.023.lcssa.i55, %i.gu
  %found.conflict = and i1 %bound0, %bound1
  %bound0174 = icmp ult ptr %.024.lcssa.i54, %i.gy
  %bound1175 = icmp ult ptr %i.gw, %i.gu
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx = or i1 %found.conflict, %found.conflict176
  %bound0177 = icmp ult ptr %.024.lcssa.i54, %i.ha
  %bound1178 = icmp ult ptr %i.gz, %i.gu
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx, %found.conflict179
  %bound0181 = icmp ult ptr %.023.lcssa.i55, %i.gy
  %bound1182 = icmp ult ptr %i.gw, %i.gv
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %.023.lcssa.i55, %i.ha
  %bound1186 = icmp ult ptr %i.gz, %i.gv
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %i.gw, %i.ha
  %bound1190 = icmp ult ptr %i.gz, %i.gy
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  br i1 %conflict.rdx192, label %.lr.ph.i.i29.i59.preheader536, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gr, 4611686018427387902     ; 3 uses
  %i.hb = shl i64 %n.vec, 3                       ; 2 uses
  %i.hc = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.hb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.he ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.he ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep193, align 4, !tbaa !337
  %wide.vec195 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec195, ptr %next.gep193, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !3013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader536

.lr.ph.i.i29.i59.preheader536:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.hc, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.hd, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader536, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.hn, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader536 ] ; 4 uses
  %.079.i.i31.i61 = phi ptr [ %i.hm, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader536 ] ; 4 uses
  %i.hg = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !337
  %i.hh = load i32, ptr %.010.i.i30.i60, align 4, !tbaa !337
  store i32 %i.hh, ptr %.079.i.i31.i61, align 4, !tbaa !337
  store i32 %i.hg, ptr %.010.i.i30.i60, align 4, !tbaa !337
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4 ; 2 uses
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !337
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !337
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !337
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !337
  %i.hm = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 8
  %.not.i.i32.i62 = icmp eq ptr %i.hm, %i.er
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !3014

bb.l:                                             ; preds = %._crit_edge
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.04186, i64 %1
  %i.hp = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.hq = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.hp ; 7 uses
  %.reass = add i64 %.04186234, %invariant.op
  %i.hr = sub i64 %.reass, %.0.lcssa172           ; 2 uses
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.hr, 136
  br i1 %min.iters.check317, label %.lr.ph.i.i.preheader539, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph.i.i.preheader
  %8 = sub i64 %.04186234, %.0.lcssa172
  %9 = add i64 %5, %8
  %i.hu = and i64 %9, -8                          ; 2 uses
  %i.hv = or disjoint i64 %i.hu, 4                ; 2 uses
  %i.hw = getelementptr i8, ptr %.0.lcssa, i64 %i.hv ; 3 uses
  %i.hx = shl i64 %.04285, 3                      ; 3 uses
  %i.hy = sub i64 %i.hv, %i.hx
  %i.hz = getelementptr i8, ptr %.0.lcssa, i64 %i.hy ; 3 uses
  %i.ia = getelementptr i8, ptr %.0.lcssa, i64 4  ; 3 uses
  %i.ib = add i64 %i.hu, 8                        ; 2 uses
  %i.ic = getelementptr i8, ptr %.0.lcssa, i64 %i.ib ; 3 uses
  %i.id = sub i64 4, %i.hx
  %i.ie = getelementptr i8, ptr %.0.lcssa, i64 %i.id ; 3 uses
  %i.if = sub i64 %i.ib, %i.hx
  %i.ig = getelementptr i8, ptr %.0.lcssa, i64 %i.if ; 3 uses
  %bound0319 = icmp ult ptr %.0.lcssa, %i.hz
  %bound1320 = icmp ult ptr %i.hq, %i.hw
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0322 = icmp ult ptr %.0.lcssa, %i.ic
  %bound1323 = icmp ult ptr %i.ia, %i.hw
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %found.conflict321, %found.conflict324
  %bound0326 = icmp ult ptr %.0.lcssa, %i.ig
  %bound1327 = icmp ult ptr %i.ie, %i.hw
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %i.hq, %i.ic
  %bound1331 = icmp ult ptr %i.ia, %i.hz
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %i.hq, %i.ig
  %bound1335 = icmp ult ptr %i.ie, %i.hz
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %i.ia, %i.ig
  %bound1339 = icmp ult ptr %i.ie, %i.ic
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i.i.preheader539, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck318
  %n.vec343 = and i64 %i.ht, 4611686018427387902  ; 3 uses
  %i.ih = shl i64 %n.vec343, 3                    ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hq, i64 %i.ih
  %i.ij = getelementptr i8, ptr %.0.lcssa, i64 %i.ih
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next356, %vector.body344 ] ; 2 uses
  %i.ik = shl i64 %index345, 3                    ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.hq, i64 %i.ik ; 2 uses
  %next.gep347 = getelementptr i8, ptr %.0.lcssa, i64 %i.ik ; 2 uses
  %wide.vec348 = load <4 x i32>, ptr %next.gep347, align 4, !tbaa !337
  %wide.vec351 = load <4 x i32>, ptr %next.gep346, align 4, !tbaa !337
  store <4 x i32> %wide.vec351, ptr %next.gep347, align 4, !tbaa !337
  store <4 x i32> %wide.vec348, ptr %next.gep346, align 4, !tbaa !337
  %index.next356 = add nuw i64 %index345, 2       ; 2 uses
  %i.il = icmp eq i64 %index.next356, %n.vec343
  br i1 %i.il, label %middle.block357, label %vector.body344, !llvm.loop !3015

middle.block357:                                  ; preds = %vector.body344
  %cmp.n358 = icmp eq i64 %i.ht, %n.vec343
  br i1 %cmp.n358, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i.preheader539

.lr.ph.i.i.preheader539:                          ; preds = %vector.memcheck318, %.lr.ph.i.i.preheader, %middle.block357
  %.010.i.i.ph = phi ptr [ %i.hq, %vector.memcheck318 ], [ %i.hq, %.lr.ph.i.i.preheader ], [ %i.ii, %middle.block357 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck318 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.ij, %middle.block357 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader539, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.it, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader539 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.is, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader539 ] ; 4 uses
  %i.im = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.in = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.in, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.im, ptr %.010.i.i, align 4, !tbaa !337
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !337
  %i.ir = load i32, ptr %i.ip, align 4, !tbaa !337
  store i32 %i.ir, ptr %i.io, align 4, !tbaa !337
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !337
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.is, %i.ho
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !3016

_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block357, %middle.block277, %middle.block, %bb.l, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53
  %.pre-phi = phi i64 [ %i.ep, %middle.block277 ], [ %i.ep, %middle.block ], [ %i.ep, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit.i53 ], [ %i.hp, %bb.l ], [ %i.hp, %middle.block357 ], [ %i.ep, %.lr.ph.i.i.i63 ], [ %i.ep, %.lr.ph.i.i29.i59 ], [ %i.hp, %.lr.ph.i.i ]
  %i.iu = getelementptr inbounds [8 x i8], ptr %.04186, i64 %.pre-phi
  %i.iv = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.iw = icmp ult i64 %i.d, %3
  %i.ix = icmp uge i64 %i.iv, %i.d
  %i.iy = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %i.iy, label %.preheader, label %._crit_edge88, !llvm.loop !3017

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl i64 %2, 1                            ; 3 uses
  %i.b = urem i64 %1, %i.a                        ; 3 uses
  %i.c = sub nuw i64 %1, %i.b                     ; 4 uses
  %.not = icmp ugt i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_10backward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.f, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.079.i.i, i64 -8 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.010.i.i, i64 -8 ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !337
  store i32 %i.i, ptr %i.h, align 4, !tbaa !346
  %i.j = getelementptr inbounds i8, ptr %.079.i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !337
  %i.l = getelementptr inbounds i8, ptr %.010.i.i, i64 -4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !347
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_10backward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !32

bb.c:                                             ; preds = %bb.a
  %.idx71 = shl nuw nsw i64 %2, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx71 ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.043.i = phi ptr [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %.02442.i = phi ptr [ %.02442..i, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %.02541.i = phi ptr [ %..02541.i, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  %i.p = icmp eq ptr %.02442.i, %i.m
  br i1 %i.p, label %.lr.ph.i.i.i, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %.043.i, %.lr.ph.i ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.02541.i, %.lr.ph.i ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !337
  store i32 %i.s, ptr %i.r, align 4, !tbaa !346
  %i.t = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !337
  %i.v = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !347
  %.not.i.i.i = icmp eq ptr %i.d, %i.q
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_10backward_tET_S8_S6_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds i8, ptr %.02442.i, i64 -8 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.02541.i, i64 -8 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.043.i, i64 -8 ; 3 uses
  %i.z = load i32, ptr %i.w, align 4, !tbaa !337  ; 2 uses
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !337 ; 2 uses
  %i.ab = icmp slt i32 %i.z, %i.aa                ; 3 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %i.aa)
  %.02541..02442.i = select i1 %i.ab, ptr %.02541.i, ptr %.02442.i
  %..02541.i = select i1 %i.ab, ptr %i.x, ptr %.02541.i ; 2 uses
  %.02442..i = select i1 %i.ab, ptr %.02442.i, ptr %i.w ; 2 uses
  store i32 %..i, ptr %i.y, align 4, !tbaa !346
  %.sink.in.i = getelementptr inbounds i8, ptr %.02541..02442.i, i64 -4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !337
  %i.ac = getelementptr inbounds i8, ptr %.043.i, i64 -4
  store i32 %.sink.i, ptr %i.ac, align 4, !tbaa !347
  %.not.i = icmp eq ptr %i.d, %..02541.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3018

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.024.lcssa.i = phi ptr [ %i.n, %bb.c ], [ %.02442..i, %bb.d ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.m, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_10backward_tET_S8_S6_.exit, label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %._crit_edge.i, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.ae, %.lr.ph.i.i30.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.079.i.i32.i = phi ptr [ %i.ad, %.lr.ph.i.i30.i ], [ %.024.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -8 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -8 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !337
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !346
  %i.ag = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !337
  %i.ai = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !347
  %.not.i.i33.i = icmp eq ptr %i.m, %i.ad
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_10backward_tET_S8_S6_.exit, label %.lr.ph.i.i30.i, !llvm.loop !32
end_hunk_1
