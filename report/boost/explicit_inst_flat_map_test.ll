Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_:bb.a
  %.not.i39.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3071

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.01316.i.i.i45.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = ashr exact i64 %i.aq, 1                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !356 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i40.i.i, label %iter.check62, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check62:                                     ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.at, 1                ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.idx.i41.i.i ; 5 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !354   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx.i41.i.i ; 5 uses
  %i.ax = add i64 %.idx.i41.i.i, %i.a
  %i.ay = sub i64 %.01316.i.i.i45.le, %i.ax
  %i.az = and i64 %.017.i.i.i, -2
  %i.ba = add i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check46 = icmp ult i64 %i.ba, 6
  %i.bd = ptrtoaddr ptr %i.av to i64
  %i.be = sub i64 %i.a, %i.bd
  %diff.check44 = icmp ugt i64 %i.be, -32
  %or.cond105 = select i1 %min.iters.check46, i1 true, i1 %diff.check44
  br i1 %or.cond105, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check47

vector.main.loop.iter.check47:                    ; preds = %iter.check62
  %min.iters.check48 = icmp ult i64 %i.ba, 30
  br i1 %min.iters.check48, label %vec.epilog.ph66, label %vector.ph49

vector.ph49:                                      ; preds = %vector.main.loop.iter.check47
  %i.bf = and i64 %i.bc, 12
  %n.vec50 = and i64 %i.bc, -16                   ; 4 uses
  %i.bg = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.au, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bg
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.bj = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.aw, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load55 = load <8 x i16>, ptr %next.gep53, align 1
  %wide.load56 = load <8 x i16>, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %next.gep54, i64 16
  store <8 x i16> %wide.load55, ptr %next.gep54, align 1
  store <8 x i16> %wide.load56, ptr %i.bl, align 1
  %index.next57 = add nuw i64 %index52, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.bm, label %middle.block58, label %vector.body51, !llvm.loop !3157

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.bc, %n.vec50
  br i1 %cmp.n59, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block58
  %min.epilog.iters.check65 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph66, !prof !3068

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check47, %vec.epilog.iter.check64
  %vec.epilog.resume.val60 = phi i64 [ %n.vec50, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check47 ]
  %n.vec67 = and i64 %i.bc, -4                    ; 3 uses
  %i.bn = shl i64 %n.vec67, 1                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.au, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bn
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph66
  %index69 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph66 ], [ %index.next73, %vec.epilog.vector.body68 ] ; 2 uses
  %i.bq = shl i64 %index69, 1                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.au, i64 %i.bq
  %next.gep71 = getelementptr i8, ptr %i.aw, i64 %i.bq
  %wide.load72 = load <4 x i16>, ptr %next.gep70, align 1
  store <4 x i16> %wide.load72, ptr %next.gep71, align 1
  %index.next73 = add nuw i64 %index69, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.br, label %vec.epilog.middle.block74, label %vec.epilog.vector.body68, !llvm.loop !3158

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body68
  %cmp.n75 = icmp eq i64 %i.bc, %n.vec67
  br i1 %cmp.n75, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i.preheader

.lr.ph.i.i42.i.i.preheader:                       ; preds = %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block74
  %.012.i.i43.i.i.ph = phi ptr [ %i.au, %iter.check62 ], [ %i.bh, %vec.epilog.iter.check64 ], [ %i.bo, %vec.epilog.middle.block74 ]
  %.0911.i.i44.i.i.ph = phi ptr [ %i.aw, %iter.check62 ], [ %i.bi, %vec.epilog.iter.check64 ], [ %i.bp, %vec.epilog.middle.block74 ]
  br label %.lr.ph.i.i42.i.i

.lr.ph.i.i42.i.i:                                 ; preds = %.lr.ph.i.i42.i.i.preheader, %.lr.ph.i.i42.i.i
  %.012.i.i43.i.i = phi ptr [ %i.bt, %.lr.ph.i.i42.i.i ], [ %.012.i.i43.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 3 uses
  %.0911.i.i44.i.i = phi ptr [ %i.bu, %.lr.ph.i.i42.i.i ], [ %.0911.i.i44.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 2 uses
  %i.bs = load i16, ptr %.012.i.i43.i.i, align 1
  store i16 %i.bs, ptr %.0911.i.i44.i.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i43.i.i, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i44.i.i, i64 2
  %.not.i.i45.i.i = icmp eq ptr %.012.i.i43.i.i, %i.am
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3159

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i: ; preds = %.lr.ph.i.i42.i.i, %middle.block58, %vec.epilog.middle.block74, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !356
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %._ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit_crit_edge, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i
  %i.bv = phi i64 [ %.pre, %._ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit_crit_edge ], [ %i.ar, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i ]
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !356
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

bb.e:                                             ; preds = %bb.a
  %i.bx = load ptr, ptr %3, align 8, !tbaa !354   ; 5 uses
  %i.by = icmp eq ptr %0, %1
  %i.bz = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.by, %i.bz
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load i16, ptr %0, align 1               ; 4 uses
  store i16 %i.ca, ptr %i.bx, align 1
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %iter.check89

iter.check89:                                     ; preds = %bb.g
  %i.cb = add i64 %i.i, -1                        ; 5 uses
  %min.iters.check78 = icmp ult i64 %i.i, 5
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check79

vector.main.loop.iter.check79:                    ; preds = %iter.check89
  %min.iters.check80 = icmp ult i64 %i.i, 17
  br i1 %min.iters.check80, label %vec.epilog.ph93, label %vector.ph81

vector.ph81:                                      ; preds = %vector.main.loop.iter.check79
  %i.cc = and i64 %i.cb, 12
  %n.vec82 = and i64 %i.cb, -16                   ; 4 uses
  %i.cd = or disjoint i64 %n.vec82, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next85, %vector.body83 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %index84 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.cf, align 1
  store <8 x i16> %broadcast.splat, ptr %i.cg, align 1
  %index.next85 = add nuw i64 %index84, 16        ; 2 uses
  %i.ch = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.ch, label %middle.block86, label %vector.body83, !llvm.loop !3160

middle.block86:                                   ; preds = %vector.body83
  %cmp.n87 = icmp eq i64 %i.cb, %n.vec82
  br i1 %cmp.n87, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block86
  %min.epilog.iters.check92 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph.i.i.preheader, label %vec.epilog.ph93, !prof !3068

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check79, %vec.epilog.iter.check91
  %vec.epilog.resume.val88 = phi i64 [ %n.vec82, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check79 ]
  %n.vec94 = and i64 %i.cb, -4                    ; 3 uses
  %i.ci = or disjoint i64 %n.vec94, 1
  %broadcast.splatinsert95 = insertelement <4 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat96 = shufflevector <4 x i16> %broadcast.splatinsert95, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph93
  %index98 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph93 ], [ %index.next99, %vec.epilog.vector.body97 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %index98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store <4 x i16> %broadcast.splat96, ptr %i.ck, align 1
  %index.next99 = add nuw i64 %index98, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.cl, label %vec.epilog.middle.block100, label %vec.epilog.vector.body97, !llvm.loop !3161

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body97
  %cmp.n101 = icmp eq i64 %i.cb, %n.vec94
  br i1 %cmp.n101, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block100
  %.sroa.7.0.i.ph = phi i64 [ 1, %iter.check89 ], [ %i.cd, %vec.epilog.iter.check91 ], [ %i.ci, %vec.epilog.middle.block100 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.7.0.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %.sroa.7.0.i
  store i16 %i.ca, ptr %i.cm, align 1
  %storemerge.i.i = add nuw i64 %.sroa.7.0.i, 1   ; 2 uses
  %.not.i.i16 = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i16, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3162

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block86, %vec.epilog.middle.block100, %bb.g
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.bx, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %bb.h, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, %bb.e, %.preheader.preheader.i.i, %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond94 = and i1 %i.b, %i.a
  br i1 %or.cond94, label %.lr.ph, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit
  %.tr8598 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr8497 = phi i64 [ %3, %.lr.ph ], [ %i.s, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr8296 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 12 uses
  %.tr95 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 3 uses
  %.not = icmp ule i64 %.tr8497, %6
  %.not76 = icmp ule i64 %.tr8598, %6
  %or.cond77.not120 = or i1 %.not, %.not76
  %i.d = add i64 %.tr8598, %.tr8497
  %i.e = icmp ult i64 %i.d, 16
  %or.cond119 = or i1 %or.cond77.not120, %i.e
  br i1 %or.cond119, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %.tr8497, %.tr8598
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %.tr8497, 1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.tr95, i64 %i.g
  %.not15.i = icmp eq ptr %2, %.tr8296
  %.pre = ptrtoint ptr %.tr8296 to i64            ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = sub i64 %i.c, %.pre
  %i.j = ashr exact i64 %i.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ] ; 2 uses
  %.01316.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.tr8296, %.lr.ph.preheader.i ]
  %i.k = lshr i64 %.017.i, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.01316.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.n = add i64 %.017.i, %.neg.i                 ; 2 uses
  %.not.i78 = icmp eq i64 %i.n, 0
  br i1 %.not.i78, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3071

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre105 = ptrtoint ptr %i.m to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi106 = phi i64 [ %.pre105, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.d ]
  %.013.lcssa.i = phi ptr [ %i.m, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr8296, %bb.d ]
  %i.o = sub i64 %.pre-phi106, %.pre
  %i.p = ashr exact i64 %i.o, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = lshr i64 %.tr8598, 1                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.tr8296, i64 %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.r, %bb.e ] ; 8 uses
  %.070 = phi i64 [ %i.g, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ 0, %bb.e ] ; 2 uses
  %.069 = phi i64 [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.q, %bb.e ] ; 5 uses
  %.0 = phi ptr [ %i.h, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.tr95, %bb.e ] ; 7 uses
  %i.s = sub i64 %.tr8497, %.070                  ; 4 uses
  %i.t = icmp ule i64 %i.s, %.069
  %.not.i79 = icmp ugt i64 %.069, %6
  %or.cond.i80 = or i1 %i.t, %.not.i79
  br i1 %or.cond.i80, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %.tr8296, %.071
  %i.u = ptrtoaddr ptr %.071 to i64
  %i.v = ptrtoaddr ptr %.tr8296 to i64
  %reass.sub.i = sub i64 %i.u, %i.v
  %i.w = and i64 %reass.sub.i, -2
  %.0.lcssa.i.idx.i = select i1 %.not8.i.i, i64 0, i64 %i.w
  %i.x = getelementptr i8, ptr %.0, i64 %.0.lcssa.i.idx.i
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

bb.i:                                             ; preds = %bb.f
  %.not34.i = icmp ugt i64 %i.s, %6
  br i1 %.not34.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoaddr ptr %.tr8296 to i64
  %.not8.i45.i = icmp eq ptr %.tr8296, %.071
  %i.z = ptrtoaddr ptr %.071 to i64
  %reass.sub55.i = sub i64 %i.z, %i.y
  %i.aa = and i64 %reass.sub55.i, -2
  %.0.lcssa.i47.idx.i = select i1 %.not8.i45.i, i64 0, i64 %i.aa
  %.0.lcssa.i47.i = getelementptr i8, ptr %.0, i64 %.0.lcssa.i47.idx.i
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq ptr %.0, %.tr8296
  br i1 %i.ab, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq ptr %.tr8296, %.071
  br i1 %i.ac, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = ptrtoint ptr %.tr8296 to i64
  %i.ae = ptrtoint ptr %.0 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [2 x i8], ptr %.071, i64 %i.ah
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %bb.m, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.ai, %bb.m ], [ %.0.lcssa.i47.i, %bb.j ], [ %.0, %bb.g ], [ %.0, %bb.l ], [ %.071, %bb.k ] ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.tr95, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.aj = sub i64 %.tr8598, %.069                 ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne i64 %i.s, 0
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.b, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE24priv_set_difference_backIPKS4_NS0_3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS9_9select1stIS3_EEEEEEvT_SG_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not39 = icmp eq ptr %1, %2
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.j ] ; 4 uses
  %.043 = phi ptr [ %i.d, %.lr.ph ], [ %.1, %bb.j ] ; 3 uses
  %.02542 = phi ptr [ %i.b, %.lr.ph ], [ %.126, %bb.j ] ; 3 uses
  %.02841 = phi ptr [ %i.b, %.lr.ph ], [ %.129, %bb.j ] ; 3 uses
  %.03140 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.j ] ; 6 uses
  %i.g = icmp eq ptr %.02542, %.043
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %.03140 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !9, !noalias !3163
  %i.o = sub i64 %i.n, %i.h
  %.not.i.i = icmp ugt i64 %i.m, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ne ptr %i.f, null
  %i.q = icmp ne ptr %.03140, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %.03140, i64 %i.l, i1 false), !noalias !3163
  %.pre45 = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !3163
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.au = lshr i64 %i.as, 1                       ; 3 uses
  %i.av = sub nuw i64 %i.as, %i.au                ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ax = udiv i64 %i.at, %i.au
  %.not159 = icmp ult i64 %i.av, %i.ax
  br i1 %.not159, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.d, %bb.e
  %i.ay = udiv i64 %i.at, %i.as
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.c, %bb.e, %.critedge.i
  %.1 = phi i1 [ true, %bb.e ], [ false, %.critedge.i ], [ true, %bb.c ] ; 8 uses
  %.1.i = phi i64 [ %i.au, %bb.e ], [ %i.ay, %.critedge.i ], [ %i.ar, %bb.c ] ; 8 uses
  %i.az = and i64 %.0130161, 1
  %i.ba = icmp eq i64 %i.az, 0                    ; 7 uses
  %.not140 = icmp eq i64 %i.as, 0
  br i1 %.not140, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bb = udiv i64 %i.at, %.1.i
  %i.bc = icmp ugt i64 %i.bb, 256
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ba
  %i.bd = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.bd
  %i.be = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.be, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ba
  %i.bf = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.bf
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.bg, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bh = load i64, ptr %i.am, align 8, !tbaa !356
  %i.bi = load ptr, ptr %6, align 8, !tbaa !354
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ba
  %i.bo = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.bo
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.bn, ptr noundef %i.bp, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.bq = add i64 %.0130161, 1
  %i.br = icmp ugt i64 %i.e, %i.at
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !3182
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !356
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %.idx74 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx74 ; 5 uses
  %.neg = mul i64 %2, -2                          ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 3 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %.idx76 = shl nuw nsw i64 %3, 1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx76 ; 4 uses
  %i.g = add nsw i64 %.idx74, %.neg               ; 2 uses
  %gepdiff77 = sub i64 %i.g, %.idx76
  %i.h = ashr exact i64 %gepdiff77, 1             ; 3 uses
  %gepdiff78 = sub nsw i64 0, %.neg
  %i.i = ashr exact i64 %gepdiff78, 1             ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !357  ; 8 uses
  %.not.i51 = icmp ult i64 %i.k, %.sroa.speculated.i
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !356
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %5, align 8, !tbaa !354    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.n = icmp eq i64 %.idx76, %i.g
  %i.o = icmp eq i64 %.neg, 0
  %or.cond.i.i = or i1 %i.o, %i.n
  br i1 %or.cond.i.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i15.i = icmp eq i64 %i.k, 0
  br i1 %.not.i15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i16, ptr %i.f, align 1              ; 4 uses
  store i16 %i.p, ptr %i.m, align 1
  %.not8.i.i.i = icmp eq i64 %i.k, 1
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %iter.check146

iter.check146:                                    ; preds = %bb.f
  %i.q = add i64 %i.k, -1                         ; 5 uses
  %min.iters.check135 = icmp ult i64 %i.k, 5
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %iter.check146
  %min.iters.check137 = icmp ult i64 %i.k, 17
  br i1 %min.iters.check137, label %vec.epilog.ph150, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %i.r = and i64 %i.q, 12
  %n.vec139 = and i64 %i.q, -16                   ; 4 uses
  %i.s = or disjoint i64 %n.vec139, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next142, %vector.body140 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index141 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.u, align 1
  store <8 x i16> %broadcast.splat, ptr %i.v, align 1
  %index.next142 = add nuw i64 %index141, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next142, %n.vec139
  br i1 %i.w, label %middle.block143, label %vector.body140, !llvm.loop !3183

middle.block143:                                  ; preds = %vector.body140
  %cmp.n144 = icmp eq i64 %i.q, %n.vec139
  br i1 %cmp.n144, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %vec.epilog.iter.check148

vec.epilog.iter.check148:                         ; preds = %middle.block143
  %min.epilog.iters.check149 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check149, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph150, !prof !3068

vec.epilog.ph150:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check148
  %vec.epilog.resume.val145 = phi i64 [ %n.vec139, %vec.epilog.iter.check148 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.vec151 = and i64 %i.q, -4                    ; 3 uses
  %i.x = or disjoint i64 %n.vec151, 1
  %broadcast.splatinsert152 = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat153 = shufflevector <4 x i16> %broadcast.splatinsert152, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph150
  %index155 = phi i64 [ %vec.epilog.resume.val145, %vec.epilog.ph150 ], [ %index.next156, %vec.epilog.vector.body154 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index155
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store <4 x i16> %broadcast.splat153, ptr %i.z, align 1
  %index.next156 = add nuw i64 %index155, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.aa, label %vec.epilog.middle.block157, label %vec.epilog.vector.body154, !llvm.loop !3184

vec.epilog.middle.block157:                       ; preds = %vec.epilog.vector.body154
  %cmp.n158 = icmp eq i64 %i.q, %n.vec151
  br i1 %cmp.n158, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check146, %vec.epilog.iter.check148, %vec.epilog.middle.block157
  %.sroa.7.0.i.i.ph = phi i64 [ 1, %iter.check146 ], [ %i.s, %vec.epilog.iter.check148 ], [ %i.x, %vec.epilog.middle.block157 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.7.0.i.i = phi i64 [ %storemerge.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.0.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.sroa.7.0.i.i
  store i16 %i.p, ptr %i.ab, align 1
  %storemerge.i.i.i = add nuw i64 %.sroa.7.0.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %storemerge.i.i.i, %i.k
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3185

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block143, %vec.epilog.middle.block157, %bb.f
  store ptr %8, ptr %7, align 8, !tbaa !3186
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull %i.m, i64 noundef %i.k, ptr noundef nonnull align 8 dead_on_return %7)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %8, ptr %6, align 8, !tbaa !3186
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i: ; preds = %bb.g, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit: ; preds = %bb.c, %.preheader.preheader.i.i.i, %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.h:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %i.ac = add i64 %3, %2                          ; 5 uses
  %.idx = shl nuw nsw i64 %i.ac, 1                ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !357 ; 2 uses
  %.not = icmp ult i64 %i.af, %i.ac
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx73 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %.not.i.i52 = icmp eq i64 %i.ac, 0
  %.not37.i.i = icmp samesign eq i64 %.idx, %.idx73
  %or.cond.i.i53 = or i1 %.not.i.i52, %.not37.i.i
  br i1 %or.cond.i.i53, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %gepdiff = sub nsw i64 %.idx73, %.idx           ; 2 uses
  %.not38.i.i = icmp ugt i64 %.idx, %gepdiff
  br i1 %.not38.i.i, label %.lr.ph.preheader.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !356 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i.i54, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i

iter.check:                                       ; preds = %bb.k
  %.idx.i.i.i = shl i64 %i.ah, 1                  ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i ; 5 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !354   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i ; 5 uses
  %i.al = add nsw i64 %.idx, -2
  %i.am = sub i64 %i.al, %.idx.i.i.i              ; 3 uses
  %i.an = lshr exact i64 %i.am, 1
  %i.ao = add nuw i64 %i.an, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.am, 6
  %i.ap = ptrtoaddr ptr %i.aj to i64
  %i.aq = sub i64 %i.a, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i64 %i.am, 30
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load89 = load <8 x i16>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep88, i64 16
  store <8 x i16> %wide.load, ptr %next.gep88, align 1
  store <8 x i16> %wide.load89, ptr %i.ax, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !3188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %vec.epilog.iter.check

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
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !802, !noalias !4419
  store i32 0, ptr %i.ca, align 4, !tbaa !802, !noalias !4419
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !802, !noalias !4419
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !802, !noalias !4419
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !802, !noalias !4419
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !802, !noalias !4419
  store i32 0, ptr %i.ce, align 4, !tbaa !802, !noalias !4419
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !802, !noalias !4419
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !802, !noalias !4419
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !802, !noalias !4419
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !3716

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ck, %.lr.ph.i26 ], [ %i.by, %.thread84 ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.cl, %.lr.ph.i26 ], [ %i.bv, %.thread84 ] ; 2 uses
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bw, %.thread84 ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !802, !noalias !4422
  store i32 0, ptr %i.cl, align 4, !tbaa !802, !noalias !4422
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4422
  store i32 0, ptr %i.cm, align 4, !tbaa !802, !noalias !4422
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4422
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !802, !noalias !4422
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !802, !noalias !4422
  store i32 0, ptr %i.ck, align 4, !tbaa !802, !noalias !4422
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !802, !noalias !4422
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !802, !noalias !4422
  store i32 0, ptr %i.cn, align 4, !tbaa !802, !noalias !4422
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !802, !noalias !4422
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !802, !noalias !4422
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !802, !noalias !4422
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !802, !noalias !4422
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !802, !noalias !4422
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4422
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4422
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !3940

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !802, !noalias !4425
  store i32 0, ptr %i.cz, align 4, !tbaa !802, !noalias !4425
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !802, !noalias !4425
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !802, !noalias !4425
  store i32 %i.db, ptr %i.da, align 4, !tbaa !802, !noalias !4425
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !802, !noalias !4425
  store i32 0, ptr %i.dd, align 4, !tbaa !802, !noalias !4425
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !802, !noalias !4425
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !802, !noalias !4425
  store i32 %i.df, ptr %i.de, align 4, !tbaa !802, !noalias !4425
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !3716

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !3575
  %i.di = load ptr, ptr %1, align 8, !tbaa !3092  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !36
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !36
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !36
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !3092  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3092
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !3092
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !3575
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !3092
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4430

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !3575
  store ptr %i.dy, ptr %0, align 8, !tbaa !3575
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
  %i.c = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.c, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802
  store i32 %i.g, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.f, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  store i32 %i.l, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.n, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !802
  store i32 %i.s, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.r, align 4, !tbaa !802
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !802
  store i32 %i.w, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.v, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !802
  store i32 %i.af, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.ae, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.ap, ptr %7, align 8, !tbaa !3483
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !3483
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !802  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !802    ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 10 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !4431

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1222 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !1224   ; 7 uses
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %.114.i147.le              ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %.114.i147.le
  %i.aa = and i64 %i.z, -8                        ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep, i64 %i.aa
  %scevgep149 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %scevgep150
  %bound1 = icmp ult ptr %.114.i, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae
  %next.gep151 = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep152 = getelementptr i8, ptr %.114.i, i64 %i.ae ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.114.i, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !4432
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !802, !alias.scope !4432
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !4435, !noalias !4432
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !802, !alias.scope !4435, !noalias !4432
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !4432
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !802, !alias.scope !4432
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.067101, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07495, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !802
  store i32 0, ptr %i.h, align 4, !tbaa !802
  %i.k = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 %i.k, ptr %i.h, align 4, !tbaa !802
  store i32 %i.j, ptr %i.i, align 4, !tbaa !802
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.l = add i64 %.068100, %.07099                ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %5, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.n, ptr %6, align 8, !tbaa !3483
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_T0_(ptr noundef %.067101, ptr noundef %.07495, ptr noundef %.07297, ptr noundef nonnull align 8 dead_on_return %6)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.07099, %.068100
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.07099, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.067101, i64 %i.p ; 2 uses
  %.not16.i = icmp eq ptr %.07297, %.07495
  %.pre = ptrtoint ptr %.07495 to i64             ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07297 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 3
  %i.u = load i32, ptr %i.q, align 4, !tbaa !802
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.018.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01317.i = phi ptr [ %.07495, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.v = lshr i64 %.018.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !802
  %.not15.i = icmp slt i32 %i.u, %i.x             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.neg.i = xor i64 %i.v, -1
  %i.z = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.y ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.v, i64 %i.z ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.h, !llvm.loop !3616

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre110 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.g, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi111 = phi i64 [ %.pre110, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.g ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.07495, %bb.g ]
  %i.aa = sub i64 %.pre-phi111, %.pre
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ac = lshr i64 %.068100, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.07495, i64 %i.ac ; 2 uses
  %.not16.i77 = icmp eq ptr %.07495, %.067101
  %.pre108 = ptrtoint ptr %.067101 to i64         ; 3 uses
  br i1 %.not16.i77, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.i
  %i.ae = ptrtoint ptr %.07495 to i64
  %i.af = sub i64 %i.ae, %.pre108
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !802
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i78
  %.018.i79 = phi i64 [ %i.ag, %.lr.ph.i78 ], [ %.1.i84, %bb.j ] ; 2 uses
  %.01317.i80 = phi ptr [ %.067101, %.lr.ph.i78 ], [ %.114.i83, %bb.j ] ; 2 uses
  %i.ai = lshr i64 %.018.i79, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01317.i80, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  %.not15.i81 = icmp slt i32 %i.ak, %i.ah         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.neg.i82 = xor i64 %i.ai, -1
  %i.am = add i64 %.018.i79, %.neg.i82
  %.114.i83 = select i1 %.not15.i81, ptr %i.al, ptr %.01317.i80 ; 3 uses
  %.1.i84 = select i1 %.not15.i81, i64 %i.am, i64 %i.ai ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !4431

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre108, %bb.i ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.067101, %bb.i ]
  %i.an = sub i64 %.pre-phi113, %.pre108
  %i.ao = ashr exact i64 %i.an, 3
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.066 = phi ptr [ %i.q, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.065 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ad, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.064 = phi i64 [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ao, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi i64 [ %i.ab, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ac, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 5 uses
  %i.ap = call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %.066, ptr noundef %.07495, ptr noundef %.065) ; 4 uses
  %i.aq = add i64 %.0, %.064                      ; 2 uses
  %i.ar = sub i64 %i.l, %i.aq
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %5, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.at, ptr %7, align 8, !tbaa !3483
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %.067101, ptr noundef %.066, ptr noundef %i.ap, i64 noundef %.064, i64 noundef %.0, ptr noundef nonnull align 8 dead_on_return %7)
  %i.au = sub i64 %.07099, %.064
  %i.av = sub i64 %.068100, %.0
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = sub i64 %.07099, %.064
  %i.ax = sub i64 %.068100, %.0
  %i.ay = load ptr, ptr %5, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.ay, ptr %8, align 8, !tbaa !3483
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %i.ap, ptr noundef %.065, ptr noundef %.07297, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull align 8 dead_on_return %8)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.175 = phi ptr [ %.065, %bb.l ], [ %.066, %bb.m ]
  %.173 = phi ptr [ %.07297, %bb.l ], [ %i.ap, %bb.m ]
  %.171 = phi i64 [ %i.au, %bb.l ], [ %.064, %bb.m ] ; 2 uses
  %.169 = phi i64 [ %i.av, %bb.l ], [ %.0, %bb.m ] ; 2 uses
  %.1 = phi ptr [ %i.ap, %bb.l ], [ %.067101, %bb.m ]
  %i.az = icmp ne i64 %.169, 0
  %i.ba = icmp ne i64 %.171, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !4531

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.c, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802
  store i32 %i.g, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.f, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %4, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  store i32 %i.l, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.n, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !802
  store i32 %i.s, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.r, align 4, !tbaa !802
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !802
  store i32 %i.w, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.v, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %lcmp.mod37 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !802
  store i32 %i.af, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.ae, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.as

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
  store ptr %5, ptr %7, align 8, !tbaa !4468
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !4470
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !4471
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !802
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !802 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !802
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !802
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !802
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !802
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !802
  store i32 0, ptr %i.m, align 4, !tbaa !802
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802
  store i32 %i.p, ptr %i.m, align 4, !tbaa !802
  store i32 %i.o, ptr %i.n, align 4, !tbaa !802
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
  %i.w = load i32, ptr %i.t, align 4, !tbaa !802
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !3512

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
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %i.de = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !6182
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %.sroa.050.0 = phi ptr [ %i.dl, %.lr.ph.i32 ], [ %i.de, %.lr.ph.i32.preheader ]
  %.sroa.049.0 = phi ptr [ %i.do, %.lr.ph.i32 ], [ %i.cl, %.lr.ph.i32.preheader ]
  %i.df = phi ptr [ %i.di, %.lr.ph.i32 ], [ %i.cm, %.lr.ph.i32.preheader ]
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1467, !noalias !6185
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1458, !noalias !6185 ; 4 uses
  %i.dj = load ptr, ptr %.sroa.050.0, align 8, !tbaa !1467, !noalias !6190
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1458, !noalias !6190 ; 3 uses
  %i.dm = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1467, !noalias !6193
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1458, !noalias !6193 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !802, !noalias !6196
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !802, !noalias !6196
  store i32 0, ptr %i.dp, align 4, !tbaa !802, !noalias !6196
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !802, !noalias !6196
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !802, !noalias !6196
  store i32 0, ptr %i.ds, align 4, !tbaa !802, !noalias !6196
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !802, !noalias !6196
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !802, !noalias !6196
  store i32 0, ptr %i.dv, align 4, !tbaa !802, !noalias !6196
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !802, !noalias !6196
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !802, !noalias !6196
  store i32 0, ptr %i.dx, align 4, !tbaa !802, !noalias !6196
  %.not.i33 = icmp eq ptr %i.di, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i32, !llvm.loop !5618

bb.p:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.ci, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %storemerge.i, %bb.p ]
  %i.dz = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.ci, %bb.p ]
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1467, !noalias !6197
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1458, !noalias !6197 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !6197
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1458, !noalias !6197 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.ed, align 4, !tbaa !802, !noalias !6197
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !802, !noalias !6197
  store i32 0, ptr %i.ed, align 4, !tbaa !802, !noalias !6197
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !802, !noalias !6197
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !802, !noalias !6197
  store i32 0, ptr %i.ej, align 4, !tbaa !802, !noalias !6197
  %.not.i.i35 = icmp eq ptr %i.ec, %i.ah
  br i1 %.not.i.i35, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !5624

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.p, %.thread91, %.thread90, %.loopexit
  %storemerge = phi ptr [ %i.ah, %.loopexit ], [ %i.cw, %.lr.ph.i31 ], [ %i.cm, %.thread90 ], [ %i.cl, %.thread91 ], [ %storemerge.i, %bb.p ], [ %i.eg, %.lr.ph.i.i ], [ %i.do, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1522
  %i.em = load ptr, ptr %1, align 8, !tbaa !3092  ; 6 uses
  %.neg93 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.neg93 ; 3 uses
  %i.eo = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !6202
  %.not.i36 = icmp eq ptr %i.ah, %i.eo
  br i1 %.not.i36, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg93, 0
  br i1 %.not9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !36
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !36
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !36
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.et = load ptr, ptr %2, align 8, !tbaa !3092  ; 2 uses
  %i.eu = icmp eq ptr %i.en, %i.et
  br i1 %i.eu, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = icmp eq ptr %i.et, %i.em
  br i1 %i.ev, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  %.sink.i = phi ptr [ %i.em, %bb.r ], [ %i.en, %bb.s ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3092
  %.pre119 = load ptr, ptr %1, align 8, !tbaa !3092
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.s, %.sink.split.i
  %i.ew = phi ptr [ %i.em, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.em, %bb.s ], [ %.pre119, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1522
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  store ptr %i.ex, ptr %1, align 8, !tbaa !3092
  %i.ey = icmp ne i64 %.0106, 0
  %.neg = sext i1 %i.ey to i64
  %i.ez = add i64 %.0106, %.neg
  %i.fa = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fa to i64
  %i.fb = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.fc = add i64 %.089105, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6205

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  %i.fd = load ptr, ptr %6, align 8, !tbaa !1522, !noalias !6206
  store ptr %i.fd, ptr %0, align 8, !tbaa !1522, !alias.scope !6206
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1522   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !802
  store i32 %i.q, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 8, !tbaa !802
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.u, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %4, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !802
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !802
  store i32 0, ptr %i.af, align 4, !tbaa !802
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !802
  store i32 0, ptr %i.aj, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %lcmp.mod22 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !802
  store i32 %i.an, ptr %i.al, align 4, !tbaa !802
  store i32 0, ptr %i.am, align 4, !tbaa !802
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !802
  store i32 %i.at, ptr %i.p, align 8, !tbaa !802
  store i32 0, ptr %i.as, align 4, !tbaa !802
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.av, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.au, align 4, !tbaa !802
  store ptr %i.a, ptr %8, align 8, !tbaa !1522
  store ptr %i.b, ptr %9, align 8, !tbaa !1522
  store ptr %i.d, ptr %10, align 8, !tbaa !1522
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ba = trunc i64 %4 to i32
  %i.bb = shl i32 %i.ba, 1
  %i.bc = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bb
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.az

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1522
  store ptr %i.b, ptr %6, align 8, !tbaa !1522
  store ptr %i.d, ptr %7, align 8, !tbaa !1522
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.bf
  %i.bm = ashr exact i64 %i.bl, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bi, i64 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !4468
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !4470
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !4471
  %i.f = load ptr, ptr %0, align 8, !tbaa !1522
  %i.g = load ptr, ptr %1, align 8, !tbaa !1522
  %i.h = load ptr, ptr %2, align 8, !tbaa !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !1522
  store ptr %i.g, ptr %8, align 8, !tbaa !1522
  store ptr %i.h, ptr %9, align 8, !tbaa !1522
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !1522   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1522   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !802
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802  ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4, !tbaa !802
  %i.r = load i32, ptr %i.l, align 4, !tbaa !802
  store i32 %i.r, ptr %i.n, align 4, !tbaa !802
  store i32 %i.p, ptr %i.l, align 4, !tbaa !802
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.s, align 4, !tbaa !802
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.s, align 4, !tbaa !802
  store i32 %i.u, ptr %i.t, align 4, !tbaa !802
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.i, 16
  %i.x = load ptr, ptr %0, align 8, !tbaa !1522   ; 5 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %11, align 8, !tbaa !1522
  %i.y = load ptr, ptr %1, align 8, !tbaa !1522
  store ptr %i.y, ptr %12, align 8, !tbaa !1522
  %i.z = load ptr, ptr %2, align 8, !tbaa !1522
  store ptr %i.z, ptr %13, align 8, !tbaa !1522
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1522  ; 6 uses
  %i.ab = icmp ugt i64 %3, %4
  br i1 %i.ab, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit: ; preds = %bb.i
  %i.ac = lshr i64 %3, 1                          ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !1467
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1458 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !1522
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1467, !noalias !6209 ; 3 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1467, !noalias !6209 ; 3 uses
  %.not9.i = icmp eq ptr %i.ah, %i.ai
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEESH_SH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEET3_T_SS_T0_T1_RT2_SV_SR_NS0_9iter_sizeISU_E4typeESZ_SZ_SZ_T4_bT5_:bb.a
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1458, !noalias !10129 ; 4 uses
  %i.bx = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1467, !noalias !10134
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1458, !noalias !10134 ; 3 uses
  %i.ca = load ptr, ptr %.sroa.048.0, align 8, !tbaa !1467, !noalias !10137
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1458, !noalias !10137 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cj = load <2 x i32>, ptr %i.cd, align 4, !tbaa !802, !noalias !10140
  store i32 0, ptr %i.cd, align 4, !tbaa !802, !noalias !10140
  store i32 0, ptr %i.ce, align 4, !tbaa !802, !noalias !10140
  %i.ck = load i32, ptr %i.cf, align 4, !tbaa !802, !noalias !10140
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !802, !noalias !10140
  store i32 0, ptr %i.cf, align 4, !tbaa !802, !noalias !10140
  %i.cl = load i32, ptr %i.cg, align 4, !tbaa !802, !noalias !10140
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !802, !noalias !10140
  store i32 0, ptr %i.cg, align 4, !tbaa !802, !noalias !10140
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !802, !noalias !10140
  store i32 %i.cm, ptr %i.cf, align 4, !tbaa !802, !noalias !10140
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !802, !noalias !10140
  store i32 %i.cn, ptr %i.cg, align 4, !tbaa !802, !noalias !10140
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !802, !noalias !10140
  %.not.i33 = icmp eq ptr %i.bw, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i32, !llvm.loop !5872

bb.j:                                             ; preds = %bb.i
  %.not1.i.i = icmp eq ptr %i.av, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ]
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.av, %bb.j ]
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1467, !noalias !10141
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1458, !noalias !10141 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !10141
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1458, !noalias !10141 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !802, !noalias !10141
  store i32 0, ptr %i.cs, align 4, !tbaa !802, !noalias !10141
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !802, !noalias !10141
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !802, !noalias !10141
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !802, !noalias !10141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !802, !noalias !10141
  store i32 0, ptr %i.cz, align 4, !tbaa !802, !noalias !10141
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !802, !noalias !10141
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !802, !noalias !10141
  store i32 %i.db, ptr %i.da, align 4, !tbaa !802, !noalias !10141
  %.not.i.i = icmp eq ptr %i.cr, %i.ah
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !5602

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.j, %.thread87, %.thread86, %bb.i
  %storemerge = phi ptr [ %i.ah, %bb.i ], [ %i.bk, %.lr.ph.i31 ], [ %i.ba, %.thread86 ], [ %i.az, %.thread87 ], [ %i.au, %bb.j ], [ %i.cv, %.lr.ph.i.i ], [ %i.cc, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1522
  %i.dd = load ptr, ptr %1, align 8, !tbaa !3092  ; 6 uses
  %.neg89 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg89 ; 3 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !10146
  %.not.i35 = icmp eq ptr %i.ah, %i.df
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg89, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !36
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !36
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !36
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !3092  ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.dd, %bb.l ], [ %i.de, %bb.m ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3092
  %.pre106 = load ptr, ptr %1, align 8, !tbaa !3092
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.m, %.sink.split.i
  %i.dn = phi ptr [ %i.dd, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.dd, %bb.m ], [ %.pre106, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1522
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !3092
  %i.dp = icmp ne i64 %.099, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.099, %.neg
  %i.dr = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dt = add i64 %.08598, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10149

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10150)
  %i.du = load ptr, ptr %6, align 8, !tbaa !1522, !noalias !10150
  store ptr %i.du, ptr %0, align 8, !tbaa !1522, !alias.scope !10150
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1522   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !802
  store i32 %i.q, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 8, !tbaa !802
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.u, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %5, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !802
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !802
  store i32 0, ptr %i.af, align 4, !tbaa !802
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !802
  store i32 0, ptr %i.aj, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %lcmp.mod23 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !802
  store i32 %i.an, ptr %i.al, align 4, !tbaa !802
  store i32 0, ptr %i.am, align 4, !tbaa !802
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !802
  store i32 %i.at, ptr %i.p, align 8, !tbaa !802
  store i32 0, ptr %i.as, align 4, !tbaa !802
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.av, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.au, align 4, !tbaa !802
  store ptr %i.a, ptr %10, align 8, !tbaa !1522
  store ptr %i.b, ptr %11, align 8, !tbaa !1522
  store ptr %i.d, ptr %12, align 8, !tbaa !1522
  %i.aw = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.aw, ptr %13, align 8, !tbaa !3483
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_SM_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ax = trunc i64 %5 to i32
  %i.ay = shl i32 %i.ax, 1
  %i.az = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ay
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bb = trunc i64 %5 to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.ba

bb.e:                                             ; preds = %bb.c
  %i.be = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1522
  store ptr %i.b, ptr %7, align 8, !tbaa !1522
  store ptr %i.d, ptr %8, align 8, !tbaa !1522
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bh
  %i.bo = ashr exact i64 %i.bn, 3
  store ptr %i.be, ptr %9, align 8, !tbaa !3483
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.bk, i64 noundef %i.bo, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %.sroa.039 = alloca ptr, align 8                ; 3 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %.not44 = icmp eq ptr %i.a, %i.b
  br i1 %.not44, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1522   ; 2 uses
  %.not45 = icmp eq ptr %i.b, %i.c
  br i1 %.not45, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1467 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1458
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !802  ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !802  ; 2 uses
  %.not46 = icmp slt i32 %i.i, %i.j
  br i1 %.not46, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1467 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1467, !noalias !10153
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1458, !noalias !10153
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802, !noalias !10153
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !10153
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1458, !noalias !10153
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !10156

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1467
  %.pre71 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi72 = phi i64 [ %.pre71, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.l, %bb.e ]
  %i.af = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !1522
  store ptr %i.af, ptr %5, align 8, !tbaa !1522
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1522
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1467
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi72
  %i.ak = ashr exact i64 %i.aj, 3
  call void @_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignINS3_22stable_vector_iteratorIS7_Lb0EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.ak)
  %i.al = load ptr, ptr %4, align 8, !tbaa !1224  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1222 ; 2 uses
  %.idx = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1522  ; 2 uses
  store ptr %i.ap, ptr %.sroa.039, align 8, !tbaa !1522
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1522
  %.not15.i = icmp eq i64 %i.an, 0
  br i1 %.not15.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %.lr.ph.i7.preheader

.lr.ph.i7.preheader:                              ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_:bb.a
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1931   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1934 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !973
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1225 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1934
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1934
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !1931
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !1934
  store ptr %i.a, ptr %5, align 8, !tbaa !1931
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !1934
  store ptr %i.x, ptr %6, align 8, !tbaa !1931
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !1934
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 1
  %i.bj = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bi
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bf, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !1931
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1934
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !1934
  store ptr %i.a, ptr %8, align 8, !tbaa !1931
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1934
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !1934
  store ptr %i.x, ptr %9, align 8, !tbaa !1931
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !1934
  %i.bt = load ptr, ptr %3, align 8, !tbaa !1224
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bt, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1931   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1934 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1934 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !973
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.al, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %i.a, align 4, !tbaa !802
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !802
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !802
  store i32 0, ptr %i.ao, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.am, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.aq = add i64 %4, -1                          ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %4, 2
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !802
  store i32 %i.au, ptr %i.as, align 4, !tbaa !802
  store i32 0, ptr %i.at, align 4, !tbaa !802
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.av, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !802
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !802
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !802
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !802
  store i32 0, ptr %i.be, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.bc, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %lcmp.mod29 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !802
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !802
  store i32 0, ptr %i.bl, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.bj, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !802
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !802
  store i32 0, ptr %i.bn, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.bq, ptr %i.ao, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  store ptr %i.a, ptr %8, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.b, ptr %9, align 8, !tbaa !1931
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.d, ptr %10, align 8, !tbaa !1931
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.bt, align 8, !tbaa !1934
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bu = trunc i64 %4 to i32
  %i.bv = shl i32 %i.bu, 1
  %i.bw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.bv
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13: ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.by = trunc i64 %4 to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.bx

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit: ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1934 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1934 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1934 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1931
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !1934
  store ptr %i.b, ptr %6, align 8, !tbaa !1931
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !1934
  store ptr %i.d, ptr %7, align 8, !tbaa !1931
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !1934
  %i.ck = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.cc to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !973
  %i.cp = ptrtoint ptr %i.b to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = add nsw i64 %i.cs, %i.cn
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !973
  %i.cv = ptrtoint ptr %i.a to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = sub i64 %i.ct, %i.cy
  %i.da = ptrtoint ptr %i.cg to i64
  %i.db = sub i64 %i.da, %i.ck
  %i.dc = shl nsw i64 %i.db, 4
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !973
  %i.de = ptrtoint ptr %i.d to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, %i.dc
  %i.dj = sub i64 %i.di, %i.cs
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cz, i64 noundef %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !4468
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !4470
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !4471
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !2154
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !2154
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !2154
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !2154
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !2154
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !2154
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !1931   ; 13 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !1931   ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !802
  %i.n = load i32, ptr %i.k, align 4, !tbaa !802  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.p = load i32, ptr %i.l, align 4, !tbaa !802
  store i32 %i.p, ptr %i.k, align 4, !tbaa !802
  store i32 %i.n, ptr %i.l, align 4, !tbaa !802
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.q, align 4, !tbaa !802
  %i.t = load i32, ptr %i.r, align 4, !tbaa !802
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SM_SM_T0_RT1_:bb.a

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1931   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1934 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !973
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1225 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1934
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1934
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1934
  %i.bc = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !1931
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !1934
  store ptr %i.a, ptr %6, align 8, !tbaa !1931
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !1934
  store ptr %i.x, ptr %7, align 8, !tbaa !1931
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !1934
  store ptr %i.bc, ptr %8, align 8, !tbaa !3483
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = shl i32 %i.bi, 1
  %i.bk = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bj
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bg, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !1931
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1934
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1934
  store ptr %i.a, ptr %10, align 8, !tbaa !1931
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1934
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !1934
  store ptr %i.x, ptr %11, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !1934
  %i.bu = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.bu, ptr %12, align 8, !tbaa !3483
  %i.bv = load ptr, ptr %4, align 8, !tbaa !1224
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bv, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1931   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1934 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1934 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !973
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.al, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %i.a, align 4, !tbaa !802
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !802
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !802
  store i32 0, ptr %i.ao, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.am, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.aq = add i64 %5, -1                          ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %5, 2
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !802
  store i32 %i.au, ptr %i.as, align 4, !tbaa !802
  store i32 0, ptr %i.at, align 4, !tbaa !802
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.av, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !802
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !802
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !802
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !802
  store i32 0, ptr %i.be, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.bc, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
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
  %lcmp.mod30 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !802
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !802
  store i32 0, ptr %i.bl, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.bj, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !802
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !802
  store i32 0, ptr %i.bn, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.bq, ptr %i.ao, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  store ptr %i.a, ptr %10, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.i, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.b, ptr %11, align 8, !tbaa !1931
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.g, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.d, ptr %12, align 8, !tbaa !1931
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.aa, ptr %i.bt, align 8, !tbaa !1934
  %i.bu = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  store ptr %i.bu, ptr %13, align 8, !tbaa !3483
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_SM_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bv = trunc i64 %5 to i32
  %i.bw = shl i32 %i.bv, 1
  %i.bx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.bw
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13: ; preds = %.loopexit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bz = trunc i64 %5 to i32
  %i.ca = shl i32 %i.bz, 1
  %i.cb = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12, %i.ca
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.by

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit: ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1934 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1934 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1934 ; 3 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !3669, !nonnull !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1931
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cd, ptr %i.cj, align 8, !tbaa !1934
  store ptr %i.b, ptr %7, align 8, !tbaa !1931
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !1934
  store ptr %i.d, ptr %8, align 8, !tbaa !1931
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ch, ptr %i.cl, align 8, !tbaa !1934
  %i.cm = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.cn = ptrtoint ptr %i.cd to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = shl nsw i64 %i.co, 4
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !973
  %i.cr = ptrtoint ptr %i.b to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3                 ; 2 uses
  %i.cv = add nsw i64 %i.cu, %i.cp
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !973
  %i.cx = ptrtoint ptr %i.a to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = sub i64 %i.cv, %i.da
  %i.dc = ptrtoint ptr %i.ch to i64
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = shl nsw i64 %i.dd, 4
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !973
  %i.dg = ptrtoint ptr %i.d to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.dj, %i.de
  %i.dl = sub i64 %i.dk, %i.cu
  store ptr %i.ci, ptr %9, align 8, !tbaa !3483
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.db, i64 noundef %i.dl, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1931   ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1934 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !973  ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 128             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -8
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 7                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -144115188075855872
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !973
  %i.s = shl nsw i64 %i.p, 7
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !802
  %i.w = load i32, ptr %i.b, align 4, !tbaa !802  ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1934 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 4
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !973 ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1934 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !973
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
end_hunk_7
