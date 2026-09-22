Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl11detectEdgesERKNS_11_InputArrayE:bb.a
  %.not.i.i.i193 = icmp eq ptr %i.tn, %i.te
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEC2ERKS6_.exit
  %.not.i.i1.i = icmp eq ptr %i.tb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.sv) #43
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

bb.bm:                                            ; preds = %.lr.ph221, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.to = load ptr, ptr %i.cu, align 8, !tbaa !170
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %indvars.iv ; 3 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !59
  switch i8 %i.tq, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit [
    i8 -2, label %bb.bn
    i8 -1, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.tp, align 1, !tbaa !59
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.bo:                                            ; preds = %bb.bm
  store i8 -2, ptr %i.tp, align 1, !tbaa !59
  %i.tr = load i32, ptr %i.bv, align 8, !tbaa !169 ; 2 uses
  %i.ts = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.tt = sdiv i32 %i.ts, %i.tr                   ; 2 uses
  %i.tu = srem i32 %i.ts, %i.tr                   ; 2 uses
  %i.tv = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 5 uses
  %i.tw = load ptr, ptr %i.oe, align 8, !tbaa !150
  %.not.i.i195 = icmp eq ptr %i.tv, %i.tw
  br i1 %.not.i.i195, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.5.0.insert.ext = zext i32 %i.tt to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.tu to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.tv, align 4
  %i.tx = load ptr, ptr %i.ah, align 8, !tbaa !162
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store ptr %i.ty, ptr %i.ah, align 8, !tbaa !162
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.tz = load ptr, ptr %i.af, align 8, !tbaa !149 ; 5 uses
  %i.ua = ptrtoint ptr %i.tv to i64
  %i.ub = ptrtoint ptr %i.tz to i64               ; 2 uses
  %i.uc = sub i64 %i.ua, %i.ub                    ; 3 uses
  %i.ud = icmp eq i64 %i.uc, 9223372036854775800
  br i1 %i.ud, label %bb.br, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #44
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.ue = ashr exact i64 %i.uc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ue, i64 1)
  %i.uf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ue ; 2 uses
  %i.ug = icmp ult i64 %i.uf, %i.ue
  %i.uh = call i64 @llvm.umin.i64(i64 %i.uf, i64 1152921504606846975)
  %i.ui = select i1 %i.ug, i64 1152921504606846975, i64 %i.uh ; 3 uses
  %.not.i.i.i.i196 = icmp ne i64 %i.ui, 0
  call void @llvm.assume(i1 %.not.i.i.i.i196)
  %i.uj = shl nuw nsw i64 %i.ui, 3
  %i.uk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uj) #41 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uc
  %.sroa.5.0.insert.ext202 = zext i32 %i.tt to i64
  %.sroa.5.0.insert.shift203 = shl nuw i64 %.sroa.5.0.insert.ext202, 32
  %.sroa.0.0.insert.ext198 = zext nneg i32 %i.tu to i64
  %.sroa.0.0.insert.insert200 = or disjoint i64 %.sroa.5.0.insert.shift203, %.sroa.0.0.insert.ext198
  store i64 %.sroa.0.0.insert.insert200, ptr %i.ul, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tz, %i.tv
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i.i ], [ %i.uk, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i.i ], [ %i.tz, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.um = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !379, !noalias !378
  store i64 %i.um, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !378, !noalias !379
  %i.un = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.un, %i.tv
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.uk, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.uo, %.lr.ph.i.i.i.i.i.i ]
  %i.up = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.uq = load ptr, ptr %i.oe, align 8, !tbaa !150
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = sub i64 %i.ur, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.us) #43
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.uk, ptr %i.af, align 8, !tbaa !149
  store ptr %i.up, ptr %i.ah, align 8, !tbaa !162
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.ui
  store ptr %i.ut, ptr %i.oe, align 8, !tbaa !150
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bp, %bb.bm, %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.uu = load i32, ptr %i.bv, align 8, !tbaa !169
  %i.uv = load i32, ptr %i.bs, align 4, !tbaa !168
  %i.uw = mul nsw i32 %i.uv, %i.uu
  %i.ux = sext i32 %i.uw to i64
  %i.uy = icmp slt i64 %indvars.iv.next, %i.ux
  br i1 %i.uy, label %bb.bm, label %._crit_edge222, !llvm.loop !358

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %bb.bl, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ai, %._crit_edge236
  ret void
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #42
  ret void
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl15ComputeGradientEv(ptr noundef nonnull align 8 dereferenceable(2216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.cv::ximgproc::ComputeGradientBody", align 8 ; 13 uses
  %2 = alloca %"class.cv::Range", align 4         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169  ; 7 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !168 ; 2 uses
  %.pre24 = add i32 %.pre, -1
  br label %.preheader

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.e = load i32, ptr %i.d, align 4, !tbaa !156
  %i.f = trunc i32 %i.e to i16
  %i.g = add i16 %i.f, -1                         ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !168  ; 5 uses
  %i.l = add i32 %i.k, -1                         ; 5 uses
  %i.m = mul nsw i32 %i.l, %i.b
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 8 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.i, i64 %i.n ; 7 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  %i.o = shl nsw i64 %i.n, 1
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check25 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.q, align 2, !tbaa !84
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2, !tbaa !84
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.s, align 2, !tbaa !84
  store <8 x i16> %broadcast.splat, ptr %i.t, align 2, !tbaa !84
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !388

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert27 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat28 = shufflevector <4 x i16> %broadcast.splatinsert27, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr [2 x i8], ptr %invariant.gep, i64 %index29
  store <4 x i16> %broadcast.splat28, ptr %i.v, align 2, !tbaa !84
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index29
  store <4 x i16> %broadcast.splat28, ptr %i.w, align 2, !tbaa !84
  %index.next30 = add nuw i64 %index29, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !381

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %n.vec26, %wide.trip.count
  br i1 %cmp.n31, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  store i16 %i.g, ptr %gep.prol, align 2, !tbaa !84
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.prol
  store i16 %i.g, ptr %i.y, align 2, !tbaa !84
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !382

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %.preheader, label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %..preheader_crit_edge
  %.pre-phi = phi i32 [ %.pre24, %..preheader_crit_edge ], [ %i.l, %middle.block ], [ %i.l, %vec.epilog.middle.block ], [ %i.l, %vec.epilog.scalar.ph ], [ %i.l, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ab = phi i32 [ %.pre, %..preheader_crit_edge ], [ %i.k, %middle.block ], [ %i.k, %vec.epilog.middle.block ], [ %i.k, %vec.epilog.scalar.ph ], [ %i.k, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %iter.check46, label %._crit_edge

iter.check46:                                     ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !156
  %i.af = trunc i32 %i.ae to i16
  %i.ag = add i16 %i.af, -1                       ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 14 uses
  %i.aj = sext i32 %i.b to i64                    ; 10 uses
  %wide.trip.count22 = zext i32 %.pre-phi to i64  ; 4 uses
  %i.ak = add nsw i64 %wide.trip.count22, -1      ; 7 uses
  %min.iters.check32 = icmp ugt i64 %i.ak, 3
  %ident.check.not = icmp eq i32 %i.b, 1
  %or.cond60 = and i1 %min.iters.check32, %ident.check.not
  br i1 %or.cond60, label %vector.main.loop.iter.check33, label %vec.epilog.scalar.ph47.preheader

vector.main.loop.iter.check33:                    ; preds = %iter.check46
  %min.iters.check34 = icmp ult i64 %i.ak, 16
  br i1 %min.iters.check34, label %vec.epilog.ph50, label %vector.ph35

vector.ph35:                                      ; preds = %vector.main.loop.iter.check33
  %i.al = and i64 %i.ak, 12
  %n.vec36 = and i64 %i.ak, -16                   ; 4 uses
  %i.am = or disjoint i64 %n.vec36, 1
  %broadcast.splatinsert37 = insertelement <8 x i16> poison, i16 %i.ag, i64 0
  %broadcast.splat38 = shufflevector <8 x i16> %broadcast.splatinsert37, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.ph35, %vector.body39
  %index40 = phi i64 [ 0, %vector.ph35 ], [ %index.next41, %vector.body39 ] ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.ai, i64 %index40 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  %i.ap = getelementptr i8, ptr %i.an, i64 18
  store <8 x i16> %broadcast.splat38, ptr %i.ao, align 2, !tbaa !84
  store <8 x i16> %broadcast.splat38, ptr %i.ap, align 2, !tbaa !84
  %i.aq = getelementptr [2 x i8], ptr %i.ai, i64 %index40 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  %i.as = getelementptr i8, ptr %i.aq, i64 18
  store <8 x i16> %broadcast.splat38, ptr %i.ar, align 2, !tbaa !84
  store <8 x i16> %broadcast.splat38, ptr %i.as, align 2, !tbaa !84
  %index.next41 = add nuw i64 %index40, 16        ; 2 uses
  %i.at = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.at, label %middle.block42, label %vector.body39, !llvm.loop !383

middle.block42:                                   ; preds = %vector.body39
  %cmp.n43 = icmp eq i64 %i.ak, %n.vec36
  br i1 %cmp.n43, label %._crit_edge, label %vec.epilog.iter.check48

vec.epilog.iter.check48:                          ; preds = %middle.block42
  %min.epilog.iters.check49 = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check49, label %vec.epilog.scalar.ph47.preheader, label %vec.epilog.ph50, !prof !388

vec.epilog.ph50:                                  ; preds = %vector.main.loop.iter.check33, %vec.epilog.iter.check48
  %vec.epilog.resume.val44 = phi i64 [ %n.vec36, %vec.epilog.iter.check48 ], [ 0, %vector.main.loop.iter.check33 ]
  %n.vec51 = and i64 %i.ak, -4                    ; 3 uses
  %i.au = or disjoint i64 %n.vec51, 1
  %broadcast.splatinsert52 = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %broadcast.splat53 = shufflevector <4 x i16> %broadcast.splatinsert52, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body54

vec.epilog.vector.body54:                         ; preds = %vec.epilog.vector.body54, %vec.epilog.ph50
  %index55 = phi i64 [ %vec.epilog.resume.val44, %vec.epilog.ph50 ], [ %index.next56, %vec.epilog.vector.body54 ] ; 3 uses
  %i.av = getelementptr [2 x i8], ptr %i.ai, i64 %index55
  %i.aw = getelementptr i8, ptr %i.av, i64 2
  store <4 x i16> %broadcast.splat53, ptr %i.aw, align 2, !tbaa !84
  %i.ax = getelementptr [2 x i8], ptr %i.ai, i64 %index55
  %i.ay = getelementptr i8, ptr %i.ax, i64 2
  store <4 x i16> %broadcast.splat53, ptr %i.ay, align 2, !tbaa !84
  %index.next56 = add nuw i64 %index55, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.az, label %vec.epilog.middle.block57, label %vec.epilog.vector.body54, !llvm.loop !384

vec.epilog.middle.block57:                        ; preds = %vec.epilog.vector.body54
  %cmp.n58 = icmp eq i64 %i.ak, %n.vec51
  br i1 %cmp.n58, label %._crit_edge, label %vec.epilog.scalar.ph47.preheader

vec.epilog.scalar.ph47.preheader:                 ; preds = %iter.check46, %vec.epilog.iter.check48, %vec.epilog.middle.block57
  %indvars.iv19.ph = phi i64 [ 1, %iter.check46 ], [ %i.am, %vec.epilog.iter.check48 ], [ %i.au, %vec.epilog.middle.block57 ] ; 4 uses
  %i.ba = sub nsw i64 %wide.trip.count22, %indvars.iv19.ph
  %xtraiter61 = and i64 %i.ba, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %vec.epilog.scalar.ph47.prol.loopexit, label %vec.epilog.scalar.ph47.prol

vec.epilog.scalar.ph47.prol:                      ; preds = %vec.epilog.scalar.ph47.preheader, %vec.epilog.scalar.ph47.prol
  %indvars.iv19.prol = phi i64 [ %indvars.iv.next20.prol, %vec.epilog.scalar.ph47.prol ], [ %indvars.iv19.ph, %vec.epilog.scalar.ph47.preheader ] ; 2 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %vec.epilog.scalar.ph47.prol ], [ 0, %vec.epilog.scalar.ph47.preheader ]
  %indvars.iv.next20.prol = add nuw nsw i64 %indvars.iv19.prol, 1 ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv.next20.prol, %i.aj
  %i.bc = getelementptr [2 x i8], ptr %i.ai, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  store i16 %i.ag, ptr %i.bd, align 2, !tbaa !84
  %i.be = mul nsw i64 %indvars.iv19.prol, %i.aj
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.be
  store i16 %i.ag, ptr %i.bf, align 2, !tbaa !84
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %vec.epilog.scalar.ph47.prol.loopexit, label %vec.epilog.scalar.ph47.prol, !llvm.loop !385

vec.epilog.scalar.ph47.prol.loopexit:             ; preds = %vec.epilog.scalar.ph47.prol, %vec.epilog.scalar.ph47.preheader
  %indvars.iv19.unr = phi i64 [ %indvars.iv19.ph, %vec.epilog.scalar.ph47.preheader ], [ %indvars.iv.next20.prol, %vec.epilog.scalar.ph47.prol ]
  %i.bg = sub nsw i64 %indvars.iv19.ph, %wide.trip.count22
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %vec.epilog.scalar.ph47

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.g, ptr %gep, align 2, !tbaa !84
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  store i16 %i.g, ptr %i.bi, align 2, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i16 %i.g, ptr %gep.1, align 2, !tbaa !84
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next
  store i16 %i.g, ptr %i.bj, align 2, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store i16 %i.g, ptr %gep.2, align 2, !tbaa !84
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i16 %i.g, ptr %i.bk, align 2, !tbaa !84
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store i16 %i.g, ptr %gep.3, align 2, !tbaa !84
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i16 %i.g, ptr %i.bl, align 2, !tbaa !84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !386

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph47.prol.loopexit, %vec.epilog.scalar.ph47, %middle.block42, %vec.epilog.middle.block57, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc19ComputeGradientBodyE, i64 16), ptr %1, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.bm) #42
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !173
  %i.bo = and i32 %i.bn, -4096
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !173
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 5 uses
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.bp) #42
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !173
  %i.br = and i32 %i.bq, -4096
  %i.bs = or disjoint i32 %i.br, 2
  store i32 %i.bs, ptr %i.bp, align 8, !tbaa !173
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 5 uses
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.bt) #42
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !173
  %i.bv = and i32 %i.bu, -4096
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !173
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %i.bm, ptr noundef nonnull align 8 dereferenceable(208) %i.bw)
          to label %bb.b unwind label %bb.f       ; 0 uses

vec.epilog.scalar.ph47:                           ; preds = %vec.epilog.scalar.ph47.prol.loopexit, %vec.epilog.scalar.ph47
  %indvars.iv19 = phi i64 [ %indvars.iv.next20.3, %vec.epilog.scalar.ph47 ], [ %indvars.iv19.unr, %vec.epilog.scalar.ph47.prol.loopexit ] ; 5 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.by = mul nsw i64 %indvars.iv.next20, %i.aj
  %i.bz = getelementptr [2 x i8], ptr %i.ai, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  store i16 %i.ag, ptr %i.ca, align 2, !tbaa !84
  %i.cb = mul nsw i64 %indvars.iv19, %i.aj
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.cb
  store i16 %i.ag, ptr %i.cc, align 2, !tbaa !84
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 2 uses
  %i.cd = mul nsw i64 %indvars.iv.next20.1, %i.aj
  %i.ce = getelementptr [2 x i8], ptr %i.ai, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  store i16 %i.ag, ptr %i.cf, align 2, !tbaa !84
  %i.cg = mul nsw i64 %indvars.iv.next20, %i.aj
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.cg
  store i16 %i.ag, ptr %i.ch, align 2, !tbaa !84
  %indvars.iv.next20.2 = add nuw nsw i64 %indvars.iv19, 3 ; 2 uses
  %i.ci = mul nsw i64 %indvars.iv.next20.2, %i.aj
  %i.cj = getelementptr [2 x i8], ptr %i.ai, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  store i16 %i.ag, ptr %i.ck, align 2, !tbaa !84
  %i.cl = mul nsw i64 %indvars.iv.next20.1, %i.aj
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.cl
  store i16 %i.ag, ptr %i.cm, align 2, !tbaa !84
  %indvars.iv.next20.3 = add nuw nsw i64 %indvars.iv19, 4 ; 3 uses
  %i.cn = mul nsw i64 %indvars.iv.next20.3, %i.aj
  %i.co = getelementptr [2 x i8], ptr %i.ai, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  store i16 %i.ag, ptr %i.cp, align 2, !tbaa !84
  %i.cq = mul nsw i64 %indvars.iv.next20.2, %i.aj
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.cq
  store i16 %i.ag, ptr %i.cr, align 2, !tbaa !84
  %exitcond23.not.3 = icmp eq i64 %indvars.iv.next20.3, %wide.trip.count22
  br i1 %exitcond23.not.3, label %._crit_edge, label %vec.epilog.scalar.ph47, !llvm.loop !387

bb.b:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.ct = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %i.bp, ptr noundef nonnull align 8 dereferenceable(208) %i.cs)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.cv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %i.bt, ptr noundef nonnull align 8 dereferenceable(208) %i.cu)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !389, !range !81, !noundef !82
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.db = load <2 x i32>, ptr %i.da, align 8, !tbaa !44
  %i.dc = shufflevector <2 x i32> %i.db, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dc, ptr %i.cw, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !390
  %i.df = add nsw i32 %i.de, -1
  store i32 1, ptr %2, align 4, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !73
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef -1.000000e+00)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc19ComputeGradientBodyE, i64 16), ptr %1, align 8, !tbaa !86
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bt) #42, !inline_history !191
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bp) #42, !inline_history !191
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #42, !inline_history !191
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(641) %1) #42, !inline_history !191
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  ret void

end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl24GenerateCandidateCirclesEv:bb.a
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [152 x i8], ptr %i.ex, i64 %i.fb ; 2 uses
  %i.fd = load <2 x double>, ptr %i.i, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.ff = load <2 x double>, ptr %i.ey, align 8, !tbaa !46
  store <2 x double> %i.fd, ptr %i.fc, align 8, !tbaa !46
  store <2 x double> %i.ff, ptr %i.fe, align 8, !tbaa !46
  %i.fg = sitofp i32 %i.ez to double
  %i.fh = call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl23computeEllipsePerimeterEP15EllipseEquation(ptr noundef nonnull readonly %1)
  %i.fi = fdiv double %i.fg, %i.fh
  %i.fj = load i32, ptr %i.h, align 8, !tbaa !44
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [152 x i8], ptr %i.ex, i64 %i.fk ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store double %i.fi, ptr %i.fm, align 8, !tbaa !250
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store ptr %i.en, ptr %i.fn, align 8, !tbaa !251
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store ptr %i.eo, ptr %i.fo, align 8, !tbaa !252
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  store i32 %i.ez, ptr %i.fp, align 8, !tbaa !253
  %i.fq = load i32, ptr %i.h, align 8, !tbaa !44
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [152 x i8], ptr %i.ex, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ft, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !254
  %i.fu = load i32, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [152 x i8], ptr %i.ex, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  store double %i.ep, ptr %i.fx, align 8, !tbaa !255
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  store i8 1, ptr %i.fy, align 8, !tbaa !256
  %i.fz = add nsw i32 %i.fu, 1
  store i32 %i.fz, ptr %i.h, align 8, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.k, %bb.l, %.thread, %bb.e, %bb.u, %bb.m, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !265
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next, %i.gd
  br i1 %i.ge, label %bb.b, label %._crit_edge, !llvm.loop !588
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl15ValidateCirclesEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2216) initializes((2048, 2056)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.EllipseEquation, align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  store double f0x3FC921FB54442D18, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = shl nsw i32 %i.f, 3                      ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i32 %i.f, 0
  %i.j = shl nsw i64 %i.h, 3
  %i.k = select i1 %i.i, i64 -1, i64 %i.j         ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #41 ; 4 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #41 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.t = load i8, ptr %i.s, align 1, !tbaa !215, !range !81, !noundef !82
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.b, align 8, !tbaa !169  ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !168  ; 2 uses
  %i.x = add nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = sdiv i32 %i.x, 8
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call double @log10(double noundef %i.z) #42
  %i.ab = sitofp i32 %i.w to double
  %i.ac = tail call double @log10(double noundef %i.ab) #42
  %i.ad = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41 ; 10 uses
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.y, i32 60) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !40
  %i.ag = sext i32 %i.ae to i64
  %i.ah = icmp slt i32 %i.x, -7
  %i.ai = shl nsw i64 %i.ag, 2
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #41
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.al = fadd double %i.aa, %i.ac
  %i.am = fmul double %i.al, 2.000000e+00
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store double 1.250000e-01, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store double %i.am, ptr %i.ao, align 8, !tbaa !43
  store i32 1, ptr %i.ak, align 4, !tbaa !44
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %.lr.ph36.i, label %_ZN6NFALUTC2Eidd.exit

.lr.ph36.i:                                       ; preds = %.noexc, %._crit_edge28.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge28.thread.i ], [ 1, %.noexc ] ; 6 uses
  %i.ar = phi i32 [ %i.bh, %._crit_edge28.thread.i ], [ %i.ap, %.noexc ]
  %.02031.i = phi i32 [ %.4.i, %._crit_edge28.thread.i ], [ 1, %.noexc ] ; 5 uses
  %i.as = add nuw nsw i32 %i.ar, 1
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  store i32 %i.as, ptr %i.au, align 4, !tbaa !44
  %i.av = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.aw = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.av, i32 noundef %.02031.i)
  %i.ax = fcmp olt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %.preheader.i, label %._crit_edge28.thread47.i

.preheader.i:                                     ; preds = %.lr.ph36.i
  %i.ay = sext i32 %.02031.i to i64
  %i.az = icmp sgt i64 %indvars.iv.i, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge28.thread.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = zext i32 %i.bb to i64
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.ba
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.12126.i = phi i32 [ %i.bb, %bb.d ], [ %.02031.i, %.preheader.i ]
  %i.bb = add nsw i32 %.12126.i, 1                ; 6 uses
  %i.bc = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.av, i32 noundef %i.bb) ; 2 uses
  %i.bd = fcmp ult double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %._crit_edge28.thread47.i, !llvm.loop !0

._crit_edge28.i:                                  ; preds = %bb.d
  %i.be = fcmp olt double %i.bc, 0.000000e+00
  br i1 %i.be, label %._crit_edge28.thread.i, label %._crit_edge28.thread47.i

._crit_edge28.thread47.i:                         ; preds = %.lr.ph.i, %._crit_edge28.i, %.lr.ph36.i
  %.3.i = phi i32 [ %i.bb, %._crit_edge28.i ], [ %.02031.i, %.lr.ph36.i ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  store i32 %.3.i, ptr %i.bg, align 4, !tbaa !44
  br label %._crit_edge28.thread.i

._crit_edge28.thread.i:                           ; preds = %._crit_edge28.thread47.i, %._crit_edge28.i, %.preheader.i
  %.4.i = phi i32 [ %.3.i, %._crit_edge28.thread47.i ], [ %i.bb, %._crit_edge28.i ], [ %.02031.i, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bh = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next.i, %i.bi
  br i1 %i.bj, label %.lr.ph36.i, label %_ZN6NFALUTC2Eidd.exit, !llvm.loop !1

_ZN6NFALUTC2Eidd.exit:                            ; preds = %._crit_edge28.thread.i, %.noexc
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !140
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #43
  resume { ptr, i32 } %i.bk

bb.f:                                             ; preds = %_ZN6NFALUTC2Eidd.exit, %bb.b, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !236
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2128
  br label %bb.g

._crit_edge336:                                   ; preds = %bb.bn, %bb.f
  %.0248.lcssa = phi i32 [ 0, %bb.f ], [ %.3251, %bb.bn ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2148
  store i32 %.0248.lcssa, ptr %i.bs, align 4, !tbaa !270
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #43
  ret void

bb.g:                                             ; preds = %.lr.ph335, %bb.bn
  %.0244332 = phi i32 [ 0, %.lr.ph335 ], [ %.3247, %bb.bn ] ; 6 uses
  %.0248331 = phi i32 [ 0, %.lr.ph335 ], [ %.3251, %bb.bn ] ; 8 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !237
  %i.bu = sext i32 %.0244332 to i64               ; 2 uses
  %i.bv = getelementptr inbounds [152 x i8], ptr %i.bt, i64 %i.bu ; 13 uses
  %i.bw = load <2 x double>, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !248 ; 3 uses
  %i.bz = load i32, ptr %i.b, align 8, !tbaa !169
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !168
  %. = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %i.ca)
  %i.cb = sitofp i32 %. to double
  %i.cc = fcmp ogt double %i.by, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = add nsw i32 %.0244332, 1
  br label %bb.bn, !llvm.loop !589

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 3 uses
  %i.cf = tail call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl23computeEllipsePerimeterEP15EllipseEquation(ptr noundef nonnull %i.ce)
  %i.cg = fptosi double %i.cf to i32              ; 3 uses
  %i.ch = icmp slt i32 %i.g, %i.cg
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = add nsw i32 %.0244332, 1
  br label %bb.bn, !llvm.loop !589

bb.k:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2cv8ximgproc15EdgeDrawingImpl20ComputeEllipsePointsEPdS2_S2_i(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i32 noundef %i.cg)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.by, double f0x401921FB54442D18, double 5.000000e-01)
  %i.cn = fptosi double %i.cm to i32
  %i.co = sitofp i32 %i.cn to double
  %i.cp = fdiv double f0x401921FB54442D18, %i.co
  %i.cq = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i290 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i291, %bb.n ] ; 3 uses
  %.01920.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cu, %bb.n ] ; 3 uses
  %i.cs = tail call double @cos(double noundef %.01920.i) #42
  %i.ct = tail call double @sin(double noundef %.01920.i) #42
  %i.cu = fadd double %i.cp, %.01920.i            ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i290
  %i.cw = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cr, <2 x double> %i.bw)
  %i.cz = fadd <2 x double> %i.cy, splat (double 5.000000e-01)
  %i.da = fptosi <2 x double> %i.cz to <2 x i32>
  %i.db = sitofp <2 x i32> %i.da to <2 x double>  ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  store double %i.dc, ptr %i.cv, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i290
  %i.de = extractelement <2 x double> %i.db, i64 1
  store double %i.de, ptr %i.dd, align 8, !tbaa !46
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i290, 1 ; 2 uses
  %i.df = fcmp olt double %i.cu, f0x401921FB54442D18
  br i1 %i.df, label %bb.n, label %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit, !llvm.loop !24

_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit: ; preds = %bb.n
  %i.dg = trunc nuw i64 %indvars.iv.next.i291 to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit, %bb.l
  %.0294 = phi i32 [ %i.cg, %bb.l ], [ %i.dg, %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit ] ; 2 uses
  %i.dh = icmp sgt i32 %.0294, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %wide.trip.count = zext nneg i32 %.0294 to i64
  %i.dm = extractelement <2 x double> %i.bw, i64 0 ; 3 uses
  %i.dn = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.bg, %bb.o
  %.0231.lcssa = phi i32 [ 0, %bb.o ], [ %.1232, %bb.bg ] ; 3 uses
  %.0229.lcssa = phi i32 [ 0, %bb.o ], [ %.3, %bb.bg ] ; 2 uses
  br i1 %1, label %bb.bh, label %.critedge

bb.p:                                             ; preds = %.lr.ph, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bg ] ; 3 uses
  %.0229328 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.bg ] ; 13 uses
  %.0231327 = phi i32 [ 0, %.lr.ph ], [ %.1232, %bb.bg ] ; 2 uses
  %i.do = phi <2 x i32> [ splat (i32 -1), %.lr.ph ], [ %i.mq, %bb.bg ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !46
  %i.dt = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dq, i64 1
  %i.dv = fadd <2 x double> %i.du, splat (double 5.000000e-01)
  %i.dw = fptosi <2 x double> %i.dv to <2 x i32>  ; 12 uses
  %i.dx = extractelement <2 x i32> %i.dw, i64 1   ; 25 uses
  %i.dy = extractelement <2 x i32> %i.dw, i64 0   ; 33 uses
  %i.dz = icmp eq <2 x i32> %i.do, %i.dw          ; 2 uses
  %i.ea = extractelement <2 x i1> %i.dz, i64 0
  %i.eb = extractelement <2 x i1> %i.dz, i64 1
  %or.cond = select i1 %i.eb, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = add nsw i32 %.0231327, 1                ; 12 uses
  %i.ed = icmp slt i32 %i.dx, 1
  br i1 %i.ed, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = load i32, ptr %i.d, align 4, !tbaa !168 ; 3 uses
  %i.ef = add nsw i32 %i.ee, -1                   ; 3 uses
  %.not = icmp sle i32 %i.ef, %i.dx
  %i.eg = icmp slt i32 %i.dy, 1
  %or.cond289 = select i1 %.not, i1 true, i1 %i.eg
  br i1 %or.cond289, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = load i32, ptr %i.b, align 8, !tbaa !169 ; 15 uses
  %i.ei = add nsw i32 %i.eh, -1                   ; 3 uses
  %.not278 = icmp sgt i32 %i.ei, %i.dy
  br i1 %.not278, label %bb.t, label %bb.bg

bb.t:                                             ; preds = %bb.s
  %i.ej = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 17 uses
  %i.ek = mul nuw nsw i32 %i.eh, %i.dx            ; 9 uses
  %i.el = add nsw i32 %i.ek, %i.dy
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !59
  %.not279 = icmp eq i8 %i.eo, -1
  br i1 %.not279, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = uitofp nneg i32 %i.dx to double
  %i.eq = fsub double %i.ep, %i.dn                ; 2 uses
  %i.er = uitofp nneg i32 %i.dy to double         ; 2 uses
  %i.es = fsub double %i.eq, %i.er
  %i.et = fadd double %i.dm, %i.es
  %i.eu = fptosi double %i.et to i32
  %i.ev = fadd double %i.eq, %i.er
  %i.ew = fsub double %i.ev, %i.dm
  %i.ex = fptosi double %i.ew to i32
  %i.ey = icmp slt i32 %i.eu, 0
  %i.ez = icmp sgt i32 %i.ex, 0                   ; 2 uses
  br i1 %i.ey, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  br i1 %i.ez, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %.not283 = icmp eq i32 %i.dy, 1
  br i1 %.not283, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.fb = add nsw i32 %i.ek, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.ej, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !59
  %i.ff = icmp eq i8 %i.fe, -1
  br i1 %i.ff, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fg = add nuw nsw i32 %i.dy, 1                ; 3 uses
  %i.fh = icmp samesign ult i32 %i.fg, %i.ei
  br i1 %i.fh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = add nsw i32 %i.ek, %i.fg
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.ej, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !59
  %i.fm = icmp eq i8 %i.fl, -1
  br i1 %i.fm, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fn = icmp samesign ugt i32 %i.dy, 3
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = add nsw i32 %i.dy, -2                   ; 2 uses
  %i.fp = add nsw i32 %i.ek, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.ej, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !59
  %i.ft = icmp eq i8 %i.fs, -1
  br i1 %i.ft, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fu = add nuw nsw i32 %i.dy, 2                ; 3 uses
  %i.fv = add nsw i32 %i.eh, -2
  %i.fw = icmp samesign ult i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.ad, label %bb.bg

bb.ad:                                            ; preds = %bb.ac
  %i.fx = add nsw i32 %i.ek, %i.fu
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.ej, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !59
  %i.gb = icmp eq i8 %i.ga, -1
  br i1 %i.gb, label %.thread, label %bb.bg

bb.ae:                                            ; preds = %bb.v
  %.not282 = icmp eq i32 %i.dx, 1
  br i1 %.not282, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = add nsw i32 %i.dx, -1                   ; 2 uses
  %i.gd = mul nuw nsw i32 %i.eh, %i.gc
  %i.ge = add nsw i32 %i.gd, %i.dy
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ej, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !59
  %i.gi = icmp eq i8 %i.gh, -1
  br i1 %i.gi, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gj = add nuw nsw i32 %i.dx, 1                ; 3 uses
  %i.gk = icmp samesign ult i32 %i.gj, %i.ef
  br i1 %i.gk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gl = mul nuw nsw i32 %i.eh, %i.gj
  %i.gm = add nuw nsw i32 %i.gl, %i.dy
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !59
  %i.gq = icmp eq i8 %i.gp, -1
  br i1 %i.gq, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gr = icmp samesign ugt i32 %i.dx, 3
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gs = add nsw i32 %i.dx, -2                   ; 2 uses
  %i.gt = mul nuw nsw i32 %i.eh, %i.gs
  %i.gu = add nuw nsw i32 %i.gt, %i.dy
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !59
  %i.gy = icmp eq i8 %i.gx, -1
  br i1 %i.gy, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gz = add nuw nsw i32 %i.dx, 2                ; 3 uses
  %i.ha = add nsw i32 %i.ee, -2
  %i.hb = icmp samesign ult i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.al, label %bb.bg

bb.al:                                            ; preds = %bb.ak
  %i.hc = mul nuw nsw i32 %i.eh, %i.gz
  %i.hd = add nuw nsw i32 %i.hc, %i.dy
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !59
  %i.hh = icmp eq i8 %i.hg, -1
  br i1 %i.hh, label %.thread, label %bb.bg

bb.am:                                            ; preds = %bb.u
  br i1 %i.ez, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %.not281 = icmp eq i32 %i.dx, 1
  br i1 %.not281, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = add nsw i32 %i.dx, -1                   ; 2 uses
  %i.hj = mul nuw nsw i32 %i.eh, %i.hi
  %i.hk = add nsw i32 %i.hj, %i.dy
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.ej, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !59
  %i.ho = icmp eq i8 %i.hn, -1
  br i1 %i.ho, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hp = add nuw nsw i32 %i.dx, 1                ; 3 uses
  %i.hq = icmp samesign ult i32 %i.hp, %i.ef
  br i1 %i.hq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hr = mul nuw nsw i32 %i.eh, %i.hp
  %i.hs = add nuw nsw i32 %i.hr, %i.dy
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !59
  %i.hw = icmp eq i8 %i.hv, -1
  br i1 %i.hw, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hx = icmp samesign ugt i32 %i.dx, 3
  br i1 %i.hx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hy = add nsw i32 %i.dx, -2                   ; 2 uses
  %i.hz = mul nuw nsw i32 %i.eh, %i.hy
  %i.ia = add nuw nsw i32 %i.hz, %i.dy
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !59
  %i.ie = icmp eq i8 %i.id, -1
  br i1 %i.ie, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.if = add nuw nsw i32 %i.dx, 2                ; 3 uses
  %i.ig = add nsw i32 %i.ee, -2
  %i.ih = icmp samesign ult i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.au, label %bb.bg

bb.au:                                            ; preds = %bb.at
  %i.ii = mul nuw nsw i32 %i.eh, %i.if
  %i.ij = add nuw nsw i32 %i.ii, %i.dy
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !59
  %i.in = icmp eq i8 %i.im, -1
  br i1 %i.in, label %.thread, label %bb.bg

bb.av:                                            ; preds = %bb.am
  %.not280 = icmp eq i32 %i.dy, 1
  br i1 %.not280, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.io = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.ip = add nsw i32 %i.ek, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.ej, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !59
  %i.it = icmp eq i8 %i.is, -1
  br i1 %i.it, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.iu = add nuw nsw i32 %i.dy, 1                ; 3 uses
  %i.iv = icmp samesign ult i32 %i.iu, %i.ei
  br i1 %i.iv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add nsw i32 %i.ek, %i.iu
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.ej, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !59
  %i.ja = icmp eq i8 %i.iz, -1
  br i1 %i.ja, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jb = icmp samesign ugt i32 %i.dy, 3
  br i1 %i.jb, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jc = add nsw i32 %i.dy, -2                   ; 2 uses
  %i.jd = add nsw i32 %i.ek, %i.jc
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.ej, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !59
  %i.jh = icmp eq i8 %i.jg, -1
  br i1 %i.jh, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ji = add nuw nsw i32 %i.dy, 2                ; 3 uses
  %i.jj = add nsw i32 %i.eh, -2
  %i.jk = icmp samesign ult i32 %i.ji, %i.jj
  br i1 %i.jk, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.jl = add nsw i32 %i.ek, %i.ji
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.ej, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !59
  %i.jp = icmp eq i8 %i.jo, -1
  br i1 %i.jp, label %.thread, label %bb.bg

.thread:                                          ; preds = %bb.bc, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.ba, %bb.t
  %.1227 = phi i32 [ %i.dx, %bb.t ], [ %i.dx, %bb.bc ], [ %i.dx, %bb.ay ], [ %i.dx, %bb.aw ], [ %i.if, %bb.au ], [ %i.hy, %bb.as ], [ %i.hp, %bb.aq ], [ %i.hi, %bb.ao ], [ %i.gz, %bb.al ], [ %i.gs, %bb.aj ], [ %i.gj, %bb.ah ], [ %i.gc, %bb.af ], [ %i.dx, %bb.ad ], [ %i.dx, %bb.ab ], [ %i.dx, %bb.z ], [ %i.dx, %bb.x ], [ %i.dx, %bb.ba ] ; 5 uses
  %.1 = phi i32 [ %i.dy, %bb.t ], [ %i.ji, %bb.bc ], [ %i.iu, %bb.ay ], [ %i.io, %bb.aw ], [ %i.dy, %bb.au ], [ %i.dy, %bb.as ], [ %i.dy, %bb.aq ], [ %i.dy, %bb.ao ], [ %i.dy, %bb.al ], [ %i.dy, %bb.aj ], [ %i.dy, %bb.ah ], [ %i.dy, %bb.af ], [ %i.fu, %bb.ad ], [ %i.fo, %bb.ab ], [ %i.fg, %bb.z ], [ %i.fa, %bb.x ], [ %i.jc, %bb.ba ] ; 5 uses
  %i.jq = load i32, ptr %i.bq, align 8, !tbaa !173
  %i.jr = and i32 %i.jq, 4064
  %.not309 = icmp eq i32 %i.jr, 0
  %i.js = add nuw nsw i32 %.1227, 1
  %i.jt = mul nsw i32 %i.js, %i.eh
  %i.ju = add nsw i32 %i.jt, %.1
  %i.jv = sext i32 %i.ju to i64
  %i.jw = add nsw i32 %.1227, -1
  %i.jx = mul nsw i32 %i.jw, %i.eh
  %i.jy = add nsw i32 %i.jx, %.1
  %i.jz = sext i32 %i.jy to i64
  %i.ka = mul nsw i32 %.1227, %i.eh
  %i.kb = add nsw i32 %i.ka, %.1
  %i.kc = sext i32 %i.kb to i64
  %.399.v = select i1 %.not309, i64 352, i64 1240
  %.399 = getelementptr inbounds nuw i8, ptr %0, i64 %.399.v
  %.sink395 = load ptr, ptr %.399, align 8, !tbaa !591 ; 3 uses
  %i.kd = getelementptr i8, ptr %.sink395, i64 %i.jv ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !59
  %i.kg = zext i8 %i.kf to i32
  %i.kh = getelementptr i8, ptr %.sink395, i64 %i.jz ; 3 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 -1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !59
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sub nsw i32 %i.kg, %i.kk                ; 2 uses
  %i.km = getelementptr i8, ptr %i.kh, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !59
  %i.ko = zext i8 %i.kn to i32
  %i.kp = getelementptr i8, ptr %i.kd, i64 -1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !59
  %i.kr = zext i8 %i.kq to i32
  %i.ks = sub nsw i32 %i.ko, %i.kr                ; 2 uses
  %i.kt = add nsw i32 %i.ks, %i.kl
  %i.ku = getelementptr i8, ptr %.sink395, i64 %i.kc ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !59
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add nsw i32 %i.kt, %i.kx
  %i.kz = getelementptr i8, ptr %i.ku, i64 -1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !59
  %i.lb = zext i8 %i.la to i32
  %i.lc = sub nsw i32 %i.ky, %i.lb
  %i.ld = load i8, ptr %i.kd, align 1, !tbaa !59
  %i.le = zext i8 %i.ld to i32
  %i.lf = load i8, ptr %i.kh, align 1, !tbaa !59
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.kl, %i.le
  %i.li = sub nsw i32 %i.ks, %i.lh
  %.neg284 = add nsw i32 %i.li, %i.lg
  %i.lj = sitofp i32 %i.lc to float
  %i.lk = sitofp i32 %.neg284 to float
  %i.ll = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.lj, float noundef %i.lk) ; 2 uses
  %i.lm = fpext float %i.ll to double             ; 2 uses
  %i.ln = fcmp ogt float %i.ll, 1.800000e+02
  %i.lo = fadd nnan double %i.lm, -1.800000e+02
  %.0.i = select i1 %i.ln, double %i.lo, double %i.lm
  %i.lp = fdiv double %.0.i, 1.800000e+02
  %i.lq = fmul double %i.lp, f0x400921FB54442D18
  %i.lr = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread
  %3 = uitofp nneg i32 %.1 to double
  %4 = uitofp nneg i32 %.1227 to double
  %i.lt = load double, ptr %i.dk, align 8, !tbaa !46
  %5 = load <2 x double>, ptr %i.di, align 8, !tbaa !46
  %6 = load <2 x double>, ptr %i.dj, align 8, !tbaa !46
  %7 = fmul <2 x double> %5, <double 2.000000e+00, double 1.000000e+00>
  %8 = fmul <2 x double> %6, <double 1.000000e+00, double 2.000000e+00>
  %9 = insertelement <2 x double> poison, double %4, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x double> %8, %10
  %12 = insertelement <2 x double> poison, double %3, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %13, <2 x double> %11) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %16 = fadd double %i.lt, %15
  %i.lu = load double, ptr %i.dl, align 8, !tbaa !46
  %17 = extractelement <2 x double> %14, i64 1
  %i.lv = fadd double %i.lu, %17
  br label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.lw = uitofp nneg i32 %.1 to double
  %i.lx = fsub double %i.lw, %i.dm
  %i.ly = uitofp nneg i32 %.1227 to double
  %i.lz = fsub double %i.ly, %i.dn
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0222 = phi double [ %16, %bb.bd ], [ %i.lx, %bb.be ]
  %.0221 = phi double [ %i.lv, %bb.bd ], [ %i.lz, %bb.be ]
  %i.ma = fptrunc double %.0222 to float
  %i.mb = fptrunc double %.0221 to float
  %i.mc = fneg float %i.mb
  %i.md = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.ma, float noundef %i.mc) ; 2 uses
  %i.me = fpext float %i.md to double             ; 2 uses
  %i.mf = fcmp ogt float %i.md, 1.800000e+02
  %i.mg = fadd nnan double %i.me, -1.800000e+02
  %.0.i292 = select i1 %i.mf, double %i.mg, double %i.me
  %i.mh = fdiv double %.0.i292, 1.800000e+02
  %i.mi = fmul double %i.mh, f0x400921FB54442D18
  %i.mj = fsub double %i.lq, %i.mi
  %i.mk = tail call double @llvm.fabs.f64(double %i.mj) ; 2 uses
  %i.ml = load double, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.mm = fcmp ole double %i.mk, %i.ml
  %i.mn = fsub double f0x400921FB54442D18, %i.ml
  %i.mo = fcmp oge double %i.mk, %i.mn
  %or.cond287.not = or i1 %i.mm, %i.mo
  %i.mp = zext i1 %or.cond287.not to i32
  %.1230 = add nsw i32 %.0229328, %i.mp
  br label %bb.bg

bb.bg:                                            ; preds = %bb.au, %bb.at, %bb.bc, %bb.bb, %bb.ad, %bb.ac, %bb.al, %bb.ak, %bb.bf, %bb.s, %bb.q, %bb.r, %bb.p
  %.1232 = phi i32 [ %i.ec, %bb.bf ], [ %.0231327, %bb.p ], [ %i.ec, %bb.q ], [ %i.ec, %bb.r ], [ %i.ec, %bb.s ], [ %i.ec, %bb.ak ], [ %i.ec, %bb.al ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ad ], [ %i.ec, %bb.bb ], [ %i.ec, %bb.bc ], [ %i.ec, %bb.at ], [ %i.ec, %bb.au ] ; 2 uses
  %.3 = phi i32 [ %.1230, %bb.bf ], [ %.0229328, %bb.p ], [ %.0229328, %bb.q ], [ %.0229328, %bb.r ], [ %.0229328, %bb.s ], [ %.0229328, %bb.ak ], [ %.0229328, %bb.al ], [ %.0229328, %bb.ac ], [ %.0229328, %bb.ad ], [ %.0229328, %bb.bb ], [ %.0229328, %bb.bc ], [ %.0229328, %bb.at ], [ %.0229328, %bb.au ] ; 2 uses
  %i.mq = phi <2 x i32> [ %i.dw, %bb.bf ], [ %i.do, %bb.p ], [ %i.do, %bb.q ], [ %i.do, %bb.r ], [ %i.do, %bb.s ], [ %i.dw, %bb.ak ], [ %i.dw, %bb.al ], [ %i.dw, %bb.ac ], [ %i.dw, %bb.ad ], [ %i.dw, %bb.bb ], [ %i.dw, %bb.bc ], [ %i.dw, %bb.at ], [ %i.dw, %bb.au ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !590

bb.bh:                                            ; preds = %._crit_edge
  %i.mr = load ptr, ptr %i.n, align 8, !tbaa !140 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !40
  %.not.i = icmp slt i32 %.0231.lcssa, %i.mt
  br i1 %.not.i, label %_ZN6NFALUT20checkValidationByNFAEii.exit, label %.split

.split:                                           ; preds = %bb.bh
  %i.mu = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mr, i32 noundef %.0231.lcssa, i32 noundef %.0229.lcssa)
  %i.mv = fcmp ult double %i.mu, 0.000000e+00
  br i1 %i.mv, label %bb.bi, label %.critedge

_ZN6NFALUT20checkValidationByNFAEii.exit:         ; preds = %bb.bh
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !41
  %i.mx = sext i32 %.0231.lcssa to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !44
  %.not308 = icmp slt i32 %.0229.lcssa, %i.mz
  br i1 %.not308, label %bb.bi, label %.critedge

.critedge:                                        ; preds = %.split, %._crit_edge, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.na = load ptr, ptr %i.bo, align 8, !tbaa !237
  %i.nb = getelementptr inbounds [152 x i8], ptr %i.na, i64 %i.bu
  %i.nc = load ptr, ptr %i.br, align 8, !tbaa !271
  %i.nd = add nsw i32 %.0248331, 1
  %i.ne = sext i32 %.0248331 to i64
  %i.nf = getelementptr inbounds [152 x i8], ptr %i.nc, i64 %i.ne
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.nf, ptr noundef nonnull align 8 dereferenceable(152) %i.nb, i64 152, i1 false), !tbaa.struct !302
  br label %.thread301

bb.bi:                                            ; preds = %.split, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.ng = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.bj, label %.thread301

bb.bj:                                            ; preds = %bb.bi
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !250
  %i.nk = fcmp ult double %i.nj, 5.000000e-01
  br i1 %i.nk, label %.thread301, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !251
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !252
  %i.np = getelementptr inbounds nuw i8, ptr %i.bv, i64 56 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !253
  %i.nr = call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl10EllipseFitEPdS2_iP15EllipseEquationi(ptr noundef %i.nm, ptr noundef %i.no, i32 noundef %i.nq, ptr noundef nonnull %2, i32 noundef 1)
  br i1 %i.nr, label %bb.bl, label %.thread307

bb.bl:                                            ; preds = %bb.bk
  %i.ns = load ptr, ptr %i.nl, align 8, !tbaa !251
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !252
  %i.nu = load i32, ptr %i.np, align 8, !tbaa !253
  %i.nv = call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeEllipseErrorEP15EllipseEquationPdS4_i(ptr noundef nonnull %2, ptr noundef %i.ns, ptr noundef %i.nt, i32 noundef %i.nu) ; 2 uses
  %i.nw = fcmp ugt double %i.nv, 1.500000e+00
  br i1 %i.nw, label %.thread307, label %bb.bm

.thread301:                                       ; preds = %.critedge, %bb.bj, %bb.bi
  %.1249.ph = phi i32 [ %.0248331, %bb.bi ], [ %.0248331, %bb.bj ], [ %i.nd, %.critedge ]
  %i.nx = add nsw i32 %.0244332, 1
  br label %bb.bn

.thread307:                                       ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  %i.ny = add nsw i32 %.0244332, 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i8 1, ptr %i.cj, align 8, !tbaa !256
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store double %i.nv, ptr %i.nz, align 8, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !254
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.bn

bb.bn:                                            ; preds = %bb.j, %.thread301, %.thread307, %bb.bm, %bb.h
  %.3251 = phi i32 [ %.0248331, %bb.h ], [ %.0248331, %bb.j ], [ %.0248331, %bb.bm ], [ %.1249.ph, %.thread301 ], [ %.0248331, %.thread307 ] ; 2 uses
  %.3247 = phi i32 [ %i.cd, %bb.h ], [ %i.ci, %bb.j ], [ %.0244332, %bb.bm ], [ %i.nx, %.thread301 ], [ %i.ny, %.thread307 ] ; 2 uses
  %i.oa = load i32, ptr %i.bl, align 8, !tbaa !236
  %i.ob = icmp slt i32 %.3247, %i.oa
  br i1 %i.ob, label %bb.g, label %._crit_edge336
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl11JoinCirclesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.Circle, align 8             ; 4 uses
  %2 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %3 = alloca %struct.EllipseEquation, align 8    ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %4 = alloca %struct.EllipseEquation, align 8    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2148 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !270  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph28.preheader.i, label %_ZN2cv8ximgproc15EdgeDrawingImpl11sortCirclesEP6Circlei.exit

.lr.ph28.preheader.i:                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1
  %wide.trip.count36.i = zext nneg i32 %i.j to i64
  %wide.trip.count.i = zext nneg i32 %i.h to i64  ; 3 uses
  %i.k = add nsw i64 %wide.trip.count.i, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c, %.lr.ph28.preheader.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph28.preheader.i ], [ %indvars.iv.next34.i, %bb.c ] ; 6 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph28.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.l = trunc nuw nsw i64 %indvars.iv33.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %indvars.iv33.i ; 3 uses
  %.phi.trans.insert38.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 16
  %.pre.i = load double, ptr %.phi.trans.insert38.i, align 8, !tbaa !248 ; 3 uses
  %i.m = sub nsw i64 %indvars.iv33.i, %wide.trip.count.i
  %i.n = and i64 %i.m, 1
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.o = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !248 ; 2 uses
  %i.r = fcmp ogt double %i.q, %.pre.i            ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i.prol = select i1 %i.r, i32 %i.s, i32 %i.l ; 2 uses
  %indvars.iv.next31.i.prol = add nuw nsw i64 %indvars.iv.i, 1
  %i.t = select i1 %i.r, double %i.q, double %.pre.i
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.unr = phi double [ %.pre.i, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %indvars.iv30.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next31.i.prol, %.lr.ph.i.prol ]
  %.02224.i.unr = phi i32 [ %i.l, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.u = icmp eq i64 %i.k, %indvars.iv33.i
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.v = zext i32 %spec.select.i.lcssa to i64
  %.not.i = icmp eq i64 %indvars.iv33.i, %i.v
  br i1 %.not.i, label %bb.c, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.w = phi double [ %i.ai, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i.1, %.lr.ph.i ], [ %indvars.iv30.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.02224.i = phi i32 [ %spec.select.i.1, %.lr.ph.i ], [ %.02224.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %indvars.iv30.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !248 ; 2 uses
  %i.aa = fcmp ogt double %i.z, %i.w              ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv30.i to i32
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 %.02224.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.ac = select i1 %i.aa, double %i.z, double %i.w ; 2 uses
  %i.ad = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %indvars.iv.next31.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !248 ; 2 uses
  %i.ag = fcmp ogt double %i.af, %i.ac            ; 2 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv.next31.i to i32
  %spec.select.i.1 = select i1 %i.ag, i32 %i.ah, i32 %spec.select.i ; 2 uses
  %indvars.iv.next31.i.1 = add nuw nsw i64 %indvars.iv30.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next31.i.1, %wide.trip.count.i
end_hunk_1
