inline.NumInlined: 24579
inline.NumDeleted: 2912
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
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
  %.02441.i = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.ce, %bb.e ] ; 3 uses
  %.03640.i = phi ptr [ %bc.resume.val53, %scalar.ph ], [ %i.cf, %bb.e ] ; 9 uses
  %i.ba = icmp eq ptr %.02441.i, %i.ae
  br i1 %i.ba, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %.lr.ph.split.i
  %.not42.i = icmp eq ptr %.03640.i, %i.ad
  br i1 %.not42.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.bb = add i64 %.idx33, %i.a
  %i.bc = add i64 %i.bb, -2
  %i.bd = shl i64 %indvar, 1
  %i.be = add i64 %i.bd, %bc.resume.val5355
  %i.bf = sub i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = add nuw i64 %i.bg, 1                    ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.bf, 6
  br i1 %min.iters.check58, label %.lr.ph45.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check
  %i.bi = add i64 %.idx33, %i.c
  %i.bj = sub i64 %bc.resume.val5355, %i.bi
  %i.bk = shl i64 %indvar, 1
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = add i64 %i.bl, -1
  %diff.check56 = icmp ult i64 %i.bm, 31
  br i1 %diff.check56, label %.lr.ph45.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i64 %i.bf, 30
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bh, 12
  %n.vec61 = and i64 %i.bh, -16                   ; 4 uses
  %i.bo = shl i64 %n.vec61, 1                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ac, i64 %i.bo
  %i.bq = getelementptr i8, ptr %.03640.i, i64 %i.bo
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.br = shl i64 %index63, 1                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ac, i64 %i.br ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.03640.i, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load66 = load <8 x i16>, ptr %next.gep64, align 1
  %wide.load67 = load <8 x i16>, ptr %i.bs, align 1
  %i.bt = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load66, ptr %next.gep65, align 1
  store <8 x i16> %wide.load67, ptr %i.bt, align 1
  %index.next68 = add nuw i64 %index63, 16        ; 2 uses
  %i.bu = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bu, label %middle.block69, label %vector.body62, !llvm.loop !3208

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bh, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !3078

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.bh, -4                    ; 3 uses
  %i.bv = shl i64 %n.vec72, 1                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ac, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.03640.i, i64 %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.by = shl i64 %index73, 1                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.ac, i64 %i.by
  %next.gep75 = getelementptr i8, ptr %.03640.i, i64 %i.by
  %wide.load76 = load <4 x i16>, ptr %next.gep74, align 1
  store <4 x i16> %wide.load76, ptr %next.gep75, align 1
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.bh, %n.vec72
  br i1 %cmp.n78, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %vector.memcheck54, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck54 ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  %.13743.i.ph = phi ptr [ %.03640.i, %iter.check ], [ %.03640.i, %vector.memcheck54 ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %.144.i = phi ptr [ %i.cc, %.lr.ph45.i ], [ %.144.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %.13743.i = phi ptr [ %i.cb, %.lr.ph45.i ], [ %.13743.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.ca = load i16, ptr %.144.i, align 1
  store i16 %i.ca, ptr %.13743.i, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.13743.i, i64 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %.not.i32 = icmp eq ptr %i.cb, %i.ad
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3210

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cd = load i16, ptr %.02441.i, align 1
  store i16 %i.cd, ptr %.03640.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.cf, %i.ad
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

end_hunk_0
