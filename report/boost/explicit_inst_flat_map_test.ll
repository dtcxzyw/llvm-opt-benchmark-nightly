Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3068

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
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3189

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
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3190

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
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i55, !llvm.loop !3071

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
  br i1 %i.ck, label %middle.block115, label %vector.body108, !llvm.loop !3191

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.bz, %n.vec107
  br i1 %cmp.n116, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph123, !prof !3068

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
  br i1 %i.cp, label %vec.epilog.middle.block131, label %vec.epilog.vector.body125, !llvm.loop !3192

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
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3193

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
  br i1 %i.f, label %bb.b, label %3

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
  br i1 %i.t, label %middle.block91, label %vector.body87, !llvm.loop !3194

middle.block91:                                   ; preds = %vector.body87
  %cmp.n92 = icmp eq i64 %i.l, %n.vec86
  br i1 %cmp.n92, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block91
  %min.epilog.iters.check99 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i.preheader, label %vec.epilog.ph100, !prof !3068

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
  br i1 %i.z, label %vec.epilog.middle.block108, label %vec.epilog.vector.body104, !llvm.loop !3195

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
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i, !llvm.loop !3196

3:                                                ; preds = %bb.a
  %.idx33 = and i64 %i.e, -2                      ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33 ; 9 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33 ; 7 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %4, ptr noundef %1, ptr noundef %5)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %4, ptr noundef %4)
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %.not = icmp samesign eq i64 %.idx33, 0
  br i1 %.not, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %3
  %i.ac = add i64 %.idx33, %i.c
  %i.ad = sub i64 %i.b, %i.ac
  %i.ae = lshr i64 %i.ad, 1
  %i.af = add nsw i64 %i.e, -2
  %i.ag = lshr i64 %i.af, 1
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ag) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 24
  %i.ai = sub i64 %i.b, %i.c
  %i.aj = trunc i64 %i.ai to i1
  %or.cond = or i1 %min.iters.check, %i.aj
  %i.ak = and i64 %i.d, -4
  %diff.check = icmp ugt i64 %i.ak, -64
  %or.cond113 = or i1 %or.cond, %diff.check
  br i1 %or.cond113, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %i.al = add nuw i64 %i.ah, 1                    ; 2 uses
  %i.am = and i64 %i.al, 15                       ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 16, i64 %i.am
  %n.vec = sub i64 %i.al, %i.ao                   ; 2 uses
  %i.ap = shl i64 %n.vec, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %5, i64 %i.ap
  %i.ar = getelementptr i8, ptr %2, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.as ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load52 = load <8 x i16>, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %wide.load, ptr %next.gep51, align 1
  store <8 x i16> %wide.load52, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph, label %vector.body, !llvm.loop !3197

scalar.ph:                                        ; preds = %vector.body, %.lr.ph.split.i.preheader
  %bc.resume.val = phi ptr [ %5, %.lr.ph.split.i.preheader ], [ %i.aq, %vector.body ]
  %bc.resume.val53 = phi ptr [ %2, %.lr.ph.split.i.preheader ], [ %i.ar, %vector.body ] ; 2 uses
  %bc.resume.val5355 = ptrtoaddr ptr %bc.resume.val53 to i64 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %scalar.ph, %bb.d
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %bb.d ] ; 3 uses
  %.02441.i = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.ca, %bb.d ] ; 3 uses
  %.03640.i = phi ptr [ %bc.resume.val53, %scalar.ph ], [ %i.cb, %bb.d ] ; 9 uses
  %i.aw = icmp eq ptr %.02441.i, %6
  br i1 %i.aw, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %.lr.ph.split.i
  %.not42.i = icmp eq ptr %.03640.i, %5
  br i1 %.not42.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.ax = add i64 %.idx33, %i.a
  %i.ay = add i64 %i.ax, -2
  %i.az = shl i64 %indvar, 1
  %i.ba = add i64 %i.az, %bc.resume.val5355
  %i.bb = sub i64 %i.ay, %i.ba                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = add nuw i64 %i.bc, 1                    ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.bb, 6
  br i1 %min.iters.check58, label %.lr.ph45.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check
  %i.be = add i64 %.idx33, %i.c
  %i.bf = sub i64 %bc.resume.val5355, %i.be
  %i.bg = shl nuw i64 %indvar, 1
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = add i64 %i.bh, -1
  %diff.check56 = icmp ult i64 %i.bi, 31
  br i1 %diff.check56, label %.lr.ph45.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i64 %i.bb, 30
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bd, 12
  %n.vec61 = and i64 %i.bd, -16                   ; 4 uses
  %i.bk = shl i64 %n.vec61, 1                     ; 2 uses
  %i.bl = getelementptr i8, ptr %4, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.03640.i, i64 %i.bk
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bn = shl i64 %index63, 1                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %4, i64 %i.bn ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.03640.i, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load66 = load <8 x i16>, ptr %next.gep64, align 1
  %wide.load67 = load <8 x i16>, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load66, ptr %next.gep65, align 1
  store <8 x i16> %wide.load67, ptr %i.bp, align 1
  %index.next68 = add nuw i64 %index63, 16        ; 2 uses
  %i.bq = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bq, label %middle.block69, label %vector.body62, !llvm.loop !3198

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bd, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !3068

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.bd, -4                    ; 3 uses
  %i.br = shl i64 %n.vec72, 1                     ; 2 uses
  %i.bs = getelementptr i8, ptr %4, i64 %i.br
  %i.bt = getelementptr i8, ptr %.03640.i, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index73, 1                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %4, i64 %i.bu
  %next.gep75 = getelementptr i8, ptr %.03640.i, i64 %i.bu
  %wide.load76 = load <4 x i16>, ptr %next.gep74, align 1
  store <4 x i16> %wide.load76, ptr %next.gep75, align 1
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.bd, %n.vec72
  br i1 %cmp.n78, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %vector.memcheck54, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.i.ph = phi ptr [ %4, %iter.check ], [ %4, %vector.memcheck54 ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.13743.i.ph = phi ptr [ %.03640.i, %iter.check ], [ %.03640.i, %vector.memcheck54 ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %.144.i = phi ptr [ %i.by, %.lr.ph45.i ], [ %.144.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %.13743.i = phi ptr [ %i.bx, %.lr.ph45.i ], [ %.13743.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.bw = load i16, ptr %.144.i, align 1
  store i16 %i.bw, ptr %.13743.i, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.13743.i, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %.not.i32 = icmp eq ptr %i.bx, %5
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3200

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.bz = load i16, ptr %.02441.i, align 1
  store i16 %i.bz, ptr %.03640.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.cb, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %.not46.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i, !llvm.loop !3201

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.d, %.lr.ph45.i, %.lr.ph.i, %middle.block69, %vec.epilog.middle.block, %middle.block91, %vec.epilog.middle.block108, %3, %.preheader.i, %bb.c, %bb.b
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
  %i.c = udiv i64 %2, %i.a                        ; 4 uses
  %i.d = zext i1 %.not.i to i64
  %i.e = add nuw i64 %i.c, %i.d                   ; 5 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  %.not78109 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78109, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 2 uses
  br i1 %5, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge132.i
  %.073108 = phi i64 [ %i.ak, %._crit_edge132.i ], [ 0, %.lr.ph ] ; 2 uses
  %.074107 = phi ptr [ %spec.select, %._crit_edge132.i ], [ %1, %.lr.ph ] ; 5 uses
  %i.g = icmp eq i64 %.073108, %i.c
  %i.h = select i1 %i.g, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = urem i64 %i.i, %4                        ; 4 uses
  %i.k = add i64 %i.f, %i.j
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = udiv i64 %i.l, %4                        ; 2 uses
  %.not115.i = icmp ule i64 %4, %i.l
  %.not139.i = icmp eq i64 %i.j, 0
  %or.cond.i = and i1 %.not139.i, %.not115.i
  br i1 %or.cond.i, label %.lr.ph131.i, label %._crit_edge132.i

.lr.ph131.i:                                      ; preds = %.lr.ph.split
  %.idx140.i = shl nuw nsw i64 %i.m, 1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx140.i
  %i.o = add nsw i64 %.idx140.i, -2               ; 2 uses
  %i.p = lshr exact i64 %i.o, 1
  %i.q = add nuw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol: ; preds = %.lr.ph131.i, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol
  %.0129.us.i.prol = phi ptr [ %i.s, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %0, %.lr.ph131.i ]
  %.069128.us.i.prol = phi ptr [ %i.r, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %.074107, %.lr.ph131.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ 0, %.lr.ph131.i ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.069128.us.i.prol, i64 %4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0129.us.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3202

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, %.lr.ph131.i
  %.069128.us.i.lcssa.unr = phi ptr [ poison, %.lr.ph131.i ], [ %.069128.us.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.0129.us.i.unr = phi ptr [ %0, %.lr.ph131.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.069128.us.i.unr = phi ptr [ %.074107, %.lr.ph131.i ], [ %i.r, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %i.t = icmp ult i64 %i.o, 14
  br i1 %i.t, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i
  %.0129.us.i = phi ptr [ %i.ac, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.0129.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %.069128.us.i = phi ptr [ %i.ab, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.069128.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.069128.us.i, i64 %4
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %4
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %4
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %4
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %4
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %4
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %4
  %i.ac = getelementptr inbounds nuw i8, ptr %.0129.us.i, i64 16 ; 2 uses
  %.not77.us.i.7 = icmp eq ptr %i.ac, %i.n
  br i1 %.not77.us.i.7, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !3081

._crit_edge132.i:                                 ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %.lr.ph.split
  %.070.lcssa.i = phi ptr [ %.074107, %.lr.ph.split ], [ %.069128.us.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ], [ %i.aa, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ] ; 2 uses
  %i.ad = mul i64 %i.m, %4
  %i.ae = getelementptr [2 x i8], ptr %.074107, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.j
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %.070.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.070.lcssa.i, ptr noundef %i.ae, ptr noundef %i.af, i64 noundef %i.aj, i64 noundef %i.j)
  %i.ak = add nuw i64 %.073108, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.ak, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [2 x i8], ptr %.074107, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3203

bb.b:                                             ; preds = %bb.a
  br i1 %.not78109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.al = add i64 %i.e, -1
  %i.am = mul i64 %i.al, %i.a
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = urem i64 %3, %4                         ; 4 uses
  %i.ap = udiv i64 %3, %4                         ; 4 uses
  %i.aq = sub i64 0, %i.a                         ; 2 uses
  br i1 %6, label %.lr.ph112.split.us, label %.lr.ph112.split

.lr.ph112.split.us:                               ; preds = %.lr.ph112, %.lr.ph112.split.us
  %.0111.us = phi i64 [ %i.ar, %.lr.ph112.split.us ], [ %i.e, %.lr.ph112 ]
  %.2110.us = phi ptr [ %.3.us, %.lr.ph112.split.us ], [ %i.an, %.lr.ph112 ] ; 2 uses
  %i.ar = add i64 %.0111.us, -1                   ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.c
  %i.at = select i1 %i.as, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.au = sub i64 %i.at, %i.ao
  %i.av = urem i64 %i.au, %4                      ; 3 uses
  %i.aw = add i64 %i.ao, %i.av
  %i.ax = sub i64 %i.at, %i.aw
  %i.ay = udiv i64 %i.ax, %4                      ; 3 uses
  %i.az = sub i64 %i.ay, %i.ap
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ay
  %i.bb = mul i64 %i.ay, %4
  %i.bc = getelementptr [2 x i8], ptr %.2110.us, i64 %i.bb
  %i.bd = getelementptr [2 x i8], ptr %i.bc, i64 %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.ba, ptr %9, align 8, !tbaa !3090
  store ptr %i.bd, ptr %10, align 8, !tbaa !3090
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.av, i64 noundef %i.az, i64 noundef %i.ap, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81.us = icmp eq i64 %i.ar, 0               ; 2 uses
  %.3.idx.us = select i1 %.not81.us, i64 0, i64 %i.aq
  %.3.us = getelementptr inbounds [2 x i8], ptr %.2110.us, i64 %.3.idx.us
  br i1 %.not81.us, label %.loopexit, label %.lr.ph112.split.us, !llvm.loop !3204

.lr.ph112.split:                                  ; preds = %.lr.ph112, %.lr.ph112.split
  %.0111 = phi i64 [ %i.be, %.lr.ph112.split ], [ %i.e, %.lr.ph112 ]
  %.2110 = phi ptr [ %.3, %.lr.ph112.split ], [ %i.an, %.lr.ph112 ] ; 2 uses
  %i.be = add i64 %.0111, -1                      ; 3 uses
  %i.bf = icmp eq i64 %i.be, %i.c
  %i.bg = select i1 %i.bf, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bh = sub i64 %i.bg, %i.ao
  %i.bi = urem i64 %i.bh, %4                      ; 3 uses
  %i.bj = add i64 %i.ao, %i.bi
  %i.bk = sub i64 %i.bg, %i.bj
  %i.bl = udiv i64 %i.bk, %4                      ; 3 uses
  %i.bm = sub i64 %i.bl, %i.ap
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bl
  %i.bo = mul i64 %i.bl, %4
  %i.bp = getelementptr [2 x i8], ptr %.2110, i64 %i.bo
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.bn, ptr %11, align 8, !tbaa !3090
  store ptr %i.bq, ptr %12, align 8, !tbaa !3090
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bi, i64 noundef %i.bm, i64 noundef %i.ap, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.be, 0                  ; 2 uses
end_hunk_0
