Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/flowgraph?download=true
inline.NumInlined: 318
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_PyCfg_OptimizeCodeUnit:bb.a
  br i1 %i.aop, label %bb.jp, label %bb.jj

bb.jj:                                            ; preds = %.thread.i.i30.i
  %i.aoq = sext i32 %.076.lcssa.ph.i.i.i to i64
  %i.aor = shl nsw i64 %i.aoq, 2
  %i.aos = call ptr @PyMem_Malloc(i64 noundef %i.aor) #8 ; 9 uses
  %i.aot = icmp eq ptr %i.aos, null
  br i1 %i.aot, label %bb.kc, label %.preheader7.i.i.i

.preheader7.i.i.i:                                ; preds = %bb.jj
  %i.aou = icmp sgt i32 %.076.lcssa.ph.i.i.i, 0   ; 2 uses
  br i1 %i.aou, label %.lr.ph20.preheader.i.i.i, label %.preheader6.i.i.i

.lr.ph20.preheader.i.i.i:                         ; preds = %.preheader7.i.i.i
  %wide.trip.count33.i.i.i = zext nneg i32 %.076.lcssa.ph.i.i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.076.lcssa.ph.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph20.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph20.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count33.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aov = getelementptr [4 x i8], ptr %i.aos, i64 %index ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aov, i64 16
  store <4 x i32> %vec.ind, ptr %i.aov, align 4, !tbaa !20
  store <4 x i32> %step.add, ptr %i.aow, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aox = icmp eq i64 %index.next, %n.vec
  br i1 %i.aox, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count33.i.i.i
  br i1 %cmp.n, label %.preheader6.i.i.i, label %.lr.ph20.i.i.i.preheader

.lr.ph20.i.i.i.preheader:                         ; preds = %.lr.ph20.preheader.i.i.i, %middle.block
  %indvars.iv30.i.i.i.ph = phi i64 [ 0, %.lr.ph20.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph20.i.i.i

.preheader6.i.i.i:                                ; preds = %.lr.ph20.i.i.i, %middle.block, %.preheader7.i.i.i
  %i.aoy = icmp sgt i32 %.lcssa.ph.i.i.i, 0
  br i1 %i.aoy, label %.lr.ph22.preheader.i.i.i, label %.preheader5.i.i.i

.lr.ph22.preheader.i.i.i:                         ; preds = %.preheader6.i.i.i
  %wide.trip.count38.i.i.i = zext nneg i32 %.lcssa.ph.i.i.i to i64
  br label %.lr.ph22.i.i.i

.lr.ph20.i.i.i:                                   ; preds = %.lr.ph20.i.i.i.preheader, %.lr.ph20.i.i.i
  %indvars.iv30.i.i.i = phi i64 [ %indvars.iv.next31.i.i.i, %.lr.ph20.i.i.i ], [ %indvars.iv30.i.i.i.ph, %.lr.ph20.i.i.i.preheader ] ; 3 uses
  %i.aoz = getelementptr [4 x i8], ptr %i.aos, i64 %indvars.iv30.i.i.i
  %i.apa = trunc nuw nsw i64 %indvars.iv30.i.i.i to i32
  store i32 %i.apa, ptr %i.aoz, align 4, !tbaa !20
  %indvars.iv.next31.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i, %wide.trip.count33.i.i.i
  br i1 %exitcond34.not.i.i.i, label %.preheader6.i.i.i, label %.lr.ph20.i.i.i, !llvm.loop !122

.preheader5.i.i.i:                                ; preds = %bb.jl, %.preheader6.i.i.i
  br i1 %i.aou, label %.lr.ph25.preheader.i.i.i, label %.preheader.i368.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.preheader5.i.i.i
  %wide.trip.count43.i.i.i = zext nneg i32 %.076.lcssa.ph.i.i.i to i64
  br label %.lr.ph25.i.i.i

.lr.ph22.i.i.i:                                   ; preds = %bb.jl, %.lr.ph22.preheader.i.i.i
  %indvars.iv35.i.i.i = phi i64 [ 0, %.lr.ph22.preheader.i.i.i ], [ %indvars.iv.next36.i.i.i, %bb.jl ] ; 2 uses
  %i.apb = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv35.i.i.i ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !47
  %i.apd = icmp eq i32 %i.apc, 117
  br i1 %i.apd, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.lr.ph22.i.i.i
  %i.ape = getelementptr i8, ptr %i.apb, i64 4
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !58
  %i.apg = load i32, ptr %i.aos, align 4, !tbaa !20
  %i.aph = add i32 %i.apf, -1
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr [4 x i8], ptr %i.aos, i64 %i.api ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !20
  store i32 %i.apk, ptr %i.aos, align 4, !tbaa !20
  store i32 %i.apg, ptr %i.apj, align 4, !tbaa !20
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph22.i.i.i
  %indvars.iv.next36.i.i.i = add nuw nsw i64 %indvars.iv35.i.i.i, 1 ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i64 %indvars.iv.next36.i.i.i, %wide.trip.count38.i.i.i
  br i1 %exitcond39.not.i.i.i, label %.preheader5.i.i.i, label %.lr.ph22.i.i.i, !llvm.loop !123

.preheader.i368.i.i:                              ; preds = %.loopexit.i372.i.i, %.preheader5.i.i.i
  %.074.lcssa.i.i.i = phi i32 [ %.080.lcssa.ph.i.i.i, %.preheader5.i.i.i ], [ %.3.i373.i.i, %.loopexit.i372.i.i ] ; 3 uses
  %i.apl = icmp sgt i32 %.074.lcssa.i.i.i, -1
  br i1 %i.apl, label %.lr.ph28.preheader.i.i.i, label %._crit_edge.i369.i.i

.lr.ph28.preheader.i.i.i:                         ; preds = %.preheader.i368.i.i
  %i.apm = zext nneg i32 %.074.lcssa.i.i.i to i64 ; 3 uses
  %i.apn = add nuw nsw i64 %i.apm, 1
  %xtraiter648 = and i64 %i.apn, 3                ; 2 uses
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol

.lr.ph28.i.i.i.prol:                              ; preds = %.lr.ph28.preheader.i.i.i, %.lr.ph28.i.i.i.prol
  %indvars.iv45.i.i.i.prol = phi i64 [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ], [ %i.apm, %.lr.ph28.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph28.i.i.i.prol ], [ 0, %.lr.ph28.preheader.i.i.i ]
  %indvars.iv.next46.i.i.i.prol = add nsw i64 %indvars.iv45.i.i.i.prol, -1 ; 2 uses
  %i.apo = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i.prol ; 2 uses
  store i32 27, ptr %i.apo, align 8, !tbaa !47
  %i.app = getelementptr i8, ptr %i.apo, i64 4
  store i32 0, ptr %i.app, align 4, !tbaa !58
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter648
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol, !llvm.loop !124

.lr.ph28.i.i.i.prol.loopexit:                     ; preds = %.lr.ph28.i.i.i.prol, %.lr.ph28.preheader.i.i.i
  %indvars.iv45.i.i.i.unr = phi i64 [ %i.apm, %.lr.ph28.preheader.i.i.i ], [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ]
  %i.apq = icmp ult i32 %.074.lcssa.i.i.i, 3
  br i1 %i.apq, label %._crit_edge.i369.i.i, label %.lr.ph28.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i372.i.i, %.lr.ph25.preheader.i.i.i
  %indvars.iv40.i.i.i = phi i64 [ 0, %.lr.ph25.preheader.i.i.i ], [ %indvars.iv.next41.i.i.i, %.loopexit.i372.i.i ] ; 4 uses
  %.07423.i.i.i = phi i32 [ %.080.lcssa.ph.i.i.i, %.lr.ph25.preheader.i.i.i ], [ %.3.i373.i.i, %.loopexit.i372.i.i ] ; 2 uses
  %i.apr = getelementptr [4 x i8], ptr %i.aos, i64 %indvars.iv40.i.i.i
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !20 ; 2 uses
  %i.apt = icmp eq i32 %i.aps, -1
  %i.apu = zext i32 %i.aps to i64
  %i.apv = icmp eq i64 %indvars.iv40.i.i.i, %i.apu
  %or.cond.i371.i.i = or i1 %i.apt, %i.apv
  br i1 %or.cond.i371.i.i, label %.loopexit.i372.i.i, label %.preheader4.preheader.i.i.i

.preheader4.preheader.i.i.i:                      ; preds = %.lr.ph25.i.i.i
  %i.apw = trunc nuw nsw i64 %indvars.iv40.i.i.i to i32
  br label %.preheader4.i.i.i

.preheader4.i.i.i:                                ; preds = %bb.jo, %.preheader4.preheader.i.i.i
  %.175.i.i.i = phi i32 [ %.2.i.i.i, %bb.jo ], [ %.07423.i.i.i, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.072.i.i.i = phi i32 [ %i.aqe, %bb.jo ], [ %i.apw, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.not95.i.i.i = icmp eq i32 %.072.i.i.i, 0
  br i1 %.not95.i.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.preheader4.i.i.i
  %i.apx = sext i32 %.175.i.i.i to i64
  %i.apy = getelementptr [40 x i8], ptr %i.aob, i64 %i.apx ; 2 uses
  store i32 117, ptr %i.apy, align 8, !tbaa !47
  %i.apz = add i32 %.072.i.i.i, 1
  %i.aqa = add i32 %.175.i.i.i, -1
  %i.aqb = getelementptr i8, ptr %i.apy, i64 4
  store i32 %i.apz, ptr %i.aqb, align 4, !tbaa !58
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.preheader4.i.i.i
  %.2.i.i.i = phi i32 [ %i.aqa, %bb.jm ], [ %.175.i.i.i, %.preheader4.i.i.i ] ; 2 uses
  %i.aqc = sext i32 %.072.i.i.i to i64
  %i.aqd = getelementptr [4 x i8], ptr %i.aos, i64 %i.aqc ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !20 ; 2 uses
  %i.aqf = icmp eq i32 %i.aqe, -1
  br i1 %i.aqf, label %.loopexit.i372.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  store i32 -1, ptr %i.aqd, align 4, !tbaa !20
  br label %.preheader4.i.i.i

.loopexit.i372.i.i:                               ; preds = %bb.jn, %.lr.ph25.i.i.i
  %.3.i373.i.i = phi i32 [ %.07423.i.i.i, %.lr.ph25.i.i.i ], [ %.2.i.i.i, %bb.jn ] ; 2 uses
  %indvars.iv.next41.i.i.i = add nuw nsw i64 %indvars.iv40.i.i.i, 1 ; 2 uses
  %exitcond44.not.i.i.i = icmp eq i64 %indvars.iv.next41.i.i.i, %wide.trip.count43.i.i.i
  br i1 %exitcond44.not.i.i.i, label %.preheader.i368.i.i, label %.lr.ph25.i.i.i, !llvm.loop !125

.lr.ph28.i.i.i:                                   ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i
  %indvars.iv45.i.i.i = phi i64 [ %indvars.iv.next46.i.i.i.3, %.lr.ph28.i.i.i ], [ %indvars.iv45.i.i.i.unr, %.lr.ph28.i.i.i.prol.loopexit ] ; 5 uses
  %i.aqg = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  store i32 27, ptr %i.aqg, align 8, !tbaa !47
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 4
  store i32 0, ptr %i.aqh, align 4, !tbaa !58
  %i.aqi = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 -40
  store i32 27, ptr %i.aqj, align 8, !tbaa !47
  %i.aqk = getelementptr i8, ptr %i.aqi, i64 -36
  store i32 0, ptr %i.aqk, align 4, !tbaa !58
  %indvars.iv.next46.i.i.i.2 = add nsw i64 %indvars.iv45.i.i.i, -3 ; 2 uses
  %i.aql = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aqm = getelementptr i8, ptr %i.aql, i64 -80
  store i32 27, ptr %i.aqm, align 8, !tbaa !47
  %i.aqn = getelementptr i8, ptr %i.aql, i64 -76
  store i32 0, ptr %i.aqn, align 4, !tbaa !58
  %indvars.iv.next46.i.i.i.3 = add nsw i64 %indvars.iv45.i.i.i, -4
  %i.aqo = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv.next46.i.i.i.2 ; 2 uses
  store i32 27, ptr %i.aqo, align 8, !tbaa !47
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 4
  store i32 0, ptr %i.aqp, align 4, !tbaa !58
  %.not.i370.i.i.3 = icmp eq i64 %indvars.iv.next46.i.i.i.2, 0
  br i1 %.not.i370.i.i.3, label %._crit_edge.i369.i.i, label %.lr.ph28.i.i.i, !llvm.loop !126

._crit_edge.i369.i.i:                             ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i, %.preheader.i368.i.i
  call void @PyMem_Free(ptr noundef nonnull %i.aos) #8
  %i.aqq = add i32 %.080.lcssa.ph.i.i.i, %storemerge473.i.i
  br label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i369.i.i, %.thread.i.i30.i, %bb.jg
  %.1.ph.i.i = phi i32 [ %storemerge473.i.i, %bb.jg ], [ %i.aqq, %._crit_edge.i369.i.i ], [ %storemerge473.i.i, %.thread.i.i30.i ] ; 21 uses
  %i.aqr = icmp sgt i32 %.1.ph.i.i, -1
  br i1 %i.aqr, label %.lr.ph118.i.i.i, label %.critedge.i.i

.lr.ph118.i.i.i:                                  ; preds = %bb.jp
  %17 = add nuw i32 %.1.ph.i.i, 2
  %i.aqs = zext nneg i32 %.1.ph.i.i to i64
  br label %bb.jq

bb.jq:                                            ; preds = %bb.kb, %.lr.ph118.i.i.i
  %indvars.iv143.i.i.i = phi i64 [ %i.aqs, %.lr.ph118.i.i.i ], [ %indvars.iv.next144.i.i.i, %bb.kb ] ; 4 uses
  %indvars.iv.i374.i.i = phi i32 [ %17, %.lr.ph118.i.i.i ], [ %indvars.iv.next.i375.i.i, %bb.kb ] ; 2 uses
  %i.aqt = load ptr, ptr %i.kq, align 8, !tbaa !41 ; 7 uses
  %i.aqu = getelementptr [40 x i8], ptr %i.aqt, i64 %indvars.iv143.i.i.i ; 3 uses
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !47
  switch i32 %i.aqv, label %.critedge.i.i [
    i32 117, label %bb.jr
    i32 27, label %bb.kb
    i32 112, label %bb.kb
    i32 266, label %bb.kb
    i32 31, label %bb.kb
  ]

bb.jr:                                            ; preds = %bb.jq
  %i.aqw = load i32, ptr %i.ko, align 8, !tbaa !44 ; 6 uses
  %i.aqx = trunc nuw nsw i64 %indvars.iv143.i.i.i to i32 ; 2 uses
  %i.aqy = add i32 %i.aqx, 1                      ; 2 uses
  %i.aqz = icmp slt i32 %i.aqy, %i.aqw
  br i1 %i.aqz, label %.lr.ph, label %.critedge.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph
  %indvars.iv.next138.i.i.i = add i32 %indvars.iv137.i.i.i563, 1
  %i.ara = add i32 %i.arc, 1                      ; 2 uses
  %i.arb = icmp slt i32 %i.ara, %i.aqw
  br i1 %i.arb, label %.lr.ph, label %.critedge.i.i

.lr.ph:                                           ; preds = %bb.jr, %.split.i.i.i.i
  %i.arc = phi i32 [ %i.ara, %.split.i.i.i.i ], [ %i.aqy, %bb.jr ] ; 9 uses
  %.014.i.i.i.i564 = phi i32 [ %i.arc, %.split.i.i.i.i ], [ %i.aqx, %bb.jr ]
  %indvars.iv137.i.i.i563 = phi i32 [ %indvars.iv.next138.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i374.i.i, %bb.jr ] ; 2 uses
  %i.ard = sext i32 %i.arc to i64
  %i.are = getelementptr [40 x i8], ptr %i.aqt, i64 %i.ard
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !47 ; 2 uses
  switch i32 %i.arf, label %.critedge.i.i [
    i32 27, label %.split.i.i.i.i
    i32 112, label %next_swappable_instruction.exit.i.i.i
    i32 266, label %next_swappable_instruction.exit.i.i.i
    i32 31, label %next_swappable_instruction.exit.i.i.i
  ]

next_swappable_instruction.exit.i.i.i:            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.arg = icmp slt i32 %i.arc, 0
  br i1 %i.arg, label %.critedge.i.i, label %bb.js

bb.js:                                            ; preds = %next_swappable_instruction.exit.i.i.i
  %i.arh = zext nneg i32 %i.arc to i64
  %i.ari = getelementptr [40 x i8], ptr %i.aqt, i64 %i.arh ; 4 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 8
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !62
  %.fr121.i.i.i = freeze i32 %i.ark               ; 2 uses
  %i.arl = getelementptr i8, ptr %i.aqu, i64 4    ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !58
  %i.arn = icmp sgt i32 %.fr121.i.i.i, -1
  %.071.us.i.i.i572 = add i32 %i.arm, -1          ; 3 uses
  %i.aro = icmp slt i32 %.071.us.i.i.i572, 1      ; 2 uses
  br i1 %i.arn, label %.split.us.i.i.i.preheader, label %.split.i.i29.i.preheader

.split.i.i29.i.preheader:                         ; preds = %bb.js
  br i1 %i.aro, label %.thread.i377.i.i, label %.split.i87.i.i.i.preheader

.split.us.i.i.i.preheader:                        ; preds = %bb.js
  br i1 %i.aro, label %.thread.i377.i.i, label %.split.us.i.us.i.i.i.preheader

.split.us.i.i.i:                                  ; preds = %next_swappable_instruction.exit91.loopexit.us.i.i.i
  %.071.us.i.i.i = add nsw i32 %.071.us.i.i.i574, -1
  %i.arp = icmp slt i32 %.071.us.i.i.i574, 2
  br i1 %i.arp, label %.thread.i377.i.i, label %.split.us.i.us.i.i.i.preheader, !llvm.loop !127

.split.us.i.us.i.i.i.preheader:                   ; preds = %.split.us.i.i.i.preheader, %.split.us.i.i.i
  %.071.us.i.i.i574 = phi i32 [ %.071.us.i.i.i, %.split.us.i.i.i ], [ %.071.us.i.i.i572, %.split.us.i.i.i.preheader ] ; 2 uses
  %.072.us.i.i.i573 = phi i32 [ %i.aru, %.split.us.i.i.i ], [ %i.arc, %.split.us.i.i.i.preheader ]
  %i.arq = add i32 %.072.us.i.i.i573, 1           ; 2 uses
  %i.arr = icmp slt i32 %i.arq, %i.aqw
  br i1 %i.arr, label %.lr.ph570, label %.critedge.i.i

.split.us.i.us.i.i.i:                             ; preds = %bb.jt
  %i.ars = add i32 %i.aru, 1                      ; 2 uses
  %i.art = icmp slt i32 %i.ars, %i.aqw
  br i1 %i.art, label %.lr.ph570, label %.critedge.i.i

.lr.ph570:                                        ; preds = %.split.us.i.us.i.i.i.preheader, %.split.us.i.us.i.i.i
  %i.aru = phi i32 [ %i.ars, %.split.us.i.us.i.i.i ], [ %i.arq, %.split.us.i.us.i.i.i.preheader ] ; 5 uses
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr [40 x i8], ptr %i.aqt, i64 %i.arv ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 8
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !62
  %.not.us.i.us.i.i.i = icmp eq i32 %i.ary, %.fr121.i.i.i
  br i1 %.not.us.i.us.i.i.i, label %bb.jt, label %.critedge.i.i

bb.jt:                                            ; preds = %.lr.ph570
  %i.arz = load i32, ptr %i.arw, align 8, !tbaa !47
  switch i32 %i.arz, label %.critedge.i.i [
    i32 27, label %.split.us.i.us.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
  ]

next_swappable_instruction.exit91.loopexit.us.i.i.i: ; preds = %bb.jt, %bb.jt, %bb.jt
  %i.asa = icmp slt i32 %i.aru, 0
  br i1 %i.asa, label %.critedge.i.i, label %.split.us.i.i.i, !llvm.loop !127

.split.i.i29.i:                                   ; preds = %next_swappable_instruction.exit91.loopexit103.i.i.i
  %.071.i.i.i = add nsw i32 %.071.i.i.i569, -1
  %i.asb = icmp slt i32 %.071.i.i.i569, 2
  br i1 %i.asb, label %.thread.i377.i.i, label %.split.i87.i.i.i.preheader, !llvm.loop !127

.split.i87.i.i.i.preheader:                       ; preds = %.split.i.i29.i.preheader, %.split.i.i29.i
  %.071.i.i.i569 = phi i32 [ %.071.i.i.i, %.split.i.i29.i ], [ %.071.us.i.i.i572, %.split.i.i29.i.preheader ] ; 2 uses
  %.072.i376.i.i568 = phi i32 [ %i.asg, %.split.i.i29.i ], [ %i.arc, %.split.i.i29.i.preheader ]
  %i.asc = add i32 %.072.i376.i.i568, 1           ; 2 uses
  %i.asd = icmp slt i32 %i.asc, %i.aqw
  br i1 %i.asd, label %.lr.ph566, label %.critedge.i.i

.split.i87.i.i.i:                                 ; preds = %.lr.ph566
  %i.ase = add i32 %i.asg, 1                      ; 2 uses
  %i.asf = icmp slt i32 %i.ase, %i.aqw
  br i1 %i.asf, label %.lr.ph566, label %.critedge.i.i

.lr.ph566:                                        ; preds = %.split.i87.i.i.i.preheader, %.split.i87.i.i.i
  %i.asg = phi i32 [ %i.ase, %.split.i87.i.i.i ], [ %i.asc, %.split.i87.i.i.i.preheader ] ; 5 uses
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr [40 x i8], ptr %i.aqt, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 8, !tbaa !47
  switch i32 %i.asj, label %.critedge.i.i [
    i32 27, label %.split.i87.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit103.i.i.i
  ]

next_swappable_instruction.exit91.loopexit103.i.i.i: ; preds = %.lr.ph566, %.lr.ph566, %.lr.ph566
  %i.ask = icmp slt i32 %i.asg, 0
  br i1 %i.ask, label %.critedge.i.i, label %.split.i.i29.i, !llvm.loop !127

.thread.i377.i.i:                                 ; preds = %.split.i.i29.i, %.split.us.i.i.i, %.split.i.i29.i.preheader, %.split.us.i.i.i.preheader
  %.us-phi.i.i.i = phi i32 [ %i.aru, %.split.us.i.i.i ], [ %i.arc, %.split.us.i.i.i.preheader ], [ %i.arc, %.split.i.i29.i.preheader ], [ %i.asg, %.split.i.i29.i ] ; 2 uses
  switch i32 %i.arf, label %bb.jv [
    i32 112, label %bb.ju
    i32 266, label %bb.ju
  ]

bb.ju:                                            ; preds = %.thread.i377.i.i, %.thread.i377.i.i
  %i.asl = getelementptr i8, ptr %i.ari, i64 4
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !58
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %.thread.i377.i.i
  %i.asn = phi i32 [ %i.asm, %bb.ju ], [ -1, %.thread.i377.i.i ] ; 3 uses
  %i.aso = zext nneg i32 %.us-phi.i.i.i to i64    ; 3 uses
  %i.asp = getelementptr [40 x i8], ptr %i.aqt, i64 %i.aso ; 3 uses
  %i.asq = load i32, ptr %i.asp, align 8, !tbaa !47
  switch i32 %i.asq, label %bb.jx [
    i32 112, label %bb.jw
    i32 266, label %bb.jw
  ]

bb.jw:                                            ; preds = %bb.jv, %bb.jv
  %i.asr = getelementptr i8, ptr %i.asp, i64 4
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !58
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.ast = phi i32 [ %i.ass, %bb.jw ], [ -1, %bb.jv ] ; 3 uses
  %i.asu = icmp sgt i32 %i.asn, -1
  %i.asv = icmp sgt i32 %i.ast, -1
  %or.cond.i378.i.i = select i1 %i.asu, i1 true, i1 %i.asv
  br i1 %or.cond.i378.i.i, label %bb.jy, label %.loopexit.i379.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.asw = icmp eq i32 %i.asn, %i.ast
  br i1 %i.asw, label %.critedge.i.i, label %.preheader.i380.i.i

.preheader.i380.i.i:                              ; preds = %bb.jy
  %.070114.i.i.i = add i32 %.014.i.i.i.i564, 2
  %.not85115.i.i.i = icmp slt i32 %.070114.i.i.i, %.us-phi.i.i.i
  br i1 %.not85115.i.i.i, label %.lr.ph.preheader.i381.i.i, label %.loopexit.i379.i.i

.lr.ph.preheader.i381.i.i:                        ; preds = %.preheader.i380.i.i
  %i.asx = sext i32 %indvars.iv137.i.i.i563 to i64
  br label %.lr.ph.i382.i.i

.lr.ph.i382.i.i:                                  ; preds = %.critedge.i383.i.i, %.lr.ph.preheader.i381.i.i
  %indvars.iv140.i.i.i = phi i64 [ %i.asx, %.lr.ph.preheader.i381.i.i ], [ %indvars.iv.next141.i.i.i, %.critedge.i383.i.i ] ; 2 uses
  %i.asy = getelementptr [40 x i8], ptr %i.aqt, i64 %indvars.iv140.i.i.i ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 8, !tbaa !47
  switch i32 %i.asz, label %.critedge.i383.i.i [
    i32 112, label %bb.jz
    i32 266, label %bb.jz
  ]

bb.jz:                                            ; preds = %.lr.ph.i382.i.i, %.lr.ph.i382.i.i
  %i.ata = getelementptr i8, ptr %i.asy, i64 4
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !58 ; 3 uses
  %i.atc = icmp sgt i32 %i.atb, -1
  br i1 %i.atc, label %bb.ka, label %.critedge.i383.i.i

bb.ka:                                            ; preds = %bb.jz
  %i.atd = icmp eq i32 %i.atb, %i.asn
  %i.ate = icmp eq i32 %i.atb, %i.ast
  %or.cond86.i.i.i = select i1 %i.atd, i1 true, i1 %i.ate
  br i1 %or.cond86.i.i.i, label %.critedge.i.i, label %.critedge.i383.i.i

.critedge.i383.i.i:                               ; preds = %bb.ka, %bb.jz, %.lr.ph.i382.i.i
  %indvars.iv.next141.i.i.i = add nsw i64 %indvars.iv140.i.i.i, 1 ; 2 uses
  %.not85.i.i.i = icmp slt i64 %indvars.iv.next141.i.i.i, %i.aso
  br i1 %.not85.i.i.i, label %.lr.ph.i382.i.i, label %.loopexit.i379.i.i, !llvm.loop !128

.loopexit.i379.i.i:                               ; preds = %.critedge.i383.i.i, %.preheader.i380.i.i, %bb.jx
  store i32 27, ptr %i.aqu, align 8, !tbaa !47
  store i32 0, ptr %i.arl, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ari, i64 40, i1 false), !tbaa.struct !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ari, ptr noundef nonnull align 8 dereferenceable(40) %i.asp, i64 40, i1 false), !tbaa.struct !63
  %i.atf = load ptr, ptr %i.kq, align 8, !tbaa !41
  %i.atg = getelementptr [40 x i8], ptr %i.atf, i64 %i.aso
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.atg, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.kb

bb.kb:                                            ; preds = %.loopexit.i379.i.i, %bb.jq, %bb.jq, %bb.jq, %bb.jq
  %indvars.iv.next144.i.i.i = add nsw i64 %indvars.iv143.i.i.i, -1
  %i.ath = icmp sgt i64 %indvars.iv143.i.i.i, 0
  %indvars.iv.next.i375.i.i = add i32 %indvars.iv.i374.i.i, -1
  br i1 %i.ath, label %bb.jq, label %.critedge.i.i, !llvm.loop !129

.critedge.i.i:                                    ; preds = %bb.kb, %bb.jy, %next_swappable_instruction.exit.i.i.i, %bb.jq, %bb.jr, %.split.i.i.i.i, %.lr.ph, %next_swappable_instruction.exit91.loopexit103.i.i.i, %.split.i87.i.i.i.preheader, %next_swappable_instruction.exit91.loopexit.us.i.i.i, %.split.us.i.us.i.i.i.preheader, %bb.ka, %.split.i87.i.i.i, %.lr.ph566, %.split.us.i.us.i.i.i, %.lr.ph570, %bb.jt, %bb.jp, %.lr.ph474.i.i
  %.0.ph.i.i = phi i32 [ %.1.ph.i.i, %bb.jp ], [ %.1.ph.i.i, %.split.i.i.i.i ], [ %storemerge473.i.i, %.lr.ph474.i.i ], [ %.1.ph.i.i, %next_swappable_instruction.exit91.loopexit.us.i.i.i ], [ %.1.ph.i.i, %.split.us.i.us.i.i.i ], [ %.1.ph.i.i, %next_swappable_instruction.exit91.loopexit103.i.i.i ], [ %.1.ph.i.i, %.split.i87.i.i.i ], [ %.1.ph.i.i, %bb.ka ], [ %.1.ph.i.i, %bb.jt ], [ %.1.ph.i.i, %.lr.ph570 ], [ %.1.ph.i.i, %.lr.ph566 ], [ %.1.ph.i.i, %.split.us.i.us.i.i.i.preheader ], [ %.1.ph.i.i, %.split.i87.i.i.i.preheader ], [ %.1.ph.i.i, %.lr.ph ], [ %.1.ph.i.i, %bb.jr ], [ %.1.ph.i.i, %bb.jq ], [ %.1.ph.i.i, %next_swappable_instruction.exit.i.i.i ], [ %.1.ph.i.i, %bb.jy ], [ %.1.ph.i.i, %bb.kb ]
  %i.ati = add i32 %.0.ph.i.i, 1                  ; 2 uses
  %i.atj = load i32, ptr %i.ko, align 8, !tbaa !44 ; 2 uses
  %i.atk = icmp slt i32 %i.ati, %i.atj
  br i1 %i.atk, label %.lr.ph474.i.i, label %.loopexit81.i, !llvm.loop !130

bb.kc:                                            ; preds = %bb.jj
  %i.atl = call ptr @PyErr_NoMemory() #8          ; 0 uses
  br label %.loopexit82.i

.loopexit81.i:                                    ; preds = %.critedge.i.i, %.critedge.preheader.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %i.atm = getelementptr i8, ptr %.018136.i, i64 32
  %.018.i = load ptr, ptr %i.atm, align 8, !tbaa !43 ; 2 uses
  %.not.i18 = icmp eq ptr %.018.i, null
  br i1 %.not.i18, label %._crit_edge.i19, label %bb.br, !llvm.loop !131

.loopexit82.i:                                    ; preds = %bb.gq, %.thread.i.i336.i.i, %bb.fu, %bb.fm, %bb.kc, %fold_const_binop.exit.thread.i.i, %bb.gh, %bb.gg, %bb.gf, %bb.gc, %bb.gb, %.loopexit.i342.i.i, %optimize_lists_and_sets.exit.thread392.i.i, %fold_tuple_of_constants.exit.thread388.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %optimize_cfg.exit.thread

._crit_edge.i19:                                  ; preds = %.loopexit81.i
  %.pre197.i = load ptr, ptr %0, align 8, !tbaa !39 ; 3 uses
  %.not81.i.i = icmp eq ptr %.pre197.i, null
  br i1 %.not81.i.i, label %.loopexit.i, label %.preheader.i46.i

.preheader.i46.i:                                 ; preds = %._crit_edge.i19, %basicblock_nofallthrough.exit.thread.i.i
  %.13984.i.i = phi i1 [ %.240.lcssa.i.i.mux, %basicblock_nofallthrough.exit.thread.i.i ], [ true, %._crit_edge.i19 ] ; 2 uses
  %.04483.i.i = phi ptr [ %.mux578, %basicblock_nofallthrough.exit.thread.i.i ], [ %.pre197.i, %._crit_edge.i19 ] ; 6 uses
  %.04582.i.i = phi ptr [ %.348.i.i.mux, %basicblock_nofallthrough.exit.thread.i.i ], [ null, %._crit_edge.i19 ]
  %i.atn = getelementptr i8, ptr %.04483.i.i, i64 40 ; 4 uses
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !44 ; 3 uses
  %i.atp = icmp sgt i32 %i.ato, 0
  br i1 %i.atp, label %.lr.ph87.i.i.i, label %basicblock_remove_redundant_nops.exit.i.i

.lr.ph87.i.i.i:                                   ; preds = %.preheader.i46.i
  %i.atq = getelementptr i8, ptr %.04483.i.i, i64 24
  %i.atr = getelementptr i8, ptr %.04483.i.i, i64 32
  br label %bb.kd

bb.kd:                                            ; preds = %.critedge.i.i.i, %.lr.ph87.i.i.i
  %indvars.iv94.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i ], [ %indvars.iv.next95.i.i.i, %.critedge.i.i.i ] ; 4 uses
  %i.ats = phi i32 [ %i.ato, %.lr.ph87.i.i.i ], [ %i.avc, %.critedge.i.i.i ]
  %.085.i.i.i = phi i32 [ 0, %.lr.ph87.i.i.i ], [ %.1.i.i.i, %.critedge.i.i.i ] ; 7 uses
  %.05982.i.i.i = phi i32 [ -1, %.lr.ph87.i.i.i ], [ %.160.i.i.i, %.critedge.i.i.i ] ; 5 uses
  %i.att = load ptr, ptr %i.atq, align 8, !tbaa !41 ; 2 uses
  %i.atu = getelementptr [40 x i8], ptr %i.att, i64 %indvars.iv94.i.i.i ; 4 uses
  %i.atv = getelementptr i8, ptr %i.atu, i64 8    ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 8, !tbaa !62 ; 5 uses
  %i.atx = load i32, ptr %i.atu, align 8, !tbaa !47
  %i.aty = icmp eq i32 %i.atx, 27
  br i1 %i.aty, label %bb.ke, label %.thread73.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.atz = icmp slt i32 %i.atw, 0
  %i.aua = icmp eq i32 %.05982.i.i.i, %i.atw
  %or.cond.i.i59.i = select i1 %i.atz, i1 true, i1 %i.aua
  br i1 %or.cond.i.i59.i, label %.critedge.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.aub = add nsw i32 %i.ats, -1
  %i.auc = sext i32 %i.aub to i64
  %i.aud = icmp slt i64 %indvars.iv94.i.i.i, %i.auc
  br i1 %i.aud, label %bb.kg, label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.aue = getelementptr i8, ptr %i.atu, i64 48   ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 8, !tbaa !62 ; 2 uses
  %i.aug = icmp eq i32 %i.auf, %i.atw
  br i1 %i.aug, label %.critedge.i.i.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.auh = icmp slt i32 %i.auf, 0
  br i1 %i.auh, label %bb.ki, label %.thread73.i.i.i

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aue, ptr noundef nonnull align 8 dereferenceable(16) %i.atv, i64 16, i1 false), !tbaa.struct !75
  br label %.critedge.i.i.i

bb.kj:                                            ; preds = %bb.kf
  %i.aui = load ptr, ptr %i.atr, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aui, null
  br i1 %.not4.i.i.i.i, label %.thread73.i.i.i, label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %bb.kj, %bb.kk
  %.05.i.i.i.i = phi ptr [ %i.auq, %bb.kk ], [ %i.aui, %bb.kj ] ; 3 uses
  %i.auj = getelementptr i8, ptr %.05.i.i.i.i, i64 40
  %i.auk = load i32, ptr %i.auj, align 8, !tbaa !44 ; 3 uses
  %i.aul = icmp eq i32 %i.auk, 0
  br i1 %i.aul, label %bb.kk, label %next_nonempty_block.exit.preheader.i.i.i

next_nonempty_block.exit.preheader.i.i.i:         ; preds = %.lr.ph.i.i.i60.i
  %i.aum = icmp sgt i32 %i.auk, 0
  br i1 %i.aum, label %.lr.ph.i.i61.i, label %.thread73.i.i.i

.lr.ph.i.i61.i:                                   ; preds = %next_nonempty_block.exit.preheader.i.i.i
  %i.aun = getelementptr i8, ptr %.05.i.i.i.i, i64 24
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !41
  %wide.trip.count.i.i62.i = zext nneg i32 %i.auk to i64
  br label %bb.kl

bb.kk:                                            ; preds = %.lr.ph.i.i.i60.i
  %i.aup = getelementptr i8, ptr %.05.i.i.i.i, i64 32
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i66.i = icmp eq ptr %i.auq, null
  br i1 %.not.i.i.i66.i, label %.thread73.i.i.i, label %.lr.ph.i.i.i60.i, !llvm.loop !5

next_nonempty_block.exit.i.i.i:                   ; preds = %bb.kl
  %indvars.iv.next.i.i64.i = add nuw nsw i64 %indvars.iv.i.i63.i, 1 ; 2 uses
  %exitcond.not.i.i65.i = icmp eq i64 %indvars.iv.next.i.i64.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i.i65.i, label %.thread73.i.i.i, label %bb.kl, !llvm.loop !6

bb.kl:                                            ; preds = %next_nonempty_block.exit.i.i.i, %.lr.ph.i.i61.i
  %indvars.iv.i.i63.i = phi i64 [ 0, %.lr.ph.i.i61.i ], [ %indvars.iv.next.i.i64.i, %next_nonempty_block.exit.i.i.i ] ; 2 uses
  %i.aur = getelementptr [40 x i8], ptr %i.auo, i64 %indvars.iv.i.i63.i ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 8, !tbaa !47
  %i.aut = icmp eq i32 %i.aus, 27
  %i.auu = getelementptr i8, ptr %i.aur, i64 8
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !20 ; 2 uses
  %i.auw = icmp slt i32 %i.auv, 0
  %or.cond = select i1 %i.aut, i1 %i.auw, i1 false
  br i1 %or.cond, label %next_nonempty_block.exit.i.i.i, label %split.i.i.i

split.i.i.i:                                      ; preds = %bb.kl
  %i.aux = icmp eq i32 %i.atw, %i.auv
  br i1 %i.aux, label %.critedge.i.i.i, label %.thread73.i.i.i

.thread73.i.i.i:                                  ; preds = %bb.kk, %next_nonempty_block.exit.i.i.i, %split.i.i.i, %next_nonempty_block.exit.preheader.i.i.i, %bb.kj, %bb.kh, %bb.kd
  %i.auy = zext i32 %.085.i.i.i to i64
  %.not67.i.i.i = icmp eq i64 %indvars.iv94.i.i.i, %i.auy
  br i1 %.not67.i.i.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %.thread73.i.i.i
  %i.auz = sext i32 %.085.i.i.i to i64
  %i.ava = getelementptr [40 x i8], ptr %i.att, i64 %i.auz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ava, ptr noundef nonnull align 8 dereferenceable(40) %i.atu, i64 40, i1 false), !tbaa.struct !63
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.thread73.i.i.i
  %i.avb = add i32 %.085.i.i.i, 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.kn, %split.i.i.i, %bb.ki, %bb.kg, %bb.ke
  %.160.i.i.i = phi i32 [ %.05982.i.i.i, %bb.ki ], [ %.05982.i.i.i, %bb.ke ], [ %i.atw, %bb.kn ], [ %.05982.i.i.i, %bb.kg ], [ %.05982.i.i.i, %split.i.i.i ]
  %.1.i.i.i = phi i32 [ %.085.i.i.i, %bb.ki ], [ %.085.i.i.i, %bb.ke ], [ %i.avb, %bb.kn ], [ %.085.i.i.i, %bb.kg ], [ %.085.i.i.i, %split.i.i.i ] ; 2 uses
  %indvars.iv.next95.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i, 1 ; 2 uses
  %i.avc = load i32, ptr %i.atn, align 8, !tbaa !44 ; 3 uses
  %i.avd = sext i32 %i.avc to i64
  %i.ave = icmp slt i64 %indvars.iv.next95.i.i.i, %i.avd
  br i1 %i.ave, label %bb.kd, label %basicblock_remove_redundant_nops.exit.i.i, !llvm.loop !7

basicblock_remove_redundant_nops.exit.i.i:        ; preds = %.critedge.i.i.i, %.preheader.i46.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader.i46.i ], [ %.1.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %.lcssa79.i.i.i = phi i32 [ %i.ato, %.preheader.i46.i ], [ %i.avc, %.critedge.i.i.i ]
  %i.avf = sub i32 %.lcssa79.i.i.i, %.0.lcssa.i.i.i ; 2 uses
  store i32 %.0.lcssa.i.i.i, ptr %i.atn, align 8, !tbaa !44
  %i.avg = getelementptr i8, ptr %.04483.i.i, i64 24 ; 3 uses
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !41
  %i.avi = sext i32 %.0.lcssa.i.i.i to i64
  %i.avj = getelementptr [40 x i8], ptr %i.avh, i64 %i.avi
  %i.avk = sext i32 %i.avf to i64
  %i.avl = mul nsw i64 %i.avk, 40
  call void @llvm.memset.p0.i64(ptr align 8 %i.avj, i8 0, i64 %i.avl, i1 false)
  %i.avm = icmp eq i32 %i.avf, -1
  br i1 %i.avm, label %optimize_cfg.exit.thread, label %bb.ko, !llvm.loop !132

bb.ko:                                            ; preds = %basicblock_remove_redundant_nops.exit.i.i
  %i.avn = getelementptr i8, ptr %.04483.i.i, i64 8
  %i.avo = load i32, ptr %i.avn, align 8, !tbaa !50
  %i.avp = icmp eq i32 %i.avo, -1
  %spec.select.i.i = select i1 %i.avp, ptr %.04582.i.i, ptr null ; 2 uses
  %i.avq = load i32, ptr %i.atn, align 8, !tbaa !44 ; 3 uses
  %i.avr = icmp sgt i32 %i.avq, 0                 ; 2 uses
  br i1 %i.avr, label %.lr.ph.i51.i, label %._crit_edge.i47.i

.lr.ph.i51.i:                                     ; preds = %bb.ko
  %i.avs = load ptr, ptr %i.avg, align 8, !tbaa !41
  %wide.trip.count.i52.i = zext nneg i32 %i.avq to i64
  br label %bb.kp

._crit_edge.i47.i:                                ; preds = %.critedge.i55.i, %bb.ko
  %.247.lcssa.i.i = phi ptr [ %spec.select.i.i, %bb.ko ], [ %i.avt, %.critedge.i55.i ] ; 5 uses
  %.240.lcssa.i.i = phi i1 [ %.13984.i.i, %bb.ko ], [ %.3.i56.i, %.critedge.i55.i ] ; 2 uses
  %.not50.i.i = icmp eq ptr %.247.lcssa.i.i, null
  br i1 %.not50.i.i, label %bb.ku, label %bb.kt

bb.kp:                                            ; preds = %.critedge.i55.i, %.lr.ph.i51.i
  %indvars.iv.i53.i = phi i64 [ 0, %.lr.ph.i51.i ], [ %indvars.iv.next.i57.i, %.critedge.i55.i ] ; 2 uses
  %.24078.i.i = phi i1 [ %.13984.i.i, %.lr.ph.i51.i ], [ %.3.i56.i, %.critedge.i55.i ] ; 2 uses
  %.24776.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i51.i ], [ %i.avt, %.critedge.i55.i ] ; 5 uses
  %i.avt = getelementptr [40 x i8], ptr %i.avs, i64 %indvars.iv.i53.i ; 5 uses
  %.not53.i.i = icmp eq ptr %.24776.i.i, null
  br i1 %.not53.i.i, label %.thread.i54.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.avu = load i32, ptr %.24776.i.i, align 8, !tbaa !47
  %i.avv = getelementptr i8, ptr %.24776.i.i, i64 4
end_hunk_0
