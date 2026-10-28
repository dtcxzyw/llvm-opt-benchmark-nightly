Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
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
  br i1 %.not2236.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check91

iter.check91:                                     ; preds = %bb.c
  %i.i = add i64 %i.b, -4
  %i.j = sub i64 %i.i, %i.c                       ; 3 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check80 = icmp ult i64 %i.j, 6
  br i1 %min.iters.check80, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %iter.check91
  %min.iters.check82 = icmp ult i64 %i.j, 30
  br i1 %min.iters.check82, label %vec.epilog.ph95, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.m = and i64 %i.l, 12
  %n.vec84 = and i64 %i.l, -16                    ; 4 uses
  %i.n = shl i64 %n.vec84, 1                      ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.ph83, %vector.body85
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next88, %vector.body85 ] ; 2 uses
  %i.q = shl i64 %index86, 1
  %next.gep87 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep87, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep87, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.r, align 1
  store <8 x i16> %broadcast.splat, ptr %i.s, align 1
  %index.next88 = add nuw i64 %index86, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.t, label %middle.block89, label %vector.body85, !llvm.loop !3398

middle.block89:                                   ; preds = %vector.body85
  %cmp.n90 = icmp eq i64 %i.l, %n.vec84
  br i1 %cmp.n90, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check92

vec.epilog.iter.check92:                          ; preds = %middle.block89
  %min.epilog.iters.check94 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check94, label %.lr.ph.i.preheader, label %vec.epilog.ph95, !prof !326

vec.epilog.ph95:                                  ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check92
  %vec.epilog.resume.val96 = phi i64 [ %n.vec84, %vec.epilog.iter.check92 ], [ 0, %vector.main.loop.iter.check81 ]
  %n.vec97 = and i64 %i.l, -4                     ; 3 uses
  %i.u = shl i64 %n.vec97, 1                      ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  %broadcast.splatinsert98 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat99 = shufflevector <4 x i16> %broadcast.splatinsert98, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body100

vec.epilog.vector.body100:                        ; preds = %vec.epilog.vector.body100, %vec.epilog.ph95
  %index101 = phi i64 [ %vec.epilog.resume.val96, %vec.epilog.ph95 ], [ %index.next103, %vec.epilog.vector.body100 ] ; 2 uses
  %i.x = shl i64 %index101, 1
  %next.gep102 = getelementptr i8, ptr %2, i64 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep102, i64 2
  store <4 x i16> %broadcast.splat99, ptr %i.y, align 1
  %index.next103 = add nuw i64 %index101, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.z, label %vec.epilog.middle.block104, label %vec.epilog.vector.body100, !llvm.loop !3399

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body100
  %cmp.n105 = icmp eq i64 %i.l, %n.vec97
  br i1 %cmp.n105, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check91, %vec.epilog.iter.check92, %vec.epilog.middle.block104
  %.ph = phi ptr [ %i.h, %iter.check91 ], [ %i.o, %vec.epilog.iter.check92 ], [ %i.v, %vec.epilog.middle.block104 ]
  %.03437.i.ph = phi ptr [ %2, %iter.check91 ], [ %i.p, %vec.epilog.iter.check92 ], [ %i.w, %vec.epilog.middle.block104 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.03437.i = phi ptr [ %storemerge38.i, %.lr.ph.i ], [ %.03437.i.ph, %.lr.ph.i.preheader ]
  %storemerge38.i = getelementptr inbounds nuw i8, ptr %.03437.i, i64 2 ; 2 uses
  store i16 %i.g, ptr %storemerge38.i, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i, !llvm.loop !3400

bb.d:                                             ; preds = %bb.a
  %.idx33 = and i64 %i.e, -2                      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33 ; 7 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.ac, ptr noundef %1, ptr noundef %i.ad)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.ac, ptr noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
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
  %or.cond109 = or i1 %or.cond, %diff.check
  br i1 %or.cond109, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.d
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
  br i1 %i.ay, label %scalar.ph, label %vector.body, !llvm.loop !3401

scalar.ph:                                        ; preds = %vector.body, %bb.d
  %bc.resume.val = phi ptr [ %i.ad, %bb.d ], [ %i.at, %vector.body ]
  %bc.resume.val53 = phi ptr [ %2, %bb.d ], [ %i.au, %vector.body ] ; 2 uses
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
  %i.bk = add i64 %i.bi, %i.bj
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

vector.body62:                                    ; preds = %vector.ph60, %vector.body62
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
  br i1 %i.bt, label %middle.block69, label %vector.body62, !llvm.loop !3402

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bg, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.bg, -4                    ; 3 uses
  %i.bu = shl i64 %n.vec70, 1                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.03640.i, i64 %i.bu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = shl i64 %index71, 1                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ac, i64 %i.bx
  %next.gep73 = getelementptr i8, ptr %.03640.i, i64 %i.bx
  %wide.load74 = load <4 x i16>, ptr %next.gep72, align 1
  store <4 x i16> %wide.load74, ptr %next.gep73, align 1
  %index.next75 = add nuw i64 %index71, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.bg, %n.vec70
  br i1 %cmp.n76, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %iter.check, %vector.memcheck54, %vec.epilog.iter.check, %vec.epilog.middle.block
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
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3404

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cc = load i16, ptr %.02441.i, align 1
  store i16 %i.cc, ptr %.03640.i, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.ce, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not46.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i, !llvm.loop !3405

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.e, %.lr.ph45.i, %.lr.ph.i, %middle.block69, %vec.epilog.middle.block, %middle.block89, %vec.epilog.middle.block104, %.preheader.i, %bb.c, %bb.b
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
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3406

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
  br i1 %.not77.us.i.7, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !37

._crit_edge132.i:                                 ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %.lr.ph.split
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_:bb.a
  store i32 %i.l, ptr %i.w, align 4, !tbaa !254
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %i.f
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !42

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %1, 1
  %i.aa = sub nuw i64 %1, %i.z                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !268
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !267
  tail call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !226
  %i.af = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEmNS0_13adaptive_xbufIS7_S8_mEEEEbT_T1_T0_RSJ_SL_SL_SL_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.af, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !268
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !266 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %.not.i31 = icmp ult i64 %i.ak, %i.aa
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !267
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  call void @_ZN5boost7movelib10merge_sortIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %i.am)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef nonnull %i.ag)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_SI_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !226
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !226
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !226 ; 3 uses
  %i.as = sub i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = sub i64 %1, %i.ap
  %i.av = add i64 %i.au, %i.ar
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !226
  %i.ax = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_RT1_T0_(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !226 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = sub i64 %1, %i.ay
  %i.bb = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEbT_RNS0_9iter_sizeISI_E4typeESI_SL_SL_SM_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !226
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !226
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
  %i.g = load i32, ptr %.02541.i, align 4, !tbaa !254 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !254
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i, align 4, !tbaa !254
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !254
  store i32 %i.n, ptr %.02541.i, align 4, !tbaa !254
  store i32 0, ptr %.pn40.i, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.k, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %.not2933.i = icmp eq ptr %.pn40.i, %0
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.d ], [ %.pn40.i, %bb.c ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !254
  store i32 0, ptr %i.q, align 4, !tbaa !254
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %.not29.i = icmp eq ptr %i.q, %0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.024.lcssa.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !254
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.025.i = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %.025.i, %1
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !42

bb.f:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.e, 1                         ; 4 uses
  %i.aa = sub nuw i64 %i.e, %i.z                  ; 4 uses
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
  %.027.i.i = phi ptr [ %2, %bb.g ], [ %.1.i.i, %bb.k ] ; 12 uses
  %.01626.i.i = phi ptr [ %0, %bb.g ], [ %i.bj, %bb.k ] ; 9 uses
  %.01725.i.i = phi ptr [ %i.ac, %bb.g ], [ %.118.i.i, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %.01725.i.i, %1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i56.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %i.af = shl i64 %i.z, 3
  %i.ag = add i64 %i.d, %i.a
  %i.ah = add i64 %i.ag, -8
  %i.ai = add i64 %i.af, %.027.i.i56.le
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.am = shl i64 %indvar, 3
  %3 = shl i64 %i.z, 3
  %4 = add i64 %i.d, %i.a
  %i.an = add i64 %4, -8
  %i.ao = add i64 %3, %.027.i.i56.le
  %5 = sub i64 %i.an, %i.ao
  %6 = and i64 %5, -8                             ; 2 uses
  %7 = getelementptr i8, ptr %0, i64 %i.am
  %8 = getelementptr i8, ptr %7, i64 8
  %scevgep57 = getelementptr i8, ptr %8, i64 %6
  %scevgep58 = getelementptr i8, ptr %.027.i.i, i64 %6
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 8
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep59
  %bound1 = icmp ult ptr %.027.i.i, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387902     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.01626.i.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.027.i.i, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.as
  %next.gep60 = getelementptr i8, ptr %.027.i.i, i64 %i.as ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !254, !alias.scope !3606
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3607, !noalias !3606
  store <4 x i32> zeroinitializer, ptr %next.gep60, align 4, !tbaa !254, !alias.scope !3606
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !3604

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 4 uses
  %i.au = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !254
  store i32 %i.au, ptr %.010.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.ad
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i, !llvm.loop !3605

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ba = load i32, ptr %.027.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bb = load i32, ptr %.01725.i.i, align 4, !tbaa !254 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4 ; 2 uses
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %.01626.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !254
  %i.bd = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bd, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %.01626.i.i, align 4, !tbaa !254
  store i32 0, ptr %.027.i.i, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.bf, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.01626.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !43

.lr.ph.preheader.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bk = trunc i64 %i.aa to i32
  %i.bl = shl i32 %i.bk, 1
  %i.bm = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bl
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

.lr.ph.preheader.i29:                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bo = trunc i64 %i.aa to i32
  %i.bp = shl i32 %i.bo, 1
  %i.bq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i30, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  resume { ptr, i32 } %i.bn

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
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !35

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
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !38

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
  %i.ab = phi i64 [ %.0.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %.0.lcssa.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  store i64 %.0.i, ptr %4, align 8, !tbaa !226
  %i.ac = shl i64 %.0.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit
  %storemerge = phi i64 [ %i.ac, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit ], [ %i.af, %bb.f ] ; 8 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !226
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !268 ; 4 uses
  %i.af = shl i64 %storemerge, 1                  ; 3 uses
  %.not = icmp ult i64 %i.ae, %i.af
  br i1 %.not, label %.preheader88, label %bb.f, !llvm.loop !3608

.preheader88:                                     ; preds = %bb.f
  %i.ag = sub i64 %1, %storemerge                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader88, %bb.g
  %.071.in = phi i64 [ %.071, %bb.g ], [ %storemerge, %.preheader88 ] ; 5 uses
  %.071 = add i64 %.071.in, -1                    ; 3 uses
  %i.ah = sub i64 %i.ag, %.071
  %i.ai = udiv i64 %i.ah, %storemerge
  %.not80 = icmp ult i64 %.071, %i.ai
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_:bb.a
  store i32 %i.t, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.s, align 4, !tbaa !254
  %i.u = add i32 %i.r, 2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %.not2749.i = icmp eq ptr %.04759.i, %2
  br i1 %.not2749.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2652.i = phi ptr [ %storemerge26.i, %bb.e ], [ %.04759.i, %bb.d ] ; 6 uses
  %.04650.i = phi ptr [ %storemerge2652.i, %bb.e ], [ %storemerge61.i, %bb.d ] ; 2 uses
  %storemerge26.i = getelementptr i8, ptr %storemerge2652.i, i64 -8 ; 4 uses
  %i.v = load i32, ptr %i.m, align 4, !tbaa !254
  %i.w = load i32, ptr %storemerge26.i, align 4, !tbaa !254 ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.w, ptr %storemerge2652.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge26.i, align 4, !tbaa !254
  %i.y = getelementptr inbounds i8, ptr %storemerge2652.i, i64 -4 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.04650.i, i64 -4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %.not27.i = icmp eq ptr %storemerge26.i, %2
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.046.lcssa.i = phi ptr [ %storemerge61.i, %bb.d ], [ %.04650.i, %.lr.ph.i ], [ %storemerge2652.i, %bb.e ]
  %storemerge26.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2652.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 %i.ab, ptr %storemerge26.lcssa.i, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %.02160.i, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.046.lcssa.i, i64 -4
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !254
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !254
  store i32 0, ptr %i.ac, align 4, !tbaa !254
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph62.i
  store i32 %i.n, ptr %storemerge61.i, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ag = getelementptr inbounds nuw i8, ptr %.02160.i, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.ai = add i32 %i.af, 2
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %i.aj, %1
  br i1 %.not25.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph62.i, !llvm.loop !3672

bb.h:                                             ; preds = %bb.a
  %i.ak = lshr i64 %i.d, 1                        ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.al, ptr noundef %1, ptr noundef %i.am)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.al, ptr noundef %i.al)
          to label %bb.i unwind label %.lr.ph.preheader.i34

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  invoke void @_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_SG_SG_T_(ptr noundef %i.al, ptr noundef %i.an, ptr noundef %2, ptr noundef %i.am, ptr noundef %i.ao)
          to label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit unwind label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %bb.i, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %.neg = sub i64 %i.ak, %i.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i35 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg39 = trunc i64 %.neg to i32
  %.neg40 = shl i32 %.neg39, 1
  %i.aq = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i35, %.neg40
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  resume { ptr, i32 } %i.ap

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit: ; preds = %bb.g, %bb.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.f, ptr %2, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.g, align 4, !tbaa !254
  store i32 %i.i, ptr %i.h, align 4, !tbaa !254
  store i32 0, ptr %i.g, align 4, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not3139.i.i = icmp eq ptr %i.j, %1
  br i1 %.not3139.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.c, %.critedge.i.i
  %i.k = phi ptr [ %i.ac, %.critedge.i.i ], [ %i.j, %bb.c ] ; 6 uses
  %.pn41.i.i = phi ptr [ %.02642.i.i, %.critedge.i.i ], [ %2, %bb.c ] ; 7 uses
  %.02740.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %0, %bb.c ]
  %.02642.i.i = getelementptr inbounds nuw i8, ptr %.pn41.i.i, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %i.m = load i32, ptr %.pn41.i.i, align 4, !tbaa !254 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph43.i.i
  store i32 %i.m, ptr %.02642.i.i, align 4, !tbaa !254
  store i32 0, ptr %.pn41.i.i, align 4, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.pn41.i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn41.i.i, i64 12
  %i.q = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.q, ptr %i.p, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %.not3233.i.i = icmp eq ptr %.pn41.i.i, %2
  br i1 %.not3233.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.035.i.i = phi ptr [ %i.r, %bb.e ], [ %.pn41.i.i, %bb.d ] ; 5 uses
  %i.r = getelementptr i8, ptr %.035.i.i, i64 -8  ; 4 uses
  %i.s = load i32, ptr %i.k, align 4, !tbaa !254
  %i.t = load i32, ptr %i.r, align 4, !tbaa !254  ; 2 uses
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  store i32 %i.t, ptr %.035.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.r, align 4, !tbaa !254
  %i.v = getelementptr inbounds i8, ptr %.035.i.i, i64 -4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.x, ptr %i.w, align 4, !tbaa !254
  store i32 0, ptr %i.v, align 4, !tbaa !254
  %.not32.i.i = icmp eq ptr %i.r, %2
  br i1 %.not32.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !48

.critedge.i.i:                                    ; preds = %bb.e, %.lr.ph.i.i, %bb.d, %.lr.ph43.i.i
  %.1.i.i = phi ptr [ %.02642.i.i, %.lr.ph43.i.i ], [ %2, %bb.d ], [ %2, %bb.e ], [ %.035.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !254
  store i32 %i.y, ptr %.1.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.k, align 4, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %.02740.i.i, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !254
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !254
  store i32 0, ptr %i.z, align 4, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not31.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph43.i.i, !llvm.loop !49

bb.f:                                             ; preds = %bb.a
  %i.ad = lshr i64 %i.d, 1                        ; 6 uses
  %.idx = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %i.ae, ptr noundef %1, ptr noundef %i.af)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_T0_T1_(ptr noundef %0, ptr noundef %i.ae, ptr noundef %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not23.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not23.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i27, %bb.j ], [ %i.ae, %bb.f ] ; 12 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.j ], [ %i.af, %bb.f ] ; 6 uses
  %.01824.i.i = phi ptr [ %i.bq, %bb.j ], [ %2, %bb.f ] ; 9 uses
  %i.ai = icmp eq ptr %.01625.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i26
  %.026.i.i57.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.aj = shl i64 %i.ad, 4
  %i.ak = add i64 %i.aj, %i.b
  %i.al = add i64 %i.ak, -8
  %i.am = sub i64 %i.al, %.026.i.i57.le           ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = shl i64 %indvar, 3
  %i.aq = shl i64 %i.ad, 4
  %i.ar = add i64 %i.aq, %i.b
  %i.as = add i64 %i.ar, -8
  %i.at = sub i64 %i.as, %.026.i.i57.le
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %3 = getelementptr i8, ptr %2, i64 %i.ap
  %4 = getelementptr i8, ptr %3, i64 8
  %scevgep58 = getelementptr i8, ptr %4, i64 %i.au
  %scevgep59 = getelementptr i8, ptr %.026.i.i, i64 %i.au
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 8
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep60
  %bound1 = icmp ult ptr %.026.i.i, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387902     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %.01824.i.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %.026.i.i, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.ay
  %next.gep61 = getelementptr i8, ptr %.026.i.i, i64 %i.ay ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !254, !alias.scope !3678
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3679, !noalias !3678
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !254, !alias.scope !3678
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !3676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 4 uses
  %i.ba = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !254
  store i32 %i.ba, ptr %.010.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !254
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !254
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bb, align 4, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3677

bb.g:                                             ; preds = %.lr.ph.i.i26
  %i.bg = load i32, ptr %.01625.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bh = load i32, ptr %.026.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 4 ; 2 uses
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bg, ptr %.01824.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i.i, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !254
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !254
  store i32 0, ptr %i.bk, align 4, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.bh, ptr %.01824.i.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i.i, align 4, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !254
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !254
  store i32 0, ptr %i.bn, align 4, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i.i = phi ptr [ %i.bm, %bb.h ], [ %.01625.i.i, %bb.i ]
  %.1.i.i27 = phi ptr [ %.026.i.i, %bb.h ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bq = getelementptr i8, ptr %.01824.i.i, i64 8
  %.not.i.i28 = icmp eq ptr %.1.i.i27, %i.ag
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i28, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit, label %.lr.ph.i.i26, !llvm.loop !50

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %.critedge.i.i, %middle.block, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_EEvT0_SF_T1_SG_SG_T_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp ne ptr %0, %1
  %i.c = icmp ne ptr %2, %3
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.02556 = phi ptr [ %.2, %bb.e ], [ %0, %bb.a ] ; 7 uses
  %.02655 = phi ptr [ %.127, %bb.e ], [ %3, %bb.a ] ; 6 uses
  %.054 = phi ptr [ %i.as, %bb.e ], [ %2, %bb.a ] ; 6 uses
  %i.e = icmp eq ptr %.02655, %4
  br i1 %i.e, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not58 = icmp eq ptr %.054, %3
  br i1 %.not58, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader, %.lr.ph61
  %.160 = phi ptr [ %i.m, %.lr.ph61 ], [ %.02556, %.preheader ] ; 4 uses
  %.14659 = phi ptr [ %i.l, %.lr.ph61 ], [ %.054, %.preheader ] ; 3 uses
  %i.f = load i32, ptr %.160, align 4, !tbaa !254
  store i32 %i.f, ptr %.14659, align 4, !tbaa !254
  store i32 0, ptr %.160, align 4, !tbaa !254
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.h = getelementptr inbounds nuw i8, ptr %.14659, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %.160, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 %i.j, ptr %i.h, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.k = add i32 %i.g, 2
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.l = getelementptr inbounds nuw i8, ptr %.14659, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.160, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %3
  br i1 %.not, label %._crit_edge62, label %.lr.ph61, !llvm.loop !3680

._crit_edge62:                                    ; preds = %.lr.ph61, %.preheader
  %.1.lcssa = phi ptr [ %.02556, %.preheader ], [ %i.m, %.lr.ph61 ] ; 8 uses
  %.not8.i = icmp eq ptr %.1.lcssa, %1
  br i1 %.not8.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge62
  %.1.lcssa109 = ptrtoaddr ptr %.1.lcssa to i64
  %i.n = add i64 %i.a, -8
  %i.o = sub i64 %i.n, %.1.lcssa109               ; 3 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.o, 72
  br i1 %min.iters.check111, label %.lr.ph.i.preheader131, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.lr.ph.i.preheader
  %i.r = and i64 %i.o, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.s
  %i.u = getelementptr i8, ptr %.1.lcssa, i64 %i.s
  %bound0113 = icmp ult ptr %3, %i.u
  %bound1114 = icmp ult ptr %.1.lcssa, %i.t
  %found.conflict115 = and i1 %bound0113, %bound1114
  br i1 %found.conflict115, label %.lr.ph.i.preheader131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck112
  %n.vec117 = and i64 %i.q, 4611686018427387902   ; 3 uses
  %i.v = shl i64 %n.vec117, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %3, i64 %i.v
  %i.x = getelementptr i8, ptr %.1.lcssa, i64 %i.v
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %i.y = shl i64 %index119, 3                     ; 2 uses
  %next.gep120 = getelementptr i8, ptr %3, i64 %i.y
  %next.gep121 = getelementptr i8, ptr %.1.lcssa, i64 %i.y ; 2 uses
  %wide.vec122 = load <4 x i32>, ptr %next.gep121, align 4, !tbaa !254, !alias.scope !3692
  store <4 x i32> %wide.vec122, ptr %next.gep120, align 4, !tbaa !254, !alias.scope !3693, !noalias !3692
  store <4 x i32> zeroinitializer, ptr %next.gep121, align 4, !tbaa !254, !alias.scope !3692
  %index.next126 = add nuw i64 %index119, 2       ; 2 uses
  %i.z = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.z, label %middle.block127, label %vector.body118, !llvm.loop !3684

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %i.q, %n.vec117
  br i1 %cmp.n128, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.preheader131

.lr.ph.i.preheader131:                            ; preds = %vector.memcheck112, %.lr.ph.i.preheader, %middle.block127
  %.010.i.ph = phi ptr [ %3, %vector.memcheck112 ], [ %3, %.lr.ph.i.preheader ], [ %i.w, %middle.block127 ]
  %.079.i.ph = phi ptr [ %.1.lcssa, %vector.memcheck112 ], [ %.1.lcssa, %.lr.ph.i.preheader ], [ %i.x, %middle.block127 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader131, %.lr.ph.i
  %.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader131 ] ; 3 uses
  %.079.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader131 ] ; 4 uses
  %i.aa = load i32, ptr %.079.i, align 4, !tbaa !254
  store i32 %i.aa, ptr %.010.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i, align 4, !tbaa !254
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !254
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ab, align 4, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i, !llvm.loop !3685

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %.02655, align 4, !tbaa !254 ; 2 uses
  %i.ah = load i32, ptr %.02556, align 4, !tbaa !254 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.054, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.ag, ptr %.054, align 4, !tbaa !254
  store i32 0, ptr %.02655, align 4, !tbaa !254
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.al = getelementptr inbounds nuw i8, ptr %.02655, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !254
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.al, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.02655, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ah, ptr %.054, align 4, !tbaa !254
  store i32 0, ptr %.02556, align 4, !tbaa !254
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %.02556, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.ar = getelementptr inbounds nuw i8, ptr %.02556, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink.in = phi i32 [ %i.ak, %bb.c ], [ %i.ao, %bb.d ]
  %.127 = phi ptr [ %i.an, %bb.c ], [ %.02655, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %.02556, %bb.c ], [ %i.ar, %bb.d ] ; 3 uses
  %.sink = add i32 %.sink.in, 2
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.as = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 2 uses
  %i.at = icmp ne ptr %.2, %1
  %i.au = icmp ne ptr %i.as, %3
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !3686

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.026.lcssa = phi ptr [ %3, %bb.a ], [ %.127, %bb.e ]
  %.025.lcssa = phi ptr [ %0, %bb.a ], [ %.2, %bb.e ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.025.lcssa, %1
  br i1 %.not23.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.025.lcssa, %._crit_edge ] ; 12 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.i ], [ %.026.lcssa, %._crit_edge ] ; 6 uses
  %.01824.i.i = phi ptr [ %i.bx, %bb.i ], [ %3, %._crit_edge ] ; 9 uses
  %i.aw = icmp eq ptr %.01625.i.i, %4
  br i1 %i.aw, label %.lr.ph.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.026.i.i95.le = ptrtoaddr ptr %.026.i.i to i64
  %i.ax = add i64 %i.a, -8
  %i.ay = sub i64 %i.ax, %.026.i.i95.le           ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 88
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bb = shl i64 %indvar, 3
  %5 = and i64 %i.ay, -8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.bb
  %6 = getelementptr i8, ptr %scevgep, i64 8
  %scevgep96 = getelementptr i8, ptr %6, i64 %5
  %scevgep97 = getelementptr i8, ptr %.026.i.i, i64 %5
  %scevgep98 = getelementptr i8, ptr %scevgep97, i64 8
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep98
  %bound1 = icmp ult ptr %.026.i.i, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387902     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.01824.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %.026.i.i, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.bf
  %next.gep99 = getelementptr i8, ptr %.026.i.i, i64 %i.bf ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !254, !alias.scope !3694
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3695, !noalias !3694
  store <4 x i32> zeroinitializer, ptr %next.gep99, align 4, !tbaa !254, !alias.scope !3694
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !3690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i.i.i.preheader132

.lr.ph.i.i.i.i.preheader132:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader132, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader132 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader132 ] ; 4 uses
  %i.bh = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !254
  store i32 %i.bh, ptr %.010.i.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !254
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !254
  store i32 0, ptr %i.bi, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3691

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bn = load i32, ptr %.01625.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bo = load i32, ptr %.026.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 4 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bn, ptr %.01824.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i.i, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.br, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.bo, ptr %.01824.i.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i.i, align 4, !tbaa !254
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.117.i.i = phi ptr [ %i.bt, %bb.g ], [ %.01625.i.i, %bb.h ]
  %.1.i.i = phi ptr [ %.026.i.i, %bb.g ], [ %i.bw, %bb.h ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.01824.i.i, i64 8
  %.not.i.i = icmp eq ptr %.1.i.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !50

_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i, %middle.block, %middle.block127, %._crit_edge62, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEENS0_9iter_sizeIT_E4typeESJ_SJ_SL_T0_RT1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %.not80 = icmp ult i64 %i.d, %2
  br i1 %.not80, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ne ptr %i.b, %1
  %i.f = icmp ne i64 %2, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph118, label %._crit_edge119

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !267    ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !266  ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.j, 3              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx107 ; 4 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.l, ptr %i.k, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.n, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %i.q = add i32 %i.m, 2
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.r = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.r, ptr %i.i, align 8, !tbaa !266
  %i.s = icmp ne ptr %i.b, %1
  %i.t = icmp ne i64 %2, 1
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit

.lr.ph:                                           ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit
  %indvar = phi i64 [ %indvar.next, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ 0, %bb.c ] ; 3 uses
  %i.v = phi i64 [ %i.dj, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ %i.r, %bb.c ] ; 5 uses
  %.0111 = phi i64 [ %.1, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ 1, %bb.c ] ; 2 uses
  %.067110 = phi ptr [ %.168, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ %0, %bb.c ] ; 11 uses
  %.071109 = phi ptr [ %.172, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ %i.b, %bb.c ] ; 12 uses
  %.075108 = phi ptr [ %i.dk, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit ], [ %i.b, %bb.c ] ; 12 uses
  %i.w = shl i64 %indvar, 3
  %i.x = add i64 %i.w, %i.a
  %.071109141 = ptrtoaddr ptr %.071109 to i64     ; 2 uses
  %.idx106 = shl nuw nsw i64 %i.v, 3              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx106 ; 7 uses
  %.not15.i = icmp samesign eq i64 %i.v, %i.j
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %gepdiff = sub nsw i64 %.idx106, %.idx107
  %i.z = ashr exact i64 %gepdiff, 3
  %i.aa = load i32, ptr %.075108, align 4, !tbaa !254
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.ab = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !254
  %i.ae = icmp slt i32 %i.ad, %i.aa               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.neg.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i ; 2 uses
  %.1.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d, %.lr.ph
  %.013.lcssa.i = phi ptr [ %i.k, %.lr.ph ], [ %.114.i, %bb.d ] ; 6 uses
  %i.ah = icmp eq ptr %.013.lcssa.i, %i.y         ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %i.ai = load i32, ptr %.075108, align 4, !tbaa !254
  %i.aj = load i32, ptr %.013.lcssa.i, align 4, !tbaa !254
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE6insertIS7_EEvS7_T_.exit

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i = icmp eq ptr %.071109, %.075108
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %bb.f
  %i.al = shl i64 %indvar, 3
  %i.am = add i64 %i.al, %i.a                     ; 2 uses
  %i.an = sub i64 %i.am, %.071109141              ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 136
  br i1 %min.iters.check, label %.lr.ph.i81.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i81.preheader
  %scevgep = getelementptr i8, ptr %.067110, i64 4 ; 4 uses
  %i.aq = sub i64 %i.x, %.071109141
  %i.ar = and i64 %i.aq, -8                       ; 4 uses
  %scevgep142 = getelementptr i8, ptr %scevgep, i64 %i.ar ; 3 uses
  %scevgep143 = getelementptr i8, ptr %.071109, i64 4 ; 4 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ar ; 3 uses
  %scevgep145 = getelementptr i8, ptr %.067110, i64 8
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next549, %vector.body541 ] ; 2 uses
  %i.gw = shl i64 %index542, 3                    ; 2 uses
  %next.gep543 = getelementptr i8, ptr %i.gc, i64 %i.gw
  %next.gep544 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gw ; 2 uses
  %wide.vec545 = load <4 x i32>, ptr %next.gep544, align 4, !tbaa !254
  store <4 x i32> %wide.vec545, ptr %next.gep543, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep544, align 4, !tbaa !254
  %index.next549 = add nuw i64 %index542, 2       ; 2 uses
  %i.gx = icmp eq i64 %index.next549, %n.vec540
  br i1 %i.gx, label %middle.block550, label %vector.body541, !llvm.loop !3778

middle.block550:                                  ; preds = %vector.body541
  %cmp.n551 = icmp eq i64 %i.gg, %n.vec540
  br i1 %cmp.n551, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader669

.lr.ph.i.i146.preheader669:                       ; preds = %vector.memcheck515, %.lr.ph.i.i146.preheader, %middle.block550
  %.010.i.i147.ph = phi ptr [ %i.gc, %vector.memcheck515 ], [ %i.gc, %.lr.ph.i.i146.preheader ], [ %i.gu, %middle.block550 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck515 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gv, %middle.block550 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader669, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hd, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader669 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hc, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader669 ] ; 4 uses
  %i.gy = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.gy, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.gz = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !254
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !254
  store i32 0, ptr %i.gz, align 4, !tbaa !254
  %i.hc = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hc, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !3779

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block550, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.he, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gc, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fp, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5587 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hi, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ho, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hi, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.hk, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hf = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hg = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hh = icmp slt i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hf, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !254
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hl, align 4, !tbaa !254
  %i.hn = icmp eq ptr %i.hk, %i.fr
  br i1 %i.hn, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hg, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %.5
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.hi, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ho, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %.223.i586 = ptrtoaddr ptr %.223.i to i64
  %i.hs = add i64 %.5587, -8
  %i.ht = sub i64 %i.hs, %.223.i586               ; 3 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check589 = icmp ult i64 %i.ht, 312
  br i1 %min.iters.check589, label %.lr.ph.i.i154.preheader657, label %vector.memcheck590

vector.memcheck590:                               ; preds = %.lr.ph.i.i154.preheader
  %i.hw = and i64 %i.ht, -8                       ; 2 uses
  %i.hx = or disjoint i64 %i.hw, 4                ; 2 uses
  %i.hy = getelementptr i8, ptr %.226.i, i64 %i.hx ; 3 uses
  %i.hz = getelementptr i8, ptr %.223.i, i64 %i.hx ; 3 uses
  %i.ia = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ib = add i64 %i.hw, 8                        ; 2 uses
  %i.ic = getelementptr i8, ptr %.226.i, i64 %i.ib ; 3 uses
  %i.id = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ib ; 3 uses
  %bound0591 = icmp ult ptr %.226.i, %i.hz
  %bound1592 = icmp ult ptr %.223.i, %i.hy
  %found.conflict593 = and i1 %bound0591, %bound1592
  %bound0594 = icmp ult ptr %.226.i, %i.ic
  %bound1595 = icmp ult ptr %i.ia, %i.hy
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %found.conflict593, %found.conflict596
  %bound0598 = icmp ult ptr %.226.i, %i.ie
  %bound1599 = icmp ult ptr %i.id, %i.hy
  %found.conflict600 = and i1 %bound0598, %bound1599
  %conflict.rdx601 = or i1 %conflict.rdx597, %found.conflict600
  %bound0602 = icmp ult ptr %.223.i, %i.ic
  %bound1603 = icmp ult ptr %i.ia, %i.hz
  %found.conflict604 = and i1 %bound0602, %bound1603
  %conflict.rdx605 = or i1 %conflict.rdx601, %found.conflict604
  %bound0606 = icmp ult ptr %.223.i, %i.ie
  %bound1607 = icmp ult ptr %i.id, %i.hz
  %found.conflict608 = and i1 %bound0606, %bound1607
  %conflict.rdx609 = or i1 %conflict.rdx605, %found.conflict608
  %bound0610 = icmp ult ptr %i.ia, %i.ie
  %bound1611 = icmp ult ptr %i.id, %i.ic
  %found.conflict612 = and i1 %bound0610, %bound1611
  %conflict.rdx613 = or i1 %conflict.rdx609, %found.conflict612
  br i1 %conflict.rdx613, label %.lr.ph.i.i154.preheader657, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck590
  %n.vec615 = and i64 %i.hv, 4611686018427387902  ; 3 uses
  %i.if = shl i64 %n.vec615, 3                    ; 2 uses
  %i.ig = getelementptr i8, ptr %.226.i, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %.223.i, i64 %i.if
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next624, %vector.body616 ] ; 2 uses
  %i.ii = shl i64 %index617, 3                    ; 2 uses
  %next.gep618 = getelementptr i8, ptr %.226.i, i64 %i.ii
  %next.gep619 = getelementptr i8, ptr %.223.i, i64 %i.ii ; 2 uses
  %wide.vec620 = load <4 x i32>, ptr %next.gep619, align 4, !tbaa !254
  store <4 x i32> %wide.vec620, ptr %next.gep618, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep619, align 4, !tbaa !254
  %index.next624 = add nuw i64 %index617, 2       ; 2 uses
  %i.ij = icmp eq i64 %index.next624, %n.vec615
  br i1 %i.ij, label %middle.block625, label %vector.body616, !llvm.loop !3780

middle.block625:                                  ; preds = %vector.body616
  %cmp.n626 = icmp eq i64 %i.hv, %n.vec615
  br i1 %cmp.n626, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader657

.lr.ph.i.i154.preheader657:                       ; preds = %vector.memcheck590, %.lr.ph.i.i154.preheader, %middle.block625
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck590 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.ig, %middle.block625 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck590 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ih, %middle.block625 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader657, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ip, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader657 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.io, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader657 ] ; 4 uses
  %i.ik = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ik, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.in = load i32, ptr %i.il, align 4, !tbaa !254
  store i32 %i.in, ptr %i.im, align 4, !tbaa !254
  store i32 0, ptr %i.il, align 4, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.io, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !3781

bb.aj:                                            ; preds = %.thread
  br i1 %i.fq, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iq = phi ptr [ %i.fp, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 11 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.ir = phi ptr [ %i.fr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0108266441 = ptrtoaddr ptr %.0216268 to i64
  %.0216268440 = ptrtoaddr ptr %.0108266 to i64
  %i.is = add i64 %.0216268440, -8
  %i.it = sub i64 %i.is, %.0108266441             ; 3 uses
  %i.iu = lshr i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.it, 312
  br i1 %min.iters.check443, label %.lr.ph.i.i161.preheader670, label %vector.memcheck444

vector.memcheck444:                               ; preds = %.lr.ph.i.i161.preheader
  %i.iw = and i64 %i.it, -8                       ; 2 uses
  %i.ix = or disjoint i64 %i.iw, 4                ; 2 uses
  %i.iy = getelementptr i8, ptr %.0222270, i64 %i.ix ; 3 uses
  %i.iz = getelementptr i8, ptr %.0216268, i64 %i.ix ; 3 uses
  %i.ja = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.jb = add i64 %i.iw, 8                        ; 2 uses
  %i.jc = getelementptr i8, ptr %.0222270, i64 %i.jb ; 3 uses
  %i.jd = getelementptr i8, ptr %.0216268, i64 4  ; 3 uses
  %i.je = getelementptr i8, ptr %.0216268, i64 %i.jb ; 3 uses
  %bound0445 = icmp ult ptr %.0222270, %i.iz
  %bound1446 = icmp ult ptr %.0216268, %i.iy
  %found.conflict447 = and i1 %bound0445, %bound1446
  %bound0448 = icmp ult ptr %.0222270, %i.jc
  %bound1449 = icmp ult ptr %i.ja, %i.iy
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %found.conflict447, %found.conflict450
  %bound0452 = icmp ult ptr %.0222270, %i.je
  %bound1453 = icmp ult ptr %i.jd, %i.iy
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx451, %found.conflict454
  %bound0456 = icmp ult ptr %.0216268, %i.jc
  %bound1457 = icmp ult ptr %i.ja, %i.iz
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx459 = or i1 %conflict.rdx455, %found.conflict458
  %bound0460 = icmp ult ptr %.0216268, %i.je
  %bound1461 = icmp ult ptr %i.jd, %i.iz
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx459, %found.conflict462
  %bound0464 = icmp ult ptr %i.ja, %i.je
  %bound1465 = icmp ult ptr %i.jd, %i.jc
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  br i1 %conflict.rdx467, label %.lr.ph.i.i161.preheader670, label %vector.ph468

vector.ph468:                                     ; preds = %vector.memcheck444
  %n.vec469 = and i64 %i.iv, 4611686018427387902  ; 3 uses
  %i.jf = shl i64 %n.vec469, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %.0222270, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %.0216268, i64 %i.jf
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next478, %vector.body470 ] ; 2 uses
  %i.ji = shl i64 %index471, 3                    ; 2 uses
  %next.gep472 = getelementptr i8, ptr %.0222270, i64 %i.ji
  %next.gep473 = getelementptr i8, ptr %.0216268, i64 %i.ji ; 2 uses
  %wide.vec474 = load <4 x i32>, ptr %next.gep473, align 4, !tbaa !254
  store <4 x i32> %wide.vec474, ptr %next.gep472, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep473, align 4, !tbaa !254
  %index.next478 = add nuw i64 %index471, 2       ; 2 uses
  %i.jj = icmp eq i64 %index.next478, %n.vec469
  br i1 %i.jj, label %middle.block479, label %vector.body470, !llvm.loop !3782

middle.block479:                                  ; preds = %vector.body470
  %cmp.n480 = icmp eq i64 %i.iv, %n.vec469
  br i1 %cmp.n480, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader670

.lr.ph.i.i161.preheader670:                       ; preds = %vector.memcheck444, %.lr.ph.i.i161.preheader, %middle.block479
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck444 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jg, %middle.block479 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck444 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jh, %middle.block479 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader670, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jp, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader670 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jo, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader670 ] ; 4 uses
  %i.jk = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jk, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !254
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !254
  store i32 0, ptr %i.jl, align 4, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jo, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !3783

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block479, %middle.block625, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jq = phi ptr [ %i.fp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fp, %bb.aj ], [ %i.iq, %bb.ak ], [ %i.fp, %middle.block625 ], [ %i.iq, %middle.block479 ], [ %i.fp, %.lr.ph.i.i154 ], [ %i.iq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block625 ], [ %.2, %middle.block479 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block625 ], [ %.0234275, %middle.block479 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block625 ], [ %.0228272, %middle.block479 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block625 ], [ %.0102262, %middle.block479 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block625 ], [ %.099259, %middle.block479 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.jr = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fr, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.fr, %middle.block625 ], [ %i.ir, %middle.block479 ], [ %i.fr, %.lr.ph.i.i154 ], [ %i.ir, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.ig, %middle.block625 ], [ %i.jg, %middle.block479 ], [ %i.ip, %.lr.ph.i.i154 ], [ %i.jp, %.lr.ph.i.i161 ]
  %i.js = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_S8_S8_SF_NS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jr, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.jt, %i.jr
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.ju = ptrtoaddr ptr %i.jt to i64
  %i.jv = ptrtoaddr ptr %i.jr to i64
  %i.jw = add i64 %i.jv, -8
  %i.jx = sub i64 %i.jw, %i.ju                    ; 3 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check636 = icmp ult i64 %i.jx, 72
  br i1 %min.iters.check636, label %.lr.ph.i.i168.preheader656, label %vector.memcheck637

vector.memcheck637:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ka = and i64 %i.jx, -8
  %i.kb = add i64 %i.ka, 8                        ; 2 uses
  %i.kc = getelementptr i8, ptr %i.js, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.jt, i64 %i.kb
  %bound0638 = icmp ult ptr %i.js, %i.kd
  %bound1639 = icmp ult ptr %i.jt, %i.kc
  %found.conflict640 = and i1 %bound0638, %bound1639
  br i1 %found.conflict640, label %.lr.ph.i.i168.preheader656, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck637
  %n.vec642 = and i64 %i.jz, 4611686018427387902  ; 3 uses
  %i.ke = shl i64 %n.vec642, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.jt, i64 %i.ke
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next651, %vector.body643 ] ; 2 uses
  %i.kh = shl i64 %index644, 3                    ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.js, i64 %i.kh
  %next.gep646 = getelementptr i8, ptr %i.jt, i64 %i.kh ; 2 uses
  %wide.vec647 = load <4 x i32>, ptr %next.gep646, align 4, !tbaa !254, !alias.scope !3789
  store <4 x i32> %wide.vec647, ptr %next.gep645, align 4, !tbaa !254, !alias.scope !3790, !noalias !3789
  store <4 x i32> zeroinitializer, ptr %next.gep646, align 4, !tbaa !254, !alias.scope !3789
  %index.next651 = add nuw i64 %index644, 2       ; 2 uses
  %i.ki = icmp eq i64 %index.next651, %n.vec642
  br i1 %i.ki, label %middle.block652, label %vector.body643, !llvm.loop !3787

middle.block652:                                  ; preds = %vector.body643
  %cmp.n653 = icmp eq i64 %i.jz, %n.vec642
  br i1 %cmp.n653, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader656

.lr.ph.i.i168.preheader656:                       ; preds = %vector.memcheck637, %.lr.ph.i.i168.preheader, %middle.block652
  %.010.i.i169.ph = phi ptr [ %i.js, %vector.memcheck637 ], [ %i.js, %.lr.ph.i.i168.preheader ], [ %i.kf, %middle.block652 ]
  %.079.i.i170.ph = phi ptr [ %i.jt, %vector.memcheck637 ], [ %i.jt, %.lr.ph.i.i168.preheader ], [ %i.kg, %middle.block652 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader656, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.ko, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader656 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.kn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader656 ] ; 4 uses
  %i.kj = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kj, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !254
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !254
  store i32 0, ptr %i.kk, align 4, !tbaa !254
  %i.kn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.kn, %i.jr
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !3788

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block652, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_S8_S8_SF_NS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_:bb.a
  %i.en = load i32, ptr %i.dw, align 4, !tbaa !254
  store i32 %i.en, ptr %i.dx, align 4, !tbaa !254
  store i32 0, ptr %i.dw, align 4, !tbaa !254
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !254
  store i32 %i.ep, ptr %i.ek, align 4, !tbaa !254
  store i32 0, ptr %i.eo, align 4, !tbaa !254
  %.not.i50.1 = icmp eq ptr %i.eg, %i.af
  br i1 %.not.i50.1, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i49, !llvm.loop !3793

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eq = mul i64 %indvar, %.idx
  %i.er = add i64 %i.i, %i.eq                     ; 2 uses
  %i.es = sub i64 %i.er, %.184256                 ; 2 uses
  %i.et = lshr i64 %i.es, 3
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.es, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader382, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 4   ; 4 uses
  %i.ev = sub i64 %i.m, %.184256
  %i.ew = and i64 %i.ev, -8                       ; 4 uses
  %scevgep257 = getelementptr i8, ptr %scevgep, i64 %i.ew ; 3 uses
  %scevgep258 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.ew ; 3 uses
  %scevgep260 = getelementptr i8, ptr %i.cm, i64 8
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.ew ; 3 uses
  %scevgep262 = getelementptr i8, ptr %.184, i64 8
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.ew ; 3 uses
  %bound0 = icmp ult ptr %i.cm, %scevgep259
  %bound1 = icmp ult ptr %.184, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  %bound0264 = icmp ult ptr %i.cm, %scevgep261
  %bound1265 = icmp ult ptr %scevgep, %scevgep257
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx = or i1 %found.conflict, %found.conflict266
  %bound0267 = icmp ult ptr %i.cm, %scevgep263
  %bound1268 = icmp ult ptr %scevgep258, %scevgep257
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx, %found.conflict269
  %bound0271 = icmp ult ptr %.184, %scevgep261
  %bound1272 = icmp ult ptr %scevgep, %scevgep259
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %.184, %scevgep263
  %bound1276 = icmp ult ptr %scevgep258, %scevgep259
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep, %scevgep263
  %bound1280 = icmp ult ptr %scevgep258, %scevgep261
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %.lr.ph.i.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 4611686018427387902     ; 3 uses
  %i.ex = shl i64 %n.vec, 3                       ; 2 uses
  %i.ey = getelementptr i8, ptr %i.cm, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %.184, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.fa
  %next.gep283 = getelementptr i8, ptr %.184, i64 %i.fa ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep283, align 4, !tbaa !254
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep283, align 4, !tbaa !254
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !3794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.preheader382

.lr.ph.i.i.preheader382:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.preheader ], [ %i.ey, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.ez, %middle.block ] ; 3 uses
  %.079.i.i.ph434 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fc = sub i64 %i.er, %.079.i.i.ph434          ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1
  %xtraiter435 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader382, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fk, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader382 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.fj, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader382 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader382 ]
  %i.ff = load i32, ptr %.079.i.i.prol, align 4, !tbaa !254
  store i32 %i.ff, ptr %.010.i.i.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !254
  store i32 0, ptr %i.fg, align 4, !tbaa !254
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter435
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3795

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader382
  %.lcssa431.unr = phi ptr [ poison, %.lr.ph.i.i.preheader382 ], [ %i.fk, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader382 ], [ %i.fk, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader382 ], [ %i.fj, %.lr.ph.i.i.prol ]
  %i.fl = icmp ult i64 %i.fc, 24
  br i1 %i.fl, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gj, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.gi, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.fm = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.fm, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !254
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !254
  store i32 0, ptr %i.fn, align 4, !tbaa !254
  %i.fq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !254
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !254
  store i32 0, ptr %i.fq, align 4, !tbaa !254
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !254
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !254
  store i32 0, ptr %i.ft, align 4, !tbaa !254
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !254
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !254
  store i32 0, ptr %i.fw, align 4, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !254
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !254
  store i32 0, ptr %i.fz, align 4, !tbaa !254
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !254
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !254
  store i32 0, ptr %i.gc, align 4, !tbaa !254
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !254
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !254
  store i32 0, ptr %i.gf, align 4, !tbaa !254
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.3 = icmp eq ptr %i.gi, %i.af
  br i1 %.not.i.i52.3, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3796

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block376, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.af, %bb.s ], [ %i.cv, %.lr.ph.i48 ], [ %i.gj, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.cm, %bb.v ], [ %i.cm, %bb.w ], [ %i.ey, %middle.block ], [ %i.de, %middle.block376 ], [ %.lcssa431.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa430.unr, %.lr.ph.i49.prol.loopexit ], [ %i.ei, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.af, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.gk = getelementptr inbounds nuw i8, ptr %.0126, i64 %.idx88 ; 3 uses
  %i.gl = load <2 x i32>, ptr %i.gk, align 4, !tbaa !254
  store i32 0, ptr %i.gk, align 4, !tbaa !254
  %i.gm = load <2 x i32>, ptr %.0126, align 4, !tbaa !254
  store <2 x i32> %i.gm, ptr %i.gk, align 4, !tbaa !254
  store <2 x i32> %i.gl, ptr %.0126, align 4, !tbaa !254
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %bb.x
  %i.gn = getelementptr inbounds nuw i8, ptr %.0126, i64 8
  %i.go = icmp ne i64 %.039124, 0
  %.neg = sext i1 %i.go to i64
  %i.gp = add i64 %.039124, %.neg
  %i.gq = icmp ne i64 %i.ae, 0
  %.neg44 = sext i1 %i.gq to i64
  %i.gr = add i64 %.sroa.speculated, %.neg44
  %i.gs = add i64 %.082123, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3797

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load ptr, ptr %5, align 8, !tbaa !262    ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !262    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.g = load ptr, ptr %2, align 8, !tbaa !262    ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !262
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !254
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.07.i, align 4, !tbaa !254
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit, label %bb.c, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.l, %bb.d ] ; 10 uses
  %i.m = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o ; 9 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !262
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread47: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !262
  %.pre82 = load ptr, ptr %i.d, align 8, !tbaa !262
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !254
  store i32 %i.s, ptr %i.p, align 4, !tbaa !254
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %i.w = load i32, ptr %i.g, align 4, !tbaa !254
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !254
  store i32 0, ptr %i.g, align 4, !tbaa !254
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254
  store i32 %i.y, ptr %i.t, align 4, !tbaa !254
  store i32 0, ptr %i.x, align 4, !tbaa !254
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03450.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.g ], [ %.03450.i, %bb.f ] ; 10 uses
  %.03055.i = phi ptr [ %.030.i, %bb.g ], [ %.03049.i, %bb.f ] ; 3 uses
  %.054.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4153.i = phi ptr [ %.03055.i, %bb.g ], [ %i.p, %bb.f ]
  %.03252.i = phi ptr [ %.133.i, %bb.g ], [ %i.p, %bb.f ] ; 11 uses
  %.pn51.i = phi ptr [ %.03456.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.054.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %i.ac = shl i64 %indvar, 3
  %i.ad = add i64 %i.ac, %i.m
  %i.ae = sub i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %7 = and i64 %i.ae, -8                          ; 2 uses
  %8 = getelementptr i8, ptr %.03252.i, i64 %7
  %scevgep147 = getelementptr i8, ptr %8, i64 8
  %i.ah = shl i64 %indvar, 3
  %i.ai = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ah
  %scevgep148 = getelementptr i8, ptr %i.ai, i64 16
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %7
  %bound0 = icmp ult ptr %.03252.i, %scevgep149
  %bound1 = icmp ult ptr %.03456.i, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %.03252.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %.03456.i, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03252.i, i64 %i.am
  %next.gep150 = getelementptr i8, ptr %.03456.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep150, align 4, !tbaa !254, !alias.scope !3804
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3805, !noalias !3804
  store <4 x i32> zeroinitializer, ptr %next.gep150, align 4, !tbaa !254, !alias.scope !3804
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !3801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i.preheader175

.lr.ph.i.i.i.preheader175:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03252.i, %vector.memcheck ], [ %.03252.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03456.i, %vector.memcheck ], [ %.03456.i, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader175, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader175 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader175 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3802

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.054.i, align 4, !tbaa !254
  %i.av = load i32, ptr %.03252.i, align 4, !tbaa !254
  %i.aw = icmp slt i32 %i.au, %i.av               ; 3 uses
  %i.ax = load i32, ptr %.03456.i, align 4, !tbaa !254
  store i32 %i.ax, ptr %.03055.i, align 4, !tbaa !254
  store i32 0, ptr %.03456.i, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn51.i, i64 12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pn4153.i, i64 12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !254
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !254
  store i32 0, ptr %i.ay, align 4, !tbaa !254
  %.03252.sink73.i = select i1 %i.aw, ptr %.054.i, ptr %.03252.i ; 3 uses
  %.133.idx.i = select i1 %i.aw, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.aw, i64 8, i64 0
  %.1.i = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %i.bb = load i32, ptr %.03252.sink73.i, align 4, !tbaa !254
  store i32 %i.bb, ptr %.03456.i, align 4, !tbaa !254
  store i32 0, ptr %.03252.sink73.i, align 4, !tbaa !254
  %i.bc = getelementptr inbounds nuw i8, ptr %.03252.sink73.i, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !254
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !254
  store i32 0, ptr %i.bc, align 4, !tbaa !254
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3803

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.bf = phi ptr [ %i.g, %bb.a ], [ %.054.i, %middle.block ], [ %i.r, %bb.f ], [ %.054.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.03252.i, %middle.block ], [ %i.p, %bb.f ], [ %.03252.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.ak, %middle.block ], [ %.03049.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
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
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !262
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
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !254 ; 2 uses
  %i.bl = load i32, ptr %.028.ph.i, align 4, !tbaa !254 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !254
  store i32 0, ptr %.025.i, align 4, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.bs = load i32, ptr %.026.i, align 4, !tbaa !254
  store i32 %i.bs, ptr %.025.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !254
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !254
  store i32 0, ptr %i.bt, align 4, !tbaa !254
  %.not43.i = icmp eq ptr %i.bn, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %bb.j, !llvm.loop !62

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bl, ptr %.030.i34, align 4, !tbaa !254
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !254
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !254
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !254
  store i32 0, ptr %i.bw, align 4, !tbaa !254
  %.not42.i = icmp eq ptr %i.bv, %.051
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.outer.i, !llvm.loop !62

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
  %i.bz = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.ca = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.bz, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !254
  store i32 0, ptr %i.cf, align 4, !tbaa !254
  %i.ch = icmp eq ptr %i.ce, %3
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.m:                                             ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.ca, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !254
  store i32 0, ptr %i.cj, align 4, !tbaa !254
  %i.cl = icmp eq ptr %i.ci, %.0
  br i1 %i.cl, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SL_SH_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cm = phi ptr [ %.0.i, %bb.m ], [ %i.bh, %bb.h ], [ %i.bn, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.ce, %bb.l ], [ %.026.i, %bb.k ]
  %i.cn = phi ptr [ %i.ci, %bb.m ], [ %i.bi, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bg, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bv, %bb.k ]
  %.045 = phi ptr [ %.0, %bb.l ], [ %.051, %bb.h ], [ %.051, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %i.p, %bb.e ], [ %.0, %bb.m ], [ %.051, %bb.k ]
  %i.co = phi ptr [ %i.cc, %bb.l ], [ %.02850, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_RSH_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.cc, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.cn, ptr %5, align 8, !tbaa !262
  store ptr %.045, ptr %6, align 8, !tbaa !262
  store ptr %i.cm, ptr %2, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %i.co
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load ptr, ptr %5, align 8, !tbaa !262    ; 3 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !262    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.g = load ptr, ptr %2, align 8, !tbaa !262    ; 8 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !262
  %.not = icmp eq ptr %i.g, %4                    ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !254
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !254
  %.not6.i = icmp slt i32 %i.j, %i.i
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit, label %bb.c, !llvm.loop !65

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.k, %bb.d ] ; 10 uses
  %i.l = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.n ; 9 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !262
  br i1 %.not, label %bb.e, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread51: ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %i.p = load ptr, ptr %7, align 8, !tbaa !349, !nonnull !333
  store ptr %i.p, ptr %8, align 8, !tbaa !342
  %i.q = call noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %8)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !262
  %.pre86 = load ptr, ptr %i.d, align 8, !tbaa !262
  br label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEEET_SI_SI_RKNS0_15iterator_traitsISI_E10value_typeET0_.exit
  %.not.i30 = icmp eq ptr %.0.lcssa.i, %1
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i = or i1 %.not.i30, %.not40.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load i32, ptr %.0.lcssa.i, align 4, !tbaa !254
  store i32 %i.s, ptr %i.o, align 4, !tbaa !254
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %i.w = load i32, ptr %i.g, align 4, !tbaa !254
  store i32 %i.w, ptr %.0.lcssa.i, align 4, !tbaa !254
  store i32 0, ptr %i.g, align 4, !tbaa !254
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !254
  store i32 %i.y, ptr %i.t, align 4, !tbaa !254
  store i32 0, ptr %i.x, align 4, !tbaa !254
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %.03451.i, %1
  br i1 %i.z, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.g ], [ %.03451.i, %bb.f ] ; 10 uses
  %.03056.i = phi ptr [ %.030.i, %bb.g ], [ %.03050.i, %bb.f ] ; 3 uses
  %.055.i = phi ptr [ %.1.i, %bb.g ], [ %i.r, %bb.f ] ; 6 uses
  %.pn4154.i = phi ptr [ %.03056.i, %bb.g ], [ %i.o, %bb.f ]
  %.03253.i = phi ptr [ %.133.i, %bb.g ], [ %i.o, %bb.f ] ; 11 uses
  %.pn52.i = phi ptr [ %.03457.i, %bb.g ], [ %.0.lcssa.i, %bb.f ]
  %i.aa = icmp eq ptr %.055.i, %3
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.ab = add i64 %i.a, -16
  %i.ac = shl i64 %indvar, 3
  %i.ad = add i64 %i.ac, %i.l
  %i.ae = sub i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %9 = and i64 %i.ae, -8                          ; 2 uses
  %10 = getelementptr i8, ptr %.03253.i, i64 %9
  %scevgep151 = getelementptr i8, ptr %10, i64 8
  %i.ah = shl i64 %indvar, 3
  %i.ai = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ah
  %scevgep152 = getelementptr i8, ptr %i.ai, i64 16
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %9
  %bound0 = icmp ult ptr %.03253.i, %scevgep153
  %bound1 = icmp ult ptr %.03457.i, %scevgep151
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %.03253.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %.03457.i, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03253.i, i64 %i.am
  %next.gep154 = getelementptr i8, ptr %.03457.i, i64 %i.am ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !254, !alias.scope !3812
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3813, !noalias !3812
  store <4 x i32> zeroinitializer, ptr %next.gep154, align 4, !tbaa !254, !alias.scope !3812
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !3809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i.preheader179

.lr.ph.i.i.i.preheader179:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03253.i, %vector.memcheck ], [ %.03253.i, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.03457.i, %vector.memcheck ], [ %.03457.i, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader179, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader179 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader179 ] ; 4 uses
  %i.ao = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.ao, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !254
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.ap, align 4, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3810

bb.g:                                             ; preds = %.lr.ph.i31
  %i.au = load i32, ptr %.03253.i, align 4, !tbaa !254
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !254
  %.not42.i = icmp slt i32 %i.au, %i.av           ; 3 uses
  %i.aw = load i32, ptr %.03457.i, align 4, !tbaa !254
  store i32 %i.aw, ptr %.03056.i, align 4, !tbaa !254
  store i32 0, ptr %.03457.i, align 4, !tbaa !254
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn52.i, i64 12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn4154.i, i64 12
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !254
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !254
  store i32 0, ptr %i.ax, align 4, !tbaa !254
  %.03253.sink74.i = select i1 %.not42.i, ptr %.03253.i, ptr %.055.i ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.ba = load i32, ptr %.03253.sink74.i, align 4, !tbaa !254
  store i32 %i.ba, ptr %.03457.i, align 4, !tbaa !254
  store i32 0, ptr %.03253.sink74.i, align 4, !tbaa !254
  %i.bb = getelementptr inbounds nuw i8, ptr %.03253.sink74.i, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !254
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !254
  store i32 0, ptr %i.bb, align 4, !tbaa !254
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.034.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3811

_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.a
  %i.be = phi ptr [ %i.g, %bb.a ], [ %.055.i, %middle.block ], [ %i.r, %bb.f ], [ %.055.i, %.lr.ph.i.i.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bf = phi ptr [ %i.e, %bb.a ], [ %.03253.i, %middle.block ], [ %i.o, %bb.f ], [ %.03253.i, %.lr.ph.i.i.i ], [ %.133.i, %bb.g ] ; 4 uses
  %.028 = phi ptr [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %bb.f ], [ %1, %.lr.ph.i.i.i ], [ %1, %bb.g ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.ak, %middle.block ], [ %.03050.i, %bb.f ], [ %i.at, %.lr.ph.i.i.i ], [ %.030.i, %bb.g ] ; 6 uses
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
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !262
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
  %i.bj = load i32, ptr %.028.ph.i, align 4, !tbaa !254 ; 2 uses
  %i.bk = load i32, ptr %.025.i, align 4, !tbaa !254 ; 2 uses
  %.not42.i35 = icmp slt i32 %i.bj, %i.bk
  br i1 %.not42.i35, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i32 %i.bk, ptr %.030.i34, align 4, !tbaa !254
  store i32 0, ptr %.025.i, align 4, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !254
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !254
  store i32 0, ptr %i.bn, align 4, !tbaa !254
  %i.bq = load i32, ptr %.026.i, align 4, !tbaa !254
  store i32 %i.bq, ptr %.025.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !254
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !254
  store i32 0, ptr %i.br, align 4, !tbaa !254
  %.not44.i = icmp eq ptr %i.bl, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %bb.j, !llvm.loop !63

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i32 %i.bj, ptr %.030.i34, align 4, !tbaa !254
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !254
  %i.bu = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.030.i34, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %.not43.i = icmp eq ptr %i.bt, %.055
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i34, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.outer.i, !llvm.loop !63

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
  %i.bx = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.by = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %.not37.i = icmp slt i32 %i.bx, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %.not37.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i32 %i.by, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !254
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !254
  store i32 0, ptr %i.cc, align 4, !tbaa !254
  %i.ce = icmp eq ptr %i.cb, %3
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i, !llvm.loop !64

bb.m:                                             ; preds = %.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.bx, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.cg = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !254
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !254
  store i32 0, ptr %i.cg, align 4, !tbaa !254
  %i.ci = icmp eq ptr %i.cf, %.0
  br i1 %i.ci, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !64

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_.exit: ; preds = %bb.k, %.split.i, %bb.l, %bb.m, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread, %bb.e, %bb.h
  %i.cj = phi ptr [ %.0.i, %bb.m ], [ %i.bg, %bb.h ], [ %i.bl, %.split.i ], [ %i.be, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.g, %bb.e ], [ %i.cb, %bb.l ], [ %.026.i, %bb.k ]
  %i.ck = phi ptr [ %i.cf, %bb.m ], [ %i.bh, %bb.h ], [ %.028.ph.i, %.split.i ], [ %i.bf, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.021.i.ph, %bb.l ], [ %i.bt, %bb.k ]
  %.049 = phi ptr [ %.0, %bb.l ], [ %.055, %bb.h ], [ %.055, %.split.i ], [ %.0, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %i.o, %bb.e ], [ %.0, %bb.m ], [ %.055, %bb.k ]
  %i.cl = phi ptr [ %i.bz, %bb.l ], [ %.02854, %bb.h ], [ %.13137.i, %.split.i ], [ %.028, %_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_RSJ_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %i.bz, %bb.m ], [ %.131.i, %bb.k ]
  store ptr %i.ck, ptr %5, align 8, !tbaa !262
  store ptr %.049, ptr %6, align 8, !tbaa !262
  store ptr %i.cj, ptr %2, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %i.cl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_T_SI_RT0_SJ_SK_RSH_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = load ptr, ptr %5, align 8, !tbaa !262    ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !262    ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !262    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.h, ptr %i.c, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.j, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.l = load i32, ptr %i.e, align 4, !tbaa !254
  store i32 %i.l, ptr %0, align 4, !tbaa !254
  store i32 0, ptr %i.e, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 %i.n, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.o = load i32, ptr %i.d, align 4, !tbaa !254
  store i32 %i.o, ptr %i.e, align 4, !tbaa !254
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  store i32 %i.q, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %.03759 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04160 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4861 = icmp eq ptr %.04160, %1
  br i1 %.not4861, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.04168 = phi ptr [ %.041, %bb.f ], [ %.04160, %bb.b ] ; 13 uses
  %.03767 = phi ptr [ %.037, %bb.f ], [ %.03759, %bb.b ] ; 4 uses
  %.066 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03565 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4964 = phi ptr [ %.03767, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03963 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 14 uses
  %.pn62 = phi ptr [ %.04168, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03565, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %i.t = shl i64 %indvar, 3
  %i.u = add i64 %i.t, %i.a
  %i.v = sub i64 %i.s, %i.u                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %6 = and i64 %i.v, -8                           ; 2 uses
  %7 = getelementptr i8, ptr %.03963, i64 %6
  %scevgep90 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %indvar, 3
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %scevgep91 = getelementptr i8, ptr %i.z, i64 16
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %6
  %bound0 = icmp ult ptr %.03963, %scevgep92
  %bound1 = icmp ult ptr %.04168, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03963, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04168, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963, i64 %i.ad
  %next.gep93 = getelementptr i8, ptr %.04168, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !254, !alias.scope !3820
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3821, !noalias !3820
  store <4 x i32> zeroinitializer, ptr %next.gep93, align 4, !tbaa !254, !alias.scope !3820
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader96

.lr.ph.i.i.preheader96:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963, %vector.memcheck ], [ %.03963, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04168, %vector.memcheck ], [ %.04168, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader96, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader96 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader96 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3818

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.066, align 4, !tbaa !254
  %i.am = load i32, ptr %.03963, align 4, !tbaa !254
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.03565, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.066, i64 8
  %i.aq = load i32, ptr %.04168, align 4, !tbaa !254
  store i32 %i.aq, ptr %.03767, align 4, !tbaa !254
  store i32 0, ptr %.04168, align 4, !tbaa !254
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !254
  store i32 %i.at, ptr %i.as, align 4, !tbaa !254
  store i32 0, ptr %i.ar, align 4, !tbaa !254
  %i.au = load i32, ptr %.066, align 4, !tbaa !254
  store i32 %i.au, ptr %.04168, align 4, !tbaa !254
  store i32 0, ptr %.066, align 4, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %.066, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !254
  store i32 0, ptr %i.av, align 4, !tbaa !254
  %i.ax = load i32, ptr %.03565, align 4, !tbaa !254
  store i32 %i.ax, ptr %.066, align 4, !tbaa !254
  store i32 0, ptr %.03565, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %.03565, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !254
  store i32 %i.az, ptr %i.av, align 4, !tbaa !254
  store i32 0, ptr %i.ay, align 4, !tbaa !254
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.03963, i64 8
  %i.bb = load i32, ptr %.04168, align 4, !tbaa !254
  store i32 %i.bb, ptr %.03767, align 4, !tbaa !254
  store i32 0, ptr %.04168, align 4, !tbaa !254
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn62, i64 12 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn4964, i64 12
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !254
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !254
  store i32 0, ptr %i.bc, align 4, !tbaa !254
  %i.bf = load i32, ptr %.03963, align 4, !tbaa !254
  store i32 %i.bf, ptr %.04168, align 4, !tbaa !254
  store i32 0, ptr %.03963, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %.03963, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03963, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.ao, %bb.d ], [ %.03565, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.066, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03767, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04168, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph, !llvm.loop !3819

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03958 = phi ptr [ %.03963, %middle.block ], [ %i.c, %bb.b ], [ %.03963, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03556 = phi ptr [ %.03565, %middle.block ], [ %i.f, %bb.b ], [ %.03565, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.054 = phi ptr [ %.066, %middle.block ], [ %i.g, %bb.b ], [ %.066, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.ab, %middle.block ], [ %.03759, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03556, ptr %2, align 8, !tbaa !262
  store ptr %.03958, ptr %5, align 8, !tbaa !262
  store ptr %.054, ptr %4, align 8, !tbaa !262
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.a
  %.3 = phi ptr [ %.2, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.c, %bb.a ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_10antistableINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEENS0_7move_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = load ptr, ptr %5, align 8, !tbaa !262    ; 7 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !262    ; 5 uses
  %.not = icmp eq ptr %0, %1
  %.not47 = icmp eq ptr %i.d, %3
  %or.cond = select i1 %.not, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !262    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.h, ptr %i.c, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !254
  store i32 %i.k, ptr %i.j, align 4, !tbaa !254
  store i32 0, ptr %i.i, align 4, !tbaa !254
  %i.l = load i32, ptr %i.e, align 4, !tbaa !254
  store i32 %i.l, ptr %0, align 4, !tbaa !254
  store i32 0, ptr %i.e, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 %i.n, ptr %i.i, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.o = load i32, ptr %i.d, align 4, !tbaa !254
  store i32 %i.o, ptr %i.e, align 4, !tbaa !254
  store i32 0, ptr %i.d, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  store i32 %i.q, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.p, align 4, !tbaa !254
  %.03760 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.04161 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4862 = icmp eq ptr %.04161, %1
  br i1 %.not4862, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %.04169 = phi ptr [ %.041, %bb.f ], [ %.04161, %bb.b ] ; 13 uses
  %.03768 = phi ptr [ %.037, %bb.f ], [ %.03760, %bb.b ] ; 4 uses
  %.067 = phi ptr [ %.1, %bb.f ], [ %i.g, %bb.b ] ; 9 uses
  %.03566 = phi ptr [ %.136, %bb.f ], [ %i.f, %bb.b ] ; 8 uses
  %.pn4965 = phi ptr [ %.03768, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %.03964 = phi ptr [ %.140, %bb.f ], [ %i.c, %bb.b ] ; 14 uses
  %.pn63 = phi ptr [ %.04169, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %.03566, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.c

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.s = add i64 %i.b, -16
  %i.t = shl i64 %indvar, 3
  %i.u = add i64 %i.t, %i.a
  %i.v = sub i64 %i.s, %i.u                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %7 = and i64 %i.v, -8                           ; 2 uses
  %8 = getelementptr i8, ptr %.03964, i64 %7
  %scevgep91 = getelementptr i8, ptr %8, i64 8
  %i.y = shl i64 %indvar, 3
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %scevgep92 = getelementptr i8, ptr %i.z, i64 16
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %7
  %bound0 = icmp ult ptr %.03964, %scevgep93
  %bound1 = icmp ult ptr %.04169, %scevgep91
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03964, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04169, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03964, i64 %i.ad
  %next.gep94 = getelementptr i8, ptr %.04169, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !254, !alias.scope !3828
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !3829, !noalias !3828
  store <4 x i32> zeroinitializer, ptr %next.gep94, align 4, !tbaa !254, !alias.scope !3828
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader97

.lr.ph.i.i.preheader97:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03964, %vector.memcheck ], [ %.03964, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169, %vector.memcheck ], [ %.04169, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader97, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader97 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader97 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3826

bb.c:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.03964, align 4, !tbaa !254
  %i.am = load i32, ptr %.067, align 4, !tbaa !254
  %.not50 = icmp slt i32 %i.al, %i.am
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.03566, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ap = load i32, ptr %.04169, align 4, !tbaa !254
  store i32 %i.ap, ptr %.03768, align 4, !tbaa !254
  store i32 0, ptr %.04169, align 4, !tbaa !254
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !254
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !254
  store i32 0, ptr %i.aq, align 4, !tbaa !254
  %i.at = load i32, ptr %.067, align 4, !tbaa !254
  store i32 %i.at, ptr %.04169, align 4, !tbaa !254
  store i32 0, ptr %.067, align 4, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %.067, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !254
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !254
  store i32 0, ptr %i.au, align 4, !tbaa !254
  %i.aw = load i32, ptr %.03566, align 4, !tbaa !254
  store i32 %i.aw, ptr %.067, align 4, !tbaa !254
  store i32 0, ptr %.03566, align 4, !tbaa !254
  %i.ax = getelementptr inbounds nuw i8, ptr %.03566, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !254
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !254
  store i32 0, ptr %i.ax, align 4, !tbaa !254
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.03964, i64 8
  %i.ba = load i32, ptr %.04169, align 4, !tbaa !254
  store i32 %i.ba, ptr %.03768, align 4, !tbaa !254
  store i32 0, ptr %.04169, align 4, !tbaa !254
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn63, i64 12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn4965, i64 12
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !254
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !254
  store i32 0, ptr %i.bb, align 4, !tbaa !254
  %i.be = load i32, ptr %.03964, align 4, !tbaa !254
  store i32 %i.be, ptr %.04169, align 4, !tbaa !254
  store i32 0, ptr %.03964, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.03964, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !254
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !254
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.140 = phi ptr [ %.03964, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %.136 = phi ptr [ %i.an, %bb.d ], [ %.03566, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ao, %bb.d ], [ %.067, %bb.e ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.03768, i64 8 ; 2 uses
  %.041 = getelementptr inbounds nuw i8, ptr %.04169, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %.041, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph, !llvm.loop !3827

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %bb.f, %.lr.ph.i.i, %middle.block, %bb.b
  %.03959 = phi ptr [ %.03964, %middle.block ], [ %i.c, %bb.b ], [ %.03964, %.lr.ph.i.i ], [ %.140, %bb.f ]
  %.03557 = phi ptr [ %.03566, %middle.block ], [ %i.f, %bb.b ], [ %.03566, %.lr.ph.i.i ], [ %.136, %bb.f ]
  %.055 = phi ptr [ %.067, %middle.block ], [ %i.g, %bb.b ], [ %.067, %.lr.ph.i.i ], [ %.1, %bb.f ]
  %.2 = phi ptr [ %i.ab, %middle.block ], [ %.03760, %bb.b ], [ %i.ak, %.lr.ph.i.i ], [ %.037, %bb.f ]
  store ptr %.03557, ptr %2, align 8, !tbaa !262
  store ptr %.03959, ptr %5, align 8, !tbaa !262
  store ptr %.055, ptr %4, align 8, !tbaa !262
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
  store ptr %2, ptr %i.a, align 8, !tbaa !262
  %.not84 = icmp eq i64 %7, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %6, 3
  %.not.i.i = icmp eq i64 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %i.c = phi ptr [ %2, %.lr.ph ], [ %i.v, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.dc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.cy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 6 uses
  %.03888 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 5 uses
  %.03987 = phi i64 [ %8, %.lr.ph ], [ %i.da, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.06786 = phi i64 [ %7, %.lr.ph ], [ %i.dd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.03987, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.s, %.thread24.i ], [ %.03987, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.r, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.02226.i, %6
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = mul i64 %.027.i, %6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.02226.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.027.i
  %i.k = load i32, ptr %i.h, align 4, !tbaa !254  ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !254  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.j, align 4, !tbaa !254
  %i.p = load i32, ptr %i.i, align 4, !tbaa !254
  %i.q = icmp slt i32 %i.o, %i.p
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.r = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.s = add nuw i64 %.027.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !55

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %.thread24.i ] ; 4 uses
  %i.t = add i64 %.022.lcssa.i, 2
  %i.u = call i64 @llvm.umax.i64(i64 %.0, i64 %i.t) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.u, i64 %.06786)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = mul i64 %.022.lcssa.i, %6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w ; 5 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !262
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %6 ; 3 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 2 uses
  br i1 %.not43, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.z = load ptr, ptr %3, align 8, !tbaa !262    ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %index541 = phi i64 [ 0, %vector.ph538 ], [ %index.next548, %vector.body540 ] ; 2 uses
  %i.gw = shl i64 %index541, 3                    ; 2 uses
  %next.gep542 = getelementptr i8, ptr %i.gc, i64 %i.gw
  %next.gep543 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gw ; 2 uses
  %wide.vec544 = load <4 x i32>, ptr %next.gep543, align 4, !tbaa !254
  store <4 x i32> %wide.vec544, ptr %next.gep542, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep543, align 4, !tbaa !254
  %index.next548 = add nuw i64 %index541, 2       ; 2 uses
  %i.gx = icmp eq i64 %index.next548, %n.vec539
  br i1 %i.gx, label %middle.block549, label %vector.body540, !llvm.loop !4173

middle.block549:                                  ; preds = %vector.body540
  %cmp.n550 = icmp eq i64 %i.gg, %n.vec539
  br i1 %cmp.n550, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader668

.lr.ph.i.i146.preheader668:                       ; preds = %vector.memcheck514, %.lr.ph.i.i146.preheader, %middle.block549
  %.010.i.i147.ph = phi ptr [ %i.gc, %vector.memcheck514 ], [ %i.gc, %.lr.ph.i.i146.preheader ], [ %i.gu, %middle.block549 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck514 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gv, %middle.block549 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader668, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hd, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader668 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hc, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader668 ] ; 4 uses
  %i.gy = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.gy, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.gz = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !254
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !254
  store i32 0, ptr %i.gz, align 4, !tbaa !254
  %i.hc = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hc, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !4174

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block549, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.he, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gc, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fp, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5586 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hi, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ho, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hi, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.hk, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hf = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hg = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hh = icmp slt i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hf, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !254
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hl, align 4, !tbaa !254
  %i.hn = icmp eq ptr %i.hk, %i.fr
  br i1 %i.hn, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hg, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %.5
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.hi, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ho, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %.223.i585 = ptrtoaddr ptr %.223.i to i64
  %i.hs = add i64 %.5586, -8
  %i.ht = sub i64 %i.hs, %.223.i585               ; 3 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check588 = icmp ult i64 %i.ht, 312
  br i1 %min.iters.check588, label %.lr.ph.i.i154.preheader656, label %vector.memcheck589

vector.memcheck589:                               ; preds = %.lr.ph.i.i154.preheader
  %i.hw = and i64 %i.ht, -8                       ; 2 uses
  %i.hx = or disjoint i64 %i.hw, 4                ; 2 uses
  %i.hy = getelementptr i8, ptr %.226.i, i64 %i.hx ; 3 uses
  %i.hz = getelementptr i8, ptr %.223.i, i64 %i.hx ; 3 uses
  %i.ia = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ib = add i64 %i.hw, 8                        ; 2 uses
  %i.ic = getelementptr i8, ptr %.226.i, i64 %i.ib ; 3 uses
  %i.id = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ib ; 3 uses
  %bound0590 = icmp ult ptr %.226.i, %i.hz
  %bound1591 = icmp ult ptr %.223.i, %i.hy
  %found.conflict592 = and i1 %bound0590, %bound1591
  %bound0593 = icmp ult ptr %.226.i, %i.ic
  %bound1594 = icmp ult ptr %i.ia, %i.hy
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %found.conflict592, %found.conflict595
  %bound0597 = icmp ult ptr %.226.i, %i.ie
  %bound1598 = icmp ult ptr %i.id, %i.hy
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %conflict.rdx596, %found.conflict599
  %bound0601 = icmp ult ptr %.223.i, %i.ic
  %bound1602 = icmp ult ptr %i.ia, %i.hz
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %.223.i, %i.ie
  %bound1606 = icmp ult ptr %i.id, %i.hz
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %i.ia, %i.ie
  %bound1610 = icmp ult ptr %i.id, %i.ic
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  br i1 %conflict.rdx612, label %.lr.ph.i.i154.preheader656, label %vector.ph613

vector.ph613:                                     ; preds = %vector.memcheck589
  %n.vec614 = and i64 %i.hv, 4611686018427387902  ; 3 uses
  %i.if = shl i64 %n.vec614, 3                    ; 2 uses
  %i.ig = getelementptr i8, ptr %.226.i, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %.223.i, i64 %i.if
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next623, %vector.body615 ] ; 2 uses
  %i.ii = shl i64 %index616, 3                    ; 2 uses
  %next.gep617 = getelementptr i8, ptr %.226.i, i64 %i.ii
  %next.gep618 = getelementptr i8, ptr %.223.i, i64 %i.ii ; 2 uses
  %wide.vec619 = load <4 x i32>, ptr %next.gep618, align 4, !tbaa !254
  store <4 x i32> %wide.vec619, ptr %next.gep617, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep618, align 4, !tbaa !254
  %index.next623 = add nuw i64 %index616, 2       ; 2 uses
  %i.ij = icmp eq i64 %index.next623, %n.vec614
  br i1 %i.ij, label %middle.block624, label %vector.body615, !llvm.loop !4175

middle.block624:                                  ; preds = %vector.body615
  %cmp.n625 = icmp eq i64 %i.hv, %n.vec614
  br i1 %cmp.n625, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader656

.lr.ph.i.i154.preheader656:                       ; preds = %vector.memcheck589, %.lr.ph.i.i154.preheader, %middle.block624
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck589 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.ig, %middle.block624 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck589 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ih, %middle.block624 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader656, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ip, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader656 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.io, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader656 ] ; 4 uses
  %i.ik = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ik, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.in = load i32, ptr %i.il, align 4, !tbaa !254
  store i32 %i.in, ptr %i.im, align 4, !tbaa !254
  store i32 0, ptr %i.il, align 4, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.io, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !4176

bb.aj:                                            ; preds = %.thread
  br i1 %i.fq, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iq = phi ptr [ %i.fp, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 11 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 12 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.ir = phi ptr [ %i.fr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0108265440 = ptrtoaddr ptr %.0216267 to i64
  %.0216267439 = ptrtoaddr ptr %.0108265 to i64
  %i.is = add i64 %.0216267439, -8
  %i.it = sub i64 %i.is, %.0108265440             ; 3 uses
  %i.iu = lshr i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check442 = icmp ult i64 %i.it, 312
  br i1 %min.iters.check442, label %.lr.ph.i.i161.preheader669, label %vector.memcheck443

vector.memcheck443:                               ; preds = %.lr.ph.i.i161.preheader
  %i.iw = and i64 %i.it, -8                       ; 2 uses
  %i.ix = or disjoint i64 %i.iw, 4                ; 2 uses
  %i.iy = getelementptr i8, ptr %.0222269, i64 %i.ix ; 3 uses
  %i.iz = getelementptr i8, ptr %.0216267, i64 %i.ix ; 3 uses
  %i.ja = getelementptr i8, ptr %.0222269, i64 4  ; 3 uses
  %i.jb = add i64 %i.iw, 8                        ; 2 uses
  %i.jc = getelementptr i8, ptr %.0222269, i64 %i.jb ; 3 uses
  %i.jd = getelementptr i8, ptr %.0216267, i64 4  ; 3 uses
  %i.je = getelementptr i8, ptr %.0216267, i64 %i.jb ; 3 uses
  %bound0444 = icmp ult ptr %.0222269, %i.iz
  %bound1445 = icmp ult ptr %.0216267, %i.iy
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0447 = icmp ult ptr %.0222269, %i.jc
  %bound1448 = icmp ult ptr %i.ja, %i.iy
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %found.conflict446, %found.conflict449
  %bound0451 = icmp ult ptr %.0222269, %i.je
  %bound1452 = icmp ult ptr %i.jd, %i.iy
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %.0216267, %i.jc
  %bound1456 = icmp ult ptr %i.ja, %i.iz
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %.0216267, %i.je
  %bound1460 = icmp ult ptr %i.jd, %i.iz
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  %bound0463 = icmp ult ptr %i.ja, %i.je
  %bound1464 = icmp ult ptr %i.jd, %i.jc
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict465
  br i1 %conflict.rdx466, label %.lr.ph.i.i161.preheader669, label %vector.ph467

vector.ph467:                                     ; preds = %vector.memcheck443
  %n.vec468 = and i64 %i.iv, 4611686018427387902  ; 3 uses
  %i.jf = shl i64 %n.vec468, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %.0222269, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %.0216267, i64 %i.jf
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next477, %vector.body469 ] ; 2 uses
  %i.ji = shl i64 %index470, 3                    ; 2 uses
  %next.gep471 = getelementptr i8, ptr %.0222269, i64 %i.ji
  %next.gep472 = getelementptr i8, ptr %.0216267, i64 %i.ji ; 2 uses
  %wide.vec473 = load <4 x i32>, ptr %next.gep472, align 4, !tbaa !254
  store <4 x i32> %wide.vec473, ptr %next.gep471, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep472, align 4, !tbaa !254
  %index.next477 = add nuw i64 %index470, 2       ; 2 uses
  %i.jj = icmp eq i64 %index.next477, %n.vec468
  br i1 %i.jj, label %middle.block478, label %vector.body469, !llvm.loop !4177

middle.block478:                                  ; preds = %vector.body469
  %cmp.n479 = icmp eq i64 %i.iv, %n.vec468
  br i1 %cmp.n479, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader669

.lr.ph.i.i161.preheader669:                       ; preds = %vector.memcheck443, %.lr.ph.i.i161.preheader, %middle.block478
  %.010.i.i162.ph = phi ptr [ %.0222269, %vector.memcheck443 ], [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.jg, %middle.block478 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %vector.memcheck443 ], [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.jh, %middle.block478 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader669, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jp, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader669 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jo, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader669 ] ; 4 uses
  %i.jk = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jk, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !254
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !254
  store i32 0, ptr %i.jl, align 4, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jo, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !4178

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block478, %middle.block624, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jq = phi ptr [ %i.fp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fp, %bb.aj ], [ %i.iq, %bb.ak ], [ %i.fp, %middle.block624 ], [ %i.iq, %middle.block478 ], [ %i.fp, %.lr.ph.i.i154 ], [ %i.iq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block624 ], [ %.2, %middle.block478 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block624 ], [ %.0234274, %middle.block478 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block624 ], [ %.0228271, %middle.block478 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block624 ], [ %.0102261, %middle.block478 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block624 ], [ %.099258, %middle.block478 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.jr = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fr, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.fr, %middle.block624 ], [ %i.ir, %middle.block478 ], [ %i.fr, %.lr.ph.i.i154 ], [ %i.ir, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.ig, %middle.block624 ], [ %i.jg, %middle.block478 ], [ %i.ip, %.lr.ph.i.i154 ], [ %i.jp, %.lr.ph.i.i161 ]
  %i.js = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ESA_SA_NS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jr, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.jt, %i.jr
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.ju = ptrtoaddr ptr %i.jt to i64
  %i.jv = ptrtoaddr ptr %i.jr to i64
  %i.jw = add i64 %i.jv, -8
  %i.jx = sub i64 %i.jw, %i.ju                    ; 3 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check635 = icmp ult i64 %i.jx, 72
  br i1 %min.iters.check635, label %.lr.ph.i.i168.preheader655, label %vector.memcheck636

vector.memcheck636:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ka = and i64 %i.jx, -8
  %i.kb = add i64 %i.ka, 8                        ; 2 uses
  %i.kc = getelementptr i8, ptr %i.js, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.jt, i64 %i.kb
  %bound0637 = icmp ult ptr %i.js, %i.kd
  %bound1638 = icmp ult ptr %i.jt, %i.kc
  %found.conflict639 = and i1 %bound0637, %bound1638
  br i1 %found.conflict639, label %.lr.ph.i.i168.preheader655, label %vector.ph640

vector.ph640:                                     ; preds = %vector.memcheck636
  %n.vec641 = and i64 %i.jz, 4611686018427387902  ; 3 uses
  %i.ke = shl i64 %n.vec641, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.jt, i64 %i.ke
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph640
  %index643 = phi i64 [ 0, %vector.ph640 ], [ %index.next650, %vector.body642 ] ; 2 uses
  %i.kh = shl i64 %index643, 3                    ; 2 uses
  %next.gep644 = getelementptr i8, ptr %i.js, i64 %i.kh
  %next.gep645 = getelementptr i8, ptr %i.jt, i64 %i.kh ; 2 uses
  %wide.vec646 = load <4 x i32>, ptr %next.gep645, align 4, !tbaa !254, !alias.scope !4184
  store <4 x i32> %wide.vec646, ptr %next.gep644, align 4, !tbaa !254, !alias.scope !4185, !noalias !4184
  store <4 x i32> zeroinitializer, ptr %next.gep645, align 4, !tbaa !254, !alias.scope !4184
  %index.next650 = add nuw i64 %index643, 2       ; 2 uses
  %i.ki = icmp eq i64 %index.next650, %n.vec641
  br i1 %i.ki, label %middle.block651, label %vector.body642, !llvm.loop !4182

middle.block651:                                  ; preds = %vector.body642
  %cmp.n652 = icmp eq i64 %i.jz, %n.vec641
  br i1 %cmp.n652, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader655

.lr.ph.i.i168.preheader655:                       ; preds = %vector.memcheck636, %.lr.ph.i.i168.preheader, %middle.block651
  %.010.i.i169.ph = phi ptr [ %i.js, %vector.memcheck636 ], [ %i.js, %.lr.ph.i.i168.preheader ], [ %i.kf, %middle.block651 ]
  %.079.i.i170.ph = phi ptr [ %i.jt, %vector.memcheck636 ], [ %i.jt, %.lr.ph.i.i168.preheader ], [ %i.kg, %middle.block651 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader655, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.ko, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader655 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.kn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader655 ] ; 4 uses
  %i.kj = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kj, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !254
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !254
  store i32 0, ptr %i.kk, align 4, !tbaa !254
  %i.kn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.kn, %i.jr
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !4183

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block651, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_:bb.a
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next549, %vector.body541 ] ; 2 uses
  %i.gw = shl i64 %index542, 3                    ; 2 uses
  %next.gep543 = getelementptr i8, ptr %i.gc, i64 %i.gw
  %next.gep544 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gw ; 2 uses
  %wide.vec545 = load <4 x i32>, ptr %next.gep544, align 4, !tbaa !254
  store <4 x i32> %wide.vec545, ptr %next.gep543, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep544, align 4, !tbaa !254
  %index.next549 = add nuw i64 %index542, 2       ; 2 uses
  %i.gx = icmp eq i64 %index.next549, %n.vec540
  br i1 %i.gx, label %middle.block550, label %vector.body541, !llvm.loop !4340

middle.block550:                                  ; preds = %vector.body541
  %cmp.n551 = icmp eq i64 %i.gg, %n.vec540
  br i1 %cmp.n551, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146.preheader669

.lr.ph.i.i146.preheader669:                       ; preds = %vector.memcheck515, %.lr.ph.i.i146.preheader, %middle.block550
  %.010.i.i147.ph = phi ptr [ %i.gc, %vector.memcheck515 ], [ %i.gc, %.lr.ph.i.i146.preheader ], [ %i.gu, %middle.block550 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck515 ], [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.gv, %middle.block550 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader669, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.hd, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader669 ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.hc, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader669 ] ; 4 uses
  %i.gy = load i32, ptr %.079.i.i148, align 4, !tbaa !254
  store i32 %i.gy, ptr %.010.i.i147, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !254
  %i.gz = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !254
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !254
  store i32 0, ptr %i.gz, align 4, !tbaa !254
  %i.hc = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 8
  %.not.i.i149 = icmp eq ptr %i.hc, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, label %.lr.ph.i.i146, !llvm.loop !4341

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151: ; preds = %.lr.ph.i.i146, %middle.block550, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEET_SG_SG_RKNS0_15iterator_traitsISG_E10value_typeET0_.exit
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.he, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.gc, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fp, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5587 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.hi, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ho, %bb.ai ], [ %.5221, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.hi, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.hk, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.hf = load i32, ptr %.0.i, align 4, !tbaa !254 ; 2 uses
  %i.hg = load i32, ptr %.021.i.ph, align 4, !tbaa !254 ; 2 uses
  %i.hh = icmp slt i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  store i32 %i.hf, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.0.i, align 4, !tbaa !254
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !254
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hl, align 4, !tbaa !254
  %i.hn = icmp eq ptr %i.hk, %i.fr
  br i1 %i.hn, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i, !llvm.loop !60

bb.ai:                                            ; preds = %.preheader.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i32 %i.hg, ptr %.024.i, align 4, !tbaa !254
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !254
  store i32 %i.hq, ptr %i.hj, align 4, !tbaa !254
  store i32 0, ptr %i.hp, align 4, !tbaa !254
  %i.hr = icmp eq ptr %i.ho, %.5
  br i1 %i.hr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !60

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.hi, %bb.ah ] ; 11 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ho, %bb.ai ] ; 12 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !262
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit
  %.223.i586 = ptrtoaddr ptr %.223.i to i64
  %i.hs = add i64 %.5587, -8
  %i.ht = sub i64 %i.hs, %.223.i586               ; 3 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check589 = icmp ult i64 %i.ht, 312
  br i1 %min.iters.check589, label %.lr.ph.i.i154.preheader657, label %vector.memcheck590

vector.memcheck590:                               ; preds = %.lr.ph.i.i154.preheader
  %i.hw = and i64 %i.ht, -8                       ; 2 uses
  %i.hx = or disjoint i64 %i.hw, 4                ; 2 uses
  %i.hy = getelementptr i8, ptr %.226.i, i64 %i.hx ; 3 uses
  %i.hz = getelementptr i8, ptr %.223.i, i64 %i.hx ; 3 uses
  %i.ia = getelementptr i8, ptr %.226.i, i64 4    ; 3 uses
  %i.ib = add i64 %i.hw, 8                        ; 2 uses
  %i.ic = getelementptr i8, ptr %.226.i, i64 %i.ib ; 3 uses
  %i.id = getelementptr i8, ptr %.223.i, i64 4    ; 3 uses
  %i.ie = getelementptr i8, ptr %.223.i, i64 %i.ib ; 3 uses
  %bound0591 = icmp ult ptr %.226.i, %i.hz
  %bound1592 = icmp ult ptr %.223.i, %i.hy
  %found.conflict593 = and i1 %bound0591, %bound1592
  %bound0594 = icmp ult ptr %.226.i, %i.ic
  %bound1595 = icmp ult ptr %i.ia, %i.hy
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %found.conflict593, %found.conflict596
  %bound0598 = icmp ult ptr %.226.i, %i.ie
  %bound1599 = icmp ult ptr %i.id, %i.hy
  %found.conflict600 = and i1 %bound0598, %bound1599
  %conflict.rdx601 = or i1 %conflict.rdx597, %found.conflict600
  %bound0602 = icmp ult ptr %.223.i, %i.ic
  %bound1603 = icmp ult ptr %i.ia, %i.hz
  %found.conflict604 = and i1 %bound0602, %bound1603
  %conflict.rdx605 = or i1 %conflict.rdx601, %found.conflict604
  %bound0606 = icmp ult ptr %.223.i, %i.ie
  %bound1607 = icmp ult ptr %i.id, %i.hz
  %found.conflict608 = and i1 %bound0606, %bound1607
  %conflict.rdx609 = or i1 %conflict.rdx605, %found.conflict608
  %bound0610 = icmp ult ptr %i.ia, %i.ie
  %bound1611 = icmp ult ptr %i.id, %i.ic
  %found.conflict612 = and i1 %bound0610, %bound1611
  %conflict.rdx613 = or i1 %conflict.rdx609, %found.conflict612
  br i1 %conflict.rdx613, label %.lr.ph.i.i154.preheader657, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck590
  %n.vec615 = and i64 %i.hv, 4611686018427387902  ; 3 uses
  %i.if = shl i64 %n.vec615, 3                    ; 2 uses
  %i.ig = getelementptr i8, ptr %.226.i, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %.223.i, i64 %i.if
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next624, %vector.body616 ] ; 2 uses
  %i.ii = shl i64 %index617, 3                    ; 2 uses
  %next.gep618 = getelementptr i8, ptr %.226.i, i64 %i.ii
  %next.gep619 = getelementptr i8, ptr %.223.i, i64 %i.ii ; 2 uses
  %wide.vec620 = load <4 x i32>, ptr %next.gep619, align 4, !tbaa !254
  store <4 x i32> %wide.vec620, ptr %next.gep618, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep619, align 4, !tbaa !254
  %index.next624 = add nuw i64 %index617, 2       ; 2 uses
  %i.ij = icmp eq i64 %index.next624, %n.vec615
  br i1 %i.ij, label %middle.block625, label %vector.body616, !llvm.loop !4342

middle.block625:                                  ; preds = %vector.body616
  %cmp.n626 = icmp eq i64 %i.hv, %n.vec615
  br i1 %cmp.n626, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154.preheader657

.lr.ph.i.i154.preheader657:                       ; preds = %vector.memcheck590, %.lr.ph.i.i154.preheader, %middle.block625
  %.010.i.i155.ph = phi ptr [ %.226.i, %vector.memcheck590 ], [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.ig, %middle.block625 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %vector.memcheck590 ], [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ih, %middle.block625 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader657, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.ip, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader657 ] ; 3 uses
  %.079.i.i156 = phi ptr [ %i.io, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader657 ] ; 4 uses
  %i.ik = load i32, ptr %.079.i.i156, align 4, !tbaa !254
  store i32 %i.ik, ptr %.010.i.i155, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i156, align 4, !tbaa !254
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4
  %i.in = load i32, ptr %i.il, align 4, !tbaa !254
  store i32 %i.in, ptr %i.im, align 4, !tbaa !254
  store i32 0, ptr %i.il, align 4, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.io, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !4343

bb.aj:                                            ; preds = %.thread
  br i1 %i.fq, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.iq = phi ptr [ %i.fp, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 11 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 12 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.ir = phi ptr [ %i.fr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0108266441 = ptrtoaddr ptr %.0216268 to i64
  %.0216268440 = ptrtoaddr ptr %.0108266 to i64
  %i.is = add i64 %.0216268440, -8
  %i.it = sub i64 %i.is, %.0108266441             ; 3 uses
  %i.iu = lshr i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.it, 312
  br i1 %min.iters.check443, label %.lr.ph.i.i161.preheader670, label %vector.memcheck444

vector.memcheck444:                               ; preds = %.lr.ph.i.i161.preheader
  %i.iw = and i64 %i.it, -8                       ; 2 uses
  %i.ix = or disjoint i64 %i.iw, 4                ; 2 uses
  %i.iy = getelementptr i8, ptr %.0222270, i64 %i.ix ; 3 uses
  %i.iz = getelementptr i8, ptr %.0216268, i64 %i.ix ; 3 uses
  %i.ja = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.jb = add i64 %i.iw, 8                        ; 2 uses
  %i.jc = getelementptr i8, ptr %.0222270, i64 %i.jb ; 3 uses
  %i.jd = getelementptr i8, ptr %.0216268, i64 4  ; 3 uses
  %i.je = getelementptr i8, ptr %.0216268, i64 %i.jb ; 3 uses
  %bound0445 = icmp ult ptr %.0222270, %i.iz
  %bound1446 = icmp ult ptr %.0216268, %i.iy
  %found.conflict447 = and i1 %bound0445, %bound1446
  %bound0448 = icmp ult ptr %.0222270, %i.jc
  %bound1449 = icmp ult ptr %i.ja, %i.iy
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %found.conflict447, %found.conflict450
  %bound0452 = icmp ult ptr %.0222270, %i.je
  %bound1453 = icmp ult ptr %i.jd, %i.iy
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx451, %found.conflict454
  %bound0456 = icmp ult ptr %.0216268, %i.jc
  %bound1457 = icmp ult ptr %i.ja, %i.iz
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx459 = or i1 %conflict.rdx455, %found.conflict458
  %bound0460 = icmp ult ptr %.0216268, %i.je
  %bound1461 = icmp ult ptr %i.jd, %i.iz
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx459, %found.conflict462
  %bound0464 = icmp ult ptr %i.ja, %i.je
  %bound1465 = icmp ult ptr %i.jd, %i.jc
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  br i1 %conflict.rdx467, label %.lr.ph.i.i161.preheader670, label %vector.ph468

vector.ph468:                                     ; preds = %vector.memcheck444
  %n.vec469 = and i64 %i.iv, 4611686018427387902  ; 3 uses
  %i.jf = shl i64 %n.vec469, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %.0222270, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %.0216268, i64 %i.jf
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next478, %vector.body470 ] ; 2 uses
  %i.ji = shl i64 %index471, 3                    ; 2 uses
  %next.gep472 = getelementptr i8, ptr %.0222270, i64 %i.ji
  %next.gep473 = getelementptr i8, ptr %.0216268, i64 %i.ji ; 2 uses
  %wide.vec474 = load <4 x i32>, ptr %next.gep473, align 4, !tbaa !254
  store <4 x i32> %wide.vec474, ptr %next.gep472, align 4, !tbaa !254
  store <4 x i32> zeroinitializer, ptr %next.gep473, align 4, !tbaa !254
  %index.next478 = add nuw i64 %index471, 2       ; 2 uses
  %i.jj = icmp eq i64 %index.next478, %n.vec469
  br i1 %i.jj, label %middle.block479, label %vector.body470, !llvm.loop !4344

middle.block479:                                  ; preds = %vector.body470
  %cmp.n480 = icmp eq i64 %i.iv, %n.vec469
  br i1 %cmp.n480, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161.preheader670

.lr.ph.i.i161.preheader670:                       ; preds = %vector.memcheck444, %.lr.ph.i.i161.preheader, %middle.block479
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck444 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jg, %middle.block479 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck444 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jh, %middle.block479 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader670, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.jp, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader670 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.jo, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader670 ] ; 4 uses
  %i.jk = load i32, ptr %.079.i.i163, align 4, !tbaa !254
  store i32 %i.jk, ptr %.010.i.i162, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i163, align 4, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !254
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !254
  store i32 0, ptr %i.jl, align 4, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.jo, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i161, !llvm.loop !4345

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block479, %middle.block625, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit, %bb.aj
  %i.jq = phi ptr [ %i.fp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fp, %bb.aj ], [ %i.iq, %bb.ak ], [ %i.fp, %middle.block625 ], [ %i.iq, %middle.block479 ], [ %i.fp, %.lr.ph.i.i154 ], [ %i.iq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block625 ], [ %.2, %middle.block479 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block625 ], [ %.0234275, %middle.block479 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block625 ], [ %.0228272, %middle.block479 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block625 ], [ %.0102262, %middle.block479 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block625 ], [ %.099259, %middle.block479 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.jr = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fr, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.fr, %middle.block625 ], [ %i.ir, %middle.block479 ], [ %i.fr, %.lr.ph.i.i154 ], [ %i.ir, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET1_RT_SI_RT0_SK_SH_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.ig, %middle.block625 ], [ %i.jg, %middle.block479 ], [ %i.ip, %.lr.ph.i.i154 ], [ %i.jp, %.lr.ph.i.i161 ]
  %i.js = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ESA_SA_NS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.jr, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 6 uses
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !262 ; 8 uses
  %.not8.i.i167 = icmp eq ptr %i.jt, %i.jr
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  %i.ju = ptrtoaddr ptr %i.jt to i64
  %i.jv = ptrtoaddr ptr %i.jr to i64
  %i.jw = add i64 %i.jv, -8
  %i.jx = sub i64 %i.jw, %i.ju                    ; 3 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check636 = icmp ult i64 %i.jx, 72
  br i1 %min.iters.check636, label %.lr.ph.i.i168.preheader656, label %vector.memcheck637

vector.memcheck637:                               ; preds = %.lr.ph.i.i168.preheader
  %i.ka = and i64 %i.jx, -8
  %i.kb = add i64 %i.ka, 8                        ; 2 uses
  %i.kc = getelementptr i8, ptr %i.js, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.jt, i64 %i.kb
  %bound0638 = icmp ult ptr %i.js, %i.kd
  %bound1639 = icmp ult ptr %i.jt, %i.kc
  %found.conflict640 = and i1 %bound0638, %bound1639
  br i1 %found.conflict640, label %.lr.ph.i.i168.preheader656, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck637
  %n.vec642 = and i64 %i.jz, 4611686018427387902  ; 3 uses
  %i.ke = shl i64 %n.vec642, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.jt, i64 %i.ke
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next651, %vector.body643 ] ; 2 uses
  %i.kh = shl i64 %index644, 3                    ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.js, i64 %i.kh
  %next.gep646 = getelementptr i8, ptr %i.jt, i64 %i.kh ; 2 uses
  %wide.vec647 = load <4 x i32>, ptr %next.gep646, align 4, !tbaa !254, !alias.scope !4351
  store <4 x i32> %wide.vec647, ptr %next.gep645, align 4, !tbaa !254, !alias.scope !4352, !noalias !4351
  store <4 x i32> zeroinitializer, ptr %next.gep646, align 4, !tbaa !254, !alias.scope !4351
  %index.next651 = add nuw i64 %index644, 2       ; 2 uses
  %i.ki = icmp eq i64 %index.next651, %n.vec642
  br i1 %i.ki, label %middle.block652, label %vector.body643, !llvm.loop !4349

middle.block652:                                  ; preds = %vector.body643
  %cmp.n653 = icmp eq i64 %i.jz, %n.vec642
  br i1 %cmp.n653, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168.preheader656

.lr.ph.i.i168.preheader656:                       ; preds = %vector.memcheck637, %.lr.ph.i.i168.preheader, %middle.block652
  %.010.i.i169.ph = phi ptr [ %i.js, %vector.memcheck637 ], [ %i.js, %.lr.ph.i.i168.preheader ], [ %i.kf, %middle.block652 ]
  %.079.i.i170.ph = phi ptr [ %i.jt, %vector.memcheck637 ], [ %i.jt, %.lr.ph.i.i168.preheader ], [ %i.kg, %middle.block652 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader656, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.ko, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader656 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.kn, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader656 ] ; 4 uses
  %i.kj = load i32, ptr %.079.i.i170, align 4, !tbaa !254
  store i32 %i.kj, ptr %.010.i.i169, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !254
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !254
  store i32 0, ptr %i.kk, align 4, !tbaa !254
  %i.kn = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.kn, %i.jr
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173, label %.lr.ph.i.i168, !llvm.loop !4350

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit173: ; preds = %.lr.ph.i.i168, %middle.block652, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !262
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  store ptr %.sink.i, ptr %2, align 8, !tbaa !332
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !332
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !345
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !332
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4493

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !345
  store ptr %i.dy, ptr %0, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !254
  store i32 %i.c, ptr %4, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254
  store i32 %i.g, ptr %i.e, align 4, !tbaa !254
  store i32 0, ptr %i.f, align 4, !tbaa !254
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %5, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  store i32 %i.l, ptr %i.j, align 4, !tbaa !254
  store i32 0, ptr %i.k, align 4, !tbaa !254
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  store i32 %i.p, ptr %i.n, align 4, !tbaa !254
  store i32 0, ptr %i.o, align 4, !tbaa !254
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  store i32 %i.s, ptr %i.q, align 4, !tbaa !254
  store i32 0, ptr %i.r, align 4, !tbaa !254
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.w, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.v, align 4, !tbaa !254
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.z, ptr %i.x, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !254
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !254
  store i32 0, ptr %i.ac, align 4, !tbaa !254
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.af, ptr %0, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !349, !nonnull !333
  store ptr %i.ap, ptr %7, align 8, !tbaa !342
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !349, !nonnull !333
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !342
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 19 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i151.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !266  ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !267    ; 6 uses
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %.114.i151.le              ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.y = and i64 %i.v, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %.114.i, i64 %i.z
  %bound0 = icmp ult ptr %i.t, %i.ab
  %bound1 = icmp ult ptr %.114.i, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %.114.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep152 = getelementptr i8, ptr %.114.i, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !254, !alias.scope !4526
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4527, !noalias !4526
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !254, !alias.scope !4526
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !254
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !254
  store i32 0, ptr %i.ai, align 4, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4505

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1731.i = icmp eq i64 %i.s, %i.q
  br i1 %.not1731.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.an = trunc i64 %i.q to i32
  %i.ao = trunc i64 %i.s to i32
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = shl i32 %i.ap, 1
  %i.ar = add i32 %i.aq, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.s, 3                     ; 4 uses
  %i.as = getelementptr i8, ptr %.114.i, i64 %.idx28.i ; 3 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.au = add i64 %.idx28.i, -8                   ; 2 uses
  %i.av = lshr exact i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.au, 40
  br i1 %min.iters.check160, label %.lr.ph.i19.i.preheader273, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i19.i.preheader
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx28.i
  %bound0162 = icmp ult ptr %i.at, %i.as
  %bound1163 = icmp ult ptr %.114.i, %i.ax
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i19.i.preheader273, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %i.aw, 4611686018427387902  ; 3 uses
  %i.ay = shl i64 %n.vec166, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.at, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %.114.i, i64 %i.ay
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.bb = shl i64 %index168, 3                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.at, i64 %i.bb
  %next.gep170 = getelementptr i8, ptr %.114.i, i64 %i.bb ; 2 uses
  %wide.vec171 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !254, !alias.scope !4528
  store <4 x i32> %wide.vec171, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4529, !noalias !4528
  store <4 x i32> zeroinitializer, ptr %next.gep170, align 4, !tbaa !254, !alias.scope !4528
  %index.next175 = add nuw i64 %index168, 2       ; 2 uses
  %i.bc = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.bc, label %middle.block176, label %vector.body167, !llvm.loop !4509

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.aw, %n.vec166
  br i1 %cmp.n177, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader273

.lr.ph.i19.i.preheader273:                        ; preds = %vector.memcheck161, %.lr.ph.i19.i.preheader, %middle.block176
  %.010.i20.i.ph = phi ptr [ %i.at, %vector.memcheck161 ], [ %i.at, %.lr.ph.i19.i.preheader ], [ %i.az, %middle.block176 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck161 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.ba, %middle.block176 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader273, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bi, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader273 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.bh, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader273 ] ; 4 uses
  %i.bd = load i32, ptr %.079.i21.i, align 4, !tbaa !254
  store i32 %i.bd, ptr %.010.i20.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !254
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !254
  store i32 0, ptr %i.be, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not.i22.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !4510

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block176, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.at, %bb.f ], [ %i.az, %middle.block176 ], [ %i.bi, %.lr.ph.i19.i ]
  %.not16.i.i = icmp eq i64 %.idx28.i, %i.p
  br i1 %.not16.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bq, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.bp, %.lr.ph.i25.i ], [ %i.as, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 4 uses
  %i.bj = load i32, ptr %.01217.i.i, align 4, !tbaa !254
  store i32 %i.bj, ptr %.018.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !254
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bo = add i32 %i.bk, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bp = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.bp, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !266
  %i.br = load ptr, ptr %4, align 8, !tbaa !267   ; 3 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i41, %bb.j ], [ %i.br, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 12 uses
  %.01626.i = phi ptr [ %i.cw, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 9 uses
  %.01725.i = phi ptr [ %.118.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 6 uses
  %i.bu = icmp eq ptr %.01725.i, %2
  br i1 %i.bu, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.027.i181.le = ptrtoaddr ptr %.027.i to i64
  %i.bv = add i64 %i.bs, %i.d
  %i.bw = add i64 %i.bv, -8
  %i.bx = add i64 %.114.i151.le, %.027.i181.le
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.by, 120
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader266, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cb = shl i64 %indvar, 3
  %5 = and i64 %i.by, -8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.114.i, i64 %i.cb
  %6 = getelementptr i8, ptr %scevgep, i64 8
  %scevgep182 = getelementptr i8, ptr %6, i64 %5
  %scevgep183 = getelementptr i8, ptr %.027.i, i64 %5
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 8
  %bound0185 = icmp ult ptr %.01626.i, %scevgep184
  %bound1186 = icmp ult ptr %.027.i, %scevgep182
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i.i.i.preheader266, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck180
  %n.vec191 = and i64 %i.ca, 4611686018427387902  ; 3 uses
  %i.cc = shl i64 %n.vec191, 3                    ; 2 uses
  %i.cd = getelementptr i8, ptr %.01626.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %.027.i, i64 %i.cc
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 2 uses
  %i.cf = shl i64 %index193, 3                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.01626.i, i64 %i.cf
  %next.gep195 = getelementptr i8, ptr %.027.i, i64 %i.cf ; 2 uses
  %wide.vec196 = load <4 x i32>, ptr %next.gep195, align 4, !tbaa !254, !alias.scope !4530
  store <4 x i32> %wide.vec196, ptr %next.gep194, align 4, !tbaa !254, !alias.scope !4531, !noalias !4530
  store <4 x i32> zeroinitializer, ptr %next.gep195, align 4, !tbaa !254, !alias.scope !4530
  %index.next200 = add nuw i64 %index193, 2       ; 2 uses
  %i.cg = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.cg, label %middle.block201, label %vector.body192, !llvm.loop !4514

middle.block201:                                  ; preds = %vector.body192
  %cmp.n202 = icmp eq i64 %i.ca, %n.vec191
  br i1 %cmp.n202, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i.preheader266

.lr.ph.i.i.i.preheader266:                        ; preds = %vector.memcheck180, %.lr.ph.i.i.i.preheader, %middle.block201
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck180 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.cd, %middle.block201 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck180 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.ce, %middle.block201 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader266, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader266 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader266 ] ; 4 uses
  %i.ch = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.ch, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !254
  store i32 0, ptr %i.ci, align 4, !tbaa !254
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cl, %i.bt
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4515

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cn = load i32, ptr %.027.i, align 4, !tbaa !254 ; 2 uses
  %i.co = load i32, ptr %.01725.i, align 4, !tbaa !254 ; 2 uses
  %.not20.i = icmp slt i32 %i.cn, %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4 ; 2 uses
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.co, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.01725.i, align 4, !tbaa !254
  %i.cq = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !254
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.cq, align 4, !tbaa !254
  %i.cs = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.cn, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.027.i, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.027.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.118.i = phi ptr [ %i.cs, %bb.h ], [ %.01725.i, %bb.i ]
  %.1.i41 = phi ptr [ %.027.i, %bb.h ], [ %i.cv, %bb.i ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !43

.lr.ph.i44:                                       ; preds = %bb.c
  %i.cx = ashr exact i64 %i.h, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.018.i45 = phi i64 [ %i.cx, %.lr.ph.i44 ], [ %.1.i50, %bb.k ] ; 2 uses
  %.01317.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i49, %bb.k ] ; 2 uses
  %i.cy = lshr i64 %.018.i45, 1                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.01317.i46, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !254
  %.not15.i47 = icmp slt i32 %i.b, %i.da          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.neg.i48 = xor i64 %i.cy, -1
  %i.dc = add i64 %.018.i45, %.neg.i48
  %.114.i49 = select i1 %.not15.i47, ptr %.01317.i46, ptr %i.db ; 8 uses
  %.1.i50 = select i1 %.not15.i47, i64 %i.cy, i64 %i.dc ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.k, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i49214.le = ptrtoaddr ptr %.114.i49 to i64
  %i.dd = ptrtoint ptr %.114.i49 to i64
  %i.de = sub i64 %i.dd, %i.d                     ; 3 uses
  %i.df = ashr exact i64 %i.de, 3                 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !266 ; 5 uses
  %.not.i53 = icmp ugt i64 %i.df, %i.dh
  br i1 %.not.i53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  br i1 %.not8.i.i54, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.preheader.i55

.lr.ph.i.preheader.i55:                           ; preds = %bb.l
  %i.di = load ptr, ptr %4, align 8, !tbaa !267   ; 6 uses
  %i.dj = add i64 %.114.i49214.le, -8
  %i.dk = sub i64 %i.dj, %i.d                     ; 3 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.dk, 72
  br i1 %min.iters.check216, label %.lr.ph.i.i56.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i.preheader.i55
  %i.dn = and i64 %i.dk, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %i.dp = getelementptr i8, ptr %i.di, i64 %i.do
  %i.dq = getelementptr i8, ptr %1, i64 %i.do
  %bound0218 = icmp ult ptr %i.di, %i.dq
  %bound1219 = icmp ult ptr %1, %i.dp
  %found.conflict220 = and i1 %bound0218, %bound1219
  br i1 %found.conflict220, label %.lr.ph.i.i56.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck217
  %n.vec222 = and i64 %i.dm, 4611686018427387902  ; 3 uses
  %i.dr = shl i64 %n.vec222, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %i.di, i64 %i.dr
  %i.dt = getelementptr i8, ptr %1, i64 %i.dr
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next231, %vector.body223 ] ; 2 uses
  %i.du = shl i64 %index224, 3                    ; 2 uses
  %next.gep225 = getelementptr i8, ptr %i.di, i64 %i.du
  %next.gep226 = getelementptr i8, ptr %1, i64 %i.du ; 2 uses
  %wide.vec227 = load <4 x i32>, ptr %next.gep226, align 4, !tbaa !254, !alias.scope !4532
  store <4 x i32> %wide.vec227, ptr %next.gep225, align 4, !tbaa !254, !alias.scope !4533, !noalias !4532
  store <4 x i32> zeroinitializer, ptr %next.gep226, align 4, !tbaa !254, !alias.scope !4532
  %index.next231 = add nuw i64 %index224, 2       ; 2 uses
  %i.dv = icmp eq i64 %index.next231, %n.vec222
  br i1 %i.dv, label %middle.block232, label %vector.body223, !llvm.loop !4519

middle.block232:                                  ; preds = %vector.body223
  %cmp.n233 = icmp eq i64 %i.dm, %n.vec222
  br i1 %cmp.n233, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %vector.memcheck217, %.lr.ph.i.preheader.i55, %middle.block232
  %.010.i.i57.ph = phi ptr [ %i.di, %vector.memcheck217 ], [ %i.di, %.lr.ph.i.preheader.i55 ], [ %i.ds, %middle.block232 ]
  %.079.i.i58.ph = phi ptr [ %1, %vector.memcheck217 ], [ %1, %.lr.ph.i.preheader.i55 ], [ %i.dt, %middle.block232 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.eb, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader ] ; 3 uses
  %.079.i.i58 = phi ptr [ %i.ea, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader ] ; 4 uses
  %i.dw = load i32, ptr %.079.i.i58, align 4, !tbaa !254
  store i32 %i.dw, ptr %.010.i.i57, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i58, align 4, !tbaa !254
  %i.dx = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !254
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !254
  store i32 0, ptr %i.dx, align 4, !tbaa !254
  %i.ea = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 8
  %.not.i.i59 = icmp eq ptr %i.ea, %.114.i49
  br i1 %.not.i.i59, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60, label %.lr.ph.i.i56, !llvm.loop !4520

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60: ; preds = %.lr.ph.i.i56, %middle.block232, %bb.l
  %.not1731.i61 = icmp eq i64 %i.dh, %i.df
  br i1 %.not1731.i61, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77, label %.lr.ph.preheader.i62

.lr.ph.preheader.i62:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i60
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i63 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ec = trunc i64 %i.df to i32
  %i.ed = trunc i64 %i.dh to i32
  %i.ee = sub i32 %i.ec, %i.ed
  %i.ef = shl i32 %i.ee, 1
  %i.eg = add i32 %i.ef, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i63
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit77

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.idx28.i64 = shl i64 %i.dh, 3                  ; 4 uses
  %i.eh = getelementptr i8, ptr %1, i64 %.idx28.i64 ; 3 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i65 = icmp eq i64 %i.dh, 0
  br i1 %.not8.i18.i65, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i70, label %.lr.ph.i19.i66.preheader
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_:bb.a
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %1, %bb.j ]
  %i.ad = sub i64 %.pre-phi94, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.af = lshr i64 %4, 1                          ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %.not16.i78 = icmp eq ptr %1, %0
  %.pre91 = ptrtoint ptr %0 to i64                ; 3 uses
  br i1 %.not16.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.l
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ah, %.pre91
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i79
  %.018.i80 = phi i64 [ %i.aj, %.lr.ph.i79 ], [ %.1.i85, %bb.m ] ; 2 uses
  %.01317.i81 = phi ptr [ %0, %.lr.ph.i79 ], [ %.114.i84, %bb.m ] ; 2 uses
  %i.al = lshr i64 %.018.i80, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.01317.i81, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !254
  %.not15.i82 = icmp slt i32 %i.an, %i.ak         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.neg.i83 = xor i64 %i.al, -1
  %i.ap = add i64 %.018.i80, %.neg.i83
  %.114.i84 = select i1 %.not15.i82, ptr %i.ao, ptr %.01317.i81 ; 3 uses
  %.1.i85 = select i1 %.not15.i82, i64 %i.ap, i64 %i.al ; 2 uses
  %.not.i86 = icmp eq i64 %.1.i85, 0
  br i1 %.not.i86, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre95 = ptrtoint ptr %.114.i84 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi96 = phi i64 [ %.pre95, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre91, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.aq = sub i64 %.pre-phi96, %.pre91
  %i.ar = ashr exact i64 %i.aq, 3
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ar, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ae, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.t, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %i.as = sub i64 %3, %.070                       ; 2 uses
  %i.at = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071, i64 noundef %i.as, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !349, !nonnull !333
  store ptr %i.au, ptr %11, align 8, !tbaa !342
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %i.at, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %11)
  %i.av = sub i64 %4, %.069
  %i.aw = load ptr, ptr %7, align 8, !tbaa !349, !nonnull !333
  store ptr %i.aw, ptr %12, align 8, !tbaa !342
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef %i.at, ptr noundef %.071, ptr noundef %2, i64 noundef %i.as, i64 noundef %i.av, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.h, %bb.n, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader74, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not80 = icmp eq ptr %1, %2
  br i1 %.not80, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.not16.i54117 = icmp eq ptr %1, %0
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !4536

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = load i32, ptr %.04085, align 4, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.b, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !254
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !4536

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !4537

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -8
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 3
  %i.z = load i32, ptr %i.v, align 4, !tbaa !254
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !254
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -8 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -16
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !254
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !254
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !4537

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.e = icmp ule i64 %3, %4
  %.not = icmp ugt i64 %4, %6
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not8.i = icmp eq ptr %1, %2
  br i1 %.not8.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.f = add i64 %i.d, -8
  %i.g = sub i64 %i.f, %i.c                       ; 3 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 72
  br i1 %min.iters.check, label %.lr.ph.i.preheader215, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = and i64 %i.g, -8
  %i.k = add i64 %i.j, 8                          ; 2 uses
  %i.l = getelementptr i8, ptr %5, i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  %bound0 = icmp ult ptr %5, %i.m
  %bound1 = icmp ult ptr %1, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 3 uses
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n       ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.q
  %next.gep97 = getelementptr i8, ptr %1, i64 %i.q ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !254, !alias.scope !4563
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4564, !noalias !4563
  store <4 x i32> zeroinitializer, ptr %next.gep97, align 4, !tbaa !254, !alias.scope !4563
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !4541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.preheader215

.lr.ph.i.preheader215:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.preheader ], [ %i.o, %middle.block ]
  %.079.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader215, %.lr.ph.i
  %.010.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader215 ] ; 3 uses
  %.079.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader215 ] ; 4 uses
  %i.s = load i32, ptr %.079.i, align 4, !tbaa !254
  store i32 %i.s, ptr %.010.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i, align 4, !tbaa !254
  %i.t = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !254
  store i32 %i.v, ptr %i.u, align 4, !tbaa !254
  store i32 0, ptr %i.t, align 4, !tbaa !254
  %i.w = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %2
  br i1 %.not.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !4542

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.c
  %.0.lcssa.i = phi ptr [ %5, %bb.c ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i106 = ptrtoaddr ptr %.0.lcssa.i to i64
  %.not8.i37 = icmp eq ptr %0, %1
  br i1 %.not8.i37, label %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %.lr.ph.i38
  %.010.i39 = phi ptr [ %i.z, %.lr.ph.i38 ], [ %2, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ] ; 2 uses
  %.079.i40 = phi ptr [ %i.y, %.lr.ph.i38 ], [ %1, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.079.i40, i64 -8 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.010.i39, i64 -8 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !254
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !254
  store i32 0, ptr %i.y, align 4, !tbaa !254
  %i.ab = getelementptr inbounds i8, ptr %.079.i40, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i39, i64 -4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !254
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !254
  store i32 0, ptr %i.ab, align 4, !tbaa !254
  %.not.i41 = icmp eq ptr %0, %i.y
  br i1 %.not.i41, label %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph.i38, !llvm.loop !45

_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i38, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %.not8.i43 = icmp eq ptr %5, %.0.lcssa.i
  br i1 %.not8.i43, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit
  %i.ae = add i64 %.0.lcssa.i106, -8
  %i.af = sub i64 %i.ae, %i.b                     ; 3 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.af, 72
  br i1 %min.iters.check108, label %.lr.ph.i44.preheader212, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph.i44.preheader
  %i.ai = and i64 %i.af, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %5, i64 %i.aj
  %bound0110 = icmp ult ptr %0, %i.al
  %bound1111 = icmp ult ptr %5, %i.ak
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph.i44.preheader212, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck109
  %n.vec114 = and i64 %i.ah, 4611686018427387902  ; 3 uses
  %i.am = shl i64 %n.vec114, 3                    ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 %i.am     ; 2 uses
  %i.ao = getelementptr i8, ptr %5, i64 %i.am
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body115 ] ; 2 uses
  %i.ap = shl i64 %index116, 3                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %0, i64 %i.ap
  %next.gep118 = getelementptr i8, ptr %5, i64 %i.ap ; 2 uses
  %wide.vec119 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !254, !alias.scope !4565
  store <4 x i32> %wide.vec119, ptr %next.gep117, align 4, !tbaa !254, !alias.scope !4566, !noalias !4565
  store <4 x i32> zeroinitializer, ptr %next.gep118, align 4, !tbaa !254, !alias.scope !4565
  %index.next123 = add nuw i64 %index116, 2       ; 2 uses
  %i.aq = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.aq, label %middle.block124, label %vector.body115, !llvm.loop !4546

middle.block124:                                  ; preds = %vector.body115
  %cmp.n125 = icmp eq i64 %i.ah, %n.vec114
  br i1 %cmp.n125, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44.preheader212

.lr.ph.i44.preheader212:                          ; preds = %vector.memcheck109, %.lr.ph.i44.preheader, %middle.block124
  %.010.i45.ph = phi ptr [ %0, %vector.memcheck109 ], [ %0, %.lr.ph.i44.preheader ], [ %i.an, %middle.block124 ]
  %.079.i46.ph = phi ptr [ %5, %vector.memcheck109 ], [ %5, %.lr.ph.i44.preheader ], [ %i.ao, %middle.block124 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader212, %.lr.ph.i44
  %.010.i45 = phi ptr [ %i.aw, %.lr.ph.i44 ], [ %.010.i45.ph, %.lr.ph.i44.preheader212 ] ; 3 uses
  %.079.i46 = phi ptr [ %i.av, %.lr.ph.i44 ], [ %.079.i46.ph, %.lr.ph.i44.preheader212 ] ; 4 uses
  %i.ar = load i32, ptr %.079.i46, align 4, !tbaa !254
  store i32 %i.ar, ptr %.010.i45, align 4, !tbaa !254
  store i32 0, ptr %.079.i46, align 4, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i46, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i45, i64 4
  %i.au = load i32, ptr %i.as, align 4, !tbaa !254
  store i32 %i.au, ptr %i.at, align 4, !tbaa !254
  store i32 0, ptr %i.as, align 4, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i46, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i45, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %i.av, %.0.lcssa.i
  br i1 %.not.i47, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i44, !llvm.loop !4547

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp ugt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not8.i50 = icmp eq ptr %0, %1
  br i1 %.not8.i50, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %bb.f
  %i.ax = add i64 %i.c, -8
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.ay, 72
  br i1 %min.iters.check134, label %.lr.ph.i51.preheader210, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i51.preheader
  %i.bb = and i64 %i.ay, -8
  %i.bc = add i64 %i.bb, 8                        ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 %i.bc
  %i.be = getelementptr i8, ptr %0, i64 %i.bc
  %bound0136 = icmp ult ptr %5, %i.be
  %bound1137 = icmp ult ptr %0, %i.bd
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i51.preheader210, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck135
  %n.vec140 = and i64 %i.ba, 4611686018427387902  ; 3 uses
  %i.bf = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bg = getelementptr i8, ptr %5, i64 %i.bf     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bf
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.bi = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %5, i64 %i.bi
  %next.gep144 = getelementptr i8, ptr %0, i64 %i.bi ; 2 uses
  %wide.vec145 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !254, !alias.scope !4567
  store <4 x i32> %wide.vec145, ptr %next.gep143, align 4, !tbaa !254, !alias.scope !4568, !noalias !4567
  store <4 x i32> zeroinitializer, ptr %next.gep144, align 4, !tbaa !254, !alias.scope !4567
  %index.next149 = add nuw i64 %index142, 2       ; 2 uses
  %i.bj = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.bj, label %middle.block150, label %vector.body141, !llvm.loop !4551

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %i.ba, %n.vec140
  br i1 %cmp.n151, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51.preheader210

.lr.ph.i51.preheader210:                          ; preds = %vector.memcheck135, %.lr.ph.i51.preheader, %middle.block150
  %.010.i52.ph = phi ptr [ %5, %vector.memcheck135 ], [ %5, %.lr.ph.i51.preheader ], [ %i.bg, %middle.block150 ]
  %.079.i53.ph = phi ptr [ %0, %vector.memcheck135 ], [ %0, %.lr.ph.i51.preheader ], [ %i.bh, %middle.block150 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader210, %.lr.ph.i51
  %.010.i52 = phi ptr [ %i.bp, %.lr.ph.i51 ], [ %.010.i52.ph, %.lr.ph.i51.preheader210 ] ; 3 uses
  %.079.i53 = phi ptr [ %i.bo, %.lr.ph.i51 ], [ %.079.i53.ph, %.lr.ph.i51.preheader210 ] ; 4 uses
  %i.bk = load i32, ptr %.079.i53, align 4, !tbaa !254
  store i32 %i.bk, ptr %.010.i52, align 4, !tbaa !254
  store i32 0, ptr %.079.i53, align 4, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i53, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i52, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !254
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !254
  store i32 0, ptr %i.bl, align 4, !tbaa !254
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i53, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i52, i64 8 ; 2 uses
  %.not.i54 = icmp eq ptr %i.bo, %1
  br i1 %.not.i54, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56, label %.lr.ph.i51, !llvm.loop !4552

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56: ; preds = %.lr.ph.i51, %middle.block150, %bb.f
  %.0.lcssa.i55 = phi ptr [ %5, %bb.f ], [ %i.bg, %middle.block150 ], [ %i.bp, %.lr.ph.i51 ] ; 3 uses
  %.0.lcssa.i55186 = ptrtoaddr ptr %.0.lcssa.i55 to i64
  %.not8.i57 = icmp eq ptr %1, %2
  br i1 %.not8.i57, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56
  %i.bq = add i64 %i.d, -8
  %i.br = sub i64 %i.bq, %i.c                     ; 3 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.br, 72
  br i1 %min.iters.check160, label %.lr.ph.i58.preheader209, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i58.preheader
  %i.bu = and i64 %i.br, -8
  %i.bv = add i64 %i.bu, 8                        ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  %bound0162 = icmp ult ptr %0, %i.bx
  %bound1163 = icmp ult ptr %1, %i.bw
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i58.preheader209, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %i.bt, 4611686018427387902  ; 3 uses
  %i.by = shl i64 %n.vec166, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %i.by     ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.by
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.cb = shl i64 %index168, 3                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %0, i64 %i.cb
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %wide.vec171 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !254, !alias.scope !4569
  store <4 x i32> %wide.vec171, ptr %next.gep169, align 4, !tbaa !254, !alias.scope !4570, !noalias !4569
  store <4 x i32> zeroinitializer, ptr %next.gep170, align 4, !tbaa !254, !alias.scope !4569
  %index.next175 = add nuw i64 %index168, 2       ; 2 uses
  %i.cc = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.cc, label %middle.block176, label %vector.body167, !llvm.loop !4556

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.bt, %n.vec166
  br i1 %cmp.n177, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58.preheader209

.lr.ph.i58.preheader209:                          ; preds = %vector.memcheck161, %.lr.ph.i58.preheader, %middle.block176
  %.010.i59.ph = phi ptr [ %0, %vector.memcheck161 ], [ %0, %.lr.ph.i58.preheader ], [ %i.bz, %middle.block176 ]
  %.079.i60.ph = phi ptr [ %1, %vector.memcheck161 ], [ %1, %.lr.ph.i58.preheader ], [ %i.ca, %middle.block176 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader209, %.lr.ph.i58
  %.010.i59 = phi ptr [ %i.ci, %.lr.ph.i58 ], [ %.010.i59.ph, %.lr.ph.i58.preheader209 ] ; 3 uses
  %.079.i60 = phi ptr [ %i.ch, %.lr.ph.i58 ], [ %.079.i60.ph, %.lr.ph.i58.preheader209 ] ; 4 uses
  %i.cd = load i32, ptr %.079.i60, align 4, !tbaa !254
  store i32 %i.cd, ptr %.010.i59, align 4, !tbaa !254
  store i32 0, ptr %.079.i60, align 4, !tbaa !254
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i60, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i59, i64 4
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !254
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i60, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i59, i64 8 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ch, %2
  br i1 %.not.i61, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, label %.lr.ph.i58, !llvm.loop !4557

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63: ; preds = %.lr.ph.i58, %middle.block176, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56
  %.0.lcssa.i62 = phi ptr [ %0, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit56 ], [ %i.bz, %middle.block176 ], [ %i.ci, %.lr.ph.i58 ] ; 9 uses
  %.not8.i64 = icmp eq ptr %5, %.0.lcssa.i55
  br i1 %.not8.i64, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63
  %i.cj = add i64 %.0.lcssa.i55186, -8
  %i.ck = sub i64 %i.cj, %i.b                     ; 3 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.ck, 72
  br i1 %min.iters.check188, label %.lr.ph.i65.preheader208, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i65.preheader
  %i.cn = and i64 %i.ck, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %i.cp = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.co
  %i.cq = getelementptr i8, ptr %5, i64 %i.co
  %bound0190 = icmp ult ptr %.0.lcssa.i62, %i.cq
  %bound1191 = icmp ult ptr %5, %i.cp
  %found.conflict192 = and i1 %bound0190, %bound1191
  br i1 %found.conflict192, label %.lr.ph.i65.preheader208, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck189
  %n.vec194 = and i64 %i.cm, 4611686018427387902  ; 3 uses
  %i.cr = shl i64 %n.vec194, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cr
  %i.ct = getelementptr i8, ptr %5, i64 %i.cr
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next203, %vector.body195 ] ; 2 uses
  %i.cu = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %.0.lcssa.i62, i64 %i.cu
  %next.gep198 = getelementptr i8, ptr %5, i64 %i.cu ; 2 uses
  %wide.vec199 = load <4 x i32>, ptr %next.gep198, align 4, !tbaa !254, !alias.scope !4571
  store <4 x i32> %wide.vec199, ptr %next.gep197, align 4, !tbaa !254, !alias.scope !4572, !noalias !4571
  store <4 x i32> zeroinitializer, ptr %next.gep198, align 4, !tbaa !254, !alias.scope !4571
  %index.next203 = add nuw i64 %index196, 2       ; 2 uses
  %i.cv = icmp eq i64 %index.next203, %n.vec194
  br i1 %i.cv, label %middle.block204, label %vector.body195, !llvm.loop !4561

middle.block204:                                  ; preds = %vector.body195
  %cmp.n205 = icmp eq i64 %i.cm, %n.vec194
  br i1 %cmp.n205, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65.preheader208

.lr.ph.i65.preheader208:                          ; preds = %vector.memcheck189, %.lr.ph.i65.preheader, %middle.block204
  %.010.i66.ph = phi ptr [ %.0.lcssa.i62, %vector.memcheck189 ], [ %.0.lcssa.i62, %.lr.ph.i65.preheader ], [ %i.cs, %middle.block204 ]
  %.079.i67.ph = phi ptr [ %5, %vector.memcheck189 ], [ %5, %.lr.ph.i65.preheader ], [ %i.ct, %middle.block204 ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader208, %.lr.ph.i65
  %.010.i66 = phi ptr [ %i.db, %.lr.ph.i65 ], [ %.010.i66.ph, %.lr.ph.i65.preheader208 ] ; 3 uses
  %.079.i67 = phi ptr [ %i.da, %.lr.ph.i65 ], [ %.079.i67.ph, %.lr.ph.i65.preheader208 ] ; 4 uses
  %i.cw = load i32, ptr %.079.i67, align 4, !tbaa !254
  store i32 %i.cw, ptr %.010.i66, align 4, !tbaa !254
  store i32 0, ptr %.079.i67, align 4, !tbaa !254
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i67, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i66, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !254
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !254
  store i32 0, ptr %i.cx, align 4, !tbaa !254
  %i.da = getelementptr inbounds nuw i8, ptr %.079.i67, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i66, i64 8
  %.not.i68 = icmp eq ptr %i.da, %.0.lcssa.i55
  br i1 %.not.i68, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49, label %.lr.ph.i65, !llvm.loop !4562

bb.g:                                             ; preds = %bb.d
  %i.dc = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit49: ; preds = %.lr.ph.i44, %.lr.ph.i65, %middle.block124, %middle.block204, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63, %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, %bb.e, %bb.b, %bb.g
  %.0 = phi ptr [ %2, %bb.e ], [ %i.dc, %bb.g ], [ %.0.lcssa.i62, %middle.block204 ], [ %0, %bb.b ], [ %0, %_ZN5boost13move_backwardIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit ], [ %.0.lcssa.i62, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit63 ], [ %.0.lcssa.i62, %.lr.ph.i65 ], [ %i.an, %middle.block124 ], [ %i.aw, %.lr.ph.i44 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_10range_xbufIS7_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %.not78 = icmp slt i32 %i.b, %i.c
  br i1 %.not78, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !254
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 11 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !89

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i133.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !355    ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %.114.i133.le              ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader205, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %.114.i, i64 %i.v
  %bound0 = icmp ult ptr %i.o, %i.x
  %bound1 = icmp ult ptr %.114.i, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387902      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab
  %next.gep134 = getelementptr i8, ptr %.114.i, i64 %i.ab ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !254, !alias.scope !4589
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4590, !noalias !4589
  store <4 x i32> zeroinitializer, ptr %next.gep134, align 4, !tbaa !254, !alias.scope !4589
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !4576

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.z, i64 -8
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i.preheader205

.lr.ph.i.i.i.preheader205:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader205, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.ad, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !254
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !254
  store i32 0, ptr %i.ae, align 4, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !4577

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa128 = phi ptr [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa208 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa128, ptr %i.aj, align 8, !tbaa !356
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.027.i = phi ptr [ %i.o, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01626.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %i.cs, %bb.h ] ; 9 uses
  %.01725.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.118.i, %bb.h ] ; 6 uses
  %i.ak = icmp eq ptr %.01725.i, %2
  br i1 %i.ak, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.027.i138.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.al = add i64 %i.d, -8
  %i.am = sub i64 %i.al, %.114.i133.le            ; 2 uses
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, %i.p
  %i.ap = sub i64 %i.ao, %.027.i138.le            ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check146 = icmp ult i64 %i.ap, 120
  br i1 %min.iters.check146, label %.lr.ph.i.i.i42.preheader198, label %vector.memcheck137

vector.memcheck137:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.as = shl i64 %indvar, 3
  %5 = and i64 %i.am, -8
  %i.at = add i64 %5, %i.p
  %i.au = sub i64 %i.at, %.027.i138.le
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %6 = getelementptr i8, ptr %.114.i, i64 %i.as
  %7 = getelementptr i8, ptr %6, i64 8
  %scevgep139 = getelementptr i8, ptr %7, i64 %i.av
  %scevgep140 = getelementptr i8, ptr %.027.i, i64 %i.av
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 8
  %bound0142 = icmp ult ptr %.01626.i, %scevgep141
  %bound1143 = icmp ult ptr %.027.i, %scevgep139
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %.lr.ph.i.i.i42.preheader198, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck137
  %n.vec148 = and i64 %i.ar, 4611686018427387902  ; 3 uses
  %i.aw = shl i64 %n.vec148, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %.01626.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.027.i, i64 %i.aw
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next157, %vector.body149 ] ; 2 uses
  %i.az = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.01626.i, i64 %i.az
  %next.gep152 = getelementptr i8, ptr %.027.i, i64 %i.az ; 2 uses
  %wide.vec153 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !254, !alias.scope !4591
  store <4 x i32> %wide.vec153, ptr %next.gep151, align 4, !tbaa !254, !alias.scope !4592, !noalias !4591
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !254, !alias.scope !4591
  %index.next157 = add nuw i64 %index150, 2       ; 2 uses
  %i.ba = icmp eq i64 %index.next157, %n.vec148
  br i1 %i.ba, label %middle.block158, label %vector.body149, !llvm.loop !4581

middle.block158:                                  ; preds = %vector.body149
  %cmp.n159 = icmp eq i64 %i.ar, %n.vec148
  br i1 %cmp.n159, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42.preheader198

.lr.ph.i.i.i42.preheader198:                      ; preds = %vector.memcheck137, %.lr.ph.i.i.i42.preheader, %middle.block158
  %.010.i.i.i43.ph = phi ptr [ %.01626.i, %vector.memcheck137 ], [ %.01626.i, %.lr.ph.i.i.i42.preheader ], [ %i.ax, %middle.block158 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.027.i, %vector.memcheck137 ], [ %.027.i, %.lr.ph.i.i.i42.preheader ], [ %i.ay, %middle.block158 ] ; 3 uses
  %.079.i.i.i44.ph209 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bb = sub i64 %.010.i.i.i.lcssa208, %.079.i.i.i44.ph209 ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader198, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader198 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader198 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader198 ]
  %i.be = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  store i32 %i.be, ptr %.010.i.i.i43.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  %i.bf = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !254
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !4582

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader198
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader198 ], [ %i.bj, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader198 ], [ %i.bi, %.lr.ph.i.i.i42.prol ]
  %i.bk = icmp ult i64 %i.bb, 24
  br i1 %i.bk, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.ci, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.ch, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.bl = load i32, ptr %.079.i.i.i44, align 4, !tbaa !254
  store i32 %i.bl, ptr %.010.i.i.i43, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !254
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !254
  store i32 0, ptr %i.bm, align 4, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !254
  store i32 0, ptr %i.bp, align 4, !tbaa !254
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !254
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !254
  store i32 0, ptr %i.bs, align 4, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !254
  store i32 0, ptr %i.bv, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !254
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !254
  store i32 0, ptr %i.cb, align 4, !tbaa !254
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !254
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.cb, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !4583

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cj = load i32, ptr %.027.i, align 4, !tbaa !254 ; 2 uses
  %i.ck = load i32, ptr %.01725.i, align 4, !tbaa !254 ; 2 uses
  %.not20.i = icmp slt i32 %i.cj, %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4 ; 2 uses
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ck, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.01725.i, align 4, !tbaa !254
  %i.cm = getelementptr inbounds nuw i8, ptr %.01725.i, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !254
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.cm, align 4, !tbaa !254
  %i.co = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.cj, ptr %.01626.i, align 4, !tbaa !254
  store i32 0, ptr %.027.i, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.027.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.cp, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.118.i = phi ptr [ %i.co, %bb.f ], [ %.01725.i, %bb.g ]
  %.1.i40 = phi ptr [ %.027.i, %bb.f ], [ %i.cr, %bb.g ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.01626.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !43

.lr.ph.i47:                                       ; preds = %bb.c
  %i.ct = ashr exact i64 %i.h, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.018.i48 = phi i64 [ %i.ct, %.lr.ph.i47 ], [ %.1.i53, %bb.i ] ; 2 uses
  %.01317.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i52, %bb.i ] ; 2 uses
  %i.cu = lshr i64 %.018.i48, 1                   ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.01317.i49, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !254
  %.not15.i50 = icmp slt i32 %i.b, %i.cw          ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.neg.i51 = xor i64 %i.cu, -1
  %i.cy = add i64 %.018.i48, %.neg.i51
  %.114.i52 = select i1 %.not15.i50, ptr %.01317.i49, ptr %i.cx ; 5 uses
  %.1.i53 = select i1 %.not15.i50, i64 %i.cu, i64 %i.cy ; 2 uses
  %.not.i54 = icmp eq i64 %.1.i53, 0
  br i1 %.not.i54, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.i, !llvm.loop !58

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.i
  %.114.i52171.le = ptrtoaddr ptr %.114.i52 to i64
  %i.cz = load ptr, ptr %4, align 8, !tbaa !355   ; 9 uses
  %.not8.i.i.i56 = icmp eq ptr %.114.i52, %1
  br i1 %.not8.i.i.i56, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i57.preheader

.lr.ph.i.i.i57.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %i.da = add i64 %.114.i52171.le, -8
  %i.db = sub i64 %i.da, %i.d                     ; 3 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.db, 72
  br i1 %min.iters.check173, label %.lr.ph.i.i.i57.preheader196, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.i.i57.preheader
  %i.de = and i64 %i.db, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cz, i64 %i.df
  %i.dh = getelementptr i8, ptr %1, i64 %i.df
  %bound0175 = icmp ult ptr %i.cz, %i.dh
  %bound1176 = icmp ult ptr %1, %i.dg
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.lr.ph.i.i.i57.preheader196, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck174
  %n.vec179 = and i64 %i.dd, 4611686018427387902  ; 3 uses
  %i.di = shl i64 %n.vec179, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cz, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next188, %vector.body180 ] ; 2 uses
  %i.dl = shl i64 %index181, 3                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.cz, i64 %i.dl
  %next.gep183 = getelementptr i8, ptr %1, i64 %i.dl ; 2 uses
  %wide.vec184 = load <4 x i32>, ptr %next.gep183, align 4, !tbaa !254, !alias.scope !4593
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond99 = and i1 %i.b, %i.a
  br i1 %or.cond99, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.at, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 14 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.au, %tailrecurse ] ; 12 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !356
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !357
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !254
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !254 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !254
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !254
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !254
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !254
  store i32 0, ptr %i.m, align 4, !tbaa !254
  %i.p = load i32, ptr %i.n, align 4, !tbaa !254
  store i32 %i.p, ptr %i.m, align 4, !tbaa !254
  store i32 %i.o, ptr %i.n, align 4, !tbaa !254
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !254
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !254
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
  %i.ai = sub i64 %i.ah, %.pre110
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.aj, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr100, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.al = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.01316.i81, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !254
  %i.ao = icmp slt i32 %i.ak, %i.an               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.neg.i82 = xor i64 %i.al, -1
  %i.aq = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ao, ptr %.01316.i81, ptr %i.ap ; 3 uses
  %.1.i84 = select i1 %i.ao, i64 %i.al, i64 %i.aq ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre114 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi115 = phi i64 [ %.pre114, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre110, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr100, %bb.k ]
  %i.ar = sub i64 %.pre-phi115, %.pre110
  %i.as = ashr exact i64 %i.ar, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ag, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.070 = phi i64 [ %i.s, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.as, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.069 = phi i64 [ %i.ae, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.af, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.t, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.at = sub i64 %.tr89102, %.070                ; 3 uses
  %i.au = tail call noundef ptr @_ZN5boost7movelib15rotate_adaptiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_EET_S8_S8_S8_NS0_9iter_sizeIS8_E4typeESB_T0_SB_(ptr noundef %.0, ptr noundef %.tr87101, ptr noundef %.071, i64 noundef %i.at, i64 noundef %.069, ptr noundef %5, i64 noundef %6) ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %.tr100, ptr noundef %.0, ptr noundef %i.au, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.av = sub i64 %.tr90103, %.069                ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = icmp ne i64 %i.at, 0
  %or.cond = and i1 %i.ax, %i.aw
  br i1 %or.cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 11 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i127.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !355    ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %i.s = add i64 %i.e, -8
  %i.t = sub i64 %i.s, %.114.i127.le              ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader199, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x
  %i.z = getelementptr i8, ptr %.114.i, i64 %i.x
  %bound0 = icmp ult ptr %i.q, %i.z
  %bound1 = icmp ult ptr %.114.i, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387902      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 3 uses
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad
  %next.gep128 = getelementptr i8, ptr %.114.i, i64 %i.ad ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !254, !alias.scope !4612
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4613, !noalias !4612
  store <4 x i32> zeroinitializer, ptr %next.gep128, align 4, !tbaa !254, !alias.scope !4612
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4599

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ab, i64 -8
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i.preheader199

.lr.ph.i.i.i.preheader199:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader199, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader199 ] ; 4 uses
  %.079.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader199 ] ; 4 uses
  %i.af = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.af, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !254
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !254
  store i32 0, ptr %i.ag, align 4, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i.i.i, !llvm.loop !4600

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.010.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.010.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa122 = phi ptr [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.010.i.i.i.lcssa202 = ptrtoaddr ptr %.010.i.i.i.lcssa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa122, ptr %i.al, align 8, !tbaa !356
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit, %bb.h
  %indvar = phi i64 [ 0, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %indvar.next, %bb.h ] ; 2 uses
  %.026.i = phi ptr [ %i.q, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.1.i40, %bb.h ] ; 12 uses
  %.01625.i = phi ptr [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %.117.i, %bb.h ] ; 6 uses
  %.01824.i = phi ptr [ %.114.i, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit ], [ %i.cv, %bb.h ] ; 9 uses
  %i.am = icmp eq ptr %.01625.i, %2
  br i1 %i.am, label %.lr.ph.i.i.i42.preheader, label %bb.e

.lr.ph.i.i.i42.preheader:                         ; preds = %.lr.ph.i39
  %.026.i132.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.an = add i64 %i.e, -8
  %i.ao = sub i64 %i.an, %.114.i127.le            ; 2 uses
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, %i.r
  %i.ar = sub i64 %i.aq, %.026.i132.le            ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ar, 120
  br i1 %min.iters.check140, label %.lr.ph.i.i.i42.preheader192, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i.i.i42.preheader
  %i.au = shl i64 %indvar, 3
  %4 = and i64 %i.ao, -8
  %i.av = add i64 %4, %i.r
  %i.aw = sub i64 %i.av, %.026.i132.le
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %5 = getelementptr i8, ptr %.114.i, i64 %i.au
  %6 = getelementptr i8, ptr %5, i64 8
  %scevgep133 = getelementptr i8, ptr %6, i64 %i.ax
  %scevgep134 = getelementptr i8, ptr %.026.i, i64 %i.ax
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 8
  %bound0136 = icmp ult ptr %.01824.i, %scevgep135
  %bound1137 = icmp ult ptr %.026.i, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i.i.i42.preheader192, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck131
  %n.vec142 = and i64 %i.at, 4611686018427387902  ; 3 uses
  %i.ay = shl i64 %n.vec142, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %.01824.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %.026.i, i64 %i.ay
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.bb = shl i64 %index144, 3                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.01824.i, i64 %i.bb
  %next.gep146 = getelementptr i8, ptr %.026.i, i64 %i.bb ; 2 uses
  %wide.vec147 = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !254, !alias.scope !4614
  store <4 x i32> %wide.vec147, ptr %next.gep145, align 4, !tbaa !254, !alias.scope !4615, !noalias !4614
  store <4 x i32> zeroinitializer, ptr %next.gep146, align 4, !tbaa !254, !alias.scope !4614
  %index.next151 = add nuw i64 %index144, 2       ; 2 uses
  %i.bc = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.bc, label %middle.block152, label %vector.body143, !llvm.loop !4604

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %i.at, %n.vec142
  br i1 %cmp.n153, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42.preheader192

.lr.ph.i.i.i42.preheader192:                      ; preds = %vector.memcheck131, %.lr.ph.i.i.i42.preheader, %middle.block152
  %.010.i.i.i43.ph = phi ptr [ %.01824.i, %vector.memcheck131 ], [ %.01824.i, %.lr.ph.i.i.i42.preheader ], [ %i.az, %middle.block152 ] ; 2 uses
  %.079.i.i.i44.ph = phi ptr [ %.026.i, %vector.memcheck131 ], [ %.026.i, %.lr.ph.i.i.i42.preheader ], [ %i.ba, %middle.block152 ] ; 3 uses
  %.079.i.i.i44.ph203 = ptrtoaddr ptr %.079.i.i.i44.ph to i64
  %i.bd = sub i64 %.010.i.i.i.lcssa202, %.079.i.i.i44.ph203 ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader192, %.lr.ph.i.i.i42.prol
  %.010.i.i.i43.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i42.prol ], [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader192 ] ; 3 uses
  %.079.i.i.i44.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i42.prol ], [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader192 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader192 ]
  %i.bg = load i32, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  store i32 %i.bg, ptr %.010.i.i.i43.prol, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44.prol, align 4, !tbaa !254
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 4
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !254
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !254
  store i32 0, ptr %i.bh, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i.i44.prol, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i43.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !4605

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader192
  %.010.i.i.i43.unr = phi ptr [ %.010.i.i.i43.ph, %.lr.ph.i.i.i42.preheader192 ], [ %i.bl, %.lr.ph.i.i.i42.prol ]
  %.079.i.i.i44.unr = phi ptr [ %.079.i.i.i44.ph, %.lr.ph.i.i.i42.preheader192 ], [ %i.bk, %.lr.ph.i.i.i42.prol ]
  %i.bm = icmp ult i64 %i.bd, 24
  br i1 %i.bm, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.010.i.i.i43 = phi ptr [ %i.ck, %.lr.ph.i.i.i42 ], [ %.010.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.079.i.i.i44 = phi ptr [ %i.cj, %.lr.ph.i.i.i42 ], [ %.079.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 10 uses
  %i.bn = load i32, ptr %.079.i.i.i44, align 4, !tbaa !254
  store i32 %i.bn, ptr %.010.i.i.i43, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i44, align 4, !tbaa !254
  %i.bo = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 4
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !254
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !254
  store i32 0, ptr %i.bo, align 4, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 8
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !254
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !254
  store i32 0, ptr %i.br, align 4, !tbaa !254
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 12
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %i.bu, align 4, !tbaa !254
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 16
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !254
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.bx, align 4, !tbaa !254
  %i.ca = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 20 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 20
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !254
  store i32 0, ptr %i.ca, align 4, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 24 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 24
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !254
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !254
  store i32 0, ptr %i.cd, align 4, !tbaa !254
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 28 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 28
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !254
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !254
  store i32 0, ptr %i.cg, align 4, !tbaa !254
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i.i44, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i.i43, i64 32
  %.not.i.i.i45.3 = icmp eq ptr %i.cd, %.010.i.i.i.lcssa
  br i1 %.not.i.i.i45.3, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i42, !llvm.loop !4606

bb.e:                                             ; preds = %.lr.ph.i39
  %i.cl = load i32, ptr %.01625.i, align 4, !tbaa !254 ; 2 uses
  %i.cm = load i32, ptr %.026.i, align 4, !tbaa !254 ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4 ; 2 uses
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.cl, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i, align 4, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !254
  store i32 0, ptr %i.cp, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.cm, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !254
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !254
  store i32 0, ptr %i.cs, align 4, !tbaa !254
  %i.cu = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i = phi ptr [ %i.cr, %bb.f ], [ %.01625.i, %bb.g ]
  %.1.i40 = phi ptr [ %.026.i, %bb.f ], [ %i.cu, %bb.g ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i41 = icmp eq ptr %.1.i40, %.lcssa122
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i41, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i39, !llvm.loop !50

.lr.ph.i47:                                       ; preds = %bb.c
  %i.cw = ashr exact i64 %i.i, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i47
  %.017.i48 = phi i64 [ %i.cw, %.lr.ph.i47 ], [ %.1.i52, %bb.i ] ; 2 uses
  %.01316.i49 = phi ptr [ %1, %.lr.ph.i47 ], [ %.114.i51, %bb.i ] ; 2 uses
  %i.cx = lshr i64 %.017.i48, 1                   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.01316.i49, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !254
  %i.da = icmp slt i32 %i.cz, %i.c                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.neg.i50 = xor i64 %i.cx, -1
  %i.dc = add i64 %.017.i48, %.neg.i50
  %.114.i51 = select i1 %i.da, ptr %i.db, ptr %.01316.i49 ; 5 uses
  %.1.i52 = select i1 %i.da, i64 %i.dc, i64 %i.cx ; 2 uses
  %.not.i53 = icmp eq i64 %.1.i52, 0
  br i1 %.not.i53, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.i, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i
  %.114.i51165.le = ptrtoaddr ptr %.114.i51 to i64
  %i.dd = load ptr, ptr %3, align 8, !tbaa !355   ; 9 uses
  %.not8.i.i.i55 = icmp eq ptr %.114.i51, %1
  br i1 %.not8.i.i.i55, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %i.de = add i64 %.114.i51165.le, -8
  %i.df = sub i64 %i.de, %i.e                     ; 3 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.df, 72
  br i1 %min.iters.check167, label %.lr.ph.i.i.i56.preheader190, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.i.i56.preheader
  %i.di = and i64 %i.df, -8
  %i.dj = add i64 %i.di, 8                        ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dd, i64 %i.dj
  %i.dl = getelementptr i8, ptr %1, i64 %i.dj
  %bound0169 = icmp ult ptr %i.dd, %i.dl
  %bound1170 = icmp ult ptr %1, %i.dk
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i.i56.preheader190, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck168
  %n.vec173 = and i64 %i.dh, 4611686018427387902  ; 3 uses
  %i.dm = shl i64 %n.vec173, 3                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dd, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 %i.dm
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 2 uses
  %i.dp = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.dd, i64 %i.dp
  %next.gep177 = getelementptr i8, ptr %1, i64 %i.dp ; 2 uses
  %wide.vec178 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !254, !alias.scope !4616
  store <4 x i32> %wide.vec178, ptr %next.gep176, align 4, !tbaa !254, !alias.scope !4617, !noalias !4616
  store <4 x i32> zeroinitializer, ptr %next.gep177, align 4, !tbaa !254, !alias.scope !4616
  %index.next182 = add nuw i64 %index175, 2       ; 2 uses
  %i.dq = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.dq, label %middle.block183, label %vector.body174, !llvm.loop !4610

middle.block183:                                  ; preds = %vector.body174
  %cmp.n184 = icmp eq i64 %i.dh, %n.vec173
  br i1 %cmp.n184, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, label %.lr.ph.i.i.i56.preheader190

.lr.ph.i.i.i56.preheader190:                      ; preds = %vector.memcheck168, %.lr.ph.i.i.i56.preheader, %middle.block183
  %.010.i.i.i57.ph = phi ptr [ %i.dd, %vector.memcheck168 ], [ %i.dd, %.lr.ph.i.i.i56.preheader ], [ %i.dn, %middle.block183 ]
  %.079.i.i.i58.ph = phi ptr [ %1, %vector.memcheck168 ], [ %1, %.lr.ph.i.i.i56.preheader ], [ %i.do, %middle.block183 ]
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56.preheader190, %.lr.ph.i.i.i56
  %.010.i.i.i57 = phi ptr [ %i.dw, %.lr.ph.i.i.i56 ], [ %.010.i.i.i57.ph, %.lr.ph.i.i.i56.preheader190 ] ; 3 uses
  %.079.i.i.i58 = phi ptr [ %i.dv, %.lr.ph.i.i.i56 ], [ %.079.i.i.i58.ph, %.lr.ph.i.i.i56.preheader190 ] ; 4 uses
  %i.dr = load i32, ptr %.079.i.i.i58, align 4, !tbaa !254
  store i32 %i.dr, ptr %.010.i.i.i57, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i58, align 4, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 4
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !254
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !254
  store i32 0, ptr %i.ds, align 4, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i.i58, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dv, %.114.i51
  br i1 %.not.i.i.i59, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, label %.lr.ph.i.i.i56, !llvm.loop !4611

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61: ; preds = %.lr.ph.i.i.i56, %middle.block183
  %.lcssa = phi ptr [ %i.dn, %middle.block183 ], [ %i.dw, %.lr.ph.i.i.i56 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.dx, align 8, !tbaa !356
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61, %bb.m
  %.030.i = phi ptr [ %.1.i63, %bb.m ], [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.m ], [ %1, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 4 uses
  %.02128.i = phi ptr [ %i.ek, %bb.m ], [ %.114.i51, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignIS7_EEvT_m.exit61 ] ; 3 uses
  %i.dy = icmp eq ptr %0, %.01929.i
  br i1 %i.dy, label %.lr.ph.i.i.i65, label %bb.j

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i62, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.ea, %.lr.ph.i.i.i65 ], [ %.02128.i, %.lr.ph.i62 ] ; 2 uses
  %.079.i.i.i67 = phi ptr [ %i.dz, %.lr.ph.i.i.i65 ], [ %.030.i, %.lr.ph.i62 ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.079.i.i.i67, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.010.i.i.i66, i64 -8 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !254
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !254
  store i32 0, ptr %i.dz, align 4, !tbaa !254
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i.i67, i64 -4 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i.i66, i64 -4
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !254
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !254
  store i32 0, ptr %i.ec, align 4, !tbaa !254
  %.not.i.i.i68 = icmp eq ptr %i.dd, %i.dz
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i65, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph.i62
  %i.ef = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !254 ; 2 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !254 ; 2 uses
  %i.ej = icmp slt i32 %i.eh, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.ej, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !254
  store i32 0, ptr %i.eg, align 4, !tbaa !254
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !254
  store i32 0, ptr %i.ef, align 4, !tbaa !254
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.030.sink.i = phi ptr [ %.030.i, %bb.l ], [ %.01929.i, %bb.k ]
  %.120.i = phi ptr [ %.01929.i, %bb.l ], [ %i.eg, %bb.k ]
  %.1.i63 = phi ptr [ %i.ef, %bb.l ], [ %.030.i, %bb.k ] ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !254
  store i32 %i.en, ptr %i.el, align 4, !tbaa !254
  store i32 0, ptr %i.em, align 4, !tbaa !254
  %.not.i64 = icmp eq ptr %i.dd, %.1.i63
  br i1 %.not.i64, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i62, !llvm.loop !91

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.sink = phi ptr [ %i.q, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.dd, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.eo, align 8, !tbaa !356
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42, %bb.m, %.lr.ph.i.i.i65, %middle.block152, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %1, align 4, !tbaa !254    ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !254  ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 19 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.d, !llvm.loop !54

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i145.le = ptrtoaddr ptr %.114.i to i64    ; 2 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !267    ; 6 uses
  %i.w = add i64 %i.e, -8
  %i.x = sub i64 %i.w, %.114.i145.le              ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.aa = and i64 %i.x, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.v, %i.ad
  %bound1 = icmp ult ptr %.114.i, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387902      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.ag = getelementptr i8, ptr %.114.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah
  %next.gep146 = getelementptr i8, ptr %.114.i, i64 %i.ah ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !254, !alias.scope !4643
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254, !alias.scope !4644, !noalias !4643
  store <4 x i32> zeroinitializer, ptr %next.gep146, align 4, !tbaa !254, !alias.scope !4643
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !4621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.preheader.i ], [ %i.af, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.aj = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.aj, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !254
  store i32 %i.am, ptr %i.al, align 4, !tbaa !254
  store i32 0, ptr %i.ak, align 4, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4622

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %.not1731.i = icmp eq i64 %i.u, %i.s
  br i1 %.not1731.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %i.s to i32
  %i.aq = trunc i64 %i.u to i32
  %i.ar = sub i32 %i.ap, %i.aq
  %i.as = shl i32 %i.ar, 1
  %i.at = add i32 %i.as, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i = shl i64 %i.u, 3                     ; 4 uses
  %i.au = getelementptr i8, ptr %.114.i, i64 %.idx28.i ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.f
  %i.aw = add i64 %.idx28.i, -8                   ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.aw, 40
  br i1 %min.iters.check154, label %.lr.ph.i19.i.preheader267, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i19.i.preheader
  %i.az = getelementptr i8, ptr %i.av, i64 %.idx28.i
  %bound0156 = icmp ult ptr %i.av, %i.au
  %bound1157 = icmp ult ptr %.114.i, %i.az
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i19.i.preheader267, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %i.ay, 4611686018427387902  ; 3 uses
  %i.ba = shl i64 %n.vec160, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %.114.i, i64 %i.ba
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next169, %vector.body161 ] ; 2 uses
  %i.bd = shl i64 %index162, 3                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.av, i64 %i.bd
  %next.gep164 = getelementptr i8, ptr %.114.i, i64 %i.bd ; 2 uses
  %wide.vec165 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !254, !alias.scope !4645
  store <4 x i32> %wide.vec165, ptr %next.gep163, align 4, !tbaa !254, !alias.scope !4646, !noalias !4645
  store <4 x i32> zeroinitializer, ptr %next.gep164, align 4, !tbaa !254, !alias.scope !4645
  %index.next169 = add nuw i64 %index162, 2       ; 2 uses
  %i.be = icmp eq i64 %index.next169, %n.vec160
  br i1 %i.be, label %middle.block170, label %vector.body161, !llvm.loop !4626

middle.block170:                                  ; preds = %vector.body161
  %cmp.n171 = icmp eq i64 %i.ay, %n.vec160
  br i1 %cmp.n171, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i.preheader267

.lr.ph.i19.i.preheader267:                        ; preds = %vector.memcheck155, %.lr.ph.i19.i.preheader, %middle.block170
  %.010.i20.i.ph = phi ptr [ %i.av, %vector.memcheck155 ], [ %i.av, %.lr.ph.i19.i.preheader ], [ %i.bb, %middle.block170 ]
  %.079.i21.i.ph = phi ptr [ %.114.i, %vector.memcheck155 ], [ %.114.i, %.lr.ph.i19.i.preheader ], [ %i.bc, %middle.block170 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader267, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bk, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader267 ] ; 3 uses
  %.079.i21.i = phi ptr [ %i.bj, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader267 ] ; 4 uses
  %i.bf = load i32, ptr %.079.i21.i, align 4, !tbaa !254
  store i32 %i.bf, ptr %.010.i20.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !254
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !254
  store i32 0, ptr %i.bg, align 4, !tbaa !254
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i22.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !4627

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block170, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.av, %bb.f ], [ %i.bb, %middle.block170 ], [ %i.bk, %.lr.ph.i19.i ]
  %.not16.i.i = icmp eq i64 %.idx28.i, %i.r
  br i1 %.not16.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i, %.lr.ph.i25.i
  %.018.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 3 uses
  %.01217.i.i = phi ptr [ %i.br, %.lr.ph.i25.i ], [ %i.au, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i ] ; 4 uses
  %i.bl = load i32, ptr %.01217.i.i, align 4, !tbaa !254
  store i32 %i.bl, ptr %.018.i.i, align 4, !tbaa !254
  store i32 0, ptr %.01217.i.i, align 4, !tbaa !254
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !254
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !254
  store i32 0, ptr %i.bo, align 4, !tbaa !254
  %i.bq = add i32 %i.bm, 2
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.br = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.not.i26.i = icmp eq ptr %i.br, %1
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !44

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit: ; preds = %.lr.ph.i25.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, %.lr.ph.preheader.i, %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !266
  %i.bt = load ptr, ptr %3, align 8, !tbaa !267   ; 3 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i41, %bb.j ], [ %i.bt, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 12 uses
  %.01625.i = phi ptr [ %.117.i, %bb.j ], [ %1, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 6 uses
  %.01824.i = phi ptr [ %i.cz, %bb.j ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit ] ; 9 uses
  %i.bw = icmp eq ptr %.01625.i, %2
  br i1 %i.bw, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.026.i175.le = ptrtoaddr ptr %.026.i to i64
  %i.bx = add i64 %i.bu, %i.e
  %i.by = add i64 %i.bx, -8
  %i.bz = add i64 %.114.i145.le, %.026.i175.le
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.ca, 120
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.preheader260, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cd = shl i64 %indvar, 3
  %4 = and i64 %i.ca, -8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.114.i, i64 %i.cd
  %5 = getelementptr i8, ptr %scevgep, i64 8
  %scevgep176 = getelementptr i8, ptr %5, i64 %4
  %scevgep177 = getelementptr i8, ptr %.026.i, i64 %4
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 8
  %bound0179 = icmp ult ptr %.01824.i, %scevgep178
  %bound1180 = icmp ult ptr %.026.i, %scevgep176
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.preheader260, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck174
  %n.vec185 = and i64 %i.cc, 4611686018427387902  ; 3 uses
  %i.ce = shl i64 %n.vec185, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %.01824.i, i64 %i.ce
  %i.cg = getelementptr i8, ptr %.026.i, i64 %i.ce
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body186 ] ; 2 uses
  %i.ch = shl i64 %index187, 3                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %.01824.i, i64 %i.ch
  %next.gep189 = getelementptr i8, ptr %.026.i, i64 %i.ch ; 2 uses
  %wide.vec190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !254, !alias.scope !4647
  store <4 x i32> %wide.vec190, ptr %next.gep188, align 4, !tbaa !254, !alias.scope !4648, !noalias !4647
  store <4 x i32> zeroinitializer, ptr %next.gep189, align 4, !tbaa !254, !alias.scope !4647
  %index.next194 = add nuw i64 %index187, 2       ; 2 uses
  %i.ci = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.ci, label %middle.block195, label %vector.body186, !llvm.loop !4631

middle.block195:                                  ; preds = %vector.body186
  %cmp.n196 = icmp eq i64 %i.cc, %n.vec185
  br i1 %cmp.n196, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i.preheader260

.lr.ph.i.i.i.preheader260:                        ; preds = %vector.memcheck174, %.lr.ph.i.i.i.preheader, %middle.block195
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck174 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.cf, %middle.block195 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck174 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.cg, %middle.block195 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader260, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader260 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader260 ] ; 4 uses
  %i.cj = load i32, ptr %.079.i.i.i, align 4, !tbaa !254
  store i32 %i.cj, ptr %.010.i.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !254
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !254
  store i32 0, ptr %i.ck, align 4, !tbaa !254
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.cn, %i.bv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4632

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cp = load i32, ptr %.01625.i, align 4, !tbaa !254 ; 2 uses
  %i.cq = load i32, ptr %.026.i, align 4, !tbaa !254 ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.cp, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.01625.i, align 4, !tbaa !254
  %i.ct = getelementptr inbounds nuw i8, ptr %.01625.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !254
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.ct, align 4, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.01625.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.cq, ptr %.01824.i, align 4, !tbaa !254
  store i32 0, ptr %.026.i, align 4, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !254
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !254
  store i32 0, ptr %i.cw, align 4, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i = phi ptr [ %i.cv, %bb.h ], [ %.01625.i, %bb.i ]
  %.1.i41 = phi ptr [ %.026.i, %bb.h ], [ %i.cy, %bb.i ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.01824.i, i64 8
  %.not.i42 = icmp eq ptr %.1.i41, %i.bv
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_SE_NS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !50

.lr.ph.i44:                                       ; preds = %bb.c
  %i.da = ashr exact i64 %i.i, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i44
  %.017.i45 = phi i64 [ %i.da, %.lr.ph.i44 ], [ %.1.i49, %bb.k ] ; 2 uses
  %.01316.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i48, %bb.k ] ; 2 uses
  %i.db = lshr i64 %.017.i45, 1                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.01316.i46, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !254
  %i.de = icmp slt i32 %i.dd, %i.c                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.neg.i47 = xor i64 %i.db, -1
  %i.dg = add i64 %.017.i45, %.neg.i47
  %.114.i48 = select i1 %i.de, ptr %i.df, ptr %.01316.i46 ; 8 uses
  %.1.i49 = select i1 %i.de, i64 %i.dg, i64 %i.db ; 2 uses
  %.not.i50 = icmp eq i64 %.1.i49, 0
  br i1 %.not.i50, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %bb.k, !llvm.loop !51

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.k
  %.114.i48208.le = ptrtoaddr ptr %.114.i48 to i64
  %i.dh = ptrtoint ptr %.114.i48 to i64
  %i.di = sub i64 %i.dh, %i.e                     ; 3 uses
  %i.dj = ashr exact i64 %i.di, 3                 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !266 ; 5 uses
  %.not.i52 = icmp ugt i64 %i.dj, %i.dl
  br i1 %.not.i52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.not8.i.i53 = icmp eq ptr %.114.i48, %1
  br i1 %.not8.i.i53, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.preheader.i54

.lr.ph.i.preheader.i54:                           ; preds = %bb.l
  %i.dm = load ptr, ptr %3, align 8, !tbaa !267   ; 6 uses
  %i.dn = add i64 %.114.i48208.le, -8
  %i.do = sub i64 %i.dn, %i.e                     ; 3 uses
  %i.dp = lshr i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.do, 72
  br i1 %min.iters.check210, label %.lr.ph.i.i55.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i.preheader.i54
  %i.dr = and i64 %i.do, -8
  %i.ds = add i64 %i.dr, 8                        ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dm, i64 %i.ds
  %i.du = getelementptr i8, ptr %1, i64 %i.ds
  %bound0212 = icmp ult ptr %i.dm, %i.du
  %bound1213 = icmp ult ptr %1, %i.dt
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %.lr.ph.i.i55.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck211
  %n.vec216 = and i64 %i.dq, 4611686018427387902  ; 3 uses
  %i.dv = shl i64 %n.vec216, 3                    ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.dv
  %i.dx = getelementptr i8, ptr %1, i64 %i.dv
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next225, %vector.body217 ] ; 2 uses
  %i.dy = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.dm, i64 %i.dy
  %next.gep220 = getelementptr i8, ptr %1, i64 %i.dy ; 2 uses
  %wide.vec221 = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !254, !alias.scope !4649
  store <4 x i32> %wide.vec221, ptr %next.gep219, align 4, !tbaa !254, !alias.scope !4650, !noalias !4649
  store <4 x i32> zeroinitializer, ptr %next.gep220, align 4, !tbaa !254, !alias.scope !4649
  %index.next225 = add nuw i64 %index218, 2       ; 2 uses
  %i.dz = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.dz, label %middle.block226, label %vector.body217, !llvm.loop !4636

middle.block226:                                  ; preds = %vector.body217
  %cmp.n227 = icmp eq i64 %i.dq, %n.vec216
  br i1 %cmp.n227, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %vector.memcheck211, %.lr.ph.i.preheader.i54, %middle.block226
  %.010.i.i56.ph = phi ptr [ %i.dm, %vector.memcheck211 ], [ %i.dm, %.lr.ph.i.preheader.i54 ], [ %i.dw, %middle.block226 ]
  %.079.i.i57.ph = phi ptr [ %1, %vector.memcheck211 ], [ %1, %.lr.ph.i.preheader.i54 ], [ %i.dx, %middle.block226 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.ef, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 3 uses
  %.079.i.i57 = phi ptr [ %i.ee, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader ] ; 4 uses
  %i.ea = load i32, ptr %.079.i.i57, align 4, !tbaa !254
  store i32 %i.ea, ptr %.010.i.i56, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i57, align 4, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !254
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !254
  store i32 0, ptr %i.eb, align 4, !tbaa !254
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 8
  %.not.i.i58 = icmp eq ptr %i.ee, %.114.i48
  br i1 %.not.i.i58, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59, label %.lr.ph.i.i55, !llvm.loop !4637

_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59: ; preds = %.lr.ph.i.i55, %middle.block226, %bb.l
  %.not1731.i60 = icmp eq i64 %i.dl, %i.dj
  br i1 %.not1731.i60, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76, label %.lr.ph.preheader.i61

.lr.ph.preheader.i61:                             ; preds = %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i59
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i62 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.eg = trunc i64 %i.dj to i32
  %i.eh = trunc i64 %i.dl to i32
  %i.ei = sub i32 %i.eg, %i.eh
  %i.ej = shl i32 %i.ei, 1
  %i.ek = add i32 %i.ej, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i62
  store i32 %i.ek, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignIS7_EEvT_m.exit76

bb.m:                                             ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit
  %.idx28.i63 = shl i64 %i.dl, 3                  ; 4 uses
  %i.el = getelementptr i8, ptr %1, i64 %.idx28.i63 ; 3 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !267   ; 7 uses
  %.not8.i18.i64 = icmp eq i64 %i.dl, 0
  br i1 %.not8.i18.i64, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit24.i69, label %.lr.ph.i19.i65.preheader
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %i.eu = shl i64 %n.vec393, 3                    ; 3 uses
  %i.ev = getelementptr i8, ptr %7, i64 %i.eu     ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.eb, i64 %i.eu
  br label %vector.body394

vector.body394:                                   ; preds = %vector.body394, %vector.ph392
  %index395 = phi i64 [ 0, %vector.ph392 ], [ %index.next407, %vector.body394 ] ; 2 uses
  %i.ey = shl i64 %index395, 3                    ; 3 uses
  %next.gep396 = getelementptr i8, ptr %7, i64 %i.ey
  %next.gep397 = getelementptr i8, ptr %i.eh, i64 %i.ey ; 3 uses
  %next.gep398 = getelementptr i8, ptr %i.eb, i64 %i.ey ; 2 uses
  %wide.vec399 = load <4 x i32>, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4699, !noalias !4700
  store <4 x i32> %wide.vec399, ptr %next.gep396, align 4, !tbaa !254, !alias.scope !4701, !noalias !4702
  store <4 x i32> zeroinitializer, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4699, !noalias !4700
  %wide.vec403 = load <4 x i32>, ptr %next.gep398, align 4, !tbaa !254, !alias.scope !4700
  store <4 x i32> %wide.vec403, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4699, !noalias !4700
  store <4 x i32> zeroinitializer, ptr %next.gep398, align 4, !tbaa !254, !alias.scope !4700
  %index.next407 = add nuw i64 %index395, 2       ; 2 uses
  %i.ez = icmp eq i64 %index.next407, %n.vec393
  br i1 %i.ez, label %middle.block408, label %vector.body394, !llvm.loop !4672

middle.block408:                                  ; preds = %vector.body394
  %cmp.n409 = icmp eq i64 %i.em, %n.vec393
  br i1 %cmp.n409, label %._crit_edge.i134, label %.lr.ph.i129.preheader473

.lr.ph.i129.preheader473:                         ; preds = %vector.memcheck372, %.lr.ph.i129.preheader, %middle.block408
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck372 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ev, %middle.block408 ] ; 4 uses
  %.02032.i131.ph = phi ptr [ %i.eh, %vector.memcheck372 ], [ %i.eh, %.lr.ph.i129.preheader ], [ %i.ew, %middle.block408 ] ; 6 uses
  %.02131.i132.ph = phi ptr [ %i.eb, %vector.memcheck372 ], [ %i.eb, %.lr.ph.i129.preheader ], [ %i.ex, %middle.block408 ] ; 6 uses
  %.02131.i132.ph476 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fa = sub i64 %i.ej, %.02131.i132.ph476       ; 2 uses
  %i.fb = and i64 %i.fa, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i129.prol, label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader473
  %i.fc = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 8 ; 2 uses
  %i.ff = load i32, ptr %.02032.i131.ph, align 4, !tbaa !254
  store i32 %i.ff, ptr %.033.i130.ph, align 4, !tbaa !254
  store i32 0, ptr %.02032.i131.ph, align 4, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 4 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 4
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !254
  store i32 0, ptr %i.fg, align 4, !tbaa !254
  %i.fj = load i32, ptr %.02131.i132.ph, align 4, !tbaa !254
  store i32 %i.fj, ptr %.02032.i131.ph, align 4, !tbaa !254
  store i32 0, ptr %.02131.i132.ph, align 4, !tbaa !254
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !254
  store i32 %i.fl, ptr %i.fg, align 4, !tbaa !254
  store i32 0, ptr %i.fk, align 4, !tbaa !254
  br label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader473
  %.lcssa474.unr = phi ptr [ poison, %.lr.ph.i129.preheader473 ], [ %i.fe, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader473 ], [ %i.fe, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader473 ], [ %i.fd, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader473 ], [ %i.fc, %.lr.ph.i129.prol ]
  %i.fm = icmp ult i64 %i.fa, 8
  br i1 %i.fm, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fz, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fy, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fx, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fq = load i32, ptr %.02032.i131, align 4, !tbaa !254
  store i32 %i.fq, ptr %.033.i130, align 4, !tbaa !254
  store i32 0, ptr %.02032.i131, align 4, !tbaa !254
  %i.fr = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !254
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !254
  store i32 0, ptr %i.fr, align 4, !tbaa !254
  %i.fu = load i32, ptr %.02131.i132, align 4, !tbaa !254
  store i32 %i.fu, ptr %.02032.i131, align 4, !tbaa !254
  store i32 0, ptr %.02131.i132, align 4, !tbaa !254
  %i.fv = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !254
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !254
  store i32 0, ptr %i.fv, align 4, !tbaa !254
  %i.fx = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !254
  store i32 %i.ga, ptr %i.fp, align 4, !tbaa !254
  store i32 0, ptr %i.fo, align 4, !tbaa !254
  %i.gb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !254
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !254
  store i32 0, ptr %i.gb, align 4, !tbaa !254
  %i.ge = load i32, ptr %i.fn, align 4, !tbaa !254
  store i32 %i.ge, ptr %i.fo, align 4, !tbaa !254
  store i32 0, ptr %i.fn, align 4, !tbaa !254
  %i.gf = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !254
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !254
  store i32 0, ptr %i.gf, align 4, !tbaa !254
  %.not28.i133.1 = icmp eq ptr %i.fx, %i.br
  br i1 %.not28.i133.1, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !4673

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block408, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ev, %middle.block408 ], [ %.lcssa474.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fz, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gh = load <2 x i32>, ptr %i.bw, align 4, !tbaa !254
  store i32 0, ptr %i.bw, align 4, !tbaa !254
  %i.gi = load <2 x i32>, ptr %.0106223, align 4, !tbaa !254
  store <2 x i32> %i.gi, ptr %i.bw, align 4, !tbaa !254
  store <2 x i32> %i.gh, ptr %.0106223, align 4, !tbaa !254
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gj = icmp eq ptr %i.bw, %.0191218
  br i1 %i.gj, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gk = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gk, ptr %i.bw, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !262
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = load <2 x i32>, ptr %i.bw, align 4, !tbaa !254
  store i32 0, ptr %i.bw, align 4, !tbaa !254
  %i.gm = load <2 x i32>, ptr %.0106223, align 4, !tbaa !254
  store <2 x i32> %i.gm, ptr %i.bw, align 4, !tbaa !254
  store <2 x i32> %i.gl, ptr %.0106223, align 4, !tbaa !254
  %i.gn = icmp eq ptr %i.bw, %.0191218
  br i1 %i.gn, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.go, ptr %i.bw, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140
  %i.gp = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140 ], [ %i.dz, %bb.u ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ]
  %i.gq = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140 ], [ %i.dy, %bb.u ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gr = xor i1 %i.dw, %i.ea
  %i.gs = zext i1 %i.gr to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.gt = phi ptr [ %i.gp, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.gu = phi ptr [ %i.gq, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.gv = phi i1 [ %i.dv, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dx, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %i.aq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gs, %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEEvT_S9_RS9_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gv, true
  %i.gw = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.br, ptr %i.d, align 8, !tbaa !262
  %i.gy = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.gz = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gz to i64
  %i.ha = add i64 %.0104226, %.neg
  %i.hb = icmp ne i64 %i.bn, 0
  %.neg122 = sext i1 %i.hb to i64
  %i.hc = add i64 %.sroa.speculated180, %.neg122
  %i.hd = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hd, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4674

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.he = phi ptr [ %i.gt, %bb.x ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.hf = phi ptr [ %i.gu, %bb.x ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gx, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hg = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hh = select i1 %i.hg, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hf, %i.he
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hi = ptrtoaddr ptr %i.hf to i64
  %i.hj = ptrtoaddr ptr %i.he to i64
  %i.hk = add i64 %i.hj, -8
  %i.hl = sub i64 %i.hk, %i.hi                    ; 3 uses
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %min.iters.check420 = icmp ult i64 %i.hl, 72
  br i1 %min.iters.check420, label %.lr.ph.i.i145.preheader470, label %vector.memcheck421

vector.memcheck421:                               ; preds = %.lr.ph.i.i145.preheader
  %i.ho = and i64 %i.hl, -8
  %i.hp = add i64 %i.ho, 8                        ; 2 uses
  %i.hq = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hf, i64 %i.hp
  %bound0422 = icmp ult ptr %.0114.lcssa.ph, %i.hr
  %bound1423 = icmp ult ptr %i.hf, %i.hq
  %found.conflict424 = and i1 %bound0422, %bound1423
  br i1 %found.conflict424, label %.lr.ph.i.i145.preheader470, label %vector.ph425

vector.ph425:                                     ; preds = %vector.memcheck421
  %n.vec426 = and i64 %i.hn, 4611686018427387902  ; 3 uses
  %i.hs = shl i64 %n.vec426, 3                    ; 2 uses
  %i.ht = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.hf, i64 %i.hs
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next435, %vector.body427 ] ; 2 uses
  %i.hv = shl i64 %index428, 3                    ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hv
  %next.gep430 = getelementptr i8, ptr %i.hf, i64 %i.hv ; 2 uses
  %wide.vec431 = load <4 x i32>, ptr %next.gep430, align 4, !tbaa !254, !alias.scope !4703
  store <4 x i32> %wide.vec431, ptr %next.gep429, align 4, !tbaa !254, !alias.scope !4704, !noalias !4703
  store <4 x i32> zeroinitializer, ptr %next.gep430, align 4, !tbaa !254, !alias.scope !4703
  %index.next435 = add nuw i64 %index428, 2       ; 2 uses
  %i.hw = icmp eq i64 %index.next435, %n.vec426
  br i1 %i.hw, label %middle.block436, label %vector.body427, !llvm.loop !4678

middle.block436:                                  ; preds = %vector.body427
  %cmp.n437 = icmp eq i64 %i.hn, %n.vec426
  br i1 %cmp.n437, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145.preheader470

.lr.ph.i.i145.preheader470:                       ; preds = %vector.memcheck421, %.lr.ph.i.i145.preheader, %middle.block436
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck421 ], [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.ht, %middle.block436 ]
  %.079.i.i147.ph = phi ptr [ %i.hf, %vector.memcheck421 ], [ %i.hf, %.lr.ph.i.i145.preheader ], [ %i.hu, %middle.block436 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader470, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.ic, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader470 ] ; 3 uses
  %.079.i.i147 = phi ptr [ %i.ib, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader470 ] ; 4 uses
  %i.hx = load i32, ptr %.079.i.i147, align 4, !tbaa !254
  store i32 %i.hx, ptr %.010.i.i146, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i147, align 4, !tbaa !254
  %i.hy = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !254
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !254
  store i32 0, ptr %i.hy, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.ib, %i.he
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145, !llvm.loop !4679

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150: ; preds = %.lr.ph.i.i145, %middle.block436, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hh, %.thread ], [ %i.hh, %middle.block436 ], [ %i.hh, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block436 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa284 = phi ptr [ %i.f, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %middle.block436 ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %middle.block436 ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 3 uses
  %i.id = getelementptr i8, ptr %i.i, i64 %.idx210 ; 3 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  %i.ie = add i64 %.idx210, -8                    ; 2 uses
  %i.if = lshr exact i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check446 = icmp ult i64 %i.ie, 40
  br i1 %min.iters.check446, label %.lr.ph.i.i152.preheader469, label %vector.memcheck447

vector.memcheck447:                               ; preds = %.lr.ph.i.i152.preheader
  %i.ih = getelementptr i8, ptr %7, i64 %.idx210
  %bound0448 = icmp ult ptr %7, %i.id
  %bound1449 = icmp ult ptr %i.i, %i.ih
  %found.conflict450 = and i1 %bound0448, %bound1449
  br i1 %found.conflict450, label %.lr.ph.i.i152.preheader469, label %vector.ph451

vector.ph451:                                     ; preds = %vector.memcheck447
  %n.vec452 = and i64 %i.ig, 4611686018427387902  ; 3 uses
  %i.ii = shl i64 %n.vec452, 3                    ; 2 uses
  %i.ij = getelementptr i8, ptr %7, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.i, i64 %i.ii
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph451
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next461, %vector.body453 ] ; 2 uses
  %i.il = shl i64 %index454, 3                    ; 2 uses
  %next.gep455 = getelementptr i8, ptr %7, i64 %i.il
  %next.gep456 = getelementptr i8, ptr %i.i, i64 %i.il ; 2 uses
  %wide.vec457 = load <4 x i32>, ptr %next.gep456, align 4, !tbaa !254, !alias.scope !4705
  store <4 x i32> %wide.vec457, ptr %next.gep455, align 4, !tbaa !254, !alias.scope !4706, !noalias !4705
  store <4 x i32> zeroinitializer, ptr %next.gep456, align 4, !tbaa !254, !alias.scope !4705
  %index.next461 = add nuw i64 %index454, 2       ; 2 uses
  %i.im = icmp eq i64 %index.next461, %n.vec452
  br i1 %i.im, label %middle.block462, label %vector.body453, !llvm.loop !4683

middle.block462:                                  ; preds = %vector.body453
  %cmp.n463 = icmp eq i64 %i.ig, %n.vec452
  br i1 %cmp.n463, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader469

.lr.ph.i.i152.preheader469:                       ; preds = %vector.memcheck447, %.lr.ph.i.i152.preheader, %middle.block462
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck447 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.ij, %middle.block462 ]
  %.079.i.i154.ph = phi ptr [ %i.i, %vector.memcheck447 ], [ %i.i, %.lr.ph.i.i152.preheader ], [ %i.ik, %middle.block462 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader469, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.is, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader469 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.ir, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader469 ] ; 4 uses
  %i.in = load i32, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 %i.in, ptr %.010.i.i153, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !254
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !254
  store i32 0, ptr %i.io, align 4, !tbaa !254
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.ir, %i.id
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !4684

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152, %middle.block462, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.it, ptr %i.c, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.it, ptr %10, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %4
  store ptr %i.iv, ptr %12, align 8, !tbaa !345, !alias.scope !4707
  store ptr %.0191.lcssa284, ptr %13, align 8, !tbaa !345, !alias.scope !4708
  store ptr %i.i, ptr %14, align 8, !tbaa !345, !alias.scope !4709
  store ptr %7, ptr %15, align 8, !tbaa !345, !alias.scope !4710
  store ptr %i.id, ptr %16, align 8, !tbaa !345, !alias.scope !4711
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SJ_NS0_7move_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.91") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa283, i64 noundef 0, i64 noundef %.0195.lcssa283, i1 noundef zeroext true)
  %i.iw = load ptr, ptr %11, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ix = load ptr, ptr %10, align 8, !tbaa !345  ; 2 uses
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !262 ; 3 uses
  %.not27.i = icmp eq ptr %i.iy, %i.ix
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ix, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.jl, %bb.ab ], [ %i.iw, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.iz = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.iz, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 4 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !254
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !254
  store i32 0, ptr %i.ja, align 4, !tbaa !254
  %i.jd = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !254
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !254
  store i32 0, ptr %i.jd, align 4, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.iy, %i.ja
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

bb.y:                                             ; preds = %.lr.ph.i158
  %i.jg = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !254 ; 2 uses
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !254 ; 2 uses
  %i.jk = icmp slt i32 %i.ji, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.jk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !254
  store i32 0, ptr %i.jh, align 4, !tbaa !254
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.ji, ptr %i.jl, align 4, !tbaa !254
  store i32 0, ptr %i.jg, align 4, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.jh, %bb.z ]
  %.1.i159 = phi ptr [ %i.jg, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !254
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !254
  store i32 0, ptr %i.jn, align 4, !tbaa !254
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
vector.ph392:                                     ; preds = %vector.memcheck372
  %n.vec393 = and i64 %i.em, 4611686018427387902  ; 3 uses
  %i.eu = shl i64 %n.vec393, 3                    ; 3 uses
  %i.ev = getelementptr i8, ptr %7, i64 %i.eu     ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.eb, i64 %i.eu
  br label %vector.body394

vector.body394:                                   ; preds = %vector.body394, %vector.ph392
  %index395 = phi i64 [ 0, %vector.ph392 ], [ %index.next407, %vector.body394 ] ; 2 uses
  %i.ey = shl i64 %index395, 3                    ; 3 uses
  %next.gep396 = getelementptr i8, ptr %7, i64 %i.ey
  %next.gep397 = getelementptr i8, ptr %i.eh, i64 %i.ey ; 3 uses
  %next.gep398 = getelementptr i8, ptr %i.eb, i64 %i.ey ; 2 uses
  %wide.vec399 = load <4 x i32>, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4774, !noalias !4775
  store <4 x i32> %wide.vec399, ptr %next.gep396, align 4, !tbaa !254, !alias.scope !4776, !noalias !4777
  store <4 x i32> zeroinitializer, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4774, !noalias !4775
  %wide.vec403 = load <4 x i32>, ptr %next.gep398, align 4, !tbaa !254, !alias.scope !4775
  store <4 x i32> %wide.vec403, ptr %next.gep397, align 4, !tbaa !254, !alias.scope !4774, !noalias !4775
  store <4 x i32> zeroinitializer, ptr %next.gep398, align 4, !tbaa !254, !alias.scope !4775
  %index.next407 = add nuw i64 %index395, 2       ; 2 uses
  %i.ez = icmp eq i64 %index.next407, %n.vec393
  br i1 %i.ez, label %middle.block408, label %vector.body394, !llvm.loop !4747

middle.block408:                                  ; preds = %vector.body394
  %cmp.n409 = icmp eq i64 %i.em, %n.vec393
  br i1 %cmp.n409, label %._crit_edge.i134, label %.lr.ph.i129.preheader473

.lr.ph.i129.preheader473:                         ; preds = %vector.memcheck372, %.lr.ph.i129.preheader, %middle.block408
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck372 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ev, %middle.block408 ] ; 4 uses
  %.02032.i131.ph = phi ptr [ %i.eh, %vector.memcheck372 ], [ %i.eh, %.lr.ph.i129.preheader ], [ %i.ew, %middle.block408 ] ; 6 uses
  %.02131.i132.ph = phi ptr [ %i.eb, %vector.memcheck372 ], [ %i.eb, %.lr.ph.i129.preheader ], [ %i.ex, %middle.block408 ] ; 6 uses
  %.02131.i132.ph476 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fa = sub i64 %i.ej, %.02131.i132.ph476       ; 2 uses
  %i.fb = and i64 %i.fa, 8
  %lcmp.mod.not.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i129.prol, label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader473
  %i.fc = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 8 ; 2 uses
  %i.ff = load i32, ptr %.02032.i131.ph, align 4, !tbaa !254
  store i32 %i.ff, ptr %.033.i130.ph, align 4, !tbaa !254
  store i32 0, ptr %.02032.i131.ph, align 4, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.02032.i131.ph, i64 4 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.033.i130.ph, i64 4
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !254
  store i32 0, ptr %i.fg, align 4, !tbaa !254
  %i.fj = load i32, ptr %.02131.i132.ph, align 4, !tbaa !254
  store i32 %i.fj, ptr %.02032.i131.ph, align 4, !tbaa !254
  store i32 0, ptr %.02131.i132.ph, align 4, !tbaa !254
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132.ph, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !254
  store i32 %i.fl, ptr %i.fg, align 4, !tbaa !254
  store i32 0, ptr %i.fk, align 4, !tbaa !254
  br label %.lr.ph.i129.prol.loopexit

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader473
  %.lcssa474.unr = phi ptr [ poison, %.lr.ph.i129.preheader473 ], [ %i.fe, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader473 ], [ %i.fe, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader473 ], [ %i.fd, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader473 ], [ %i.fc, %.lr.ph.i129.prol ]
  %i.fm = icmp ult i64 %i.fa, 8
  br i1 %i.fm, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fz, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fy, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fx, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fq = load i32, ptr %.02032.i131, align 4, !tbaa !254
  store i32 %i.fq, ptr %.033.i130, align 4, !tbaa !254
  store i32 0, ptr %.02032.i131, align 4, !tbaa !254
  %i.fr = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !254
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !254
  store i32 0, ptr %i.fr, align 4, !tbaa !254
  %i.fu = load i32, ptr %.02131.i132, align 4, !tbaa !254
  store i32 %i.fu, ptr %.02032.i131, align 4, !tbaa !254
  store i32 0, ptr %.02131.i132, align 4, !tbaa !254
  %i.fv = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !254
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !254
  store i32 0, ptr %i.fv, align 4, !tbaa !254
  %i.fx = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !254
  store i32 %i.ga, ptr %i.fp, align 4, !tbaa !254
  store i32 0, ptr %i.fo, align 4, !tbaa !254
  %i.gb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !254
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !254
  store i32 0, ptr %i.gb, align 4, !tbaa !254
  %i.ge = load i32, ptr %i.fn, align 4, !tbaa !254
  store i32 %i.ge, ptr %i.fo, align 4, !tbaa !254
  store i32 0, ptr %i.fn, align 4, !tbaa !254
  %i.gf = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !254
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !254
  store i32 0, ptr %i.gf, align 4, !tbaa !254
  %.not28.i133.1 = icmp eq ptr %i.fx, %i.br
  br i1 %.not28.i133.1, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !4748

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block408, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ev, %middle.block408 ], [ %.lcssa474.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fz, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gh = load i64, ptr %i.bw, align 8, !tbaa !226
  %i.gi = load i64, ptr %.0106223, align 8, !tbaa !226
  store i64 %i.gi, ptr %i.bw, align 8, !tbaa !226
  store i64 %i.gh, ptr %.0106223, align 8, !tbaa !226
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gj = icmp eq ptr %i.bw, %.0191218
  br i1 %i.gj, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gk = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gk, ptr %i.bw, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !262
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_NS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = load i64, ptr %i.bw, align 8, !tbaa !226
  %i.gm = load i64, ptr %.0106223, align 8, !tbaa !226
  store i64 %i.gm, ptr %i.bw, align 8, !tbaa !226
  store i64 %i.gl, ptr %.0106223, align 8, !tbaa !226
  %i.gn = icmp eq ptr %i.bw, %.0191218
  br i1 %i.gn, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.go, ptr %i.bw, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140
  %i.gp = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140 ], [ %i.dz, %bb.u ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ]
  %i.gq = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140 ], [ %i.dy, %bb.u ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gr = xor i1 %i.dw, %i.ea
  %i.gs = zext i1 %i.gr to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit
  %i.gt = phi ptr [ %i.gp, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %i.gu = phi ptr [ %i.gq, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %i.gv = phi i1 [ %i.dv, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dx, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.aq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gs, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gv, true
  %i.gw = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.br, ptr %i.d, align 8, !tbaa !262
  %i.gy = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.gz = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gz to i64
  %i.ha = add i64 %.0104226, %.neg
  %i.hb = icmp ne i64 %i.bn, 0
  %.neg122 = sext i1 %i.hb to i64
  %i.hc = add i64 %.sroa.speculated180, %.neg122
  %i.hd = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hd, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4749

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.he = phi ptr [ %i.gt, %bb.x ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.hf = phi ptr [ %i.gu, %bb.x ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gx, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hg = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hh = select i1 %i.hg, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hf, %i.he
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hi = ptrtoaddr ptr %i.hf to i64
  %i.hj = ptrtoaddr ptr %i.he to i64
  %i.hk = add i64 %i.hj, -8
  %i.hl = sub i64 %i.hk, %i.hi                    ; 3 uses
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %min.iters.check420 = icmp ult i64 %i.hl, 72
  br i1 %min.iters.check420, label %.lr.ph.i.i145.preheader470, label %vector.memcheck421

vector.memcheck421:                               ; preds = %.lr.ph.i.i145.preheader
  %i.ho = and i64 %i.hl, -8
  %i.hp = add i64 %i.ho, 8                        ; 2 uses
  %i.hq = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hf, i64 %i.hp
  %bound0422 = icmp ult ptr %.0114.lcssa.ph, %i.hr
  %bound1423 = icmp ult ptr %i.hf, %i.hq
  %found.conflict424 = and i1 %bound0422, %bound1423
  br i1 %found.conflict424, label %.lr.ph.i.i145.preheader470, label %vector.ph425

vector.ph425:                                     ; preds = %vector.memcheck421
  %n.vec426 = and i64 %i.hn, 4611686018427387902  ; 3 uses
  %i.hs = shl i64 %n.vec426, 3                    ; 2 uses
  %i.ht = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.hf, i64 %i.hs
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next435, %vector.body427 ] ; 2 uses
  %i.hv = shl i64 %index428, 3                    ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hv
  %next.gep430 = getelementptr i8, ptr %i.hf, i64 %i.hv ; 2 uses
  %wide.vec431 = load <4 x i32>, ptr %next.gep430, align 4, !tbaa !254, !alias.scope !4778
  store <4 x i32> %wide.vec431, ptr %next.gep429, align 4, !tbaa !254, !alias.scope !4779, !noalias !4778
  store <4 x i32> zeroinitializer, ptr %next.gep430, align 4, !tbaa !254, !alias.scope !4778
  %index.next435 = add nuw i64 %index428, 2       ; 2 uses
  %i.hw = icmp eq i64 %index.next435, %n.vec426
  br i1 %i.hw, label %middle.block436, label %vector.body427, !llvm.loop !4753

middle.block436:                                  ; preds = %vector.body427
  %cmp.n437 = icmp eq i64 %i.hn, %n.vec426
  br i1 %cmp.n437, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145.preheader470

.lr.ph.i.i145.preheader470:                       ; preds = %vector.memcheck421, %.lr.ph.i.i145.preheader, %middle.block436
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck421 ], [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.ht, %middle.block436 ]
  %.079.i.i147.ph = phi ptr [ %i.hf, %vector.memcheck421 ], [ %i.hf, %.lr.ph.i.i145.preheader ], [ %i.hu, %middle.block436 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader470, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.ic, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader470 ] ; 3 uses
  %.079.i.i147 = phi ptr [ %i.ib, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader470 ] ; 4 uses
  %i.hx = load i32, ptr %.079.i.i147, align 4, !tbaa !254
  store i32 %i.hx, ptr %.010.i.i146, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i147, align 4, !tbaa !254
  %i.hy = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !254
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !254
  store i32 0, ptr %i.hy, align 4, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.ib, %i.he
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145, !llvm.loop !4754

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150: ; preds = %.lr.ph.i.i145, %middle.block436, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hh, %.thread ], [ %i.hh, %middle.block436 ], [ %i.hh, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block436 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa284 = phi ptr [ %i.f, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %middle.block436 ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %middle.block436 ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 3 uses
  %i.id = getelementptr i8, ptr %i.i, i64 %.idx210 ; 3 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  %i.ie = add i64 %.idx210, -8                    ; 2 uses
  %i.if = lshr exact i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check446 = icmp ult i64 %i.ie, 40
  br i1 %min.iters.check446, label %.lr.ph.i.i152.preheader469, label %vector.memcheck447

vector.memcheck447:                               ; preds = %.lr.ph.i.i152.preheader
  %i.ih = getelementptr i8, ptr %7, i64 %.idx210
  %bound0448 = icmp ult ptr %7, %i.id
  %bound1449 = icmp ult ptr %i.i, %i.ih
  %found.conflict450 = and i1 %bound0448, %bound1449
  br i1 %found.conflict450, label %.lr.ph.i.i152.preheader469, label %vector.ph451

vector.ph451:                                     ; preds = %vector.memcheck447
  %n.vec452 = and i64 %i.ig, 4611686018427387902  ; 3 uses
  %i.ii = shl i64 %n.vec452, 3                    ; 2 uses
  %i.ij = getelementptr i8, ptr %7, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.i, i64 %i.ii
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph451
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next461, %vector.body453 ] ; 2 uses
  %i.il = shl i64 %index454, 3                    ; 2 uses
  %next.gep455 = getelementptr i8, ptr %7, i64 %i.il
  %next.gep456 = getelementptr i8, ptr %i.i, i64 %i.il ; 2 uses
  %wide.vec457 = load <4 x i32>, ptr %next.gep456, align 4, !tbaa !254, !alias.scope !4780
  store <4 x i32> %wide.vec457, ptr %next.gep455, align 4, !tbaa !254, !alias.scope !4781, !noalias !4780
  store <4 x i32> zeroinitializer, ptr %next.gep456, align 4, !tbaa !254, !alias.scope !4780
  %index.next461 = add nuw i64 %index454, 2       ; 2 uses
  %i.im = icmp eq i64 %index.next461, %n.vec452
  br i1 %i.im, label %middle.block462, label %vector.body453, !llvm.loop !4758

middle.block462:                                  ; preds = %vector.body453
  %cmp.n463 = icmp eq i64 %i.ig, %n.vec452
  br i1 %cmp.n463, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader469

.lr.ph.i.i152.preheader469:                       ; preds = %vector.memcheck447, %.lr.ph.i.i152.preheader, %middle.block462
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck447 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.ij, %middle.block462 ]
  %.079.i.i154.ph = phi ptr [ %i.i, %vector.memcheck447 ], [ %i.i, %.lr.ph.i.i152.preheader ], [ %i.ik, %middle.block462 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader469, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.is, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader469 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.ir, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader469 ] ; 4 uses
  %i.in = load i32, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 %i.in, ptr %.010.i.i153, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !254
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !254
  store i32 0, ptr %i.io, align 4, !tbaa !254
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.ir, %i.id
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !4759

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152, %middle.block462, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.it, ptr %i.c, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.it, ptr %10, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %4
  store ptr %i.iv, ptr %12, align 8, !tbaa !332, !alias.scope !4782
  store ptr %.0191.lcssa284, ptr %13, align 8, !tbaa !332, !alias.scope !4783
  store ptr %i.i, ptr %14, align 8, !tbaa !345, !alias.scope !4784
  store ptr %7, ptr %15, align 8, !tbaa !345, !alias.scope !4785
  store ptr %i.id, ptr %16, align 8, !tbaa !345, !alias.scope !4786
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.91") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa283, i64 noundef 0, i64 noundef %.0195.lcssa283, i1 noundef zeroext true)
  %i.iw = load ptr, ptr %11, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ix = load ptr, ptr %10, align 8, !tbaa !345  ; 2 uses
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !262 ; 3 uses
  %.not27.i = icmp eq ptr %i.iy, %i.ix
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ix, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.jl, %bb.ab ], [ %i.iw, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.iz = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.iz, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 4 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !254
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !254
  store i32 0, ptr %i.ja, align 4, !tbaa !254
  %i.jd = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !254
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !254
  store i32 0, ptr %i.jd, align 4, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.iy, %i.ja
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

bb.y:                                             ; preds = %.lr.ph.i158
  %i.jg = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !254 ; 2 uses
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !254 ; 2 uses
  %i.jk = icmp slt i32 %i.ji, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  br i1 %i.jk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !254
  store i32 0, ptr %i.jh, align 4, !tbaa !254
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.ji, ptr %i.jl, align 4, !tbaa !254
  store i32 0, ptr %i.jg, align 4, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.jh, %bb.z ]
  %.1.i159 = phi ptr [ %i.jg, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !254
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !254
  store i32 0, ptr %i.jn, align 4, !tbaa !254
end_hunk_11
