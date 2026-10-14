Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_8LeafNodeIlSt9monostateLj11ENS_23IntervalMapHalfOpenInfoIlEEEEEEvPPT_jPjPKj:bb.a
  %n.vec287 = and i64 %i.iv, 2147483646           ; 4 uses
  %i.jg = trunc nuw nsw i64 %n.vec287 to i32
  %i.jh = add i32 %i.fw, %i.jg
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next292, %vector.body288 ] ; 4 uses
  %i.ji = trunc i64 %index289 to i32
  %i.jj = add i32 %i.fw, %i.ji                    ; 2 uses
  %i.jk = add i32 %i.jj, 1
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %index289
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %index289
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = zext i32 %i.jj to i64
  %i.jp = zext i32 %i.jk to i64
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.jo
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.jp
  %wide.load290 = load <2 x i64>, ptr %i.jl, align 8
  %wide.load291 = load <2 x i64>, ptr %i.jn, align 8
  store <2 x i64> %wide.load290, ptr %i.jq, align 8
  store <2 x i64> %wide.load291, ptr %i.jr, align 8
  %index.next292 = add nuw i64 %index289, 2       ; 2 uses
  %i.js = icmp eq i64 %index.next292, %n.vec287
  br i1 %i.js, label %middle.block293, label %vector.body288, !llvm.loop !2577

middle.block293:                                  ; preds = %vector.body288
  %cmp.n294 = icmp eq i64 %n.vec287, %i.iv
  br i1 %cmp.n294, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88, label %.lr.ph.i.i31.i83.preheader

.lr.ph.i.i31.i83.preheader:                       ; preds = %vector.memcheck266, %vector.scevcheck265, %.lr.ph.i.preheader.i.i82, %middle.block293
  %indvars.iv.i32.i84.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %vector.scevcheck265 ], [ 0, %.lr.ph.i.preheader.i.i82 ], [ %n.vec287, %middle.block293 ] ; 4 uses
  %.0911.i.i.i85.ph = phi i32 [ %i.fw, %vector.memcheck266 ], [ %i.fw, %vector.scevcheck265 ], [ %i.fw, %.lr.ph.i.preheader.i.i82 ], [ %i.jh, %middle.block293 ] ; 3 uses
  %xtraiter313 = and i64 %i.iv, 1
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph.i.i31.i83.prol.loopexit, label %.lr.ph.i.i31.i83.prol

.lr.ph.i.i31.i83.prol:                            ; preds = %.lr.ph.i.i31.i83.preheader
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv.i32.i84.ph
  %i.ju = zext i32 %.0911.i.i.i85.ph to i64
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.ju
  %i.jw = load <2 x i64>, ptr %i.jt, align 8, !tbaa !367
  store <2 x i64> %i.jw, ptr %i.jv, align 8, !tbaa !367
  %indvars.iv.next.i33.i86.prol = or disjoint i64 %indvars.iv.i32.i84.ph, 1
  %i.jx = add i32 %.0911.i.i.i85.ph, 1
  br label %.lr.ph.i.i31.i83.prol.loopexit

.lr.ph.i.i31.i83.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i83.prol, %.lr.ph.i.i31.i83.preheader
  %indvars.iv.i32.i84.unr = phi i64 [ %indvars.iv.i32.i84.ph, %.lr.ph.i.i31.i83.preheader ], [ %indvars.iv.next.i33.i86.prol, %.lr.ph.i.i31.i83.prol ]
  %.0911.i.i.i85.unr = phi i32 [ %.0911.i.i.i85.ph, %.lr.ph.i.i31.i83.preheader ], [ %i.jx, %.lr.ph.i.i31.i83.prol ]
  %i.jy = add nsw i64 %i.iv, -1
  %i.jz = icmp eq i64 %indvars.iv.i32.i84.ph, %i.jy
  br i1 %i.jz, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88, label %.lr.ph.i.i31.i83

.lr.ph.i.i31.i83:                                 ; preds = %.lr.ph.i.i31.i83.prol.loopexit, %.lr.ph.i.i31.i83
  %indvars.iv.i32.i84 = phi i64 [ %indvars.iv.next.i33.i86.1, %.lr.ph.i.i31.i83 ], [ %indvars.iv.i32.i84.unr, %.lr.ph.i.i31.i83.prol.loopexit ] ; 3 uses
  %.0911.i.i.i85 = phi i32 [ %i.kk, %.lr.ph.i.i31.i83 ], [ %.0911.i.i.i85.unr, %.lr.ph.i.i31.i83.prol.loopexit ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv.i32.i84
  %i.kb = zext i32 %.0911.i.i.i85 to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.kb
  %i.kd = load <2 x i64>, ptr %i.ka, align 8, !tbaa !367
  store <2 x i64> %i.kd, ptr %i.kc, align 8, !tbaa !367
  %i.ke = add i32 %.0911.i.i.i85, 1
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv.i32.i84
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = zext i32 %i.ke to i64
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.kh
  %i.kj = load <2 x i64>, ptr %i.kg, align 8, !tbaa !367
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !tbaa !367
  %indvars.iv.next.i33.i86.1 = add nuw nsw i64 %indvars.iv.i32.i84, 2 ; 2 uses
  %i.kk = add i32 %.0911.i.i.i85, 2
  %.not.i.i34.i87.1 = icmp eq i64 %indvars.iv.next.i33.i86.1, %i.iv
  br i1 %.not.i.i34.i87.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88, label %.lr.ph.i.i31.i83, !llvm.loop !2578

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88: ; preds = %.lr.ph.i.i31.i83.prol.loopexit, %.lr.ph.i.i31.i83, %middle.block293, %.lr.ph.i.i25.i78
  %.not10.i.i.i.i.i89 = icmp eq i32 %i.gc, %.sroa.speculated.i80
  br i1 %.not10.i.i.i.i.i89, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88
  %i.kl = xor i32 %.sroa.speculated.i80, -1
  %i.km = add i32 %i.gc, %i.kl                    ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check253 = icmp ult i32 %i.km, 3
  %i.kp = add i32 %i.gc, -1
  %i.kq = icmp ult i32 %i.kp, %.sroa.speculated.i80
  %or.cond304 = or i1 %min.iters.check253, %i.kq
  br i1 %or.cond304, label %.lr.ph.i.i.i.i.i90.preheader305, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %n.vec255 = and i64 %i.ko, 8589934590           ; 4 uses
  %i.kr = trunc i64 %n.vec255 to i32
  %i.ks = add i32 %.sroa.speculated.i80, %i.kr
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next260, %vector.body256 ] ; 4 uses
  %i.kt = trunc i64 %index257 to i32
  %i.ku = add i32 %.sroa.speculated.i80, %i.kt    ; 2 uses
  %i.kv = add i32 %i.ku, 1
  %i.kw = zext i32 %i.ku to i64
  %i.kx = zext i32 %i.kv to i64
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.kw
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.kx
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %index257
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %index257
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %wide.load258 = load <2 x i64>, ptr %i.ky, align 8
  %wide.load259 = load <2 x i64>, ptr %i.kz, align 8
  store <2 x i64> %wide.load258, ptr %i.la, align 8
  store <2 x i64> %wide.load259, ptr %i.lc, align 8
  %index.next260 = add nuw i64 %index257, 2       ; 2 uses
  %i.ld = icmp eq i64 %index.next260, %n.vec255
  br i1 %i.ld, label %middle.block261, label %vector.body256, !llvm.loop !2579

middle.block261:                                  ; preds = %vector.body256
  %cmp.n262 = icmp eq i64 %i.ko, %n.vec255
  br i1 %cmp.n262, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95, label %.lr.ph.i.i.i.i.i90.preheader305

.lr.ph.i.i.i.i.i90.preheader305:                  ; preds = %.lr.ph.i.i.i.i.i90.preheader, %middle.block261
  %indvars.iv6.i.i91.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i90.preheader ], [ %n.vec255, %middle.block261 ] ; 3 uses
  %.012.i.i.i.i.i92.ph = phi i32 [ %.sroa.speculated.i80, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ks, %middle.block261 ] ; 5 uses
  %i.le = sub i32 %i.gc, %.012.i.i.i.i.i92.ph
  %.neg322 = add i32 %.012.i.i.i.i.i92.ph, 1
  %xtraiter315 = and i32 %i.le, 1
  %lcmp.mod316.not = icmp eq i32 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %.lr.ph.i.i.i.i.i90.prol.loopexit, label %.lr.ph.i.i.i.i.i90.prol

.lr.ph.i.i.i.i.i90.prol:                          ; preds = %.lr.ph.i.i.i.i.i90.preheader305
  %i.lf = zext i32 %.012.i.i.i.i.i92.ph to i64
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv6.i.i91.ph
  %i.li = load <2 x i64>, ptr %i.lg, align 8, !tbaa !367
  store <2 x i64> %i.li, ptr %i.lh, align 8, !tbaa !367
  %i.lj = add i32 %.012.i.i.i.i.i92.ph, 1
  %indvars.iv.next7.i.i93.prol = or disjoint i64 %indvars.iv6.i.i91.ph, 1
  br label %.lr.ph.i.i.i.i.i90.prol.loopexit

.lr.ph.i.i.i.i.i90.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i90.prol, %.lr.ph.i.i.i.i.i90.preheader305
  %indvars.iv6.i.i91.unr = phi i64 [ %indvars.iv6.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader305 ], [ %indvars.iv.next7.i.i93.prol, %.lr.ph.i.i.i.i.i90.prol ]
  %.012.i.i.i.i.i92.unr = phi i32 [ %.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader305 ], [ %i.lj, %.lr.ph.i.i.i.i.i90.prol ]
  %i.lk = icmp eq i32 %i.gc, %.neg322
  br i1 %i.lk, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.prol.loopexit, %.lr.ph.i.i.i.i.i90
  %indvars.iv6.i.i91 = phi i64 [ %indvars.iv.next7.i.i93.1, %.lr.ph.i.i.i.i.i90 ], [ %indvars.iv6.i.i91.unr, %.lr.ph.i.i.i.i.i90.prol.loopexit ] ; 3 uses
  %.012.i.i.i.i.i92 = phi i32 [ %i.lv, %.lr.ph.i.i.i.i.i90 ], [ %.012.i.i.i.i.i92.unr, %.lr.ph.i.i.i.i.i90.prol.loopexit ] ; 3 uses
  %i.ll = zext i32 %.012.i.i.i.i.i92 to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.ll
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv6.i.i91
  %i.lo = load <2 x i64>, ptr %i.lm, align 8, !tbaa !367
  store <2 x i64> %i.lo, ptr %i.ln, align 8, !tbaa !367
  %i.lp = add i32 %.012.i.i.i.i.i92, 1
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.lq
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv6.i.i91
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load <2 x i64>, ptr %i.lr, align 8, !tbaa !367
  store <2 x i64> %i.lu, ptr %i.lt, align 8, !tbaa !367
  %i.lv = add i32 %.012.i.i.i.i.i92, 2            ; 2 uses
  %indvars.iv.next7.i.i93.1 = add nuw nsw i64 %indvars.iv6.i.i91, 2
  %.not.i.i.i.i.i94.1 = icmp eq i32 %i.lv, %i.gc
  br i1 %.not.i.i.i.i.i94.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95, label %.lr.ph.i.i.i.i.i90, !llvm.loop !2580

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95: ; preds = %.lr.ph.i.i.i.i.i90.prol.loopexit, %.lr.ph.i.i.i.i.i90, %middle.block261, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE4copyILj11EEEvRKNS1_IS3_S4_XT_EEEjjj.exit.i.i88
  %i.lw = sub nsw i32 0, %.sroa.speculated.i80
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115: ; preds = %.lr.ph.i7.i.i110.prol.loopexit, %.lr.ph.i7.i.i110, %middle.block247, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE9moveRightEjjj.exit.i.i107, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95
  %.0.i96 = phi i32 [ %i.lw, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17transferToLeftSibEjRS5_jj.exit.i95 ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE9moveRightEjjj.exit.i.i107 ], [ %.sroa.speculated47.i99, %middle.block247 ], [ %.sroa.speculated47.i99, %.lr.ph.i7.i.i110 ], [ %.sroa.speculated47.i99, %.lr.ph.i7.i.i110.prol.loopexit ] ; 2 uses
  %i.lx = add i32 %.0.i96, %i.gc
  store i32 %i.lx, ptr %i.gb, align 4, !tbaa !198
  %i.ly = load i32, ptr %i.fp, align 4, !tbaa !198
  %i.lz = sub i32 %i.ly, %.0.i96                  ; 3 uses
  store i32 %i.lz, ptr %i.fp, align 4, !tbaa !198
  %i.ma = load i32, ptr %i.fr, align 4, !tbaa !198 ; 2 uses
  %.not75 = icmp ult i32 %i.lz, %i.ma
  br i1 %.not75, label %bb.c, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115..loopexit.loopexit_crit_edge, !llvm.loop !2574

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115..loopexit.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115
  br label %.loopexit, !llvm.loop !2574

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj11EE17adjustFromLeftSibEjRS5_ji.exit115..loopexit.loopexit_crit_edge, %.lr.ph124
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %.not73 = icmp eq i64 %indvars.iv.next130, %i.c
  br i1 %.not73, label %.loopexit117, label %.lr.ph124, !llvm.loop !2581

.loopexit117:                                     ; preds = %.loopexit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEl(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i64 %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !743    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 140 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !733  ; 9 uses
  %i.f = icmp ult i32 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 14 uses
  %.not9.i.i.i = icmp eq i32 %i.e, %i.j
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = sub i32 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 8 uses
  %i.m = zext i32 %i.k to i64                     ; 5 uses
  %4 = xor i32 %i.j, -1
  %5 = add i32 %i.e, %4                           ; 2 uses
  %i.n = zext i32 %5 to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check92 = icmp ult i32 %5, 27
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i32 %i.e, -1                     ; 2 uses
  %.neg105 = sub i32 %i.j, %i.p
  %i.q = add i32 %.neg105, %i.e
  %i.r = icmp ugt i32 %i.q, %i.e
  %i.s = icmp ugt i32 %i.j, %i.p
  %i.t = or i1 %i.r, %i.s
  br i1 %i.t, label %scalar.ph91.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %vector.scevcheck84
  %6 = add nsw i32 %i.e, -1
  %i.u = zext i32 %6 to i64
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = shl nuw nsw i32 %i.e, 3
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = sub nsw i64 %i.x, %i.v
  %diff.check86 = icmp ugt i64 %i.y, -32
  %i.z = sub nsw i64 %i.v, %i.x
  %i.aa = add nsw i64 %i.z, -65
  %diff.check89 = icmp ult i64 %i.aa, 31
  %conflict.rdx90 = or i1 %diff.check86, %diff.check89
  br i1 %conflict.rdx90, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck85
  %n.vec94 = and i64 %i.o, 8589934588             ; 3 uses
  %i.ab = sub nsw i64 %i.m, %n.vec94
  %invariant.op108 = add i32 -1, %i.j
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %i.ac = sub i64 %i.m, %index96                  ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %.reass109 = add i32 %i.ad, %invariant.op108
  %i.ae = zext i32 %.reass109 to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae ; 2 uses
  %i.ag = trunc nuw i64 %i.ac to i32
  %i.ah = add i32 %i.j, %i.ag
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 -24
  %wide.load97 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !75
  %wide.load98 = load <2 x i64>, ptr %i.al, align 8, !tbaa !75
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -24
  store <2 x i64> %wide.load97, ptr %i.am, align 8, !tbaa !75
  store <2 x i64> %wide.load98, ptr %i.an, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ae ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %wide.load99 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !367
  %wide.load100 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !367
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -24
  store <2 x i64> %wide.load99, ptr %i.as, align 8, !tbaa !367
  store <2 x i64> %wide.load100, ptr %i.at, align 8, !tbaa !367
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %i.au = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.au, label %middle.block102, label %vector.body95, !llvm.loop !2582

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %i.o, %n.vec94
  br i1 %cmp.n103, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %vector.memcheck85, %vector.scevcheck84, %.lr.ph.i.i.i, %middle.block102
  %indvars.iv.i.i.ph = phi i64 [ %i.m, %vector.memcheck85 ], [ %i.m, %vector.scevcheck84 ], [ %i.m, %.lr.ph.i.i.i ], [ %i.ab, %middle.block102 ] ; 4 uses
  %i.av = trunc i64 %indvars.iv.i.i.ph to i32     ; 2 uses
  %xtraiter106 = and i32 %i.av, 1
  %lcmp.mod107.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1 ; 2 uses
  %indvars.i.i.prol = trunc i64 %indvars.iv.next.i.i.prol to i32
  %i.aw = add i32 %i.j, %indvars.i.i.prol
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ax
  %i.az = trunc nuw i64 %indvars.iv.i.i.ph to i32
  %i.ba = add i32 %i.j, %i.az
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load i64, ptr %i.ay, align 8, !tbaa !75
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ax
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !367
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bb
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !367
  br label %scalar.ph91.prol.loopexit

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph91.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph91.prol ]
  %i.bh = icmp eq i32 %i.av, 1
  br i1 %i.bh, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph91 ], [ %indvars.iv.i.i.unr, %scalar.ph91.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.bi = add i32 %i.j, %indvars.i.i
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bj
  %i.bl = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bm = add i32 %i.j, %i.bl
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bn
  %i.bp = load i64, ptr %i.bk, align 8, !tbaa !75
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bj
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !367
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bn
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !367
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %indvars.i.i.1 = trunc i64 %indvars.iv.next.i.i.1 to i32 ; 2 uses
  %i.bt = add i32 %i.j, %indvars.i.i.1
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.bx = add i32 %i.j, %i.bw
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.by
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !75
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !75
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bu
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !367
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.by
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !367
  %.not.i.i.i.1 = icmp eq i32 %indvars.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph91, !llvm.loop !2583

_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit: ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91, %middle.block102, %bb.c
  %i.ce = zext i32 %i.j to i64                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ce
  store i64 %2, ptr %i.cf, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store i64 %3, ptr %i.ch, align 8, !tbaa !367
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !733
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.d, align 4, !tbaa !733
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !43  ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.cj, ptr %i.cl, align 8, !tbaa !746
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !745
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !747
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %.sroa.0.0.copyload.i = load i64, ptr %i.cq, align 8, !tbaa !75 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cs = and i64 %.sroa.0.0.copyload.i, -64
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.cv = and i32 %i.cu, 63
  %i.cw = add nuw nsw i32 %i.cv, 1
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !371
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !198
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !198
  %i.da = tail call i64 @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE9splitRootEj(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i32 noundef %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load i32, ptr %i.d, align 4, !tbaa !733
  tail call void @_ZN4llvm15IntervalMapImpl4Path11replaceRootEPvjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull %i.db, i32 noundef %i.dc, i64 %i.da) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.048 = phi i32 [ 2, %bb.d ], [ %1, %bb.a ]
  %i.dd = add i32 %.048, -1                       ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !76
  %.not.i.i.i53 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i53, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i:   ; preds = %bb.e
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !745
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !746
  %i.dl = icmp ult i32 %i.di, %i.dk
  br i1 %i.dl, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i
  %.pre66 = zext i32 %i.dd to i64
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i, %bb.e
  tail call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.dd) #36
  %i.dm = zext i32 %i.dd to i64                   ; 2 uses
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !745
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !745
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i
  %.pre-phi67 = phi i64 [ %.pre66, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.dm, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.ds = phi ptr [ %i.dg, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.dn, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.pre-phi67
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !746 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 12
  br i1 %i.dw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.dx = tail call noundef zeroext i1 @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIlS1_Lj12ES3_EEEEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.dd) ; 2 uses
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add i32 %i.dd, %i.dy                    ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.pre63 = zext i32 %i.dz to i64                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.pre63
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre65 = load i32, ptr %.phi.trans.insert64, align 8, !tbaa !746
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.ea = phi i32 [ %.pre65, %bb.f ], [ %i.dv, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 8 uses
  %.pre-phi = phi i64 [ %.pre63, %bb.f ], [ %.pre-phi67, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 4 uses
  %i.eb = phi ptr [ %.pre, %bb.f ], [ %i.ds, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.150 = phi i1 [ %i.dx, %bb.f ], [ %i.c, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.1 = phi i32 [ %i.dz, %bb.f ], [ %i.dd, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %.pre-phi ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !747 ; 11 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !198 ; 14 uses
  %.not9.i.i.i54 = icmp eq i32 %i.ea, %i.ef
  br i1 %.not9.i.i.i54, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.g
  %i.eg = sub i32 %i.ea, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 8 uses
  %i.ei = zext i32 %i.eg to i64                   ; 5 uses
  %7 = xor i32 %i.ef, -1
  %8 = add i32 %i.ea, %7                          ; 2 uses
  %i.ej = zext i32 %8 to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %8, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i55
  %i.el = add i32 %i.ea, -1                       ; 2 uses
  %.neg = sub i32 %i.ef, %i.el
  %i.em = add i32 %.neg, %i.ea
  %i.en = icmp ugt i32 %i.em, %i.ea
  %i.eo = icmp ugt i32 %i.ef, %i.el
  %i.ep = or i1 %i.en, %i.eo
  br i1 %i.ep, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %9 = add i32 %i.ea, -1
  %i.eq = zext i32 %9 to i64
  %i.er = shl nuw nsw i64 %i.eq, 3                ; 3 uses
  %i.es = zext i32 %i.ea to i64
  %i.et = shl nuw nsw i64 %i.es, 3                ; 3 uses
  %i.eu = sub nsw i64 %i.et, %i.er
  %diff.check = icmp ugt i64 %i.eu, -32
  %i.ev = sub nsw i64 %i.et, %i.er
  %i.ew = add nsw i64 %i.ev, -97
  %diff.check78 = icmp ult i64 %i.ew, 31
  %conflict.rdx = or i1 %diff.check, %diff.check78
  %i.ex = sub nsw i64 %i.er, %i.et
  %i.ey = add nsw i64 %i.ex, -97
  %diff.check79 = icmp ult i64 %i.ey, 31
  %conflict.rdx80 = or i1 %conflict.rdx, %diff.check79
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 8589934588              ; 3 uses
  %i.ez = sub nsw i64 %i.ei, %n.vec
  %invariant.op = add i32 -1, %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = sub i64 %i.ei, %index                   ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  %.reass = add i32 %i.fb, %invariant.op
  %i.fc = zext i32 %.reass to i64                 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fc ; 2 uses
  %i.fe = trunc nuw i64 %i.fa to i32
  %i.ff = add i32 %i.ef, %i.fe
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.fj = getelementptr inbounds i8, ptr %i.fd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !75
  %wide.load81 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !75
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 -8
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 -24
  store <2 x i64> %wide.load, ptr %i.fk, align 8, !tbaa !75
  store <2 x i64> %wide.load81, ptr %i.fl, align 8, !tbaa !75
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fc ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -8
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -24
  %wide.load82 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !367
  %wide.load83 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !367
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fg ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -24
  store <2 x i64> %wide.load82, ptr %i.fq, align 8, !tbaa !367
  store <2 x i64> %wide.load83, ptr %i.fr, align 8, !tbaa !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !2584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i55, %middle.block
  %indvars.iv.i.i56.ph = phi i64 [ %i.ei, %vector.memcheck ], [ %i.ei, %vector.scevcheck ], [ %i.ei, %.lr.ph.i.i.i55 ], [ %i.ez, %middle.block ] ; 4 uses
  %i.ft = trunc i64 %indvars.iv.i.i56.ph to i32   ; 2 uses
  %xtraiter = and i32 %i.ft, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next.i.i57.prol = add nsw i64 %indvars.iv.i.i56.ph, -1 ; 2 uses
  %indvars.i.i58.prol = trunc i64 %indvars.iv.next.i.i57.prol to i32
  %i.fu = add i32 %i.ef, %indvars.i.i58.prol
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fv
  %i.fx = trunc nuw i64 %indvars.iv.i.i56.ph to i32
  %i.fy = add i32 %i.ef, %i.fx
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fz
  %i.gb = load i64, ptr %i.fw, align 8, !tbaa !75
  store i64 %i.gb, ptr %i.ga, align 8, !tbaa !75
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fv
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !367
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fz
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !367
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i56.unr = phi i64 [ %indvars.iv.i.i56.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i57.prol, %scalar.ph.prol ]
  %i.gf = icmp eq i32 %i.ft, 1
  br i1 %i.gf, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i56 = phi i64 [ %indvars.iv.next.i.i57.1, %scalar.ph ], [ %indvars.iv.i.i56.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i57 = add nsw i64 %indvars.iv.i.i56, -1 ; 2 uses
  %indvars.i.i58 = trunc i64 %indvars.iv.next.i.i57 to i32
  %i.gg = add i32 %i.ef, %indvars.i.i58
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gh
  %i.gj = trunc nuw i64 %indvars.iv.i.i56 to i32
  %i.gk = add i32 %i.ef, %i.gj
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gl
  %i.gn = load i64, ptr %i.gi, align 8, !tbaa !75
  store i64 %i.gn, ptr %i.gm, align 8, !tbaa !75
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.gh
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !367
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.gl
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !367
  %indvars.iv.next.i.i57.1 = add nsw i64 %indvars.iv.i.i56, -2 ; 2 uses
  %indvars.i.i58.1 = trunc i64 %indvars.iv.next.i.i57.1 to i32 ; 2 uses
  %i.gr = add i32 %i.ef, %indvars.i.i58.1
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gs
  %i.gu = trunc nuw i64 %indvars.iv.next.i.i57 to i32
  %i.gv = add i32 %i.ef, %i.gu
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gw
  %i.gy = load i64, ptr %i.gt, align 8, !tbaa !75
  store i64 %i.gy, ptr %i.gx, align 8, !tbaa !75
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.gs
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !367
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.gw
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !367
  %.not.i.i.i59.1 = icmp eq i32 %indvars.i.i58.1, 0
  br i1 %.not.i.i.i59.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit, label %scalar.ph, !llvm.loop !2585

_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g
  %i.hc = zext i32 %i.ef to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.hc
  store i64 %2, ptr %i.hd, align 8, !tbaa !75
  %i.he = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hc
  store i64 %3, ptr %i.hf, align 8, !tbaa !367
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %.pre-phi ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !746 ; 2 uses
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 8, !tbaa !746
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit:   ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !745
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator11setNodeStopEjl.exit

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread: ; preds = %_ZN4llvm15IntervalMapImpl10BranchNodeIlSt9monostateLj12ENS_23IntervalMapHalfOpenInfoIlEEE6insertEjjNS0_7NodeRefEl.exit
  %i.hn = add i32 %.1, -1
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !745
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !747
  %i.ht = zext i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.hu, align 8
  %i.hv = zext i32 %i.hj to i64
  %i.hw = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.hx = or i64 %i.hw, %i.hv
  store i64 %i.hx, ptr %i.hu, align 8
  %i.hy = load ptr, ptr %i.b, align 8, !tbaa !43  ; 7 uses
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %.pre-phi ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !745 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !746
  %i.ie = add i32 %i.id, -1
  %i.if = icmp eq i32 %i.ib, %i.ie
  br i1 %i.if, label %.preheader.preheader, label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator11setNodeStopEjl.exit

.preheader.preheader:                             ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.thread
  %i.ig = add nsw i64 %.pre-phi, -1               ; 2 uses
  %.not16.wide.i77 = icmp eq i64 %i.ig, 0
  br i1 %.not16.wide.i77, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.ih = add nsw i64 %i.ii, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ih, 0
  br i1 %.not16.wide.i, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.ii = phi i64 [ %i.ih, %.preheader ], [ %i.ig, %.preheader.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.ii ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !747
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.im = load i32, ptr %i.il, align 4, !tbaa !198 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  %i.io = zext i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.io
  store i64 %3, ptr %i.ip, align 8, !tbaa !367
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !746
  %i.is = add i32 %i.ir, -1
  %i.it = icmp eq i32 %i.im, %i.is
  br i1 %i.it, label %.preheader, label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator11setNodeStopEjl.exit, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.iu = load ptr, ptr %i.hy, align 8, !tbaa !747
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !198
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %i.iy = zext i32 %i.iw to i64
end_hunk_0
