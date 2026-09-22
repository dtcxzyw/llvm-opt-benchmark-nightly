Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FilterFunctions?download=true
inline.NumInlined: 3070
inline.NumDeleted: 1405
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not.i.i65.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, label %._crit_edge.i.i69.i.i.i.i.i.i

._crit_edge.i.i69.i.i.i.i.i.i:                    ; preds = %bb.cn, %.preheader.i63.i.i.i.i.i.i
  %i.tb = trunc i32 %.pre5.i.i74.i.i.i.i.i.i to i8
  %i.tc = and i8 %i.tb, 7
  %i.td = shl nuw i8 1, %i.tc
  %i.te = lshr i64 %.pre6.i.i75.i.i.i.i.i.i, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !57
  %i.th = or i8 %i.tg, %i.td
  store i8 %i.th, ptr %i.tf, align 1, !tbaa !57
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i: ; preds = %._crit_edge.i.i69.i.i.i.i.i.i, %bb.cn
  %i.ti = add nsw i64 %.011.i64.i.i.i.i.i.i, -1
  %i.tj = and i64 %i.ti, %.011.i64.i.i.i.i.i.i    ; 2 uses
  %.not10.i68.i.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not10.i68.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i63.i.i.i.i.i.i, !llvm.loop !822

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i, %bb.cm, %._crit_edge.i.i.i.i.i.i, %bb.cf, %bb.cd, %bb.ca
  %i.tk = load ptr, ptr %43, align 8, !tbaa !229  ; 14 uses
  %i.tl = load i32, ptr %i.gc, align 8, !tbaa !265 ; 17 uses
  %.not.i.i.i10.i.i = icmp sgt i32 %i.tl, 0
  br i1 %.not.i.i.i10.i.i, label %bb.co, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i

bb.co:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i
  %i.tm = and i32 %i.tl, 2147483584               ; 6 uses
  %.not3347.i.i.i.i.i = icmp eq i32 %i.tm, 0      ; 2 uses
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.co
  %i.tn = add nsw i32 %i.tl, -64
  %i.to = lshr i32 %i.tn, 3
  %i.tp = and i32 %i.to, 536870904
  %narrow.i.i.i = add nuw nsw i32 %i.tp, 8
  %i.tq = zext nneg i32 %narrow.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tk, i8 0, i64 %i.tq, i1 false), !tbaa !122
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.co
  %.not34.i.i.i.i.i = icmp eq i32 %i.tl, %i.tm    ; 4 uses
  br i1 %.not34.i.i.i.i.i, label %.thread.i.i, label %bb.cp

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i.i.i
  store i16 256, ptr %i.gd, align 4
  br label %iter.check

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.tr = lshr i32 %i.tl, 6
  %i.ts = and i32 %i.tl, 63
  %i.tt = zext nneg i32 %i.ts to i64
  %notmask.i37.i.i.i.i.i = shl nsw i64 -1, %i.tt  ; 2 uses
  %i.tu = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tu ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !122
  %i.tx = and i64 %i.tw, %notmask.i37.i.i.i.i.i
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !122
  store i16 256, ptr %i.gd, align 4
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i12.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.cp, %.thread.i.i
  %i.ty = zext nneg i32 %i.tm to i64              ; 5 uses
  %i.tz = call i64 @llvm.usub.sat.i64(i64 %i.ty, i64 64) ; 3 uses
  %i.ua = lshr exact i64 %i.tz, 6
  %i.ub = add nuw nsw i64 %i.ua, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.tz, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.tk, i64 8
  %i.uc = call i64 @llvm.usub.sat.i64(i64 %i.ty, i64 64)
  %i.ud = lshr exact i64 %i.uc, 3                 ; 2 uses
  %scevgep320 = getelementptr i8, ptr %scevgep, i64 %i.ud
  %scevgep321 = getelementptr i8, ptr %i.kz, i64 8
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.ud
  %bound0 = icmp ult ptr %i.tk, %scevgep322
  %bound1 = icmp ult ptr %i.kz, %scevgep320
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check324 = icmp samesign ult i64 %i.tz, 960
  br i1 %min.iters.check324, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ue = and i64 %i.ub, 12
  %n.vec = and i64 %i.ub, 67108848                ; 4 uses
  %i.uf = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ug = or disjoint i64 %i.uf, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %index ; 5 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 64 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.uh, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %wide.load325 = load <4 x i64>, ptr %i.ui, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %wide.load326 = load <4 x i64>, ptr %i.uj, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %wide.load327 = load <4 x i64>, ptr %i.uk, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 96
  %wide.load328 = load <4 x i64>, ptr %i.ul, align 8, !tbaa !122, !alias.scope !863
  %wide.load329 = load <4 x i64>, ptr %i.um, align 8, !tbaa !122, !alias.scope !863
  %wide.load330 = load <4 x i64>, ptr %i.un, align 8, !tbaa !122, !alias.scope !863
  %wide.load331 = load <4 x i64>, ptr %i.uo, align 8, !tbaa !122, !alias.scope !863
  %i.up = or <4 x i64> %wide.load328, %wide.load
  %i.uq = or <4 x i64> %wide.load329, %wide.load325
  %i.ur = or <4 x i64> %wide.load330, %wide.load326
  %i.us = or <4 x i64> %wide.load331, %wide.load327
  store <4 x i64> %i.up, ptr %i.uh, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  store <4 x i64> %i.uq, ptr %i.ui, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  store <4 x i64> %i.ur, ptr %i.uj, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  store <4 x i64> %i.us, ptr %i.uk, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ut = icmp eq i64 %index.next, %n.vec
  br i1 %i.ut, label %middle.block, label %vector.body, !llvm.loop !829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ub, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i12.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ue, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !344

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec333 = and i64 %i.ub, 67108860             ; 3 uses
  %i.uu = shl nuw nsw i64 %n.vec333, 6            ; 2 uses
  %i.uv = or disjoint i64 %i.uu, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index334 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next337, %vec.epilog.vector.body ] ; 3 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %index334 ; 2 uses
  %wide.load335 = load <4 x i64>, ptr %i.uw, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index334
  %wide.load336 = load <4 x i64>, ptr %i.ux, align 8, !tbaa !122, !alias.scope !863
  %i.uy = or <4 x i64> %wide.load336, %wide.load335
  store <4 x i64> %i.uy, ptr %i.uw, align 8, !tbaa !122, !alias.scope !862, !noalias !863
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.uz = icmp eq i64 %index.next337, %n.vec333
  br i1 %i.uz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !830

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n338 = icmp eq i64 %i.ub, %n.vec333
  br i1 %cmp.n338, label %._crit_edge.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.uf, %vec.epilog.iter.check ], [ %i.uu, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.ug, %vec.epilog.iter.check ], [ %i.uv, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i12.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  br i1 %.not34.i.i.i.i.i, label %bb.cq, label %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i

._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i: ; preds = %._crit_edge.i.i.i12.i.i
  %.pre127.i = lshr i32 %i.tl, 6
  %.pre129.i = and i32 %i.tl, 63
  %.pre131.i = zext nneg i32 %.pre129.i to i64
  %.pre133.i = shl nsw i64 -1, %.pre131.i
  %.pre134.i = zext nneg i32 %.pre127.i to i64
  br label %._crit_edge.i.i.i12.thread.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv37.i.i = phi i64 [ %indvars.iv.next38.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv37.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.va = lshr exact i64 %indvars.iv37.i.i, 6     ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.va ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !122
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.va
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !122
  %i.vf = or i64 %i.ve, %i.vc
  store i64 %i.vf, ptr %i.vb, align 8, !tbaa !122
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not33.i.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.ty
  %indvars.iv.next38.i.i = add nuw nsw i64 %indvars.iv37.i.i, 64
  br i1 %.not33.i.i.i.not.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i12.i.i, !llvm.loop !831

._crit_edge.i.i.i12.thread.i.i:                   ; preds = %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i, %bb.cp
  %.pre125.pre-phi.i = phi i64 [ %i.ty, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ 0, %bb.cp ]
  %.pre-phi135.i = phi i64 [ %.pre134.i, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ %i.tu, %bb.cp ] ; 2 uses
  %notmask.i36.i.i.i.i.pre-phi.i = phi i64 [ %.pre133.i, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ %notmask.i37.i.i.i.i.i, %bb.cp ] ; 2 uses
  %i.vg = xor i64 %notmask.i36.i.i.i.i.pre-phi.i, -1
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %.pre-phi135.i ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !122 ; 2 uses
  %i.vj = and i64 %i.vi, %notmask.i36.i.i.i.i.pre-phi.i
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.pre-phi135.i
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !122
  %i.vm = or i64 %i.vl, %i.vi
  %i.vn = and i64 %i.vm, %i.vg
  %i.vo = or disjoint i64 %i.vn, %i.vj
  store i64 %i.vo, ptr %i.vh, align 8, !tbaa !122
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.i.i.i12.thread.i.i, %._crit_edge.i.i.i12.i.i
  %.pre-phi126.i = phi i64 [ %.pre125.pre-phi.i, %._crit_edge.i.i.i12.thread.i.i ], [ %i.ty, %._crit_edge.i.i.i12.i.i ]
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.cr, %bb.cq
  %indvars.iv.i15.i.i = phi i64 [ %indvars.iv.next.i16.i.i, %bb.cr ], [ 0, %bb.cq ] ; 4 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.i15.i.i, %.pre-phi126.i
  br i1 %.not37.i.i.not.i.i.i, label %bb.cr, label %.critedge.i.i.i.i.i

bb.cr:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i
  %indvars.iv.next.i16.i.i = add nuw nsw i64 %indvars.iv.i15.i.i, 64
  %i.vp = lshr exact i64 %indvars.iv.i15.i.i, 3
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.vp
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !122 ; 2 uses
  %.not.i42.i.i.i.i.i = icmp eq i64 %i.vr, 0
  br i1 %.not.i42.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, !llvm.loop !21

.critedge.i.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.critedge.i.i.i.i.i
  %i.vs = lshr i32 %i.tl, 6
  %i.vt = and i32 %i.tl, 63
  %i.vu = zext nneg i32 %i.vt to i64
  %notmask.i43.i.i.i.i.i = shl nsw i64 -1, %i.vu
  %i.vv = xor i64 %notmask.i43.i.i.i.i.i, -1
  %i.vw = zext nneg i32 %i.vs to i64
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.vw
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !122
  %i.vz = and i64 %i.vy, %i.vv                    ; 2 uses
  %.not.i44.i.i.i.i.i = icmp eq i64 %i.vz, 0
  br i1 %.not.i44.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i: ; preds = %bb.cs, %.critedge.i.i.i.i.i, %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i
  store i32 0, ptr %i.gb, align 4, !tbaa !260
  store i32 0, ptr %i.ga, align 8, !tbaa !192
  store i16 256, ptr %i.gd, align 4
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i: ; preds = %bb.cr
  %i.wa = trunc nuw nsw i64 %indvars.iv.i15.i.i to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, %bb.cs
  %.sink67.i.i.i.i.i = phi i64 [ %i.vz, %bb.cs ], [ %i.vr, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %.sink65.i.i.i.i.i = phi i32 [ %i.tm, %bb.cs ], [ %i.wa, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %i.wb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i, i1 true)
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = or disjoint i32 %.sink65.i.i.i.i.i, %i.wc ; 7 uses
  store i32 %i.wd, ptr %i.gb, align 4, !tbaa !260
  %.not.i359.i = icmp slt i32 %i.wd, %i.tl
  br i1 %.not.i359.i, label %bb.ct, label %.noexc132.i

bb.ct:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i
  %i.we = add i32 %i.wd, 63                       ; 2 uses
  %i.wf = srem i32 %i.we, 64
  %i.wg = sub nsw i32 %i.we, %i.wf                ; 5 uses
  %i.wh = icmp slt i32 %i.tm, %i.wg
  br i1 %i.wh, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.wi = lshr i32 %i.tl, 6
  %i.wj = and i32 %i.tl, 63
  %i.wk = zext nneg i32 %i.wj to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.wk
  %i.wl = xor i64 %notmask.i.i.i, -1
  %i.wm = sub nsw i32 %i.wg, %i.wd                ; 2 uses
  %i.wn = zext nneg i32 %i.wm to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.wn
  %i.wo = xor i64 %notmask.i.i.i.i, -1
  %i.wp = sub nsw i32 64, %i.wm
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = shl i64 %i.wo, %i.wq
  %i.ws = and i64 %i.wr, %i.wl
  %i.wt = zext nneg i32 %i.wi to i64
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.wt
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !122
  %i.ww = and i64 %i.ws, %i.wv                    ; 2 uses
  %.not.i.i362.i = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i362.i, label %.noexc132.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wx = or i32 %i.tl, 63
  %i.wy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ww, i1 true)
  %i.wz = trunc nuw nsw i64 %i.wy to i32
  %i.xa = sub nuw nsw i32 %i.wx, %i.wz
  br label %.noexc132.i

bb.cw:                                            ; preds = %bb.ct
  br i1 %.not34.i.i.i.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.preheader, label %bb.cx

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.preheader: ; preds = %bb.cx, %bb.cw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.xb = lshr i32 %i.tl, 6
  %i.xc = and i32 %i.tl, 63
  %i.xd = zext nneg i32 %i.xc to i64
  %notmask.i38.i.i = shl nsw i64 -1, %i.xd
  %i.xe = xor i64 %notmask.i38.i.i, -1
  %i.xf = zext nneg i32 %i.xb to i64
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.xf
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !122
  %i.xi = and i64 %i.xh, %i.xe                    ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.xi, 0
  br i1 %.not.i39.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.preheader, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i: ; preds = %bb.cx
  %i.xj = or i32 %i.tl, 63
  %i.xk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.xi, i1 true)
  %i.xl = trunc nuw nsw i64 %i.xk to i32
  %i.xm = sub nuw nsw i32 %i.xj, %i.xl
  br label %.noexc132.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.preheader, %bb.cy
  %.0.in.i.i = phi i32 [ %.0.i361.i, %bb.cy ], [ %i.tm, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.preheader ] ; 2 uses
  %.0.i361.i = add nsw i32 %.0.in.i.i, -64        ; 3 uses
  %.not36.i.i = icmp slt i32 %.0.i361.i, %i.wg
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i
  %i.xn = ashr exact i32 %.0.i361.i, 6
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %i.xo
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !122 ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.xq, 0
  br i1 %.not.i41.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.xq, i1 true)
  %i.xs = trunc nuw nsw i64 %i.xr to i32
  %i.xt = xor i32 %i.xs, -1
  %i.xu = add i32 %.0.in.i.i, %i.xt
  br label %.noexc132.i

.critedge.i.i:                                    ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i
  %.not37.i.i = icmp eq i32 %i.wd, %i.wg
  br i1 %.not37.i.i, label %.noexc132.i, label %bb.da

bb.da:                                            ; preds = %.critedge.i.i
  %i.xv = sdiv i32 %i.wd, 64                      ; 2 uses
  %i.xw = sub nsw i32 %i.wg, %i.wd                ; 2 uses
  %i.xx = zext nneg i32 %i.xw to i64
  %notmask.i.i42.i.i = shl nsw i64 -1, %i.xx
  %i.xy = xor i64 %notmask.i.i42.i.i, -1
  %i.xz = sub nsw i32 64, %i.xw
  %i.ya = zext nneg i32 %i.xz to i64
  %i.yb = shl i64 %i.xy, %i.ya
  %i.yc = sext i32 %i.xv to i64
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %i.yc
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !122
  %i.yf = and i64 %i.ye, %i.yb                    ; 2 uses
  %.not.i43.i.i = icmp eq i64 %i.yf, 0
  br i1 %.not.i43.i.i, label %.noexc132.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.yg = shl nsw i32 %i.xv, 6
  %i.yh = or disjoint i32 %i.yg, 63
  %i.yi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.yf, i1 true)
  %i.yj = trunc nuw nsw i64 %i.yi to i32
  %i.yk = sub nuw nsw i32 %i.yh, %i.yj
  br label %.noexc132.i

.noexc132.i:                                      ; preds = %bb.db, %bb.da, %.critedge.i.i, %bb.cz, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i, %bb.cv, %bb.cu, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i
  %.0.i = phi i32 [ -1, %bb.cu ], [ -1, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i ], [ -1, %.critedge.i.i ], [ -1, %bb.da ], [ %i.yk, %bb.db ], [ %i.xu, %bb.cz ], [ %i.xm, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i ], [ %i.xa, %bb.cv ]
  %i.yl = add nsw i32 %.0.i, 1
  store i32 %i.yl, ptr %i.ga, align 8, !tbaa !192
  store i8 0, ptr %i.ft, align 1, !tbaa !249
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i

_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i: ; preds = %.noexc132.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i
  br i1 %.not.i126.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.yn = atomicrmw sub ptr %i.ym, i32 1 acq_rel, align 4
  %i.yo = icmp eq i32 %i.yn, 1
  br i1 %i.yo, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i

.sink.split.i.i.i:                                ; preds = %bb.dc
  %i.yp = load ptr, ptr %i.lm, align 8, !tbaa !37
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 64
  %i.yr = load ptr, ptr %i.yq, align 8
  invoke void %i.yr(ptr noundef nonnull align 8 dereferenceable(64) %i.lm)
          to label %.noexc.i.i unwind label %bb.dd, !inline_history !9

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !180
  %.not.i.i134.i = icmp eq ptr %i.yt, null
  %i.yu = load ptr, ptr %i.lm, align 8, !tbaa !37
  %..i.i.i = select i1 %.not.i.i134.i, i64 8, i64 48
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %..i.i.i
  %i.yw = load ptr, ptr %i.yv, align 8
  invoke void %i.yw(ptr noundef nonnull align 8 dereferenceable(64) %i.lm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.dd, !inline_history !9

bb.dd:                                            ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.yx = landingpad { ptr, i32 }
          catch ptr null
  %i.yy = extractvalue { ptr, i32 } %i.yx, 0
  call void @__clang_call_terminate(ptr %i.yy) #27
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %.noexc.i.i, %bb.dc, %_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i
  %i.yz = load ptr, ptr %45, align 8, !tbaa !175  ; 7 uses
  %.not.i135.i = icmp eq ptr %i.yz, null
  br i1 %.not.i135.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit140.i, label %bb.de

bb.de:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 40
  %i.zb = atomicrmw sub ptr %i.za, i32 1 acq_rel, align 4
  %i.zc = icmp eq i32 %i.zb, 1
  br i1 %i.zc, label %.sink.split.i.i136.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit140.i

.sink.split.i.i136.i:                             ; preds = %bb.de
  %i.zd = load ptr, ptr %i.yz, align 8, !tbaa !37
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 64
  %i.zf = load ptr, ptr %i.ze, align 8
  invoke void %i.zf(ptr noundef nonnull align 8 dereferenceable(64) %i.yz)
          to label %.noexc.i137.i unwind label %bb.df, !inline_history !9

.noexc.i137.i:                                    ; preds = %.sink.split.i.i136.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !180
  %.not.i.i138.i = icmp eq ptr %i.zh, null
  %i.zi = load ptr, ptr %i.yz, align 8, !tbaa !37
  %..i.i139.i = select i1 %.not.i.i138.i, i64 8, i64 48
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 %..i.i139.i
  %i.zk = load ptr, ptr %i.zj, align 8
  invoke void %i.zk(ptr noundef nonnull align 8 dereferenceable(64) %i.yz)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit140.i unwind label %bb.df, !inline_history !9

bb.df:                                            ; preds = %.noexc.i137.i, %.sink.split.i.i136.i
  %i.zl = landingpad { ptr, i32 }
          catch ptr null
  %i.zm = extractvalue { ptr, i32 } %i.zl, 0
  call void @__clang_call_terminate(ptr %i.zm) #27
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit140.i: ; preds = %.noexc.i137.i, %bb.de, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
end_hunk_0
