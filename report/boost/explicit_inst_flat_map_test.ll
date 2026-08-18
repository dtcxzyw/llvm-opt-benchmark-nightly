inline.NumInlined: 24579
inline.NumDeleted: 2912
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
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
  %i.e = ashr exact i64 %i.d, 1                   ; 4 uses
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
  %.idx33 = and i64 %i.e, -2                      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33 ; 7 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.ac, ptr noundef %1, ptr noundef %i.ad)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.ac, ptr noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %.not = icmp samesign eq i64 %.idx33, 0
  br i1 %.not, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.d
  %i.af = and i64 %i.e, -2
  %i.ag = add i64 %i.af, %i.c
  %i.ah = sub i64 %i.b, %i.ag
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nsw i64 %i.e, -2
  %i.ak = lshr i64 %i.aj, 1
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 24
  %i.am = sub i64 %i.b, %i.c
  %i.an = trunc i64 %i.am to i1
  %or.cond = or i1 %min.iters.check, %i.an
  %i.ao = and i64 %i.d, -4
  %diff.check = icmp ugt i64 %i.ao, -64
  %or.cond113 = or i1 %or.cond, %diff.check
  br i1 %or.cond113, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %i.ap = add nuw i64 %i.al, 1                    ; 2 uses
  %i.aq = and i64 %i.ap, 15                       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 16, i64 %i.aq
  %n.vec = sub i64 %i.ap, %i.as                   ; 2 uses
  %i.at = shl i64 %n.vec, 1                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ad, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.aw ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load52 = load <8 x i16>, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %wide.load, ptr %next.gep51, align 1
  store <8 x i16> %wide.load52, ptr %i.ay, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %scalar.ph, label %vector.body, !llvm.loop !3207

scalar.ph:                                        ; preds = %vector.body, %.lr.ph.split.i.preheader
  %bc.resume.val = phi ptr [ %i.ad, %.lr.ph.split.i.preheader ], [ %i.au, %vector.body ]
  %bc.resume.val53 = phi ptr [ %2, %.lr.ph.split.i.preheader ], [ %i.av, %vector.body ] ; 2 uses
  %bc.resume.val5355 = ptrtoaddr ptr %bc.resume.val53 to i64 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %scalar.ph, %bb.e
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %bb.e ] ; 3 uses
  %.02441.i = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.ca, %bb.e ] ; 3 uses
  %.03640.i = phi ptr [ %bc.resume.val53, %scalar.ph ], [ %i.cb, %bb.e ] ; 9 uses
  %i.ba = icmp eq ptr %.02441.i, %i.ae
  br i1 %i.ba, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %.lr.ph.split.i
  %.not42.i = icmp eq ptr %.03640.i, %i.ad
  br i1 %.not42.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.bb = add i64 %.idx33, %i.a
  %i.bc = add i64 %i.bb, -2
  %3 = sub i64 %i.bc, %bc.resume.val5355
  %4 = lshr i64 %3, 1
  %5 = add nuw i64 %4, 1
  %6 = mul i64 %indvar, 9223372036854775807
  %i.bd = add i64 %6, %5                          ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check58, label %.lr.ph45.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check
  %i.be = add i64 %.idx33, %i.c
  %i.bf = sub i64 %bc.resume.val5355, %i.be
  %i.bg = shl i64 %indvar, 1
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = add i64 %i.bh, -1
  %diff.check56 = icmp ult i64 %i.bi, 31
  br i1 %diff.check56, label %.lr.ph45.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i64 %i.bd, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bd, 12
  %n.vec61 = and i64 %i.bd, -16                   ; 4 uses
  %i.bk = shl i64 %n.vec61, 1                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ac, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.03640.i, i64 %i.bk
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bn = shl i64 %index63, 1                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ac, i64 %i.bn ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.03640.i, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load66 = load <8 x i16>, ptr %next.gep64, align 1
  %wide.load67 = load <8 x i16>, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load66, ptr %next.gep65, align 1
  store <8 x i16> %wide.load67, ptr %i.bp, align 1
  %index.next68 = add nuw i64 %index63, 16        ; 2 uses
  %i.bq = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bq, label %middle.block69, label %vector.body62, !llvm.loop !3208

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bd, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !3078

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.bd, -4                    ; 3 uses
  %i.br = shl i64 %n.vec72, 1                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ac, i64 %i.br
  %i.bt = getelementptr i8, ptr %.03640.i, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index73, 1                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.ac, i64 %i.bu
  %next.gep75 = getelementptr i8, ptr %.03640.i, i64 %i.bu
  %wide.load76 = load <4 x i16>, ptr %next.gep74, align 1
  store <4 x i16> %wide.load76, ptr %next.gep75, align 1
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.bd, %n.vec72
  br i1 %cmp.n78, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %vector.memcheck54, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck54 ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.13743.i.ph = phi ptr [ %.03640.i, %iter.check ], [ %.03640.i, %vector.memcheck54 ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %.144.i = phi ptr [ %i.by, %.lr.ph45.i ], [ %.144.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %.13743.i = phi ptr [ %i.bx, %.lr.ph45.i ], [ %.13743.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.bw = load i16, ptr %.144.i, align 1
  store i16 %i.bw, ptr %.13743.i, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.13743.i, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %.not.i32 = icmp eq ptr %i.bx, %i.ad
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3210

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.bz = load i16, ptr %.02441.i, align 1
  store i16 %i.bz, ptr %.03640.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.cb, %i.ad
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
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3212

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
  br i1 %.not77.us.i.7, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !3091

._crit_edge132.i:                                 ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %.lr.ph.split
  %.070.lcssa.i = phi ptr [ %.074107, %.lr.ph.split ], [ %.069128.us.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ], [ %i.aa, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ] ; 2 uses
  %i.ad = mul i64 %i.m, %4
  %i.ae = getelementptr [2 x i8], ptr %.074107, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.j
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %.070.lcssa.i to i64
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_S8_S8_SF_NS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_:bb.a
  %cmp.n343 = icmp eq i64 %i.fy, %n.vec326
  br i1 %cmp.n343, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.preheader443

.lr.ph.i.i.preheader443:                          ; preds = %vector.memcheck290, %.lr.ph.i.i.preheader, %middle.block342
  %.010.i.i.ph = phi ptr [ %i.dc, %vector.memcheck290 ], [ %i.dc, %.lr.ph.i.i.preheader ], [ %i.gc, %middle.block342 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck290 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.gd, %middle.block342 ] ; 3 uses
  %.079.i.i.ph495 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.gh = sub i64 %i.p, %.079.i.i.ph495           ; 2 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = add nuw nsw i64 %i.gi, 1
  %xtraiter496 = and i64 %i.gj, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader443, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.gp, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader443 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.go, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader443 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader443 ]
  %i.gk = load i32, ptr %.079.i.i.prol, align 4, !tbaa !802
  store i32 %i.gk, ptr %.010.i.i.prol, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !802
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !802
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !802
  store i32 0, ptr %i.gl, align 4, !tbaa !802
  %i.go = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter496
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3667

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader443
  %.lcssa492.unr = phi ptr [ poison, %.lr.ph.i.i.preheader443 ], [ %i.gp, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader443 ], [ %i.gp, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader443 ], [ %i.go, %.lr.ph.i.i.prol ]
  %i.gq = icmp ult i64 %i.gh, 24
  br i1 %i.gq, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ho, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.hn, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.gr = load i32, ptr %.079.i.i, align 4, !tbaa !802
  store i32 %i.gr, ptr %.010.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i, align 4, !tbaa !802
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !802
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !802
  store i32 0, ptr %i.gs, align 4, !tbaa !802
  %i.gv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !802
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !802
  store i32 0, ptr %i.gv, align 4, !tbaa !802
  %i.gy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !802
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !802
  store i32 0, ptr %i.gy, align 4, !tbaa !802
  %i.hb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !802
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !802
  store i32 0, ptr %i.hb, align 4, !tbaa !802
  %i.he = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !802
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !802
  store i32 0, ptr %i.he, align 4, !tbaa !802
  %i.hh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !802
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !802
  store i32 0, ptr %i.hh, align 4, !tbaa !802
  %i.hk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !802
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !802
  store i32 0, ptr %i.hk, align 4, !tbaa !802
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.3 = icmp eq ptr %i.hn, %i.aw
  br i1 %.not.i.i52.3, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3668

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block436, %middle.block342, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.aw, %bb.s ], [ %i.ed, %.lr.ph.i48 ], [ %i.ho, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.dc, %bb.v ], [ %i.dc, %bb.w ], [ %i.ds, %middle.block ], [ %i.gc, %middle.block342 ], [ %i.ek, %middle.block436 ], [ %.lcssa492.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa491.unr, %.lr.ph.i49.prol.loopexit ], [ %i.fo, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.aw, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %.0129, i64 %.idx88 ; 3 uses
  %i.hq = load <2 x i32>, ptr %i.hp, align 4, !tbaa !802
  store i32 0, ptr %i.hp, align 4, !tbaa !802
  %i.hr = load <2 x i32>, ptr %.0129, align 4, !tbaa !802
  store <2 x i32> %i.hr, ptr %i.hp, align 4, !tbaa !802
  store <2 x i32> %i.hq, ptr %.0129, align 4, !tbaa !802
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %bb.x
  %i.hs = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.ht = icmp ne i64 %.039127, 0
  %.neg = sext i1 %i.ht to i64
  %i.hu = add i64 %.039127, %.neg
  %i.hv = icmp ne i64 %i.av, 0
  %.neg44 = sext i1 %i.hv to i64
  %i.hw = add i64 %.sroa.speculated, %.neg44
  %i.hx = add i64 %.082126, -1                    ; 2 uses
  %.not = icmp eq i64 %i.hx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3669

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load ptr, ptr %5, align 8, !tbaa !973    ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !973    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.g = load ptr, ptr %2, align 8, !tbaa !973    ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !973
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !802
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.07.i, align 4, !tbaa !802
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3632

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.l, %bb.d ] ; 10 uses
  %i.m = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o ; 9 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !973
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !973
  %.pre82 = load ptr, ptr %i.d, align 8, !tbaa !973
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !802
  store i32 %i.s, ptr %i.p, align 4, !tbaa !802
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !802
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %i.w = load i32, ptr %i.g, align 4, !tbaa !802
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !802
  store i32 0, ptr %i.g, align 4, !tbaa !802
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !802
  store i32 %i.y, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.x, align 4, !tbaa !802
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03450.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.g ], [ %.03450.i, %bb.f ] ; 11 uses
  %.03055.i = phi ptr [ %.030.i, %bb.g ], [ %.03049.i, %bb.f ] ; 3 uses
  %.054.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4153.i = phi ptr [ %.03055.i, %bb.g ], [ %i.p, %bb.f ]
  %.03252.i = phi ptr [ %.133.i, %bb.g ], [ %i.p, %bb.f ] ; 12 uses
  %.pn51.i = phi ptr [ %.03456.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.054.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %7 = sub i64 %i.ab, %i.m
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.ac = add i64 %10, %9                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = add i64 %i.a, -16
  %i.ae = sub i64 %i.ad, %i.m
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %11 = add i64 %i.af, 8
  %i.ag = shl i64 %indvar, 3
  %12 = sub i64 %11, %i.ag
  %i.ah = getelementptr i8, ptr %.03252.i, i64 %12
  %scevgep148 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.af
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 16
  %bound0 = icmp ult ptr %.03252.i, %scevgep149
  %bound1 = icmp ult ptr %.03456.i, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.03252.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %.03456.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03252.i, i64 %i.al
  %next.gep150.a = getelementptr i8, ptr %.03252.i, i64 %i.am
  %next.gep151 = getelementptr i8, ptr %.03456.i, i64 %i.al ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.03456.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !802, !alias.scope !3670
  %wide.vec154 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !3670
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !3673, !noalias !3670
  store <4 x i32> %wide.vec154, ptr %next.gep150.a, align 4, !tbaa !802, !alias.scope !3673, !noalias !3670
  store <4 x i32> zeroinitializer, ptr %next.gep151, align 4, !tbaa !802, !alias.scope !3670
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !3670
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !3675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i.preheader181

.lr.ph.i.i.i.preheader181:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03252.i, %vector.memcheck ], [ %.03252.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03456.i, %vector.memcheck ], [ %.03456.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader181, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader181 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !802
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !802
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !802
  store i32 0, ptr %i.ap, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3676

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.054.i, align 4, !tbaa !802
  %i.av = load i32, ptr %.03252.i, align 4, !tbaa !802
  %i.aw = icmp slt i32 %i.au, %i.av               ; 3 uses
  %i.ax = load i32, ptr %.03456.i, align 4, !tbaa !802
  store i32 %i.ax, ptr %.03055.i, align 4, !tbaa !802
  store i32 0, ptr %.03456.i, align 4, !tbaa !802
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn51.i, i64 12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pn4153.i, i64 12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !802
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !802
  store i32 0, ptr %i.ay, align 4, !tbaa !802
  %.03252.sink73.i = select i1 %i.aw, ptr %.054.i, ptr %.03252.i ; 3 uses
  %.133.idx.i = select i1 %i.aw, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.aw, i64 8, i64 0
  %.1.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %i.bb = load i32, ptr %.03252.sink73.i, align 4, !tbaa !802
  store i32 %i.bb, ptr %.03456.i, align 4, !tbaa !802
  store i32 0, ptr %.03252.sink73.i, align 4, !tbaa !802
  %i.bc = getelementptr inbounds nuw i8, ptr %.03252.sink73.i, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !802
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !802
  store i32 0, ptr %i.bc, align 4, !tbaa !802
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3677

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.bf = phi ptr [ %i.g, %bb.a ], [ %.054.i, %middle.block ], [ %i.r, %bb.f ], [ %.054.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.03252.i, %middle.block ], [ %i.p, %bb.f ], [ %.03252.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.aj, %middle.block ], [ %.03049.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit
  %i.bh = phi ptr [ %.pre82, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 3 uses
  %i.bi = phi ptr [ %.pre, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 3 uses
  %.051 = phi ptr [ %i.q, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 5 uses
  %.02850 = phi ptr [ %1, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47 ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit ] ; 2 uses
  %.not.i32 = icmp eq ptr %i.bh, %3
  %.not36.i = icmp eq ptr %.051, %i.bi
  %or.cond.i33 = select i1 %.not.i32, i1 true, i1 %.not36.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !973
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.i
  %.030.ph.i = phi ptr [ %.131.i, %bb.k ], [ %.02850, %bb.i ]
  %.028.ph.i = phi ptr [ %i.bv, %bb.k ], [ %i.bi, %bb.i ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.k ], [ %i.bh, %bb.i ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.k ], [ %i.bj, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i, %.outer.i
  %.030.i34 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.bn, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.bo, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 6 uses
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !802 ; 2 uses
  %i.bl = load i32, ptr %.028.ph.i, align 4, !tbaa !802 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !802
  store i32 0, ptr %.025.i, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  %i.bs = load i32, ptr %.026.i, align 4, !tbaa !802
  store i32 %i.bs, ptr %.025.i, align 4, !tbaa !802
  store i32 0, ptr %.026.i, align 4, !tbaa !802
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !802
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !802
  store i32 0, ptr %i.bt, align 4, !tbaa !802
  %.not43.i = icmp eq ptr %i.bn, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.j, !llvm.loop !3659

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bl, ptr %.030.i34, align 4, !tbaa !802
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !802
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !802
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !802
  store i32 0, ptr %i.bw, align 4, !tbaa !802
  %.not42.i = icmp eq ptr %i.bv, %.051
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i, !llvm.loop !3659

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread: ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit
  %.not.i36 = icmp eq ptr %i.bf, %3
  %.not36.i37 = icmp eq ptr %.0, %i.bg
  %or.cond.i38 = select i1 %.not.i36, i1 true, i1 %.not36.i37
  br i1 %or.cond.i38, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, %bb.m
  %.024.i.ph = phi ptr [ %i.cc, %bb.m ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ci, %bb.m ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.m ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.l
  %.024.i = phi ptr [ %i.cc, %bb.l ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ce, %bb.l ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.bz = load i32, ptr %.0.i, align 4, !tbaa !802 ; 2 uses
  %i.ca = load i32, ptr %.021.i.ph, align 4, !tbaa !802 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.bz, ptr %.024.i, align 4, !tbaa !802
  store i32 0, ptr %.0.i, align 4, !tbaa !802
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !802
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !802
  store i32 0, ptr %i.cf, align 4, !tbaa !802
  %i.ch = icmp eq ptr %i.ce, %3
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !3635

bb.m:                                             ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ca, ptr %.024.i, align 4, !tbaa !802
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !802
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !802
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !802
  store i32 0, ptr %i.cj, align 4, !tbaa !802
  %i.cl = icmp eq ptr %i.ci, %.0
  br i1 %i.cl, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3635

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cm = phi ptr [ %.0.i, %bb.m ], [ %i.bh, %bb.h ], [ %i.bn, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.ce, %bb.l ], [ %.026.i, %bb.k ]
  %i.cn = phi ptr [ %i.ci, %bb.m ], [ %i.bi, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bv, %bb.k ]
  %.045 = phi ptr [ %.0, %bb.l ], [ %.051, %bb.h ], [ %.051, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.0, %bb.m ], [ %.051, %bb.k ]
  %i.co = phi ptr [ %i.cc, %bb.l ], [ %.02850, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.cc, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.cn, ptr %5, align 8, !tbaa !973
  store ptr %.045, ptr %6, align 8, !tbaa !973
  store ptr %i.cm, ptr %2, align 8, !tbaa !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %i.co
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load ptr, ptr %5, align 8, !tbaa !973    ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !973    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.g = load ptr, ptr %2, align 8, !tbaa !973    ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !973
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !802
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !802
  %.not6.i = icmp slt i32 %i.j, %i.i
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3678

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.k, %bb.d ] ; 10 uses
  %i.l = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.n ; 9 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !973
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %i.p = load ptr, ptr %7, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.p, ptr %8, align 8, !tbaa !3493
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %8)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !973
  %.pre86 = load ptr, ptr %i.d, align 8, !tbaa !973
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !802
  store i32 %i.s, ptr %i.o, align 4, !tbaa !802
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !802
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %i.w = load i32, ptr %i.g, align 4, !tbaa !802
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !802
  store i32 0, ptr %i.g, align 4, !tbaa !802
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !802
  store i32 %i.y, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.x, align 4, !tbaa !802
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03451.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.g ], [ %.03451.i, %bb.f ] ; 11 uses
  %.03056.i = phi ptr [ %.030.i, %bb.g ], [ %.03050.i, %bb.f ] ; 3 uses
  %.055.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4154.i = phi ptr [ %.03056.i, %bb.g ], [ %i.o, %bb.f ]
  %.03253.i = phi ptr [ %.133.i, %bb.g ], [ %i.o, %bb.f ] ; 12 uses
  %.pn52.i = phi ptr [ %.03457.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.055.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %9 = sub i64 %i.ab, %i.l
  %10 = lshr i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = mul i64 %indvar, 2305843009213693951
  %i.ac = add i64 %12, %11                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = add i64 %i.a, -16
  %i.ae = sub i64 %i.ad, %i.l
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %13 = add i64 %i.af, 8
  %i.ag = shl i64 %indvar, 3
  %14 = sub i64 %13, %i.ag
  %i.ah = getelementptr i8, ptr %.03253.i, i64 %14
  %scevgep152 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.af
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 16
  %bound0 = icmp ult ptr %.03253.i, %scevgep153
  %bound1 = icmp ult ptr %.03457.i, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.03253.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %.03457.i, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03253.i, i64 %i.al
  %next.gep154.a = getelementptr i8, ptr %.03253.i, i64 %i.am
  %next.gep155 = getelementptr i8, ptr %.03457.i, i64 %i.al ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.03457.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !802, !alias.scope !3681
  %wide.vec158 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !802, !alias.scope !3681
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !3684, !noalias !3681
  store <4 x i32> %wide.vec158, ptr %next.gep154.a, align 4, !tbaa !802, !alias.scope !3684, !noalias !3681
  store <4 x i32> zeroinitializer, ptr %next.gep155, align 4, !tbaa !802, !alias.scope !3681
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !802, !alias.scope !3681
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !3686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i.preheader185

.lr.ph.i.i.i.preheader185:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03253.i, %vector.memcheck ], [ %.03253.i, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03457.i, %vector.memcheck ], [ %.03457.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader185, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader185 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader185 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !802
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !802
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !802
  store i32 0, ptr %i.ap, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3687

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.03253.i, align 4, !tbaa !802
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !802
  %.not42.i = icmp slt i32 %i.au, %i.av           ; 3 uses
  %i.aw = load i32, ptr %.03457.i, align 4, !tbaa !802
  store i32 %i.aw, ptr %.03056.i, align 4, !tbaa !802
  store i32 0, ptr %.03457.i, align 4, !tbaa !802
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn52.i, i64 12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn4154.i, i64 12
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  %.03253.sink74.i = select i1 %.not42.i, ptr %.03253.i, ptr %.055.i ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.ba = load i32, ptr %.03253.sink74.i, align 4, !tbaa !802
  store i32 %i.ba, ptr %.03457.i, align 4, !tbaa !802
  store i32 0, ptr %.03253.sink74.i, align 4, !tbaa !802
  %i.bb = getelementptr inbounds nuw i8, ptr %.03253.sink74.i, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !802
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !802
  store i32 0, ptr %i.bb, align 4, !tbaa !802
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3688

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.be = phi ptr [ %i.g, %bb.a ], [ %.055.i, %middle.block ], [ %i.r, %bb.f ], [ %.055.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bf = phi ptr [ %i.e, %bb.a ], [ %.03253.i, %middle.block ], [ %i.o, %bb.f ], [ %.03253.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.aj, %middle.block ], [ %.03050.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %i.bg = phi ptr [ %.pre86, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 3 uses
  %i.bh = phi ptr [ %.pre, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 3 uses
  %.055 = phi ptr [ %i.q, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 5 uses
  %.02854 = phi ptr [ %1, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51 ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit ] ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, %3
  %.not36.i = icmp eq ptr %.055, %i.bh
  %or.cond.i33 = select i1 %.not.i32, i1 true, i1 %.not36.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !973
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.i
  %.030.ph.i = phi ptr [ %.131.i, %bb.k ], [ %.02854, %bb.i ]
  %.028.ph.i = phi ptr [ %i.bt, %bb.k ], [ %i.bh, %bb.i ] ; 5 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.k ], [ %i.bg, %bb.i ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.k ], [ %i.bi, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i, %.outer.i
  %.030.i34 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.bl, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 6 uses
  %.025.i = phi ptr [ %i.bm, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 6 uses
  %i.bj = load i32, ptr %.028.ph.i, align 4, !tbaa !802 ; 2 uses
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !802 ; 2 uses
  %.not42.i35 = icmp slt i32 %i.bj, %i.bk
  br i1 %.not42.i35, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !802
  store i32 0, ptr %.025.i, align 4, !tbaa !802
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !802
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !802
  store i32 0, ptr %i.bn, align 4, !tbaa !802
  %i.bq = load i32, ptr %.026.i, align 4, !tbaa !802
  store i32 %i.bq, ptr %.025.i, align 4, !tbaa !802
  store i32 0, ptr %.026.i, align 4, !tbaa !802
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !802
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !802
  store i32 0, ptr %i.br, align 4, !tbaa !802
  %.not44.i = icmp eq ptr %i.bl, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.j, !llvm.loop !3660

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bj, ptr %.030.i34, align 4, !tbaa !802
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !802
  %i.bu = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !802
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !802
  store i32 0, ptr %i.bu, align 4, !tbaa !802
  %.not43.i = icmp eq ptr %i.bt, %.055
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.outer.i, !llvm.loop !3660

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread: ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit
  %.not.i37 = icmp eq ptr %i.be, %3
  %.not36.i38 = icmp eq ptr %.0, %i.bf
  %or.cond.i39 = select i1 %.not.i37, i1 true, i1 %.not36.i38
  br i1 %or.cond.i39, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, %bb.m
  %.024.i.ph = phi ptr [ %i.bz, %bb.m ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cf, %bb.m ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.m ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.l
  %.024.i = phi ptr [ %i.bz, %bb.l ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cb, %bb.l ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.bx = load i32, ptr %.021.i.ph, align 4, !tbaa !802 ; 2 uses
  %i.by = load i32, ptr %.0.i, align 4, !tbaa !802 ; 2 uses
  %.not37.i = icmp slt i32 %i.bx, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %.not37.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.by, ptr %.024.i, align 4, !tbaa !802
  store i32 0, ptr %.0.i, align 4, !tbaa !802
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !802
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !802
  store i32 0, ptr %i.cc, align 4, !tbaa !802
  %i.ce = icmp eq ptr %i.cb, %3
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i, !llvm.loop !3661

bb.m:                                             ; preds = %.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.bx, ptr %.024.i, align 4, !tbaa !802
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !802
  %i.cg = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !802
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !802
  store i32 0, ptr %i.cg, align 4, !tbaa !802
  %i.ci = icmp eq ptr %i.cf, %.0
  br i1 %i.ci, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3661

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cj = phi ptr [ %.0.i, %bb.m ], [ %i.bg, %bb.h ], [ %i.bl, %.split.i ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.cb, %bb.l ], [ %.026.i, %bb.k ]
  %i.ck = phi ptr [ %i.cf, %bb.m ], [ %i.bh, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bt, %bb.k ]
  %.049 = phi ptr [ %.0, %bb.l ], [ %.055, %bb.h ], [ %.055, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.0, %bb.m ], [ %.055, %bb.k ]
  %i.cl = phi ptr [ %i.bz, %bb.l ], [ %.02854, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.bz, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.ck, ptr %5, align 8, !tbaa !973
  store ptr %.049, ptr %6, align 8, !tbaa !973
  store ptr %i.cj, ptr %2, align 8, !tbaa !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %i.cl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !973    ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !973    ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !973    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.h, ptr %i.c, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 %i.k, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.i, align 4, !tbaa !802
  %i.l = load i32, ptr %i.e, align 4, !tbaa !802
  store i32 %i.l, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.e, align 4, !tbaa !802
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !802
  store i32 %i.n, ptr %i.i, align 4, !tbaa !802
  store i32 0, ptr %i.m, align 4, !tbaa !802
  %i.o = load i32, ptr %i.d, align 4, !tbaa !802
  store i32 %i.o, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.d, align 4, !tbaa !802
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !802
  store i32 %i.q, ptr %i.m, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 4, !tbaa !802
  %.03759 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04160 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4861 = icmp eq ptr %.04160, %1
  br i1 %.not4861, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.04168 = phi ptr [ %.041, %bb.f ], [ %.04160, %bb.b ] ; 14 uses
  %.03767 = phi ptr [ %.037, %bb.f ], [ %.03759, %bb.b ] ; 4 uses
  %.066 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03565 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4964 = phi ptr [ %.03767, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03963 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 15 uses
  %.pn62 = phi ptr [ %.04168, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03565, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %6 = sub i64 %i.s, %i.a
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = mul i64 %indvar, 2305843009213693951
  %i.t = add i64 %9, %8                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = add i64 %i.b, -16
  %i.v = sub i64 %i.u, %i.a
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %10 = add i64 %i.w, 8
  %i.x = shl i64 %indvar, 3
  %11 = sub i64 %10, %i.x
  %i.y = getelementptr i8, ptr %.03963, i64 %11
  %scevgep91 = getelementptr i8, ptr %0, i64 %i.w
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 16
  %bound0 = icmp ult ptr %.03963, %scevgep92
  %bound1 = icmp ult ptr %.04168, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04168, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963, i64 %i.ac
  %next.gep93.a = getelementptr i8, ptr %.03963, i64 %i.ad
  %next.gep94 = getelementptr i8, ptr %.04168, i64 %i.ac ; 2 uses
  %next.gep95 = getelementptr i8, ptr %.04168, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !802, !alias.scope !3689
  %wide.vec97 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !802, !alias.scope !3689
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !3692, !noalias !3689
  store <4 x i32> %wide.vec97, ptr %next.gep93.a, align 4, !tbaa !802, !alias.scope !3692, !noalias !3689
  store <4 x i32> zeroinitializer, ptr %next.gep94, align 4, !tbaa !802, !alias.scope !3689
  store <4 x i32> zeroinitializer, ptr %next.gep95, align 4, !tbaa !802, !alias.scope !3689
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader102

.lr.ph.i.i.preheader102:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963, %vector.memcheck ], [ %.03963, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04168, %vector.memcheck ], [ %.04168, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader102, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader102 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader102 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !802
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3695

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.066, align 4, !tbaa !802
  %i.am = load i32, ptr %.03963, align 4, !tbaa !802
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.03565, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.066, i64 8
  %i.aq = load i32, ptr %.04168, align 4, !tbaa !802
  store i32 %i.aq, ptr %.03767, align 4, !tbaa !802
  store i32 0, ptr %.04168, align 4, !tbaa !802
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !802
  store i32 %i.at, ptr %i.as, align 4, !tbaa !802
  store i32 0, ptr %i.ar, align 4, !tbaa !802
  %i.au = load i32, ptr %.066, align 4, !tbaa !802
  store i32 %i.au, ptr %.04168, align 4, !tbaa !802
  store i32 0, ptr %.066, align 4, !tbaa !802
  %i.av = getelementptr inbounds nuw i8, ptr %.066, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !802
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !802
  store i32 0, ptr %i.av, align 4, !tbaa !802
  %i.ax = load i32, ptr %.03565, align 4, !tbaa !802
  store i32 %i.ax, ptr %.066, align 4, !tbaa !802
  store i32 0, ptr %.03565, align 4, !tbaa !802
  %i.ay = getelementptr inbounds nuw i8, ptr %.03565, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !802
  store i32 %i.az, ptr %i.av, align 4, !tbaa !802
  store i32 0, ptr %i.ay, align 4, !tbaa !802
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.bb = load i32, ptr %.04168, align 4, !tbaa !802
  store i32 %i.bb, ptr %.03767, align 4, !tbaa !802
  store i32 0, ptr %.04168, align 4, !tbaa !802
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !802
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !802
  store i32 0, ptr %i.bc, align 4, !tbaa !802
  %i.bf = load i32, ptr %.03963, align 4, !tbaa !802
  store i32 %i.bf, ptr %.04168, align 4, !tbaa !802
  store i32 0, ptr %.03963, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.03963, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !802
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !802
  store i32 0, ptr %i.bg, align 4, !tbaa !802
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03963, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.ao, %bb.d ], [ %.03565, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.066, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03767, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04168, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph, !llvm.loop !3696

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03958 = phi ptr [ %.03963, %middle.block ], [ %i.c, %bb.b ], [ %.03963, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03556 = phi ptr [ %.03565, %middle.block ], [ %i.f, %bb.b ], [ %.03565, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.054 = phi ptr [ %.066, %middle.block ], [ %i.g, %bb.b ], [ %.066, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.aa, %middle.block ], [ %.03759, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03556, ptr %2, align 8, !tbaa !973
  store ptr %.03958, ptr %5, align 8, !tbaa !973
  store ptr %.054, ptr %4, align 8, !tbaa !973
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !973    ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !973    ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !973    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.h, ptr %i.c, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 %i.k, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.i, align 4, !tbaa !802
  %i.l = load i32, ptr %i.e, align 4, !tbaa !802
  store i32 %i.l, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.e, align 4, !tbaa !802
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !802
  store i32 %i.n, ptr %i.i, align 4, !tbaa !802
  store i32 0, ptr %i.m, align 4, !tbaa !802
  %i.o = load i32, ptr %i.d, align 4, !tbaa !802
  store i32 %i.o, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.d, align 4, !tbaa !802
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !802
  store i32 %i.q, ptr %i.m, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 4, !tbaa !802
  %.03760 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04161 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4862 = icmp eq ptr %.04161, %1
  br i1 %.not4862, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.04169 = phi ptr [ %.041, %bb.f ], [ %.04161, %bb.b ] ; 14 uses
  %.03768 = phi ptr [ %.037, %bb.f ], [ %.03760, %bb.b ] ; 4 uses
  %.067 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03566 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4965 = phi ptr [ %.03768, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03964 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 15 uses
  %.pn63 = phi ptr [ %.04169, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03566, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %7 = sub i64 %i.s, %i.a
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.t = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = add i64 %i.b, -16
  %i.v = sub i64 %i.u, %i.a
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %11 = add i64 %i.w, 8
  %i.x = shl i64 %indvar, 3
  %12 = sub i64 %11, %i.x
  %i.y = getelementptr i8, ptr %.03964, i64 %12
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.w
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 16
  %bound0 = icmp ult ptr %.03964, %scevgep93
  %bound1 = icmp ult ptr %.04169, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03964, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04169, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.03964, i64 %i.ac
  %next.gep94.a = getelementptr i8, ptr %.03964, i64 %i.ad
  %next.gep95 = getelementptr i8, ptr %.04169, i64 %i.ac ; 2 uses
  %next.gep96 = getelementptr i8, ptr %.04169, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !802, !alias.scope !3697
  %wide.vec98 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !802, !alias.scope !3697
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !3700, !noalias !3697
  store <4 x i32> %wide.vec98, ptr %next.gep94.a, align 4, !tbaa !802, !alias.scope !3700, !noalias !3697
  store <4 x i32> zeroinitializer, ptr %next.gep95, align 4, !tbaa !802, !alias.scope !3697
  store <4 x i32> zeroinitializer, ptr %next.gep96, align 4, !tbaa !802, !alias.scope !3697
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader103

.lr.ph.i.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03964, %vector.memcheck ], [ %.03964, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169, %vector.memcheck ], [ %.04169, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader103, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !802
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !802
  store i32 0, ptr %.079.i.i, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3703

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.03964, align 4, !tbaa !802
  %i.am = load i32, ptr %.067, align 4, !tbaa !802
  %.not50 = icmp slt i32 %i.al, %i.am
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.03566, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ap = load i32, ptr %.04169, align 4, !tbaa !802
  store i32 %i.ap, ptr %.03768, align 4, !tbaa !802
  store i32 0, ptr %.04169, align 4, !tbaa !802
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %i.at = load i32, ptr %.067, align 4, !tbaa !802
  store i32 %i.at, ptr %.04169, align 4, !tbaa !802
  store i32 0, ptr %.067, align 4, !tbaa !802
  %i.au = getelementptr inbounds nuw i8, ptr %.067, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !802
  store i32 0, ptr %i.au, align 4, !tbaa !802
  %i.aw = load i32, ptr %.03566, align 4, !tbaa !802
  store i32 %i.aw, ptr %.067, align 4, !tbaa !802
  store i32 0, ptr %.03566, align 4, !tbaa !802
  %i.ax = getelementptr inbounds nuw i8, ptr %.03566, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.03964, i64 8
  %i.ba = load i32, ptr %.04169, align 4, !tbaa !802
  store i32 %i.ba, ptr %.03768, align 4, !tbaa !802
  store i32 0, ptr %.04169, align 4, !tbaa !802
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !802
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !802
  store i32 0, ptr %i.bb, align 4, !tbaa !802
  %i.be = load i32, ptr %.03964, align 4, !tbaa !802
  store i32 %i.be, ptr %.04169, align 4, !tbaa !802
  store i32 0, ptr %.03964, align 4, !tbaa !802
  %i.bf = getelementptr inbounds nuw i8, ptr %.03964, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !802
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !802
  store i32 0, ptr %i.bf, align 4, !tbaa !802
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03964, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.an, %bb.d ], [ %.03566, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ao, %bb.d ], [ %.067, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03768, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04169, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph, !llvm.loop !3704

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03959 = phi ptr [ %.03964, %middle.block ], [ %i.c, %bb.b ], [ %.03964, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03557 = phi ptr [ %.03566, %middle.block ], [ %i.f, %bb.b ], [ %.03566, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.055 = phi ptr [ %.067, %middle.block ], [ %i.g, %bb.b ], [ %.067, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.aa, %middle.block ], [ %.03760, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03557, ptr %2, align 8, !tbaa !973
  store ptr %.03959, ptr %5, align 8, !tbaa !973
  store ptr %.055, ptr %4, align 8, !tbaa !973
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_S8_S8_SF_NS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !973
  %.not84 = icmp eq i64 %7, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %6, 3                           ; 3 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.d, -8                         ; 2 uses
  %i.f = shl i64 %6, 3
  %i.g = shl i64 %6, 3
  %i.h = add i64 %.idx, %i.c
  %i.i = add i64 %i.h, -8
  %i.j = shl i64 %6, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %i.k = phi ptr [ %2, %.lr.ph ], [ %i.aj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.et, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.ep, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 6 uses
  %.03888 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 5 uses
  %.03987 = phi i64 [ %8, %.lr.ph ], [ %i.er, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.06786 = phi i64 [ %7, %.lr.ph ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %i.l = mul i64 %i.j, %indvar
  %i.m = add i64 %i.i, %i.l
  %i.n = mul i64 %i.g, %indvar
  %i.o = add i64 %i.e, %i.n
  %i.p = mul i64 %i.f, %indvar
  %i.q = add i64 %i.e, %i.p
  %i.r = icmp ult i64 %.03987, %.0
  br i1 %i.r, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ag, %.thread24.i ], [ %.03987, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.af, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.s = mul i64 %.02226.i, %6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  %i.u = mul i64 %.027.i, %6
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.02226.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.027.i
  %i.y = load i32, ptr %i.v, align 4, !tbaa !802  ; 2 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !802  ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = icmp slt i32 %i.z, %i.y
  br i1 %i.ab, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !802
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !802
  %i.ae = icmp slt i32 %i.ac, %i.ad
  %cond.fr.i = freeze i1 %i.ae
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.af = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ag = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !3615

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.af, %.thread24.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE15prot_swap_smallINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_m:bb.a
  %.018.i.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cn = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !802, !noalias !4827
  store i32 %i.cn, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !802, !noalias !4827
  store i32 0, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !802, !noalias !4827
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4827 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !802, !noalias !4827
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !802, !noalias !4827
  store i32 0, ptr %i.cq, align 4, !tbaa !802, !noalias !4827
  %i.cs = add i32 %i.co, 2
  store i32 %i.cs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4827
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !802, !noalias !4827
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !802, !noalias !4827
  store i32 0, ptr %i.ct, align 4, !tbaa !802, !noalias !4827
  %i.cw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !802, !noalias !4827
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !802, !noalias !4827
  store i32 0, ptr %i.cx, align 4, !tbaa !802, !noalias !4827
  %i.cz = add i32 %i.co, 4
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4827
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.dc = add i64 %.018.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4724

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.dd = add i64 %i.by, %i.bm
  store i64 %i.dd, ptr %i.bl, align 8, !tbaa !800, !noalias !4827
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge
  call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEENS0_12vec_iteratorISE_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.16") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.bv, i64 noundef %i.by, ptr %i.bu)
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !829 ; 2 uses
  %.not3.i91 = icmp eq i64 %i.de, %i.bm
  br i1 %.not3.i91, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94, label %.lr.ph.preheader.i92

.lr.ph.preheader.i92:                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit
  %.neg = sub i64 %i.bm, %i.de
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i93 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg106 = trunc i64 %.neg to i32
  %.neg107 = shl i32 %.neg106, 1
  %i.df = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i93, %.neg107
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6insertINS_13move_iteratorIPS5_EEEENS0_12vec_iteratorISC_Lb0EEENSE_ISC_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESQ_E4typeE.exit, %.lr.ph.preheader.i92
  store i64 %i.bm, ptr %i.bw, align 8, !tbaa !800
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %.lr.ph
  %.0109 = phi i64 [ %i.do, %.lr.ph ], [ %.0109.ph, %.lr.ph.preheader150 ] ; 3 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.0109 ; 4 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.0109 ; 3 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !802
  store i32 0, ptr %i.dg, align 4, !tbaa !802
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !802
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !802
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !802
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !802
  store i32 0, ptr %i.dk, align 4, !tbaa !802
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !802
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !802
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !802
  %i.do = add nuw i64 %.0109, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.do, %i.bm
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !4832

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE9priv_swapINS0_17small_vector_baseIS5_SaIS5_EvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit94, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEENS0_12vec_iteratorISE_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !801  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !800  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = icmp samesign ugt i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !35

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.r = shl nuw nsw i64 %i.o, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27
  %i.t = load ptr, ptr %1, align 8, !tbaa !797
  %i.u = ptrtoint ptr %2 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIPS5_EEEEEEvSE_mSE_mT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.s, i64 noundef %i.o, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.x = load ptr, ptr %1, align 8, !tbaa !797
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.w
  store ptr %i.y, ptr %0, align 8, !tbaa !845
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorISt4pairINS0_4test24movable_and_copyable_intES6_ELm10ESaIS7_EvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !829  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit.thread, label %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit.thread: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !797, !noalias !4833
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit

_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.e = load ptr, ptr %1, align 8, !tbaa !797    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.g = lshr i64 %i.b, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %i.e, ptr noundef nonnull %i.f, i64 noundef %i.i, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !829, !noalias !4836 ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !797, !noalias !4833 ; 8 uses
  %.idx17 = shl i64 %.pre, 3                      ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx17 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr i8, ptr %i.j, i64 %.idx17
  %scevgep = getelementptr i8, ptr %i.l, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.m = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.au, %bb.f ] ; 8 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !802, !noalias !4839
  %i.o = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !802, !noalias !4839
  %.not9.i = icmp slt i32 %i.n, %i.o
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 5 uses
  %.not1018.i = icmp eq ptr %i.p, %i.k
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.preheader.i
  %i.q = add i64 %.idx17, -24
  %2 = lshr exact i64 %i.q, 3                     ; 2 uses
  %3 = mul i64 %indvar, 2305843009213693951       ; 2 uses
  %i.r = sub i64 %2, %3
  %i.s = and i64 %i.r, 1
  %lcmp.mod.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph20.i.prol, label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol:                                  ; preds = %.lr.ph20.i.preheader
  %i.t = load i32, ptr %i.m, align 4, !tbaa !802, !noalias !4839
  %i.u = load i32, ptr %i.p, align 4, !tbaa !802, !noalias !4839 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.t, %i.u
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph20.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph20.i.prol
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.p, align 4, !tbaa !802, !noalias !4839
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.w, align 4, !tbaa !802, !noalias !4839
  store i32 %i.y, ptr %i.x, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.w, align 4, !tbaa !802, !noalias !4839
  br label %.lr.ph20.i.prol.loopexit.unr-lcssa

.lr.ph20.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph20.i.prol
  %i.z = phi ptr [ %i.v, %bb.b ], [ %i.m, %.lr.ph20.i.prol ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16
  br label %.lr.ph20.i.prol.loopexit

.lr.ph20.i.prol.loopexit:                         ; preds = %.lr.ph20.i.prol.loopexit.unr-lcssa, %.lr.ph20.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.m, %.lr.ph20.i.preheader ], [ %i.z, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.unr57 = phi ptr [ %i.p, %.lr.ph20.i.preheader ], [ %i.aa, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.119.i.unr = phi ptr [ %.sroa.0.017.i, %.lr.ph20.i.preheader ], [ %i.p, %.lr.ph20.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.ab = icmp eq i64 %2, %4
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.prol.loopexit, %bb.e
  %i.ac = phi ptr [ %i.as, %bb.e ], [ %.unr, %.lr.ph20.i.prol.loopexit ] ; 4 uses
  %i.ad = phi ptr [ %i.at, %bb.e ], [ %.unr57, %.lr.ph20.i.prol.loopexit ] ; 5 uses
  %.sroa.0.119.i = phi ptr [ %i.al, %bb.e ], [ %.sroa.0.119.i.unr, %.lr.ph20.i.prol.loopexit ]
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !802, !noalias !4839
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !802, !noalias !4839 ; 2 uses
  %.not11.i = icmp slt i32 %i.ae, %i.af
  br i1 %.not11.i, label %bb.c, label %.lr.ph20.i.1

bb.c:                                             ; preds = %.lr.ph20.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.ad, align 4, !tbaa !802, !noalias !4839
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.119.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !802, !noalias !4839
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.ah, align 4, !tbaa !802, !noalias !4839
  br label %.lr.ph20.i.1

.lr.ph20.i.1:                                     ; preds = %bb.c, %.lr.ph20.i
  %i.ak = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %.lr.ph20.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !802, !noalias !4839
  %i.an = load i32, ptr %i.al, align 4, !tbaa !802, !noalias !4839 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.am, %i.an
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph20.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.al, align 4, !tbaa !802, !noalias !4839
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !802, !noalias !4839
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !802, !noalias !4839
  store i32 0, ptr %i.ap, align 4, !tbaa !802, !noalias !4839
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph20.i.1
  %i.as = phi ptr [ %i.ao, %bb.d ], [ %i.ak, %.lr.ph20.i.1 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.at, %i.k
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph20.i, !llvm.loop !4842

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !4843

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph20.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit, %.preheader.i
  %i.av = phi ptr [ %i.as, %bb.e ], [ %i.m, %.preheader.i ], [ %i.j, %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit ], [ %.lcssa.unr, %.lr.ph20.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit, %.loopexit.i
  %i.ax = phi ptr [ %i.aw, %.loopexit.i ], [ %i.j, %_ZN5boost7movelib7pdqsortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_.exit ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.ax, %i.k
  br i1 %.not.i10, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit
  %i.ay = ptrtoint ptr %i.k to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !noalias !4844
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = shl i32 %i.bc, 1
  %i.be = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bd
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4844
  %i.bf = sub i64 %.pre, %i.bb
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !800, !noalias !4844
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit.thread, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i
  %i.bg = phi ptr [ %i.d, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit.thread ], [ %i.j, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_T0_.exit ], [ %i.j, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_ESaIvEvEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SC_m.exit.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !829 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.h
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = shl i32 %i.bk, 1
  %i.bm = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i.i, %i.bl
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %bb.h
  store i64 0, ptr %i.bi, align 8, !tbaa !829
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1431  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = icmp eq ptr %i.bo, %i.bn
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bp, !prof !1432
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, label %bb.i, !prof !1432

bb.i:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1433
  %i.bs = shl i64 %i.br, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #28
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !797
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.i ]
  store ptr %i.bt, ptr %0, align 8, !tbaa !797
  %i.bu = load <2 x i64>, ptr %i.a, align 8, !tbaa !36
  store <2 x i64> %i.bu, ptr %i.bi, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.j:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !829, !noalias !4847
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bv
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE6assignINS_13move_iteratorIPS5_EEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %i.bg, ptr %i.bw, ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !829 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.by = trunc i64 %i.bx to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  store i64 0, ptr %i.a, align 8, !tbaa !829
  br label %_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #24
  unreachable

_ZN5boost9container12small_vectorISt4pairINS0_4test24movable_and_copyable_intES4_ELm10ESaIS5_EvEaSEOS7_.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESC_.exit, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE32priv_move_assign_steal_or_assignIS8_EEvONS1_IS5_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_22small_vector_allocatorIS5_SaIvEvEEvE5clearEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 24
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8 ; 9 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -4 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -12 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %1, i64 -24 ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 -20 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.3, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.0.lcssa, %1
  %.02538.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEbT_SG_T0_.exit174.thread, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %._crit_edge, %bb.d
  %.02541.i = phi ptr [ %.025.i, %bb.d ], [ %.02538.i, %._crit_edge ] ; 5 uses
  %.pn40.i = phi ptr [ %.02541.i, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 7 uses
  %i.l = load i32, ptr %.02541.i, align 4, !tbaa !802 ; 3 uses
  %i.m = load i32, ptr %.pn40.i, align 4, !tbaa !802
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !802
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.p = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
end_hunk_2
