Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24579
inline.NumDeleted: 2912
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3078

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.ao, -4                    ; 3 uses
  %i.az = shl i64 %n.vec91, 1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ak, i64 %i.az
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = shl i64 %index92, 1                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ai, i64 %i.bc
  %next.gep94 = getelementptr i8, ptr %i.ak, i64 %i.bc
  %wide.load95 = load <4 x i16>, ptr %next.gep93, align 1
  store <4 x i16> %wide.load95, ptr %next.gep94, align 1
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.ao, %n.vec91
  br i1 %cmp.n97, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.be = load i16, ptr %.012.i.i.i.i, align 1
  store i16 %i.be, ptr %.0911.i.i.i.i, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3200

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %i.bh = ashr exact i64 %gepdiff, 1
  br label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %.lr.ph.i.i.i55, %.lr.ph.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i55 ], [ %i.bh, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01316.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i55 ], [ %i.ad, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bi = lshr i64 %.017.i.i.i, 1                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.01316.i.i.i, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.bi, -1
  %i.bl = add i64 %.017.i.i.i, %.neg.i.i.i        ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i55, !llvm.loop !3081

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i55
  %.01316.i.i.i102.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bm, %i.ag
  %i.bo = ashr exact i64 %i.bn, 1                 ; 2 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !356 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not.i40.i.i, label %iter.check119, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check119:                                    ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.bp, 1                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i41.i.i ; 6 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !354   ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 %.idx.i41.i.i ; 6 uses
  %i.bt = add i64 %.idx.i41.i.i, %i.a
  %i.bu = add i64 %i.bt, %.idx
  %i.bv = sub i64 %.01316.i.i.i102.le, %i.bu
  %i.bw = and i64 %.017.i.i.i, -2
  %i.bx = add i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check103 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check103, label %.lr.ph.i.i42.i.i.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check119
  %i.ca = ptrtoaddr ptr %i.br to i64
  %i.cb = add i64 %.idx, %i.a
  %i.cc = sub i64 %i.cb, %i.ca
  %diff.check101 = icmp ugt i64 %i.cc, -32
  br i1 %diff.check101, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck100
  %min.iters.check105 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check105, label %vec.epilog.ph123, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.cd = and i64 %i.bz, 12
  %n.vec107 = and i64 %i.bz, -16                  ; 4 uses
  %i.ce = shl i64 %n.vec107, 1                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bs, i64 %i.ce
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.ch = shl i64 %index109, 1                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bs, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load112 = load <8 x i16>, ptr %next.gep110, align 1
  %wide.load113 = load <8 x i16>, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %next.gep111, i64 16
  store <8 x i16> %wide.load112, ptr %next.gep111, align 1
  store <8 x i16> %wide.load113, ptr %i.cj, align 1
  %index.next114 = add nuw i64 %index109, 16      ; 2 uses
  %i.ck = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.ck, label %middle.block115, label %vector.body108, !llvm.loop !3201

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.bz, %n.vec107
  br i1 %cmp.n116, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph123, !prof !3078

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec107, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check104 ]
  %n.vec124 = and i64 %i.bz, -4                   ; 3 uses
  %i.cl = shl i64 %n.vec124, 1                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bs, i64 %i.cl
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph123
  %index126 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next130, %vec.epilog.vector.body125 ] ; 2 uses
  %i.co = shl i64 %index126, 1                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.bq, i64 %i.co
  %next.gep128 = getelementptr i8, ptr %i.bs, i64 %i.co
  %wide.load129 = load <4 x i16>, ptr %next.gep127, align 1
  store <4 x i16> %wide.load129, ptr %next.gep128, align 1
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.cp, label %vec.epilog.middle.block131, label %vec.epilog.vector.body125, !llvm.loop !3202

vec.epilog.middle.block131:                       ; preds = %vec.epilog.vector.body125
  %cmp.n132 = icmp eq i64 %i.bz, %n.vec124
  br i1 %cmp.n132, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i.preheader

.lr.ph.i.i42.i.i.preheader:                       ; preds = %vector.memcheck100, %iter.check119, %vec.epilog.iter.check121, %vec.epilog.middle.block131
  %.012.i.i43.i.i.ph = phi ptr [ %i.bq, %iter.check119 ], [ %i.bq, %vector.memcheck100 ], [ %i.cf, %vec.epilog.iter.check121 ], [ %i.cm, %vec.epilog.middle.block131 ]
  %.0911.i.i44.i.i.ph = phi ptr [ %i.bs, %iter.check119 ], [ %i.bs, %vector.memcheck100 ], [ %i.cg, %vec.epilog.iter.check121 ], [ %i.cn, %vec.epilog.middle.block131 ]
  br label %.lr.ph.i.i42.i.i

.lr.ph.i.i42.i.i:                                 ; preds = %.lr.ph.i.i42.i.i.preheader, %.lr.ph.i.i42.i.i
  %.012.i.i43.i.i = phi ptr [ %i.cr, %.lr.ph.i.i42.i.i ], [ %.012.i.i43.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 3 uses
  %.0911.i.i44.i.i = phi ptr [ %i.cs, %.lr.ph.i.i42.i.i ], [ %.0911.i.i44.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 2 uses
  %i.cq = load i16, ptr %.012.i.i43.i.i, align 1
  store i16 %i.cq, ptr %.0911.i.i44.i.i, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i43.i.i, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i44.i.i, i64 2
  %.not.i.i45.i.i = icmp eq ptr %.012.i.i43.i.i, %i.bj
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3203

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i: ; preds = %.lr.ph.i.i42.i.i, %middle.block115, %vec.epilog.middle.block131, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %.not50 = icmp ult i64 %i.af, %.sroa.speculated
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4 ; 2 uses
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %i.ct, ptr noundef nonnull %i.ad, ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.n:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef nonnull %i.ad, ptr noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, %bb.i, %bb.n, %bb.m, %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 1                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 1                ; 4 uses
  store i16 %i.g, ptr %2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.not2236.i = icmp eq ptr %i.h, %1
  br i1 %.not2236.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check96

iter.check96:                                     ; preds = %bb.c
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.c                       ; 3 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check82 = icmp ult i64 %i.j, 6
  br i1 %min.iters.check82, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check83

vector.main.loop.iter.check83:                    ; preds = %iter.check96
  %min.iters.check84 = icmp ult i64 %i.j, 30
  br i1 %min.iters.check84, label %vec.epilog.ph100, label %vector.ph85

vector.ph85:                                      ; preds = %vector.main.loop.iter.check83
  %i.m = and i64 %i.l, 12
  %n.vec86 = and i64 %i.l, -16                    ; 4 uses
  %i.n = shl i64 %n.vec86, 1                      ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next90, %vector.body87 ] ; 2 uses
  %i.q = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep89, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep89, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.r, align 1
  store <8 x i16> %broadcast.splat, ptr %i.s, align 1
  %index.next90 = add nuw i64 %index88, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.t, label %middle.block91, label %vector.body87, !llvm.loop !3204

middle.block91:                                   ; preds = %vector.body87
  %cmp.n92 = icmp eq i64 %i.l, %n.vec86
  br i1 %cmp.n92, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block91
  %min.epilog.iters.check99 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i.preheader, label %vec.epilog.ph100, !prof !3078

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check83, %vec.epilog.iter.check98
  %vec.epilog.resume.val93 = phi i64 [ %n.vec86, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check83 ]
  %n.vec101 = and i64 %i.l, -4                    ; 3 uses
  %i.u = shl i64 %n.vec101, 1                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  %broadcast.splatinsert102 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat103 = shufflevector <4 x i16> %broadcast.splatinsert102, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph100
  %index105 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph100 ], [ %index.next107, %vec.epilog.vector.body104 ] ; 2 uses
  %i.x = shl i64 %index105, 1
  %next.gep106 = getelementptr i8, ptr %2, i64 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep106, i64 2
  store <4 x i16> %broadcast.splat103, ptr %i.y, align 1
  %index.next107 = add nuw i64 %index105, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.z, label %vec.epilog.middle.block108, label %vec.epilog.vector.body104, !llvm.loop !3205

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body104
  %cmp.n109 = icmp eq i64 %i.l, %n.vec101
  br i1 %cmp.n109, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block108
  %.ph = phi ptr [ %i.h, %iter.check96 ], [ %i.o, %vec.epilog.iter.check98 ], [ %i.v, %vec.epilog.middle.block108 ]
  %.03437.i.ph = phi ptr [ %2, %iter.check96 ], [ %i.p, %vec.epilog.iter.check98 ], [ %i.w, %vec.epilog.middle.block108 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.03437.i = phi ptr [ %storemerge38.i, %.lr.ph.i ], [ %.03437.i.ph, %.lr.ph.i.preheader ]
  %storemerge38.i = getelementptr inbounds nuw i8, ptr %.03437.i, i64 2 ; 2 uses
  store i16 %i.g, ptr %storemerge38.i, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i, !llvm.loop !3206

bb.d:                                             ; preds = %bb.a
  %.idx33 = and i64 %i.e, -2                      ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33 ; 7 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.ac, ptr noundef %1, ptr noundef %i.ad)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.ac, ptr noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %.not = icmp samesign eq i64 %.idx33, 0
  br i1 %.not, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.d
  %i.af = add i64 %.idx33, %i.c
  %i.ag = sub i64 %i.b, %i.af
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = add nsw i64 %i.e, -2
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 24
  %i.al = sub i64 %i.b, %i.c
  %i.am = trunc i64 %i.al to i1
  %or.cond = or i1 %min.iters.check, %i.am
  %i.an = and i64 %i.d, -4
  %diff.check = icmp ugt i64 %i.an, -64
  %or.cond113 = or i1 %or.cond, %diff.check
  br i1 %or.cond113, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %i.ao = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ap = and i64 %i.ao, 15                       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 16, i64 %i.ap
  %n.vec = sub i64 %i.ao, %i.ar                   ; 2 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 %i.as
  %i.au = getelementptr i8, ptr %2, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.av ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load52 = load <8 x i16>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %wide.load, ptr %next.gep51, align 1
  store <8 x i16> %wide.load52, ptr %i.ax, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph, label %vector.body, !llvm.loop !3207

scalar.ph:                                        ; preds = %vector.body, %.lr.ph.split.i.preheader
  %bc.resume.val = phi ptr [ %i.ad, %.lr.ph.split.i.preheader ], [ %i.at, %vector.body ]
  %bc.resume.val53 = phi ptr [ %2, %.lr.ph.split.i.preheader ], [ %i.au, %vector.body ] ; 2 uses
  %bc.resume.val5355 = ptrtoaddr ptr %bc.resume.val53 to i64 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %scalar.ph, %bb.e
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %bb.e ] ; 3 uses
  %.02441.i = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.cd, %bb.e ] ; 3 uses
  %.03640.i = phi ptr [ %bc.resume.val53, %scalar.ph ], [ %i.ce, %bb.e ] ; 9 uses
  %i.az = icmp eq ptr %.02441.i, %i.ae
  br i1 %i.az, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %.lr.ph.split.i
  %.not42.i = icmp eq ptr %.03640.i, %i.ad
  br i1 %.not42.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.ba = add i64 %.idx33, %i.a
  %i.bb = add i64 %i.ba, -2
  %i.bc = shl i64 %indvar, 1
  %i.bd = add i64 %i.bc, %bc.resume.val5355
  %i.be = sub i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add nuw i64 %i.bf, 1                    ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.be, 6
  br i1 %min.iters.check58, label %.lr.ph45.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check
  %i.bh = add i64 %.idx33, %i.c
  %i.bi = sub i64 %bc.resume.val5355, %i.bh
  %i.bj = shl nuw i64 %indvar, 1
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add i64 %i.bk, -1
  %diff.check56 = icmp ult i64 %i.bl, 31
  br i1 %diff.check56, label %.lr.ph45.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i64 %i.be, 30
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bg, 12
  %n.vec61 = and i64 %i.bg, -16                   ; 4 uses
  %i.bn = shl i64 %n.vec61, 1                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ac, i64 %i.bn
  %i.bp = getelementptr i8, ptr %.03640.i, i64 %i.bn
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bq = shl i64 %index63, 1                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ac, i64 %i.bq ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.03640.i, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load66 = load <8 x i16>, ptr %next.gep64, align 1
  %wide.load67 = load <8 x i16>, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load66, ptr %next.gep65, align 1
  store <8 x i16> %wide.load67, ptr %i.bs, align 1
  %index.next68 = add nuw i64 %index63, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bt, label %middle.block69, label %vector.body62, !llvm.loop !3208

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bg, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !3078

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.bg, -4                    ; 3 uses
  %i.bu = shl i64 %n.vec72, 1                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.03640.i, i64 %i.bu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = shl i64 %index73, 1                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.ac, i64 %i.bx
  %next.gep75 = getelementptr i8, ptr %.03640.i, i64 %i.bx
  %wide.load76 = load <4 x i16>, ptr %next.gep74, align 1
  store <4 x i16> %wide.load76, ptr %next.gep75, align 1
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.bg, %n.vec72
  br i1 %cmp.n78, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %vector.memcheck54, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck54 ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.13743.i.ph = phi ptr [ %.03640.i, %iter.check ], [ %.03640.i, %vector.memcheck54 ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %.144.i = phi ptr [ %i.cb, %.lr.ph45.i ], [ %.144.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %.13743.i = phi ptr [ %i.ca, %.lr.ph45.i ], [ %.13743.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.bz = load i16, ptr %.144.i, align 1
  store i16 %i.bz, ptr %.13743.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.13743.i, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %.not.i32 = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3210

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cc = load i16, ptr %.02441.i, align 1
  store i16 %i.cc, ptr %.03640.i, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.ce, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not46.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i, !llvm.loop !3211

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.e, %.lr.ph45.i, %.lr.ph.i, %middle.block69, %vec.epilog.middle.block, %middle.block91, %vec.epilog.middle.block108, %bb.d, %.preheader.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 1                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi i64 [ %i.j, %tailrecurse ], [ %i.d, %bb.a ] ; 2 uses
  %.tr2729 = phi ptr [ %i.h, %tailrecurse ], [ %2, %bb.a ]
  %.tr2628 = phi ptr [ %i.h, %tailrecurse ], [ %1, %bb.a ]
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.tr2729, i64 %i.g
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.h, ptr noundef %.tr2628, ptr noundef %i.i)
  %i.j = ashr i64 %i.f, 1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, 17
  br i1 %i.k, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %i.a = shl i64 %3, 1                            ; 8 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_:bb.a
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3414

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !802
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !802
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !3415

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub i64 %1, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1225
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !1224
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !36
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !1225
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1222 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !1224
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !36
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !36
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !36
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvbT_NS0_9iter_sizeISI_E4typeESL_SL_RT1_T0_(i1 noundef zeroext %i.bb, ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02538.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.b, %bb.e
  %.02541.i = phi ptr [ %.025.i, %bb.e ], [ %.02538.i, %bb.b ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.e ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !802 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !802
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !802
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !802
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !802
  store i32 0, ptr %.pn40.i, align 4, !tbaa !802
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.k, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %.not2933.i = icmp eq ptr %.pn40.i, %0
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.d ], [ %.pn40.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !802  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !802
  store i32 0, ptr %i.q, align 4, !tbaa !802
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3414

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !802
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !802
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %1
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !3415

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub i64 %i.e, %i.z                      ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.ab, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %i.ac)
          to label %bb.g unwind label %.lr.ph.preheader.i29

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.k ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 13 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bn, %bb.k ] ; 10 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i56.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = shl i64 %i.z, 3
  %i.af = add i64 %i.d, %i.a
  %4 = add i64 %i.af, -8
  %i.ag = add i64 %3, %.027.i.i56.le
  %i.ah = sub i64 %4, %i.ag                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = shl i64 %indvar, 3
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.am = add i64 %i.d, %i.a
  %i.an = add i64 %i.am, -8
  %i.ao = shl i64 %i.z, 3
  %i.ap = add i64 %i.ao, %.027.i.i56.le
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep58 = getelementptr i8, ptr %.027.i.i, i64 8
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ar
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep59
  %bound1 = icmp ult ptr %.027.i.i, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.027.i.i, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.av
  %next.gep60 = getelementptr i8, ptr %.01626.i.i, i64 %i.aw
  %next.gep61 = getelementptr i8, ptr %.027.i.i, i64 %i.av ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.027.i.i, i64 %i.aw ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !802, !alias.scope !3416
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !802, !alias.scope !3416
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !3419, !noalias !3416
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !802, !alias.scope !3419, !noalias !3416
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !802, !alias.scope !3416
  store <4 x i32> zeroinitializer, ptr %next.gep62, align 4, !tbaa !802, !alias.scope !3416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !3421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader69

.lr.ph.i.i.i.i.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader69, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 4 uses
  %i.ay = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !802
  store i32 %i.ay, ptr %.010.i.i.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !802
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !802
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !802
  store i32 0, ptr %i.az, align 4, !tbaa !802
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !3422

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %.027.i.i, align 4, !tbaa !802 ; 2 uses
  %i.bf = load i32, ptr %.01725.i.i, align 4, !tbaa !802 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.be, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4 ; 2 uses
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bf, ptr %.01626.i.i, align 4, !tbaa !802
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !802
  %i.bh = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %i.bj = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.01626.i.i, align 4, !tbaa !802
  store i32 0, ptr %.027.i.i, align 4, !tbaa !802
  %i.bk = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !802
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bk, align 4, !tbaa !802
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.bj, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !3423

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bs = trunc i64 %i.aa to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30, %i.bt
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.br

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.e, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #4 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !3085

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !3179

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
end_hunk_1
