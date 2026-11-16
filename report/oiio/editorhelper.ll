Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/editorhelper?download=true
inline.NumInlined: 328
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN8ultrahdr13resize_bufferIjEEvPT_S2_iiiiii:bb.a
  %i.t = getelementptr [4 x i8], ptr %invariant.gep30, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !8
  store <4 x i32> %wide.load32, ptr %i.u, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = mul nsw i64 %indvars.iv.prol, %i.g
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.w
  %i.x = load i32, ptr %gep.prol, align 4, !tbaa !8
  %gep31.prol = getelementptr [4 x i8], ptr %invariant.gep30, i64 %indvars.iv.prol
  store i32 %i.x, ptr %gep31.prol, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !230

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %scalar.ph

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !231

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = mul nsw i64 %indvars.iv, %i.g
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aa
  %i.ab = load i32, ptr %gep, align 4, !tbaa !8
  %gep31 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %indvars.iv
  store i32 %i.ab, ptr %gep31, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv.next, %i.g
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ad = load i32, ptr %gep.1, align 4, !tbaa !8
  %gep31.1 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %indvars.iv.next
  store i32 %i.ad, ptr %gep31.1, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv.next.1, %i.g
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ae
  %i.af = load i32, ptr %gep.2, align 4, !tbaa !8
  %gep31.2 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.1
  store i32 %i.af, ptr %gep31.2, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv.next.2, %i.g
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ag
  %i.ah = load i32, ptr %gep.3, align 4, !tbaa !8
  %gep31.3 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.2
  store i32 %i.ah, ptr %gep31.3, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !232
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8ultrahdr13resize_bufferImEEvPT_S2_iiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 !guid !238 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge22.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = sdiv i32 %3, %5
  %factor.op.mul = mul i32 %6, %i.e
  %i.f = sdiv i32 %2, %4                          ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %7 to i64                       ; 2 uses
  %wide.trip.count27 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %i.i = shl nsw i64 %i.h, 3
  %min.iters.check = icmp ugt i32 %4, 5
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond33 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next25, %._crit_edge ] ; 4 uses
  %i.j = trunc nuw nsw i64 %indvars.iv24 to i32
  %.reass = mul i32 %factor.op.mul, %i.j
  %i.k = mul nsw i64 %indvars.iv24, %i.h
  %i.l = sext i32 %.reass to i64                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.l ; 6 uses
  %invariant.gep30 = getelementptr [8 x i8], ptr %1, i64 %i.k ; 6 uses
  br i1 %or.cond33, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.m = mul i64 %indvars.iv24, %i.i
  %i.n = shl nsw i64 %i.l, 3
  %i.o = add i64 %i.m, %i.c
  %i.p = add i64 %i.n, %i.d
  %i.q = sub i64 %i.p, %i.o
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !40
  %wide.load32 = load <2 x i64>, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr [8 x i8], ptr %invariant.gep30, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store <2 x i64> %wide.load, ptr %i.t, align 8, !tbaa !40
  store <2 x i64> %wide.load32, ptr %i.u, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = mul nsw i64 %indvars.iv.prol, %i.g
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.w
  %i.x = load i64, ptr %gep.prol, align 8, !tbaa !40
  %gep31.prol = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.prol
  store i64 %i.x, ptr %gep31.prol, align 8, !tbaa !40
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !235

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %scalar.ph

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !236

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = mul nsw i64 %indvars.iv, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aa
  %i.ab = load i64, ptr %gep, align 8, !tbaa !40
  %gep31 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv
  store i64 %i.ab, ptr %gep31, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv.next, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ad = load i64, ptr %gep.1, align 8, !tbaa !40
  %gep31.1 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next
  store i64 %i.ad, ptr %gep31.1, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv.next.1, %i.g
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ae
  %i.af = load i64, ptr %gep.2, align 8, !tbaa !40
  %gep31.2 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.1
  store i64 %i.af, ptr %gep31.2, align 8, !tbaa !40
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv.next.2, %i.g
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ag
  %i.ah = load i64, ptr %gep.3, align 8, !tbaa !40
  %gep31.3 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %indvars.iv.next.2
  store i64 %i.ah, ptr %gep31.3, align 8, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN8ultrahdr19bicubic_interpolateEddddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 !guid !239 {
bb.a:
  %5 = fsub contract double 1.000000e+00, %4      ; 6 uses
  %6 = fmul contract double %5, %5
  %7 = fmul contract double %5, %6
  %8 = fmul contract double %4, 3.000000e+00      ; 2 uses
  %9 = fmul contract double %8, %5
  %10 = fmul contract double %5, %9
  %11 = fmul contract double %4, %8
  %12 = fmul contract double %5, %11
  %13 = fmul contract double %4, %4
  %14 = fmul contract double %4, %13
  %15 = fmul contract double %0, %7
  %16 = fmul contract double %1, %10
  %i.a = fadd contract double %15, %16
  %17 = fmul contract double %2, %12
  %i.b = fadd contract double %17, %i.a
  %18 = fmul contract double %3, %14
  %i.c = fadd contract double %18, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr12resize_imageEP14uhdr_raw_imageii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !guid !244 {
bb.a:
  %4 = alloca %"struct.ultrahdr::Color", align 4  ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !47
  %i.b = tail call noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef %i.a) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !47
  %i.e = tail call noundef ptr @_ZN8ultrahdr10putPixelFnE12uhdr_img_fmt(i32 noundef %i.d) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.j = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18, !noalias !245 ; 4 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !48, !noalias !245
  %i.l = load i32, ptr %i.g, align 4, !tbaa !49, !noalias !245
  %i.m = load i32, ptr %i.h, align 8, !tbaa !50, !noalias !245
  %i.n = load i32, ptr %i.i, align 4, !tbaa !51, !noalias !245
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %2, i32 noundef %3, i32 noundef 64)
          to label %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !245

common.resume:                                    ; preds = %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn.pn.pn.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 72) #19, !noalias !245
  br label %common.resume

_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %0, align 8, !tbaa !54, !alias.scope !245
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %3, i64 1
  %i.s = sitofp <2 x i32> %i.r to <2 x double>
  %i.t = load <2 x i32>, ptr %i.p, align 8, !tbaa !8 ; 3 uses
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  %i.v = fdiv contract <2 x double> %i.u, %i.s    ; 2 uses
  %i.w = icmp sgt i32 %3, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRiSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = icmp sgt i32 %2, 0
  %i.y = extractelement <2 x i32> %i.t, i64 0
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  %i.aa = extractelement <2 x i32> %i.t, i64 1
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count137 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.ad = extractelement <2 x double> %i.v, i64 1
  %i.ae = extractelement <2 x double> %i.v, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next135, %._crit_edge ] ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = fmul contract double %i.ad, %i.ag
  %i.ai = call contract double @llvm.floor.f64(double %i.ah)
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %spec.select121 = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ab)
  %i.al = select i1 %i.ak, i32 0, i32 %spec.select121 ; 3 uses
  %i.am = add nsw i32 %i.al, 1
  %i.an = icmp slt i32 %i.al, -1
  %i.ao = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ab)
  %narrow128 = select i1 %i.an, i32 0, i32 %i.ao
  %i.ap = sext i32 %narrow128 to i64              ; 2 uses
  %i.aq = sext i32 %i.al to i64                   ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %.preheader, !llvm.loop !242

bb.e:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fmul contract double %i.ae, %i.as       ; 2 uses
  %i.au = call contract double @llvm.floor.f64(double %i.at)
  %i.av = fptosi double %i.au to i32              ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %spec.select = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.z)
  %i.ax = select i1 %i.aw, i32 0, i32 %spec.select ; 4 uses
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = icmp slt i32 %i.ax, -1
  %i.ba = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.z)
  %narrow129 = select i1 %i.az, i32 0, i32 %i.ba
  %i.bb = sext i32 %narrow129 to i64              ; 2 uses
  %i.bc = sext i32 %i.ax to i64                   ; 2 uses
  %i.bd = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bc, i64 noundef %i.aq)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.fca.0.extract14 = extractvalue { <2 x float>, float } %i.bd, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { <2 x float>, float } %i.bd, 1
  %i.be = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bb, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.be, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.be, 1
  %i.bf = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bc, i64 noundef %i.ap)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.bf, 0 ; 2 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.bf, 1
  %i.bg = invoke { <2 x float>, float } %i.b(ptr noundef nonnull %1, i64 noundef %i.bb, i64 noundef %i.ap)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bg, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.06.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0
  %i.bh = fpext contract float %.sroa.06.0.vec.extract to double
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.bi = fpext contract float %.sroa.01.0.vec.extract to double
  %i.bj = sitofp i32 %i.ax to double
  %i.bk = fsub contract double %i.at, %i.bj       ; 6 uses
  %i.bl = fsub contract double 1.000000e+00, %i.bk ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0 ; 2 uses
  %i.bn = insertelement <2 x double> %i.bm, double %i.bk, i64 1
  %i.bo = fmul contract <2 x double> %i.bn, <double 1.000000e+00, double 3.000000e+00> ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul contract <2 x double> %i.bo, %i.bp
  %i.br = fmul contract <2 x double> %i.bp, %i.bq ; 3 uses
  %i.bs = extractelement <2 x double> %i.bo, i64 1
  %i.bt = fmul contract double %i.bk, %i.bs
  %i.bu = fmul contract double %i.bl, %i.bt       ; 2 uses
  %i.bv = fmul contract double %i.bk, %i.bk
  %i.bw = fmul contract double %i.bk, %i.bv       ; 2 uses
  %i.bx = shufflevector <2 x float> %.fca.0.extract14, <2 x float> %.fca.0.extract8, <2 x i32> <i32 0, i32 2>
  %i.by = fpext contract <2 x float> %i.bx to <2 x double>
  %i.bz = fmul contract <2 x double> %i.br, %i.by ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd contract <2 x double> %i.bz, %shift
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cb = fmul contract double %i.bu, %i.bh
  %i.cc = fadd contract double %i.ca, %i.cb
  %i.cd = fmul contract double %i.bw, %i.bi
  %i.ce = fadd contract double %i.cc, %i.cd
  %i.cf = fptrunc contract double %i.ce to float
  store float %i.cf, ptr %4, align 4, !tbaa !32
  %i.cg = load i32, ptr %1, align 8, !tbaa !47
  %.not116 = icmp eq i32 %i.cg, 2
  br i1 %.not116, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bg, 1
  %i.ch = insertelement <2 x float> %.fca.0.extract8, float %.fca.1.extract15, i64 0
  %i.ci = fpext contract <2 x float> %i.ch to <2 x double>
  %i.cj = insertelement <2 x float> %.fca.0.extract14, float %.fca.1.extract9, i64 0
  %i.ck = fpext contract <2 x float> %i.cj to <2 x double>
  %i.cl = insertelement <2 x float> %.fca.0.extract2, float %.fca.1.extract3, i64 0
  %i.cm = fpext contract <2 x float> %i.cl to <2 x double>
  %i.cn = insertelement <2 x float> %.fca.0.extract, float %.fca.1.extract, i64 0
  %i.co = fpext contract <2 x float> %i.cn to <2 x double>
  %i.cp = fmul contract <2 x double> %i.br, %i.ci
  %i.cq = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = fmul contract <2 x double> %i.cq, %i.ck
  %i.cs = fadd contract <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul contract <2 x double> %i.cu, %i.cm
  %i.cw = fadd contract <2 x double> %i.cs, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul contract <2 x double> %i.cy, %i.co
  %i.da = fadd contract <2 x double> %i.cw, %i.cz
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = fptrunc contract <2 x double> %i.db to <2 x float>
  store <2 x float> %i.dc, ptr %i.ac, align 4, !tbaa !32
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  invoke void %i.e(ptr noundef nonnull %i.j, i64 noundef %indvars.iv, i64 noundef %indvars.iv134, ptr noundef nonnull align 4 dereferenceable(12) %4)
end_hunk_0
