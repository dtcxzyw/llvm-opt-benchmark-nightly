inline.NumInlined: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@main:bb.a
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep.i135, i64 %index471 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ea, align 4, !tbaa !15
  store <4 x float> splat (float 1.000000e+00), ptr %i.eb, align 4, !tbaa !15
  %index.next472 = add nuw i64 %index471, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next472, %n.vec469
  br i1 %i.ec, label %middle.block473, label %vector.body470, !llvm.loop !35

middle.block473:                                  ; preds = %vector.body470
  br i1 %cmp.n474, label %._crit_edge.i140, label %scalar.ph465.preheader

scalar.ph465.preheader:                           ; preds = %.preheader.i133, %middle.block473
  %indvars.iv.i136.ph = phi i64 [ 0, %.preheader.i133 ], [ %n.vec469, %middle.block473 ]
  br label %scalar.ph465

scalar.ph465:                                     ; preds = %scalar.ph465.preheader, %scalar.ph465
  %indvars.iv.i136 = phi i64 [ %indvars.iv.next.i138, %scalar.ph465 ], [ %indvars.iv.i136.ph, %scalar.ph465.preheader ] ; 2 uses
  %gep.i137 = getelementptr [4 x i8], ptr %invariant.gep.i135, i64 %indvars.iv.i136
  store float 1.000000e+00, ptr %gep.i137, align 4, !tbaa !15
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, %wide.trip.count.i90
  br i1 %exitcond.not.i139, label %._crit_edge.i140, label %scalar.ph465, !llvm.loop !36

._crit_edge.i140:                                 ; preds = %scalar.ph465, %middle.block473
  %indvars.iv.next32.i141 = add nuw nsw i64 %indvars.iv31.i134, 1 ; 2 uses
  %exitcond35.not.i142 = icmp eq i64 %indvars.iv.next32.i141, %wide.trip.count34.i89
  br i1 %exitcond35.not.i142, label %._crit_edge26.i143, label %.preheader.i133, !llvm.loop !26

._crit_edge26.i143:                               ; preds = %._crit_edge.i140
  %i.ed = add nuw nsw i32 %.02127.i132, 1         ; 2 uses
  %exitcond36.not.i144 = icmp eq i32 %i.ed, %i.cu
  br i1 %exitcond36.not.i144, label %.preheader23.lr.ph.split.split.i148, label %.preheader23.i131, !llvm.loop !27

.preheader23.lr.ph.split.split.i148:              ; preds = %._crit_edge26.i143
  %i.ee = mul nuw nsw i32 %i.cu, 3
  %min.iters.check477 = icmp ult i32 %i.cy, 8
  %n.vec480 = and i64 %wide.trip.count.i90, 2147483640 ; 3 uses
  %cmp.n485 = icmp eq i64 %n.vec480, %wide.trip.count.i90
  br label %.preheader23.i151

.preheader23.i151:                                ; preds = %._crit_edge26.i163, %.preheader23.lr.ph.split.split.i148
  %.02127.i152 = phi i32 [ 0, %.preheader23.lr.ph.split.split.i148 ], [ %i.eo, %._crit_edge26.i163 ] ; 2 uses
  %i.ef = add nuw i32 %.02127.i152, %i.ee
  %i.eg = mul i32 %i.ef, %i.cw
  br label %.preheader.i153

.preheader.i153:                                  ; preds = %._crit_edge.i160, %.preheader23.i151
  %indvars.iv31.i154 = phi i64 [ 0, %.preheader23.i151 ], [ %indvars.iv.next32.i161, %._crit_edge.i160 ] ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv31.i154 to i32
  %i.ei = add i32 %i.eg, %i.eh
  %i.ej = mul i32 %i.ei, %i.cy
  %i.ek = sext i32 %i.ej to i64
  %invariant.gep.i155 = getelementptr [4 x i8], ptr %i.g, i64 %i.ek ; 2 uses
  br i1 %min.iters.check477, label %scalar.ph476.preheader, label %vector.body481

vector.body481:                                   ; preds = %.preheader.i153, %vector.body481
  %index482 = phi i64 [ %index.next483, %vector.body481 ], [ 0, %.preheader.i153 ] ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %invariant.gep.i155, i64 %index482 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.el, align 4, !tbaa !15
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.em, align 4, !tbaa !15
  %index.next483 = add nuw i64 %index482, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next483, %n.vec480
  br i1 %i.en, label %middle.block484, label %vector.body481, !llvm.loop !37

middle.block484:                                  ; preds = %vector.body481
  br i1 %cmp.n485, label %._crit_edge.i160, label %scalar.ph476.preheader

scalar.ph476.preheader:                           ; preds = %.preheader.i153, %middle.block484
  %indvars.iv.i156.ph = phi i64 [ 0, %.preheader.i153 ], [ %n.vec480, %middle.block484 ]
  br label %scalar.ph476

scalar.ph476:                                     ; preds = %scalar.ph476.preheader, %scalar.ph476
  %indvars.iv.i156 = phi i64 [ %indvars.iv.next.i158, %scalar.ph476 ], [ %indvars.iv.i156.ph, %scalar.ph476.preheader ] ; 2 uses
  %gep.i157 = getelementptr [4 x i8], ptr %invariant.gep.i155, i64 %indvars.iv.i156
  store float f0x3E2AAAAB, ptr %gep.i157, align 4, !tbaa !15
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i156, 1 ; 2 uses
  %exitcond.not.i159 = icmp eq i64 %indvars.iv.next.i158, %wide.trip.count.i90
  br i1 %exitcond.not.i159, label %._crit_edge.i160, label %scalar.ph476, !llvm.loop !38

._crit_edge.i160:                                 ; preds = %scalar.ph476, %middle.block484
  %indvars.iv.next32.i161 = add nuw nsw i64 %indvars.iv31.i154, 1 ; 2 uses
  %exitcond35.not.i162 = icmp eq i64 %indvars.iv.next32.i161, %wide.trip.count34.i89
  br i1 %exitcond35.not.i162, label %._crit_edge26.i163, label %.preheader.i153, !llvm.loop !26

._crit_edge26.i163:                               ; preds = %._crit_edge.i160
  %i.eo = add nuw nsw i32 %.02127.i152, 1         ; 2 uses
  %exitcond36.not.i164 = icmp eq i32 %i.eo, %i.cu
  br i1 %exitcond36.not.i164, label %mat_set.exit165, label %.preheader23.i151, !llvm.loop !27

mat_set.exit165:                                  ; preds = %._crit_edge26.i163, %.preheader23.lr.ph.split.i87, %.preheader23.lr.ph.i86, %mat_set.exit85
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @b, i64 12), align 4, !tbaa !12 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader23.lr.ph.i166, label %mat_set.exit225

.preheader23.lr.ph.i166:                          ; preds = %mat_set.exit165
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @b, i64 16), align 8, !tbaa !13 ; 7 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.preheader23.lr.ph.split.i167, label %mat_set.exit225

.preheader23.lr.ph.split.i167:                    ; preds = %.preheader23.lr.ph.i166
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @b, i64 20), align 4, !tbaa !14 ; 4 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.preheader23.lr.ph.split.split.i168, label %mat_set.exit225

.preheader23.lr.ph.split.split.i168:              ; preds = %.preheader23.lr.ph.split.i167
  %wide.trip.count34.i169 = zext nneg i32 %i.er to i64 ; 6 uses
  %wide.trip.count.i170 = zext nneg i32 %i.et to i64 ; 16 uses
  %i.ev = mul i32 %i.er, %i.et
  %i.ew = zext i32 %i.ev to i64                   ; 3 uses
  %i.ex = shl nuw nsw i64 %wide.trip.count.i170, 2 ; 15 uses
  %wide.trip.count379 = zext nneg i32 %i.ep to i64 ; 3 uses
  %xtraiter527 = and i64 %wide.trip.count34.i169, 3 ; 3 uses
  %i.ey = icmp ult i32 %i.er, 4
  %unroll_iter531 = and i64 %wide.trip.count34.i169, 2147483644
  %lcmp.mod529.not = icmp eq i64 %xtraiter527, 0
  %lcmp.mod530 = icmp ne i64 %xtraiter527, 0
  br label %.preheader23.i171

.preheader23.i171:                                ; preds = %._crit_edge26.i183, %.preheader23.lr.ph.split.split.i168
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge26.i183 ], [ 0, %.preheader23.lr.ph.split.split.i168 ] ; 2 uses
  %i.ez = mul nuw nsw i64 %indvar375, %i.ew       ; 5 uses
  br i1 %i.ey, label %.preheader.i173.epil.preheader, label %.preheader.i173

.preheader.i173:                                  ; preds = %.preheader23.i171, %.preheader.i173
  %indvars.iv31.i174 = phi i64 [ %indvars.iv.next32.i181.3, %.preheader.i173 ], [ 0, %.preheader23.i171 ] ; 5 uses
  %niter532 = phi i64 [ %niter532.next.3, %.preheader.i173 ], [ 0, %.preheader23.i171 ]
  %i.fa = mul nuw nsw i64 %indvars.iv31.i174, %wide.trip.count.i170
  %i.fb = add nuw i64 %i.ez, %i.fa
  %sext429 = shl i64 %i.fb, 32
  %i.fc = ashr exact i64 %sext429, 30
  %scevgep377 = getelementptr i8, ptr %i.h, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep377, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i181 = or disjoint i64 %indvars.iv31.i174, 1
  %i.fd = mul nuw nsw i64 %indvars.iv.next32.i181, %wide.trip.count.i170
  %i.fe = add nuw i64 %i.ez, %i.fd
  %sext429.1 = shl i64 %i.fe, 32
  %i.ff = ashr exact i64 %sext429.1, 30
  %scevgep377.1 = getelementptr i8, ptr %i.h, i64 %i.ff
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep377.1, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i181.1 = or disjoint i64 %indvars.iv31.i174, 2
  %i.fg = mul nuw nsw i64 %indvars.iv.next32.i181.1, %wide.trip.count.i170
  %i.fh = add nuw i64 %i.ez, %i.fg
  %sext429.2 = shl i64 %i.fh, 32
  %i.fi = ashr exact i64 %sext429.2, 30
  %scevgep377.2 = getelementptr i8, ptr %i.h, i64 %i.fi
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep377.2, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i181.2 = or disjoint i64 %indvars.iv31.i174, 3
  %i.fj = mul nuw nsw i64 %indvars.iv.next32.i181.2, %wide.trip.count.i170
  %i.fk = add nuw i64 %i.ez, %i.fj
  %sext429.3 = shl i64 %i.fk, 32
  %i.fl = ashr exact i64 %sext429.3, 30
  %scevgep377.3 = getelementptr i8, ptr %i.h, i64 %i.fl
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep377.3, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i181.3 = add nuw nsw i64 %indvars.iv31.i174, 4 ; 2 uses
  %niter532.next.3 = add i64 %niter532, 4         ; 2 uses
  %niter532.ncmp.3 = icmp eq i64 %niter532.next.3, %unroll_iter531
  br i1 %niter532.ncmp.3, label %._crit_edge26.i183.unr-lcssa, label %.preheader.i173, !llvm.loop !26

._crit_edge26.i183.unr-lcssa:                     ; preds = %.preheader.i173
  br i1 %lcmp.mod529.not, label %._crit_edge26.i183, label %.preheader.i173.epil.preheader

.preheader.i173.epil.preheader:                   ; preds = %._crit_edge26.i183.unr-lcssa, %.preheader23.i171
  %indvars.iv31.i174.epil.init = phi i64 [ 0, %.preheader23.i171 ], [ %indvars.iv.next32.i181.3, %._crit_edge26.i183.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod530)
  br label %.preheader.i173.epil

.preheader.i173.epil:                             ; preds = %.preheader.i173.epil, %.preheader.i173.epil.preheader
  %indvars.iv31.i174.epil = phi i64 [ %indvars.iv31.i174.epil.init, %.preheader.i173.epil.preheader ], [ %indvars.iv.next32.i181.epil, %.preheader.i173.epil ] ; 2 uses
  %epil.iter528 = phi i64 [ 0, %.preheader.i173.epil.preheader ], [ %epil.iter528.next, %.preheader.i173.epil ]
  %i.fm = mul nuw nsw i64 %indvars.iv31.i174.epil, %wide.trip.count.i170
  %i.fn = add nuw i64 %i.ez, %i.fm
  %sext429.epil = shl i64 %i.fn, 32
  %i.fo = ashr exact i64 %sext429.epil, 30
  %scevgep377.epil = getelementptr i8, ptr %i.h, i64 %i.fo
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep377.epil, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i181.epil = add nuw nsw i64 %indvars.iv31.i174.epil, 1
  %epil.iter528.next = add i64 %epil.iter528, 1   ; 2 uses
  %epil.iter528.cmp.not = icmp eq i64 %epil.iter528.next, %xtraiter527
  br i1 %epil.iter528.cmp.not, label %._crit_edge26.i183, label %.preheader.i173.epil, !llvm.loop !39

._crit_edge26.i183:                               ; preds = %.preheader.i173.epil, %._crit_edge26.i183.unr-lcssa
  %indvar.next376 = add nuw nsw i64 %indvar375, 1 ; 2 uses
  %exitcond380 = icmp eq i64 %indvar.next376, %wide.trip.count379
  br i1 %exitcond380, label %.preheader23.lr.ph.split.split.i188, label %.preheader23.i171, !llvm.loop !27

.preheader23.lr.ph.split.split.i188:              ; preds = %._crit_edge26.i183
  %i.fp = mul i32 %i.ep, %i.er
  %i.fq = mul i32 %i.fp, %i.et                    ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %xtraiter533 = and i64 %wide.trip.count34.i169, 3 ; 3 uses
  %i.fs = icmp ult i32 %i.er, 4
  %unroll_iter537 = and i64 %wide.trip.count34.i169, 2147483644
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  %lcmp.mod536 = icmp ne i64 %xtraiter533, 0
  br label %.preheader23.i191

.preheader23.i191:                                ; preds = %._crit_edge26.i203, %.preheader23.lr.ph.split.split.i188
  %indvar381 = phi i64 [ %indvar.next382, %._crit_edge26.i203 ], [ 0, %.preheader23.lr.ph.split.split.i188 ] ; 2 uses
  %i.ft = mul nuw nsw i64 %indvar381, %i.ew
  %i.fu = add nuw i64 %i.ft, %i.fr                ; 5 uses
  br i1 %i.fs, label %.preheader.i193.epil.preheader, label %.preheader.i193

.preheader.i193:                                  ; preds = %.preheader23.i191, %.preheader.i193
  %indvars.iv31.i194 = phi i64 [ %indvars.iv.next32.i201.3, %.preheader.i193 ], [ 0, %.preheader23.i191 ] ; 5 uses
  %niter538 = phi i64 [ %niter538.next.3, %.preheader.i193 ], [ 0, %.preheader23.i191 ]
  %i.fv = mul nuw nsw i64 %indvars.iv31.i194, %wide.trip.count.i170
  %i.fw = add i64 %i.fu, %i.fv
  %sext430 = shl i64 %i.fw, 32
  %i.fx = ashr exact i64 %sext430, 30
  %scevgep383 = getelementptr i8, ptr %i.h, i64 %i.fx
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep383, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i201 = or disjoint i64 %indvars.iv31.i194, 1
  %i.fy = mul nuw nsw i64 %indvars.iv.next32.i201, %wide.trip.count.i170
  %i.fz = add i64 %i.fu, %i.fy
  %sext430.1 = shl i64 %i.fz, 32
  %i.ga = ashr exact i64 %sext430.1, 30
  %scevgep383.1 = getelementptr i8, ptr %i.h, i64 %i.ga
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep383.1, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i201.1 = or disjoint i64 %indvars.iv31.i194, 2
  %i.gb = mul nuw nsw i64 %indvars.iv.next32.i201.1, %wide.trip.count.i170
  %i.gc = add i64 %i.fu, %i.gb
  %sext430.2 = shl i64 %i.gc, 32
  %i.gd = ashr exact i64 %sext430.2, 30
  %scevgep383.2 = getelementptr i8, ptr %i.h, i64 %i.gd
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep383.2, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i201.2 = or disjoint i64 %indvars.iv31.i194, 3
  %i.ge = mul nuw nsw i64 %indvars.iv.next32.i201.2, %wide.trip.count.i170
  %i.gf = add i64 %i.fu, %i.ge
  %sext430.3 = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext430.3, 30
  %scevgep383.3 = getelementptr i8, ptr %i.h, i64 %i.gg
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep383.3, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i201.3 = add nuw nsw i64 %indvars.iv31.i194, 4 ; 2 uses
  %niter538.next.3 = add i64 %niter538, 4         ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %._crit_edge26.i203.unr-lcssa, label %.preheader.i193, !llvm.loop !26

._crit_edge26.i203.unr-lcssa:                     ; preds = %.preheader.i193
  br i1 %lcmp.mod535.not, label %._crit_edge26.i203, label %.preheader.i193.epil.preheader

.preheader.i193.epil.preheader:                   ; preds = %._crit_edge26.i203.unr-lcssa, %.preheader23.i191
  %indvars.iv31.i194.epil.init = phi i64 [ 0, %.preheader23.i191 ], [ %indvars.iv.next32.i201.3, %._crit_edge26.i203.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %.preheader.i193.epil

.preheader.i193.epil:                             ; preds = %.preheader.i193.epil, %.preheader.i193.epil.preheader
  %indvars.iv31.i194.epil = phi i64 [ %indvars.iv31.i194.epil.init, %.preheader.i193.epil.preheader ], [ %indvars.iv.next32.i201.epil, %.preheader.i193.epil ] ; 2 uses
  %epil.iter534 = phi i64 [ 0, %.preheader.i193.epil.preheader ], [ %epil.iter534.next, %.preheader.i193.epil ]
  %i.gh = mul nuw nsw i64 %indvars.iv31.i194.epil, %wide.trip.count.i170
  %i.gi = add i64 %i.fu, %i.gh
  %sext430.epil = shl i64 %i.gi, 32
  %i.gj = ashr exact i64 %sext430.epil, 30
  %scevgep383.epil = getelementptr i8, ptr %i.h, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep383.epil, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i201.epil = add nuw nsw i64 %indvars.iv31.i194.epil, 1
  %epil.iter534.next = add i64 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i64 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %._crit_edge26.i203, label %.preheader.i193.epil, !llvm.loop !40

._crit_edge26.i203:                               ; preds = %.preheader.i193.epil, %._crit_edge26.i203.unr-lcssa
  %indvar.next382 = add nuw nsw i64 %indvar381, 1 ; 2 uses
  %exitcond386 = icmp eq i64 %indvar.next382, %wide.trip.count379
  br i1 %exitcond386, label %.preheader23.lr.ph.split.split.i208, label %.preheader23.i191, !llvm.loop !27

.preheader23.lr.ph.split.split.i208:              ; preds = %._crit_edge26.i203
  %i.gk = shl i32 %i.fq, 1
  %i.gl = zext i32 %i.gk to i64
  %xtraiter539 = and i64 %wide.trip.count34.i169, 3 ; 3 uses
  %i.gm = icmp ult i32 %i.er, 4
  %unroll_iter543 = and i64 %wide.trip.count34.i169, 2147483644
  %lcmp.mod541.not = icmp eq i64 %xtraiter539, 0
  %lcmp.mod542 = icmp ne i64 %xtraiter539, 0
  br label %.preheader23.i211

.preheader23.i211:                                ; preds = %._crit_edge26.i223, %.preheader23.lr.ph.split.split.i208
  %indvar387 = phi i64 [ %indvar.next388, %._crit_edge26.i223 ], [ 0, %.preheader23.lr.ph.split.split.i208 ] ; 2 uses
  %i.gn = mul nuw nsw i64 %indvar387, %i.ew
  %i.go = add nuw i64 %i.gn, %i.gl                ; 5 uses
  br i1 %i.gm, label %.preheader.i213.epil.preheader, label %.preheader.i213

.preheader.i213:                                  ; preds = %.preheader23.i211, %.preheader.i213
  %indvars.iv31.i214 = phi i64 [ %indvars.iv.next32.i221.3, %.preheader.i213 ], [ 0, %.preheader23.i211 ] ; 5 uses
  %niter544 = phi i64 [ %niter544.next.3, %.preheader.i213 ], [ 0, %.preheader23.i211 ]
  %i.gp = mul nuw nsw i64 %indvars.iv31.i214, %wide.trip.count.i170
  %i.gq = add i64 %i.go, %i.gp
  %sext431 = shl i64 %i.gq, 32
  %i.gr = ashr exact i64 %sext431, 30
  %scevgep389 = getelementptr i8, ptr %i.h, i64 %i.gr
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep389, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i221 = or disjoint i64 %indvars.iv31.i214, 1
  %i.gs = mul nuw nsw i64 %indvars.iv.next32.i221, %wide.trip.count.i170
  %i.gt = add i64 %i.go, %i.gs
  %sext431.1 = shl i64 %i.gt, 32
  %i.gu = ashr exact i64 %sext431.1, 30
  %scevgep389.1 = getelementptr i8, ptr %i.h, i64 %i.gu
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep389.1, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i221.1 = or disjoint i64 %indvars.iv31.i214, 2
  %i.gv = mul nuw nsw i64 %indvars.iv.next32.i221.1, %wide.trip.count.i170
  %i.gw = add i64 %i.go, %i.gv
  %sext431.2 = shl i64 %i.gw, 32
  %i.gx = ashr exact i64 %sext431.2, 30
  %scevgep389.2 = getelementptr i8, ptr %i.h, i64 %i.gx
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep389.2, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i221.2 = or disjoint i64 %indvars.iv31.i214, 3
  %i.gy = mul nuw nsw i64 %indvars.iv.next32.i221.2, %wide.trip.count.i170
  %i.gz = add i64 %i.go, %i.gy
  %sext431.3 = shl i64 %i.gz, 32
  %i.ha = ashr exact i64 %sext431.3, 30
  %scevgep389.3 = getelementptr i8, ptr %i.h, i64 %i.ha
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep389.3, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i221.3 = add nuw nsw i64 %indvars.iv31.i214, 4 ; 2 uses
  %niter544.next.3 = add i64 %niter544, 4         ; 2 uses
  %niter544.ncmp.3 = icmp eq i64 %niter544.next.3, %unroll_iter543
  br i1 %niter544.ncmp.3, label %._crit_edge26.i223.unr-lcssa, label %.preheader.i213, !llvm.loop !26

._crit_edge26.i223.unr-lcssa:                     ; preds = %.preheader.i213
  br i1 %lcmp.mod541.not, label %._crit_edge26.i223, label %.preheader.i213.epil.preheader

.preheader.i213.epil.preheader:                   ; preds = %._crit_edge26.i223.unr-lcssa, %.preheader23.i211
  %indvars.iv31.i214.epil.init = phi i64 [ 0, %.preheader23.i211 ], [ %indvars.iv.next32.i221.3, %._crit_edge26.i223.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod542)
  br label %.preheader.i213.epil

.preheader.i213.epil:                             ; preds = %.preheader.i213.epil, %.preheader.i213.epil.preheader
  %indvars.iv31.i214.epil = phi i64 [ %indvars.iv31.i214.epil.init, %.preheader.i213.epil.preheader ], [ %indvars.iv.next32.i221.epil, %.preheader.i213.epil ] ; 2 uses
  %epil.iter540 = phi i64 [ 0, %.preheader.i213.epil.preheader ], [ %epil.iter540.next, %.preheader.i213.epil ]
  %i.hb = mul nuw nsw i64 %indvars.iv31.i214.epil, %wide.trip.count.i170
  %i.hc = add i64 %i.go, %i.hb
  %sext431.epil = shl i64 %i.hc, 32
  %i.hd = ashr exact i64 %sext431.epil, 30
  %scevgep389.epil = getelementptr i8, ptr %i.h, i64 %i.hd
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep389.epil, i8 0, i64 %i.ex, i1 false), !tbaa !15
  %indvars.iv.next32.i221.epil = add nuw nsw i64 %indvars.iv31.i214.epil, 1
  %epil.iter540.next = add i64 %epil.iter540, 1   ; 2 uses
  %epil.iter540.cmp.not = icmp eq i64 %epil.iter540.next, %xtraiter539
  br i1 %epil.iter540.cmp.not, label %._crit_edge26.i223, label %.preheader.i213.epil, !llvm.loop !41

._crit_edge26.i223:                               ; preds = %.preheader.i213.epil, %._crit_edge26.i223.unr-lcssa
  %indvar.next388 = add nuw nsw i64 %indvar387, 1 ; 2 uses
  %exitcond392 = icmp eq i64 %indvar.next388, %wide.trip.count379
  br i1 %exitcond392, label %mat_set.exit225, label %.preheader23.i211, !llvm.loop !27

mat_set.exit225:                                  ; preds = %._crit_edge26.i223, %.preheader23.lr.ph.split.i167, %.preheader23.lr.ph.i166, %mat_set.exit165
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @c, i64 12), align 4, !tbaa !12 ; 6 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.preheader23.lr.ph.i226, label %mat_set.exit285

.preheader23.lr.ph.i226:                          ; preds = %mat_set.exit225
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 8, !tbaa !13 ; 5 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.preheader23.lr.ph.split.i227, label %mat_set.exit285

.preheader23.lr.ph.split.i227:                    ; preds = %.preheader23.lr.ph.i226
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4, !tbaa !14 ; 8 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.preheader23.lr.ph.split.split.i228, label %mat_set.exit285

.preheader23.lr.ph.split.split.i228:              ; preds = %.preheader23.lr.ph.split.i227
  %wide.trip.count34.i229 = zext nneg i32 %i.hg to i64 ; 3 uses
  %wide.trip.count.i230 = zext nneg i32 %i.hi to i64 ; 9 uses
  %min.iters.check488 = icmp ult i32 %i.hi, 8
  %n.vec491 = and i64 %wide.trip.count.i230, 2147483640 ; 3 uses
  %cmp.n496 = icmp eq i64 %n.vec491, %wide.trip.count.i230
  br label %.preheader23.i231

.preheader23.i231:                                ; preds = %._crit_edge26.i243, %.preheader23.lr.ph.split.split.i228
  %.02127.i232 = phi i32 [ 0, %.preheader23.lr.ph.split.split.i228 ], [ %i.hs, %._crit_edge26.i243 ] ; 2 uses
  %i.hk = mul i32 %.02127.i232, %i.hg
  br label %.preheader.i233

.preheader.i233:                                  ; preds = %._crit_edge.i240, %.preheader23.i231
  %indvars.iv31.i234 = phi i64 [ 0, %.preheader23.i231 ], [ %indvars.iv.next32.i241, %._crit_edge.i240 ] ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv31.i234 to i32
  %i.hm = add i32 %i.hk, %i.hl
  %i.hn = mul i32 %i.hm, %i.hi
  %i.ho = sext i32 %i.hn to i64
  %invariant.gep.i235 = getelementptr [4 x i8], ptr %i.i, i64 %i.ho ; 2 uses
  br i1 %min.iters.check488, label %scalar.ph487.preheader, label %vector.body492

vector.body492:                                   ; preds = %.preheader.i233, %vector.body492
  %index493 = phi i64 [ %index.next494, %vector.body492 ], [ 0, %.preheader.i233 ] ; 2 uses
  %i.hp = getelementptr [4 x i8], ptr %invariant.gep.i235, i64 %index493 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.hp, align 4, !tbaa !15
  store <4 x float> splat (float 1.000000e+00), ptr %i.hq, align 4, !tbaa !15
  %index.next494 = add nuw i64 %index493, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next494, %n.vec491
  br i1 %i.hr, label %middle.block495, label %vector.body492, !llvm.loop !42

middle.block495:                                  ; preds = %vector.body492
  br i1 %cmp.n496, label %._crit_edge.i240, label %scalar.ph487.preheader

scalar.ph487.preheader:                           ; preds = %.preheader.i233, %middle.block495
  %indvars.iv.i236.ph = phi i64 [ 0, %.preheader.i233 ], [ %n.vec491, %middle.block495 ]
  br label %scalar.ph487

scalar.ph487:                                     ; preds = %scalar.ph487.preheader, %scalar.ph487
  %indvars.iv.i236 = phi i64 [ %indvars.iv.next.i238, %scalar.ph487 ], [ %indvars.iv.i236.ph, %scalar.ph487.preheader ] ; 2 uses
  %gep.i237 = getelementptr [4 x i8], ptr %invariant.gep.i235, i64 %indvars.iv.i236
  store float 1.000000e+00, ptr %gep.i237, align 4, !tbaa !15
  %indvars.iv.next.i238 = add nuw nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i238, %wide.trip.count.i230
  br i1 %exitcond.not.i239, label %._crit_edge.i240, label %scalar.ph487, !llvm.loop !43

._crit_edge.i240:                                 ; preds = %scalar.ph487, %middle.block495
  %indvars.iv.next32.i241 = add nuw nsw i64 %indvars.iv31.i234, 1 ; 2 uses
  %exitcond35.not.i242 = icmp eq i64 %indvars.iv.next32.i241, %wide.trip.count34.i229
  br i1 %exitcond35.not.i242, label %._crit_edge26.i243, label %.preheader.i233, !llvm.loop !26

._crit_edge26.i243:                               ; preds = %._crit_edge.i240
  %i.hs = add nuw nsw i32 %.02127.i232, 1         ; 2 uses
  %exitcond36.not.i244 = icmp eq i32 %i.hs, %i.he
  br i1 %exitcond36.not.i244, label %.preheader23.i251.preheader, label %.preheader23.i231, !llvm.loop !27

.preheader23.i251.preheader:                      ; preds = %._crit_edge26.i243
  %min.iters.check499 = icmp ult i32 %i.hi, 8
  %n.vec502 = and i64 %wide.trip.count.i230, 2147483640 ; 3 uses
  %cmp.n507 = icmp eq i64 %n.vec502, %wide.trip.count.i230
  br label %.preheader23.i251

.preheader23.i251:                                ; preds = %.preheader23.i251.preheader, %._crit_edge26.i263
  %.02127.i252 = phi i32 [ %i.ic, %._crit_edge26.i263 ], [ 0, %.preheader23.i251.preheader ] ; 2 uses
  %i.ht = add nuw i32 %.02127.i252, %i.he
  %i.hu = mul i32 %i.ht, %i.hg
  br label %.preheader.i253

.preheader.i253:                                  ; preds = %._crit_edge.i260, %.preheader23.i251
  %indvars.iv31.i254 = phi i64 [ 0, %.preheader23.i251 ], [ %indvars.iv.next32.i261, %._crit_edge.i260 ] ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv31.i254 to i32
  %i.hw = add i32 %i.hu, %i.hv
  %i.hx = mul i32 %i.hw, %i.hi
  %i.hy = sext i32 %i.hx to i64
  %invariant.gep.i255 = getelementptr [4 x i8], ptr %i.i, i64 %i.hy ; 2 uses
  br i1 %min.iters.check499, label %scalar.ph498.preheader, label %vector.body503

vector.body503:                                   ; preds = %.preheader.i253, %vector.body503
  %index504 = phi i64 [ %index.next505, %vector.body503 ], [ 0, %.preheader.i253 ] ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %invariant.gep.i255, i64 %index504 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.hz, align 4, !tbaa !15
  store <4 x float> splat (float 1.000000e+00), ptr %i.ia, align 4, !tbaa !15
  %index.next505 = add nuw i64 %index504, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next505, %n.vec502
  br i1 %i.ib, label %middle.block506, label %vector.body503, !llvm.loop !44

middle.block506:                                  ; preds = %vector.body503
  br i1 %cmp.n507, label %._crit_edge.i260, label %scalar.ph498.preheader

scalar.ph498.preheader:                           ; preds = %.preheader.i253, %middle.block506
  %indvars.iv.i256.ph = phi i64 [ 0, %.preheader.i253 ], [ %n.vec502, %middle.block506 ]
  br label %scalar.ph498

scalar.ph498:                                     ; preds = %scalar.ph498.preheader, %scalar.ph498
  %indvars.iv.i256 = phi i64 [ %indvars.iv.next.i258, %scalar.ph498 ], [ %indvars.iv.i256.ph, %scalar.ph498.preheader ] ; 2 uses
  %gep.i257 = getelementptr [4 x i8], ptr %invariant.gep.i255, i64 %indvars.iv.i256
  store float 1.000000e+00, ptr %gep.i257, align 4, !tbaa !15
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i256, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i230
  br i1 %exitcond.not.i259, label %._crit_edge.i260, label %scalar.ph498, !llvm.loop !45

._crit_edge.i260:                                 ; preds = %scalar.ph498, %middle.block506
  %indvars.iv.next32.i261 = add nuw nsw i64 %indvars.iv31.i254, 1 ; 2 uses
  %exitcond35.not.i262 = icmp eq i64 %indvars.iv.next32.i261, %wide.trip.count34.i229
  br i1 %exitcond35.not.i262, label %._crit_edge26.i263, label %.preheader.i253, !llvm.loop !26

._crit_edge26.i263:                               ; preds = %._crit_edge.i260
  %i.ic = add nuw nsw i32 %.02127.i252, 1         ; 2 uses
  %exitcond36.not.i264 = icmp eq i32 %i.ic, %i.he
  br i1 %exitcond36.not.i264, label %.preheader23.lr.ph.split.split.i268, label %.preheader23.i251, !llvm.loop !27

.preheader23.lr.ph.split.split.i268:              ; preds = %._crit_edge26.i263
  %i.id = shl nuw nsw i32 %i.he, 1
  %min.iters.check510 = icmp ult i32 %i.hi, 8
  %n.vec513 = and i64 %wide.trip.count.i230, 2147483640 ; 3 uses
  %cmp.n518 = icmp eq i64 %n.vec513, %wide.trip.count.i230
  br label %.preheader23.i271

.preheader23.i271:                                ; preds = %._crit_edge26.i283, %.preheader23.lr.ph.split.split.i268
  %.02127.i272 = phi i32 [ 0, %.preheader23.lr.ph.split.split.i268 ], [ %i.in, %._crit_edge26.i283 ] ; 2 uses
  %i.ie = add nuw i32 %.02127.i272, %i.id
  %i.if = mul i32 %i.ie, %i.hg
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %._crit_edge.i280, %.preheader23.i271
  %indvars.iv31.i274 = phi i64 [ 0, %.preheader23.i271 ], [ %indvars.iv.next32.i281, %._crit_edge.i280 ] ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv31.i274 to i32
  %i.ih = add i32 %i.if, %i.ig
  %i.ii = mul i32 %i.ih, %i.hi
  %i.ij = sext i32 %i.ii to i64
  %invariant.gep.i275 = getelementptr [4 x i8], ptr %i.i, i64 %i.ij ; 2 uses
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.body514

vector.body514:                                   ; preds = %.preheader.i273, %vector.body514
  %index515 = phi i64 [ %index.next516, %vector.body514 ], [ 0, %.preheader.i273 ] ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep.i275, i64 %index515 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ik, align 4, !tbaa !15
  store <4 x float> splat (float 1.000000e+00), ptr %i.il, align 4, !tbaa !15
  %index.next516 = add nuw i64 %index515, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next516, %n.vec513
  br i1 %i.im, label %middle.block517, label %vector.body514, !llvm.loop !46

middle.block517:                                  ; preds = %vector.body514
  br i1 %cmp.n518, label %._crit_edge.i280, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.preheader.i273, %middle.block517
  %indvars.iv.i276.ph = phi i64 [ 0, %.preheader.i273 ], [ %n.vec513, %middle.block517 ]
  br label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %indvars.iv.i276 = phi i64 [ %indvars.iv.next.i278, %scalar.ph509 ], [ %indvars.iv.i276.ph, %scalar.ph509.preheader ] ; 2 uses
  %gep.i277 = getelementptr [4 x i8], ptr %invariant.gep.i275, i64 %indvars.iv.i276
  store float 1.000000e+00, ptr %gep.i277, align 4, !tbaa !15
  %indvars.iv.next.i278 = add nuw nsw i64 %indvars.iv.i276, 1 ; 2 uses
  %exitcond.not.i279 = icmp eq i64 %indvars.iv.next.i278, %wide.trip.count.i230
  br i1 %exitcond.not.i279, label %._crit_edge.i280, label %scalar.ph509, !llvm.loop !47

._crit_edge.i280:                                 ; preds = %scalar.ph509, %middle.block517
  %indvars.iv.next32.i281 = add nuw nsw i64 %indvars.iv31.i274, 1 ; 2 uses
  %exitcond35.not.i282 = icmp eq i64 %indvars.iv.next32.i281, %wide.trip.count34.i229
  br i1 %exitcond35.not.i282, label %._crit_edge26.i283, label %.preheader.i273, !llvm.loop !26

._crit_edge26.i283:                               ; preds = %._crit_edge.i280
  %i.in = add nuw nsw i32 %.02127.i272, 1         ; 2 uses
  %exitcond36.not.i284 = icmp eq i32 %i.in, %i.he
  br i1 %exitcond36.not.i284, label %mat_set.exit285, label %.preheader23.i271, !llvm.loop !27

mat_set.exit285:                                  ; preds = %._crit_edge26.i283, %.preheader23.lr.ph.split.i227, %.preheader23.lr.ph.i226, %mat_set.exit225
end_hunk_0
