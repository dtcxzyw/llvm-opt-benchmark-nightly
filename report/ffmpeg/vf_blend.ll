Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blend?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@init_blend_func_12_16bit:bb.a
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_12_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_14_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_14_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_16_16bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_16_16bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_blend_func_32_32bit(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp ult i32 %i.a, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init_blend_func_32_32bit, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %switch.load, ptr %i.d, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copytop_32(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %1 to i32
  %.tr = trunc i64 %6 to i32
  %i.c = shl i32 %.tr, 2
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copytop_16(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %1 to i32
  %.tr = trunc i64 %6 to i32
  %i.c = shl i32 %.tr, 1
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copytop_8(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i64 %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %1 to i32
  %i.c = trunc i64 %6 to i32
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copybottom_32(ptr nofree readnone captures(none) %0, i64 %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %3 to i32
  %.tr = trunc i64 %6 to i32
  %i.c = shl i32 %.tr, 2
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %2, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copybottom_16(ptr nofree readnone captures(none) %0, i64 %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %3 to i32
  %.tr = trunc i64 %6 to i32
  %i.c = shl i32 %.tr, 1
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %2, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @blend_copybottom_8(ptr nofree readnone captures(none) %0, i64 %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = trunc i64 %3 to i32
  %i.c = trunc i64 %6 to i32
  %i.d = trunc i64 %7 to i32
  tail call void @av_image_copy_plane(ptr noundef %4, i32 noundef %i.a, ptr noundef %2, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 3 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep48 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep49 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.p = or i64 %3, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict53, %i.q
  %conflict.rdx = or i1 %i.o, %i.r
  %min.iters.check56 = icmp ult i64 %6, 16
  %i.s = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec58 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert59 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat60 = shufflevector <4 x float> %broadcast.splatinsert59, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n65 = icmp eq i64 %6, %n.vec58
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ao, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.03238 = phi ptr [ %i.ap, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.03337 = phi ptr [ %i.an, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.03139, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !47, !alias.scope !116 ; 2 uses
  %i.u = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.v = uitofp <16 x i8> %wide.load to <16 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %.03238, i64 %index
  %wide.load57 = load <16 x i8>, ptr %i.w, align 1, !tbaa !47, !alias.scope !117
  %10 = zext <16 x i8> %wide.load57 to <16 x i32>
  %11 = add nuw nsw <16 x i32> %10, %i.u
  %12 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %11, <16 x i32> splat (i32 255))
  %i.x = sub nsw <16 x i32> %12, %i.u
  %i.y = sitofp nsz <16 x i32> %i.x to <16 x float>
  %i.z = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.y, <16 x float> %broadcast.splat, <16 x float> %i.v)
  %i.aa = fptoui <16 x float> %i.z to <16 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %.03337, i64 %index
  store <16 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !47, !alias.scope !118, !noalias !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03139, i64 %index61
  %wide.load62 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !47, !alias.scope !116 ; 2 uses
  %i.ae = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.af = uitofp <4 x i8> %wide.load62 to <4 x float>
  %i.ag = getelementptr inbounds nuw i8, ptr %.03238, i64 %index61
  %wide.load63 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !47, !alias.scope !117
  %13 = zext <4 x i8> %wide.load63 to <4 x i32>
  %14 = add nuw nsw <4 x i32> %13, %i.ae
  %15 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %14, <4 x i32> splat (i32 255))
  %i.ah = sub nsw <4 x i32> %15, %i.ae
  %i.ai = sitofp nsz <4 x i32> %i.ah to <4 x float>
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %broadcast.splat60, <4 x float> %i.af)
  %i.ak = fptoui <4 x float> %i.aj to <4 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %.03337, i64 %index61
  store <4 x i8> %i.ak, ptr %i.al, align 1, !tbaa !47, !alias.scope !118, !noalias !119
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next64, %n.vec58
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec58, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.an = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ao = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.ap = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %iter.check, !llvm.loop !114

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03139, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !47  ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = uitofp i8 %i.ar to float
  %i.au = getelementptr inbounds nuw i8, ptr %.03238, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !47
  %16 = zext i8 %i.av to i32
  %17 = add nuw nsw i32 %16, %i.as
  %spec.select = tail call i32 @llvm.umin.i32(i32 %17, i32 255)
  %i.aw = sub nsw i32 %spec.select, %i.as
  %i.ax = sitofp nsz i32 %i.aw to float
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.c, float %i.at)
  %i.az = fptoui float %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.03337, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !115
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 3 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep43 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep44 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %1, %5
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.p = or i64 %3, %5
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict48, %i.q
  %conflict.rdx = or i1 %i.o, %i.r
  %min.iters.check51 = icmp ult i64 %6, 16
  %i.s = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec53 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n60 = icmp eq i64 %6, %n.vec53
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.bc, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02833 = phi ptr [ %i.bd, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.02932 = phi ptr [ %i.bb, %._crit_edge ], [ %4, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02734, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !47, !alias.scope !128 ; 2 uses
  %i.u = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.v = uitofp <16 x i8> %wide.load to <16 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %.02833, i64 %index
  %wide.load52 = load <16 x i8>, ptr %i.w, align 1, !tbaa !47, !alias.scope !129
  %i.x = zext <16 x i8> %wide.load52 to <16 x i32>
  %i.y = add nuw nsw <16 x i32> %i.x, %i.u        ; 2 uses
  %i.z = add nsw <16 x i32> %i.y, splat (i32 -128) ; 2 uses
  %i.aa = icmp ult <16 x i32> %i.z, splat (i32 256)
  %i.ab = icmp samesign ugt <16 x i32> %i.y, splat (i32 127)
  %i.ac = select <16 x i1> %i.ab, <16 x i32> splat (i32 255), <16 x i32> zeroinitializer
  %i.ad = select <16 x i1> %i.aa, <16 x i32> %i.z, <16 x i32> %i.ac
  %i.ae = sub nsw <16 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <16 x i32> %i.ae to <16 x float>
  %i.ag = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.af, <16 x float> %broadcast.splat, <16 x float> %i.v)
  %i.ah = fptoui <16 x float> %i.ag to <16 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %.02932, i64 %index
  store <16 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !47, !alias.scope !130, !noalias !131
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02734, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !47, !alias.scope !128 ; 2 uses
  %i.al = zext <4 x i8> %wide.load57 to <4 x i32> ; 2 uses
  %i.am = uitofp <4 x i8> %wide.load57 to <4 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %.02833, i64 %index56
  %wide.load58 = load <4 x i8>, ptr %i.an, align 1, !tbaa !47, !alias.scope !129
  %i.ao = zext <4 x i8> %wide.load58 to <4 x i32>
  %i.ap = add nuw nsw <4 x i32> %i.ao, %i.al      ; 2 uses
  %i.aq = add nsw <4 x i32> %i.ap, splat (i32 -128) ; 2 uses
  %i.ar = icmp ult <4 x i32> %i.aq, splat (i32 256)
  %i.as = icmp samesign ugt <4 x i32> %i.ap, splat (i32 127)
  %i.at = select <4 x i1> %i.as, <4 x i32> splat (i32 255), <4 x i32> zeroinitializer
  %i.au = select <4 x i1> %i.ar, <4 x i32> %i.aq, <4 x i32> %i.at
  %i.av = sub nsw <4 x i32> %i.au, %i.al
  %i.aw = sitofp nsz <4 x i32> %i.av to <4 x float>
  %i.ax = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %broadcast.splat55, <4 x float> %i.am)
  %i.ay = fptoui <4 x float> %i.ax to <4 x i8>
  %i.az = getelementptr inbounds nuw i8, ptr %.02932, i64 %index56
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !47, !alias.scope !130, !noalias !131
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec53, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bb = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.bc = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.bd = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %iter.check, !llvm.loop !126

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02734, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !47  ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = uitofp i8 %i.bf to float
  %i.bi = getelementptr inbounds nuw i8, ptr %.02833, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !47
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.bg            ; 2 uses
  %i.bm = add nsw i32 %i.bl, -128                 ; 2 uses
  %.not.i = icmp ult i32 %i.bm, 256
  %isnotneg.i = icmp samesign ugt i32 %i.bl, 127
  %i.bn = select i1 %isnotneg.i, i32 255, i32 0
  %i.bo = select i1 %.not.i, i32 %i.bm, i32 %i.bn
  %i.bp = sub nsw i32 %i.bo, %i.bg
  %i.bq = sitofp nsz i32 %i.bp to float
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %i.c, float %i.bh)
  %i.bs = fptoui float %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.02932, i64 %indvars.iv
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !127
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_and_8bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 5 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul i64 %1, %i.f
  %i.j = getelementptr i8, ptr %0, i64 %6
  %scevgep43 = getelementptr i8, ptr %i.j, i64 %i.i
  %i.k = mul i64 %3, %i.f
  %i.l = getelementptr i8, ptr %2, i64 %6
  %scevgep44 = getelementptr i8, ptr %i.l, i64 %i.k
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
end_hunk_0
begin_hunk_1_@blend_interpolate_14bit:bb.a
  %i.y = fptrunc nsz <8 x double> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.y)
  %i.aa = fsub nsz <8 x float> splat (float 2.000000e+00), %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1705
  %i.ac = uitofp <8 x i16> %wide.load51 to <8 x double>
  %i.ad = fmul nnan nsz <8 x double> %i.ac, splat (double f0x400921FB54442D18)
  %i.ae = fdiv nsz <8 x double> %i.ad, splat (double 1.638300e+04)
  %i.af = fptrunc nsz <8 x double> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.cos.v8f32(<8 x float> %i.af)
  %i.ah = fsub nsz <8 x float> %i.aa, %i.ag
  %i.ai = fmul nsz <8 x float> %i.ah, splat (float 1.638300e+04)
  %i.aj = fmul nsz <8 x float> %i.ai, splat (float 2.500000e-01)
  %i.ak = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.aj)
  %i.al = zext <8 x i16> %wide.load to <8 x i64>
  %i.am = sub nsw <8 x i64> %i.ak, %i.al
  %i.an = sitofp nsz <8 x i64> %i.am to <8 x float>
  %i.ao = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.an, <8 x float> %broadcast.splat, <8 x float> %i.u)
  %i.ap = fptoui <8 x float> %i.ao to <8 x i16>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !63, !alias.scope !1706, !noalias !1707
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.at = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.au = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1702

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !63 ; 3 uses
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.az, i64 1
  %i.bc = uitofp <2 x i16> %i.bb to <2 x double>
  %i.bd = fmul nnan nsz <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fdiv nsz <2 x double> %i.bd, splat (double 1.638300e+04)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call nsz float @llvm.cos.f32(float %i.bg)
  %i.bi = fsub nsz float 2.000000e+00, %i.bh
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call nsz float @llvm.cos.f32(float %i.bj)
  %i.bl = fsub nsz float %i.bi, %i.bk
  %i.bm = fmul nsz float %i.bl, 1.638300e+04
  %i.bn = fmul nsz float %i.bm, 2.500000e-01
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = zext i16 %i.aw to i64
  %i.bq = sub nsw i64 %i.bo, %i.bp
  %i.br = sitofp nsz i64 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.c, float %i.ax)
  %i.bt = fptoui float %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1703
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_hardoverlay_14bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge60.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge ], [ 0, %bb.a ]
  %.04958 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.05057 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.05156 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge60.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge66
  %i.f = getelementptr inbounds i8, ptr %.05156, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.04958, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.05057, i64 %3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %7
  br i1 %exitcond65.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !1708

bb.b:                                             ; preds = %.preheader, %._crit_edge66
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge66 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04958, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 5 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 16383
  br i1 %i.l, label %._crit_edge66, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.05057, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 16383
  %i.r = shl nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.s = sub nsw i32 32766, %i.r
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = icmp ugt i16 %i.j, 8192
  %i.v = select i1 %i.u, i32 %i.t, i32 0
  %i.w = mul nuw nsw i32 %i.r, %i.p
  %i.x = udiv i32 %i.w, 16383
  %i.y = icmp ult i16 %i.j, 8193
  %i.z = select i1 %i.y, i32 %i.x, i32 0
  %i.aa = add nsw i32 %i.z, %i.v
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 16383)
  %i.ab = sub nsw i32 %spec.select, %i.m
  %i.ac = sitofp nsz i32 %i.ab to float
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.b, %bb.c
  %i.ad = phi float [ %i.ac, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.c, float %i.k)
  %i.af = fptoui float %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.05156, i64 %indvars.iv
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1709
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_addition_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep49 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict53, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03139 = phi ptr [ %i.ae, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.03238 = phi ptr [ %i.af, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.03337 = phi ptr [ %i.ad, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1717 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  %wide.load56 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1718
  %10 = zext <8 x i16> %wide.load56 to <8 x i32>
  %11 = add nuw nsw <8 x i32> %10, %i.u
  %12 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %11, <8 x i32> splat (i32 65535))
  %i.x = sub nsw <8 x i32> %12, %i.u
  %i.y = sitofp nsz <8 x i32> %i.x to <8 x float>
  %i.z = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.y, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.aa = fptoui <8 x float> %i.z to <8 x i16>
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %index
  store <8 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !63, !alias.scope !1719, !noalias !1720
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1714

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ad = getelementptr inbounds i8, ptr %.03337, i64 %5
  %i.ae = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.af = getelementptr inbounds i8, ptr %.03238, i64 %3
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !1715

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !63 ; 2 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = uitofp i16 %i.ah to float
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !63
  %13 = zext i16 %i.al to i32
  %14 = add nuw nsw i32 %13, %i.ai
  %spec.select = tail call i32 @llvm.umin.i32(i32 %14, i32 65535)
  %i.am = sub nsw i32 %spec.select, %i.ai
  %i.an = sitofp nsz i32 %i.am to float
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.c, float %i.aj)
  %i.ap = fptoui float %i.ao to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.03337, i64 %indvars.iv
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1716
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainmerge_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nsw i64 %7, -1                       ; 3 uses
  %i.g = mul i64 %5, %i.f
  %i.h = shl nuw i64 %6, 1                        ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.j = mul i64 %1, %i.f
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.h
  %i.l = mul i64 %3, %i.f
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep44 = getelementptr i8, ptr %i.m, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %4, %scevgep43
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.n = or i64 %1, %5
  %i.o = icmp slt i64 %i.n, 0
  %i.p = or i1 %found.conflict, %i.o
  %bound046 = icmp ult ptr %4, %scevgep44
  %bound147 = icmp ult ptr %2, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %i.q = or i64 %3, %5
  %i.r = icmp slt i64 %i.q, 0
  %i.s = or i1 %found.conflict48, %i.r
  %conflict.rdx = or i1 %i.p, %i.s
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02734 = phi ptr [ %i.al, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.02833 = phi ptr [ %i.am, %._crit_edge ], [ %2, %.preheader.preheader ] ; 3 uses
  %.02932 = phi ptr [ %i.ak, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !63, !alias.scope !1728 ; 2 uses
  %i.u = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.v = uitofp <8 x i16> %wide.load to <8 x float>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.w, align 2, !tbaa !63, !alias.scope !1729
  %i.x = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.u         ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 -32768) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 65536)
  %i.ab = icmp samesign ult <8 x i32> %i.y, splat (i32 32768)
  %i.ac = select <8 x i1> %i.ab, <8 x i32> zeroinitializer, <8 x i32> splat (i32 65535)
  %i.ad = select <8 x i1> %i.aa, <8 x i32> %i.z, <8 x i32> %i.ac
  %i.ae = sub nsw <8 x i32> %i.ad, %i.u
  %i.af = sitofp nsz <8 x i32> %i.ae to <8 x float>
  %i.ag = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %broadcast.splat, <8 x float> %i.v)
  %i.ah = fptoui <8 x float> %i.ag to <8 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %index
  store <8 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !63, !alias.scope !1730, !noalias !1731
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1725

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ak = getelementptr inbounds i8, ptr %.02932, i64 %5
  %i.al = getelementptr inbounds i8, ptr %.02734, i64 %1
  %i.am = getelementptr inbounds i8, ptr %.02833, i64 %3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, %7
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !1726

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02734, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63 ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = uitofp i16 %i.ao to float
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.02833, i64 %indvars.iv
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !63
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, %i.ap            ; 2 uses
  %i.av = add nsw i32 %i.au, -32768               ; 2 uses
  %.not.i = icmp ult i32 %i.av, 65536
  %isnotneg.inv.i = icmp samesign ult i32 %i.au, 32768
  %i.aw = select i1 %isnotneg.inv.i, i32 0, i32 65535
  %.0.i = select i1 %.not.i, i32 %i.av, i32 %i.aw
  %i.ax = sub nsw i32 %.0.i, %i.ap
  %i.ay = sitofp nsz i32 %i.ax to float
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.c, float %i.aq)
  %i.ba = fptoui float %i.az to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.02932, i64 %indvars.iv
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1727
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_burn_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float
  %i.d = icmp sgt i64 %7, 0
  %i.e = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader, label %._crit_edge46.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %._crit_edge ], [ 0, %bb.a ]
  %.03544 = phi ptr [ %i.g, %._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %.03643 = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %.03742 = phi ptr [ %i.f, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge46.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %._crit_edge52
  %i.f = getelementptr inbounds i8, ptr %.03742, i64 %5
  %i.g = getelementptr inbounds i8, ptr %.03544, i64 %1
  %i.h = getelementptr inbounds i8, ptr %.03643, i64 %3
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, %7
  br i1 %exitcond51.not, label %._crit_edge46.split, label %.preheader, !llvm.loop !1732

bb.b:                                             ; preds = %.preheader, %._crit_edge52
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge52 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.03544, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 3 uses
  %i.k = uitofp i16 %i.j to float
  %i.l = icmp eq i16 %i.j, 0
  br i1 %i.l, label %._crit_edge52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.j to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.03643, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = xor i16 %i.o, -1
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw i32 %i.q, 16
  %i.s = sdiv i32 %i.r, %i.m
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 65535)
  %i.u = add nsw i32 %i.t, %i.m
  %i.v = sub i32 65535, %i.u
  %i.w = sitofp nsz i32 %i.v to float
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.b, %bb.c
  %i.x = phi float [ %i.w, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.c, float %i.k)
  %i.z = fptoui float %i.y to i16
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.03742, i64 %indvars.iv
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1733
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_grainextract_16bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  %i.c = fptrunc nsz double %i.b to float         ; 2 uses
  %i.d = icmp sgt i64 %7, 0
end_hunk_1
begin_hunk_2_@filter_slice:bb.a
  %i.f = mul nsw i64 %i.d, %i.e
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = sdiv i64 %i.f, %i.g                      ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !79
  %i.m = sext i32 %i.l to i64                     ; 6 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2358
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2358
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2358
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.a, ptr %4, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.i, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ai = phi ptr [ %i.ah, %bb.b ], [ null, %bb.a ]
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2360
  %i.al = sitofp nsz i64 %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.al, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2361 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = sitofp nsz i64 %i.ao to double
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.as to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.as, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.at = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.au = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.av = fdiv nsz double %i.at, %i.au
  %i.aw = fmul nsz double %i.av, %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ax = phi nsz double [ %i.aw, %bb.d ], [ +qnan, %bb.c ]
  %i.ay = add nsw i32 %2, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.d, %i.az
  %i.bb = sdiv i64 %i.ba, %i.g
  %i.bc = sub nsw i64 %i.bb, %i.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.ax, ptr %i.bd, align 16, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bj = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <2 x i32> %i.bj, i32 %i.c, i64 1
  %i.bl = sitofp <2 x i32> %i.bk to <2 x double>  ; 2 uses
  store <2 x double> %i.bl, ptr %i.bg, align 16, !tbaa !59
  %i.bm = load <2 x i32>, ptr %i.bh, align 8, !tbaa !48
  %i.bn = sitofp <2 x i32> %i.bm to <2 x double>
  %i.bo = fdiv nsz <2 x double> %i.bl, %i.bn
  store <2 x double> %i.bo, ptr %i.bi, align 16, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.m
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !48 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.i
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.o, i64 %i.bv
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.m
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !48 ; 2 uses
  %i.cb = mul nsw i32 %i.ca, %i.i
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.s, i64 %i.cc
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.m
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !48 ; 2 uses
  %i.ci = mul nsw i32 %i.ch, %i.i
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.w, i64 %i.cj
  %i.cl = sext i32 %i.ch to i64
  %i.cm = sext i32 %i.bf to i64
  %sext = shl i64 %i.bc, 32
  %i.cn = ashr exact i64 %sext, 32
  call void %i.bq(ptr noundef %i.bw, i64 noundef %i.bx, ptr noundef %i.cd, i64 noundef %i.ce, ptr noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull %i.ad, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @tblend_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2362 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2363 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2364
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @av_frame_clone(ptr noundef %1) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @blend_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  tail call void @av_frame_free(ptr noundef nonnull %i.h) #12
  store ptr %1, ptr %i.h, align 8, !tbaa !2363
  %i.n = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %.0) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store ptr %1, ptr %i.h, align 8, !tbaa !2363
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.016 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.f ]
  ret i32 %.016
}

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.sqrt.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.cos.v16f32(<16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cos.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree nounwind optsize willreturn memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 _ZTS13FFFrameSyncIn", !9, i64 0}
!24 = !{!"FFFrameSync", !10, i64 0, !20, i64 8, !6, i64 16, !21, i64 20, !22, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 65, !23, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!25 = !{!"double", !5, i64 0}
!26 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!27 = !{!"BlendContext", !10, i64 0, !24, i64 8, !6, i64 104, !6, i64 108, !6, i64 112, !12, i64 120, !6, i64 128, !25, i64 136, !6, i64 144, !5, i64 152, !6, i64 312, !26, i64 320, !6, i64 328}
!28 = !{!27, !6, i64 312}
!29 = !{!27, !6, i64 328}
!30 = !{!"p2 _ZTS6AVExpr", !14, i64 0}
!31 = !{!"FilterParams", !6, i64 0, !25, i64 8, !30, i64 16, !12, i64 24, !9, i64 32}
!32 = !{!31, !30, i64 16}
!33 = !{!"p1 _ZTS6AVExpr", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!37 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!38 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!39 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!40 = !{!"AVFilterFormatsConfig", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!41 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !36, i64 72, !21, i64 96, !37, i64 104, !6, i64 112, !6, i64 116, !40, i64 120, !40, i64 168}
!42 = !{!18, !15, i64 32}
!43 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!41, !6, i64 40}
!46 = !{!41, !6, i64 44}
!47 = !{!5, !5, i64 0}
!48 = !{!6, !6, i64 0}
!49 = !{!27, !6, i64 144}
!50 = !{!27, !6, i64 112}
!51 = !{!31, !6, i64 0}
!52 = !{!31, !25, i64 8}
!53 = !{!31, !9, i64 32}
!54 = !{!"p1 double", !9, i64 0}
!55 = !{!"SliceParams", !54, i64 0, !6, i64 8, !33, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !6, i64 8}
!58 = !{!55, !33, i64 16}
!59 = !{!25, !25, i64 0}
!60 = !{!"float", !5, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"short", !5, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!"branch_weights", i32 4, i32 12}
!67 = !{!26, !26, i64 0}
!68 = !{!18, !15, i64 56}
!69 = !{!"p2 omnipotent char", !14, i64 0}
!70 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!71 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!72 = !{!"AVFrame", !5, i64 0, !5, i64 64, !69, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !21, i64 124, !22, i64 136, !22, i64 144, !21, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !70, i64 248, !6, i64 256, !37, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !71, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !9, i64 376, !36, i64 384, !22, i64 408, !6, i64 416}
!73 = !{!"p1 _ZTS12FilterParams", !9, i64 0}
!74 = !{!"ThreadData", !26, i64 0, !26, i64 8, !26, i64 16, !43, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !73, i64 48}
!75 = !{!74, !26, i64 0}
!76 = !{!74, !26, i64 8}
!77 = !{!74, !26, i64 16}
!78 = !{!74, !43, i64 24}
!79 = !{!74, !6, i64 32}
!80 = !{!74, !6, i64 36}
!81 = !{!74, !6, i64 40}
!82 = !{!74, !73, i64 48}
!83 = !{!18, !11, i64 8}
!84 = !{!"AVFilter", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !6, i64 40}
!85 = !{!84, !12, i64 0}
!86 = !{!27, !9, i64 48}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
!89 = !{!41, !20, i64 0}
!90 = !{!41, !6, i64 36}
!91 = !{!18, !13, i64 24}
!92 = !{!"AVFilterPad", !12, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!93 = !{!92, !12, i64 0}
!94 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!95 = !{!94, !6, i64 16}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = !{!27, !6, i64 128}
!99 = !{!27, !25, i64 136}
!100 = !{!27, !12, i64 120}
!101 = !{!31, !12, i64 24}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35}
!104 = distinct !{!104, !35}
!105 = distinct !{!105, !35}
!106 = distinct !{!106, !35}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !35, !64, !65}
!113 = distinct !{!113, !35, !64, !65}
!114 = distinct !{!114, !35}
!115 = distinct !{!115, !35, !64}
!116 = !{!109}
!117 = !{!110}
!118 = !{!111}
!119 = !{!109, !110}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !35, !64, !65}
!125 = distinct !{!125, !35, !64, !65}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35, !64}
!128 = !{!121}
!129 = !{!122}
!130 = !{!123}
!131 = !{!121, !122}
!132 = distinct !{!132, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !35, !64, !65}
!137 = distinct !{!137, !35, !64, !65}
!138 = distinct !{!138, !35}
!139 = distinct !{!139, !35, !64}
!140 = !{!133}
!141 = !{!134}
!142 = !{!135}
!143 = !{!133, !134}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !144}
!148 = distinct !{!148, !35, !64, !65}
!149 = distinct !{!149, !35, !64, !65}
!150 = distinct !{!150, !35}
!151 = distinct !{!151, !35, !64}
!152 = !{!145}
!153 = !{!146}
!154 = !{!147}
!155 = !{!145, !146}
!156 = distinct !{!156, !35}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !"LVerDomain"}
!159 = distinct !{!159, !158}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !158}
!162 = distinct !{!162, !35, !64, !65}
!163 = distinct !{!163, !35, !64, !65}
!164 = distinct !{!164, !35}
!165 = distinct !{!165, !35, !64}
!166 = !{!159}
!167 = !{!160}
!168 = !{!161}
end_hunk_2
