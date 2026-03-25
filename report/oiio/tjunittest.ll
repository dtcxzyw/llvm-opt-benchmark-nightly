begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
.lr.ph.i.i:                                       ; preds = %.preheader150.i.i
  %130 = load i32, ptr @maxSample, align 4, !tbaa !4 ; 2 uses
  %131 = trunc i32 %130 to i16                    ; 3 uses
  br i1 %129, label %.preheader148.thread.i.i, label %iter.check196

iter.check196:                                    ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %119 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %119, 4
  br i1 %min.iters.check, label %setVal.exit135.i.i.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check196
  %min.iters.check197 = icmp ult i32 %119, 16
  br i1 %min.iters.check197, label %vec.epilog.ph212, label %vector.ph199

vector.ph199:                                     ; preds = %vector.main.loop.iter.check198
  %n.mod.vf200 = and i64 %wide.trip.count.i.i, 12
  %n.vec201 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert202 = insertelement <8 x i16> poison, i16 %131, i64 0
  %broadcast.splat203 = shufflevector <8 x i16> %broadcast.splatinsert202, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph199
  %index205 = phi i64 [ 0, %vector.ph199 ], [ %index.next206, %vector.body204 ] ; 2 uses
  %132 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %index205 ; 2 uses
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  store <8 x i16> %broadcast.splat203, ptr %132, align 2, !tbaa !17
  store <8 x i16> %broadcast.splat203, ptr %133, align 2, !tbaa !17
  %index.next206 = add nuw i64 %index205, 16      ; 2 uses
  %134 = icmp eq i64 %index.next206, %n.vec201
  br i1 %134, label %middle.block207, label %vector.body204, !llvm.loop !24

middle.block207:                                  ; preds = %vector.body204
  %cmp.n208 = icmp eq i64 %n.vec201, %wide.trip.count.i.i
  br i1 %cmp.n208, label %.preheader147.preheader.i.i, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block207
  %min.epilog.iters.check211 = icmp eq i64 %n.mod.vf200, 0
  br i1 %min.epilog.iters.check211, label %setVal.exit135.i.i.preheader, label %vec.epilog.ph212, !prof !27

vec.epilog.ph212:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check210
  %vec.epilog.resume.val = phi i64 [ %n.vec201, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec214 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert215 = insertelement <4 x i16> poison, i16 %131, i64 0
  %broadcast.splat216 = shufflevector <4 x i16> %broadcast.splatinsert215, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body217

vec.epilog.vector.body217:                        ; preds = %vec.epilog.vector.body217, %vec.epilog.ph212
  %index218 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph212 ], [ %index.next219, %vec.epilog.vector.body217 ] ; 2 uses
  %135 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %index218
  store <4 x i16> %broadcast.splat216, ptr %135, align 2, !tbaa !17
  %index.next219 = add nuw i64 %index218, 4       ; 2 uses
end_hunk_1
begin_hunk_2
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count.i.i
  br i1 %cmp.n221, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i.preheader

setVal.exit135.i.i.preheader:                     ; preds = %iter.check196, %vec.epilog.iter.check210, %vec.epilog.middle.block220
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check196 ], [ %n.vec201, %vec.epilog.iter.check210 ], [ %n.vec214, %vec.epilog.middle.block220 ]
  br label %setVal.exit135.i.i

.preheader148.thread.i.i:                         ; preds = %.lr.ph.i.i
end_hunk_2
begin_hunk_3

.preheader145.preheader.i.i:                      ; preds = %139
  %184 = trunc i32 %147 to i16
  br label %iter.check153

iter.check153:                                    ; preds = %.split171.split.i.i, %.preheader145.preheader.i.i
  %.0114178.i.i = phi i32 [ %225, %.split171.split.i.i ], [ 0, %.preheader145.preheader.i.i ] ; 5 uses
  %185 = xor i32 %.0114178.i.i, -1
  %186 = add nsw i32 %1, %185
end_hunk_3
begin_hunk_4
  %191 = select i1 %188, i16 %184, i16 0          ; 3 uses
  %192 = sext i32 %.pn132.i.i to i64
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %123, i64 %192 ; 8 uses
  %broadcast.splatinsert158 = insertelement <8 x i32> poison, i32 %187, i64 0
  %broadcast.splat159 = shufflevector <8 x i32> %broadcast.splatinsert158, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert160 = insertelement <8 x i16> poison, i16 %190, i64 0
  %broadcast.splat161 = shufflevector <8 x i16> %broadcast.splatinsert160, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert162 = insertelement <8 x i16> poison, i16 %191, i64 0
  %broadcast.splat163 = shufflevector <8 x i16> %broadcast.splatinsert162, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %193 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %194 = icmp eq <8 x i32> %193, zeroinitializer
  %195 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %.not = icmp eq <8 x i32> %195, zeroinitializer
  %196 = select <8 x i1> %194, <8 x i16> %broadcast.splat163, <8 x i16> %broadcast.splat161
  %197 = select <8 x i1> %.not, <8 x i16> %broadcast.splat161, <8 x i16> %broadcast.splat163
  %198 = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store <8 x i16> %196, ptr %invariant.gep.i.i, align 2, !tbaa !17
  store <8 x i16> %197, ptr %198, align 2, !tbaa !17
  %199 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %200 = icmp eq <8 x i32> %199, zeroinitializer
  %201 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %.not.1 = icmp eq <8 x i32> %201, zeroinitializer
  %202 = select <8 x i1> %200, <8 x i16> %broadcast.splat163, <8 x i16> %broadcast.splat161
  %203 = select <8 x i1> %.not.1, <8 x i16> %broadcast.splat161, <8 x i16> %broadcast.splat163
  %204 = getelementptr i8, ptr %invariant.gep.i.i, i64 32
  %205 = getelementptr i8, ptr %invariant.gep.i.i, i64 48
  store <8 x i16> %202, ptr %204, align 2, !tbaa !17
  store <8 x i16> %203, ptr %205, align 2, !tbaa !17
  br i1 %81, label %middle.block169, label %vector.body164.2

vector.body164.2:                                 ; preds = %iter.check153
  %206 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %207 = icmp eq <8 x i32> %206, zeroinitializer
  %208 = and <8 x i32> %broadcast.splat159, splat (i32 1)
  %.not.2 = icmp eq <8 x i32> %208, zeroinitializer
  %209 = select <8 x i1> %207, <8 x i16> %broadcast.splat163, <8 x i16> %broadcast.splat161
  %210 = select <8 x i1> %.not.2, <8 x i16> %broadcast.splat161, <8 x i16> %broadcast.splat163
  %211 = getelementptr i8, ptr %invariant.gep.i.i, i64 64
  %212 = getelementptr i8, ptr %invariant.gep.i.i, i64 80
  store <8 x i16> %209, ptr %211, align 2, !tbaa !17
  store <8 x i16> %210, ptr %212, align 2, !tbaa !17
  br label %middle.block169

middle.block169:                                  ; preds = %vector.body164.2, %iter.check153
  br i1 %cmp.n170, label %.split171.split.i.i, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block169
  br i1 %min.epilog.iters.check174, label %setVal.exit.i.i.preheader, label %vec.epilog.ph175, !prof !27

vec.epilog.ph175:                                 ; preds = %vec.epilog.iter.check173
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %187, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert180 = insertelement <4 x i16> poison, i16 %190, i64 0
  %broadcast.splat181 = shufflevector <4 x i16> %broadcast.splatinsert180, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i16> poison, i16 %191, i64 0
  %broadcast.splat183 = shufflevector <4 x i16> %broadcast.splatinsert182, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph175
  %index188 = phi i64 [ %n.vec157, %vec.epilog.ph175 ], [ %index.next190, %vec.epilog.vector.body187 ] ; 2 uses
  %vec.ind189 = phi <4 x i32> [ %induction186, %vec.epilog.ph175 ], [ %vec.ind.next191, %vec.epilog.vector.body187 ] ; 2 uses
  %213 = lshr <4 x i32> %vec.ind189, splat (i32 3)
  %214 = add nuw nsw <4 x i32> %213, %broadcast.splat179
  %215 = and <4 x i32> %214, splat (i32 1)
  %216 = icmp eq <4 x i32> %215, zeroinitializer
  %217 = select <4 x i1> %216, <4 x i16> %broadcast.splat183, <4 x i16> %broadcast.splat181
  %218 = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index188
  store <4 x i16> %217, ptr %218, align 2, !tbaa !17
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %vec.ind.next191 = add <4 x i32> %vec.ind189, splat (i32 4)
  %219 = icmp eq i64 %index.next190, %n.vec177
  br i1 %219, label %vec.epilog.middle.block192, label %vec.epilog.vector.body187, !llvm.loop !32

vec.epilog.middle.block192:                       ; preds = %vec.epilog.vector.body187
  br i1 %cmp.n193, label %.split171.split.i.i, label %setVal.exit.i.i.preheader

setVal.exit.i.i.preheader:                        ; preds = %vec.epilog.iter.check173, %vec.epilog.middle.block192
  %indvars.iv262.i.i.ph = phi i64 [ %n.vec157, %vec.epilog.iter.check173 ], [ %n.vec177, %vec.epilog.middle.block192 ]
  br label %setVal.exit.i.i

setVal.exit.i.i:                                  ; preds = %setVal.exit.i.i.preheader, %setVal.exit.i.i
end_hunk_4
begin_hunk_5
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next263.i.i, %wide.trip.count234.i.i
  br i1 %exitcond267.not.i.i, label %.split171.split.i.i, label %setVal.exit.i.i, !llvm.loop !33

.split171.split.i.i:                              ; preds = %setVal.exit.i.i, %vec.epilog.middle.block192, %middle.block169
  %225 = add nuw nsw i32 %.0114178.i.i, 1         ; 2 uses
  %exitcond268.not.i.i = icmp eq i32 %225, %1
  br i1 %exitcond268.not.i.i, label %initBuf.exit.i, label %iter.check153, !llvm.loop !30

.preheader148.i.i:                                ; preds = %.preheader150.i.i
  br i1 %129, label %.preheader147.us.preheader.i.i, label %.preheader147.preheader.i.i

.preheader147.preheader.i.i:                      ; preds = %setVal.exit135.i.i, %middle.block207, %vec.epilog.middle.block220, %.preheader148.i.i
  %226 = sext i32 %118 to i64                     ; 6 uses
  br label %.preheader147.i.i

end_hunk_5
