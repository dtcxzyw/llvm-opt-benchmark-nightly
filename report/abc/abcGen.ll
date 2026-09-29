Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcGen?download=true
inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_GenAdder4test:bb.a
.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %.094119.3 = phi i32 [ %i.j, %.lr.ph.3 ], [ 0, %._crit_edge.2 ] ; 2 uses
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.283, i32 noundef 100, i32 noundef %.094119.3) #22 ; 0 uses
  %i.j = add nuw nsw i32 %.094119.3, 1            ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.j, %1
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !176

._crit_edge.3.critedge:                           ; preds = %._crit_edge.1
  %fputc118.2.c = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite116.3.c = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.3.critedge
  %fputc118.3 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %0) ; 0 uses
  br i1 %i.b, label %.lr.ph123, label %._crit_edge132.critedge

.lr.ph123:                                        ; preds = %._crit_edge.3, %.lr.ph123
  %.1121 = phi i32 [ %i.l, %.lr.ph123 ], [ 0, %._crit_edge.3 ] ; 2 uses
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.304, i32 noundef %.1121) #22 ; 0 uses
  %i.l = add nuw nsw i32 %.1121, 1                ; 2 uses
  %exitcond165.not = icmp eq i32 %i.l, %1
  br i1 %exitcond165.not, label %._crit_edge124, label %.lr.ph123, !llvm.loop !177

._crit_edge124:                                   ; preds = %.lr.ph123
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %fwrite97 = tail call i64 @fwrite(ptr nonnull @.str.305, i64 12, i64 1, ptr %0) ; 0 uses
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.306, i32 noundef %1) #22 ; 0 uses
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %._crit_edge124, %.lr.ph127
  %.2125 = phi i32 [ %i.o, %.lr.ph127 ], [ 0, %._crit_edge124 ] ; 3 uses
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.308, i32 noundef %.2125, i32 noundef %.2125) #22 ; 0 uses
  %i.o = add nuw nsw i32 %.2125, 1                ; 2 uses
  %exitcond166.not = icmp eq i32 %i.o, %1
  br i1 %exitcond166.not, label %.lr.ph131.preheader, label %.lr.ph127, !llvm.loop !178

.lr.ph131.preheader:                              ; preds = %.lr.ph127
  %fwrite99175 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %.3129 = phi i32 [ %i.q, %.lr.ph131 ], [ 0, %.lr.ph131.preheader ] ; 3 uses
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.309, i32 noundef %.3129, i32 noundef %.3129) #22 ; 0 uses
  %i.q = add nuw nsw i32 %.3129, 1                ; 2 uses
  %exitcond167.not = icmp eq i32 %i.q, %1
  br i1 %exitcond167.not, label %._crit_edge132.thread, label %.lr.ph131, !llvm.loop !179

._crit_edge132.thread:                            ; preds = %.lr.ph131
  %fwrite100176 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph136.preheader

._crit_edge132.critedge:                          ; preds = %._crit_edge.3
  %fputc.c = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite97.c = tail call i64 @fwrite(ptr nonnull @.str.305, i64 12, i64 1, ptr %0) ; 0 uses
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.306, i32 noundef %1) #22 ; 0 uses
  %fwrite98.c = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite99 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite100 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %.not133 = icmp slt i32 %1, 0
  br i1 %.not133, label %._crit_edge137, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %._crit_edge132.thread, %._crit_edge132.critedge
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %.4134 = phi i32 [ %i.t, %.lr.ph136 ], [ 0, %.lr.ph136.preheader ] ; 4 uses
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.310, i32 noundef %.4134, i32 noundef %.4134) #22 ; 0 uses
  %i.t = add nuw i32 %.4134, 1
  %exitcond168.not = icmp eq i32 %.4134, %1
  br i1 %exitcond168.not, label %._crit_edge137, label %.lr.ph136, !llvm.loop !180

._crit_edge137:                                   ; preds = %.lr.ph136, %._crit_edge132.critedge
  %.not133179 = phi i1 [ true, %._crit_edge132.critedge ], [ false, %.lr.ph136 ] ; 2 uses
  %fputc102 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.306, i32 noundef %1) #22 ; 0 uses
  %fwrite103 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br i1 %i.b, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %._crit_edge137, %.lr.ph140
  %.5138 = phi i32 [ %i.w, %.lr.ph140 ], [ 0, %._crit_edge137 ] ; 3 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.311, i32 noundef %.5138, i32 noundef %.5138) #22 ; 0 uses
  %i.w = add nuw nsw i32 %.5138, 1                ; 2 uses
  %exitcond169.not = icmp eq i32 %i.w, %1
  br i1 %exitcond169.not, label %.lr.ph144.preheader, label %.lr.ph140, !llvm.loop !181

._crit_edge141:                                   ; preds = %._crit_edge137
  %fwrite104 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge145

.lr.ph144.preheader:                              ; preds = %.lr.ph140
  %fwrite104180 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %.lr.ph144
  %.6142 = phi i32 [ %i.y, %.lr.ph144 ], [ 0, %.lr.ph144.preheader ] ; 3 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef %.6142, i32 noundef %.6142) #22 ; 0 uses
  %i.y = add nuw nsw i32 %.6142, 1                ; 2 uses
  %exitcond170.not = icmp eq i32 %i.y, %1
  br i1 %exitcond170.not, label %._crit_edge145, label %.lr.ph144, !llvm.loop !182

._crit_edge145:                                   ; preds = %.lr.ph144, %._crit_edge141
  %fwrite105 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br i1 %.not133179, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %._crit_edge145, %.lr.ph149
  %.7147 = phi i32 [ %i.aa, %.lr.ph149 ], [ 0, %._crit_edge145 ] ; 4 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.313, i32 noundef %.7147, i32 noundef %.7147) #22 ; 0 uses
  %i.aa = add nuw i32 %.7147, 1
  %exitcond171.not = icmp eq i32 %.7147, %1
  br i1 %exitcond171.not, label %._crit_edge150, label %.lr.ph149, !llvm.loop !183

._crit_edge150:                                   ; preds = %.lr.ph149, %._crit_edge145
  %fputc108 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.306, i32 noundef %1) #22 ; 0 uses
  %fwrite109 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br i1 %i.b, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge150, %.lr.ph153
  %.8151 = phi i32 [ %i.ad, %.lr.ph153 ], [ 0, %._crit_edge150 ] ; 3 uses
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.314, i32 noundef %.8151, i32 noundef %.8151) #22 ; 0 uses
  %i.ad = add nuw nsw i32 %.8151, 1               ; 2 uses
  %exitcond172.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond172.not, label %.lr.ph157.preheader, label %.lr.ph153, !llvm.loop !184

._crit_edge154:                                   ; preds = %._crit_edge150
  %fwrite110 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %.lr.ph153
  %fwrite110181 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %.9155 = phi i32 [ %i.af, %.lr.ph157 ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.315, i32 noundef %.9155, i32 noundef %.9155) #22 ; 0 uses
  %i.af = add nuw nsw i32 %.9155, 1               ; 2 uses
  %exitcond173.not = icmp eq i32 %i.af, %1
  br i1 %exitcond173.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !185

._crit_edge158:                                   ; preds = %.lr.ph157, %._crit_edge154
  %fwrite111 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br i1 %.not133179, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %._crit_edge158, %.lr.ph162
  %.10160 = phi i32 [ %i.ah, %.lr.ph162 ], [ 0, %._crit_edge158 ] ; 4 uses
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.316, i32 noundef %.10160, i32 noundef %.10160) #22 ; 0 uses
  %i.ah = add nuw i32 %.10160, 1
  %exitcond174.not = icmp eq i32 %.10160, %1
  br i1 %exitcond174.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !186

._crit_edge163:                                   ; preds = %.lr.ph162, %._crit_edge158
  %fputc114 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite115 = tail call i64 @fwrite(ptr nonnull @.str.223, i64 6, i64 1, ptr %0) ; 0 uses
  tail call void @Abc_WriteAdder(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_WriteWeight(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.317, i32 noundef %1) #22 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.318, i64 10, i64 1, ptr %0) ; 0 uses
  %fwrite20 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %0) ; 0 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.304, i32 noundef %.023) #22 ; 0 uses
  %i.d = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %2
  br i1 %exitcond.not, label %.lr.ph26.preheader, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %._crit_edge27

.lr.ph26.preheader:                               ; preds = %.lr.ph
  %fputc30 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph26.preheader, %.lr.ph26
  %.124 = phi i32 [ %i.h, %.lr.ph26 ], [ 0, %.lr.ph26.preheader ] ; 3 uses
  %i.e = shl nuw i32 1, %.124
  %i.f = and i32 %i.e, %3
  %.not = icmp eq i32 %i.f, 0
  %.str.320..str.319 = select i1 %.not, ptr @.str.320, ptr @.str.319
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.320..str.319, i32 noundef %.124) #22 ; 0 uses
  %i.h = add nuw nsw i32 %.124, 1                 ; 2 uses
  %exitcond28.not = icmp eq i32 %i.h, %2
  br i1 %exitcond28.not, label %._crit_edge27, label %.lr.ph26, !llvm.loop !188

._crit_edge27:                                    ; preds = %.lr.ph26, %._crit_edge
  %fwrite22 = tail call i64 @fwrite(ptr nonnull @.str.223, i64 6, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Abc_GenTreeFindGroups(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ %i.a, %bb.a ]
  %.013 = phi ptr [ %.215, %bb.o ], [ null, %bb.a ] ; 12 uses
  %.0 = phi i32 [ %spec.select, %bb.o ], [ 1, %bb.a ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23    ; 2 uses
  switch i8 %i.c, label %bb.o [
    i8 0, label %bb.p
    i8 40, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.0, 1
  %i.e = icmp eq i32 %.0, 1
  br i1 %i.e, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %.013, null
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !15
  store i32 16, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !15 ; 2 uses
  %.pre20 = load i32, ptr %.013, align 8, !tbaa !44 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.013, i64 4 ; 4 uses
  %i.m = icmp eq i32 %.pre, %.pre20
  br i1 %i.m, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.n = icmp slt i32 %.pre20, 16
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.p, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.o, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i32 %.pre20, 1073741823
  %i.u = shl nuw nsw i32 %.pre20, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.pre20, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.w, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @realloc(ptr noundef nonnull %i.w, i64 noundef %i.y) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = phi ptr [ %i.z, %bb.l ], [ %i.aa, %bb.m ]
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %.013, align 8, !tbaa !44
  %.pre21 = load i32, ptr %i.l, align 4, !tbaa !15
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.thread, %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.ac = phi ptr [ %i.l, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %Vec_IntGrow.exit11.sink.split.i ], [ %i.k, %.thread ]
  %.11428 = phi ptr [ %.013, %bb.e ], [ %.013, %bb.j ], [ %.013, %Vec_IntGrow.exit11.sink.split.i ], [ %i.g, %.thread ] ; 2 uses
  %i.ad = phi i32 [ %.pre, %bb.e ], [ %.pre20, %bb.j ], [ %.pre21, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.11428, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !15
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !17
  %.pre22 = load i8, ptr %i.b, align 1, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %Vec_IntPush.exit
  %i.ak = phi i8 [ %.pre22, %Vec_IntPush.exit ], [ 40, %bb.c ], [ %i.c, %bb.b ]
  %.215 = phi ptr [ %.11428, %Vec_IntPush.exit ], [ %.013, %bb.c ], [ %.013, %bb.b ] ; 2 uses
  %.1 = phi i32 [ 2, %Vec_IntPush.exit ], [ %i.d, %bb.c ], [ %.0, %bb.b ]
  %i.al = icmp eq i8 %i.ak, 41
  %i.am = sext i1 %i.al to i32
  %spec.select = add nsw i32 %.1, %i.am           ; 2 uses
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.p, label %bb.b, !llvm.loop !189

bb.p:                                             ; preds = %bb.b, %bb.o
  %.017 = phi ptr [ %.215, %bb.o ], [ null, %bb.b ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define i32 @Abc_GenTree_rec(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Abc_GenTreeFindGroups(ptr noundef %2, i32 noundef %3) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 4        ; 8 uses
  %.val6367 = load i32, ptr %i.c, align 4, !tbaa !15 ; 2 uses
  %i.d = icmp sgt i32 %.val6367, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %.val65.pre = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #22, !inline_history !190
  %i.j = trunc i64 %i.i to i32
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.val65 = phi ptr [ %.val65.pre, %.lr.ph ], [ %.val66, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val65, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = tail call i32 @Abc_GenTree_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.l, ptr noundef %4, ptr noundef %5)
  %.val66 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.val66, i64 %indvars.iv
  store i32 %i.m, ptr %6, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val63 = load i32, ptr %i.c, align 4, !tbaa !15 ; 3 uses
  %7 = sext i32 %.val63 to i64
  %8 = icmp slt i64 %indvars.iv.next, %7
  br i1 %8, label %bb.c, label %.critedge, !llvm.loop !191

.critedge:                                        ; preds = %bb.c
  %9 = icmp eq i32 %.val63, 3
  br i1 %9, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.critedge
  %i.n = load i32, ptr %i.a, align 8, !tbaa !44
  %i.o = icmp eq i32 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  br i1 %i.o, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 64) #24
  %.pre85.pre = load i32, ptr %i.c, align 4, !tbaa !15
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.f, %bb.g
  %.pre85 = phi i32 [ %.pre85.pre, %bb.f ], [ 3, %bb.g ]
  %i.t = phi ptr [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !16
  store i32 16, ptr %i.a, align 8, !tbaa !44
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %Vec_IntGrow.exit11.sink.split.i
  %10 = phi i32 [ %.pre85, %Vec_IntGrow.exit11.sink.split.i ], [ 3, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.t, %Vec_IntGrow.exit11.sink.split.i ], [ %i.q, %bb.d ]
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %i.c, align 4, !tbaa !15
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %i.u, i64 %12
  store i32 0, ptr %13, align 4, !tbaa !17
  %.val61.pr = load i32, ptr %i.c, align 4, !tbaa !15
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %Vec_IntPush.exit, %.critedge
  %.val61 = phi i32 [ %.val61.pr, %Vec_IntPush.exit ], [ %.val63, %.critedge ], [ %.val6367, %.preheader ]
  switch i32 %.val61, label %bb.j [
    i32 4, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %.critedge.thread
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.321, i32 noundef %1) #22 ; 0 uses
  store i32 1, ptr %5, align 4, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %.critedge.thread
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.306, i32 noundef %1) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread, %bb.i, %bb.h
  %.val71 = load i32, ptr %i.c, align 4, !tbaa !15
  %i.x = icmp sgt i32 %.val71, 0
  br i1 %i.x, label %.lr.ph74, label %.critedge2

.lr.ph74:                                         ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.a, i64 8
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %.lr.ph70.us, label %.lr.ph74.split

.lr.ph70.us:                                      ; preds = %.lr.ph74, %._crit_edge.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %._crit_edge.us ], [ 0, %.lr.ph74 ] ; 3 uses
  %.val64.us = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val64.us, i64 %indvars.iv80
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !17
  %fwrite59.us = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %i.ac = trunc i64 %indvars.iv80 to i32
  %i.ad = add i32 %i.ac, 97
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph70.us, %bb.k
  %.05469.us = phi i32 [ 0, %.lr.ph70.us ], [ %i.af, %bb.k ] ; 3 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.322, i32 noundef %i.ad, i32 noundef %.05469.us, i32 noundef %i.ab, i32 noundef %.05469.us) #22 ; 0 uses
  %i.af = add nuw nsw i32 %.05469.us, 1           ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.af, %1
  br i1 %exitcond.not.a, label %._crit_edge.us, label %bb.k, !llvm.loop !192

._crit_edge.us:                                   ; preds = %bb.k
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %.val.us = load i32, ptr %i.c, align 4, !tbaa !15
  %14 = sext i32 %.val.us to i64
  %15 = icmp slt i64 %indvars.iv.next81, %14
  br i1 %15, label %.lr.ph70.us, label %.critedge2, !llvm.loop !193

.lr.ph74.split:                                   ; preds = %.lr.ph74, %.lr.ph74.split
  %.172 = phi i32 [ %i.ag, %.lr.ph74.split ], [ 0, %.lr.ph74 ]
  %fwrite59 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %i.ag = add nuw nsw i32 %.172, 1                ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !15
  %16 = icmp slt i32 %i.ag, %.val
  br i1 %16, label %.lr.ph74.split, label %.critedge2.thread, !llvm.loop !193

.critedge2.thread:                                ; preds = %.lr.ph74.split
  %fwrite90 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge

.critedge2:                                       ; preds = %._crit_edge.us, %bb.j
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %.critedge2, %.lr.ph76
  %.15575 = phi i32 [ %i.ak, %.lr.ph76 ], [ 0, %.critedge2 ] ; 3 uses
  %i.ai = load i32, ptr %4, align 4, !tbaa !17
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.323, i32 noundef %.15575, i32 noundef %i.ai, i32 noundef %.15575) #22 ; 0 uses
  %i.ak = add nuw nsw i32 %.15575, 1              ; 2 uses
  %exitcond83.not = icmp eq i32 %i.ak, %1
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph76, %.critedge2.thread, %.critedge2
  %fwrite58 = tail call i64 @fwrite(ptr nonnull @.str.324, i64 2, i64 1, ptr %0) ; 0 uses
  %i.al = load i32, ptr %4, align 4, !tbaa !17    ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %4, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.b
  %.056 = phi i32 [ %i.j, %bb.b ], [ %i.al, %._crit_edge ]
  ret i32 %.056
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_GenThreshAdder(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %spec.select = tail call i32 @llvm.smax.i32(i32 %2, i32 %3)
  %spec.select43 = tail call i32 @llvm.smin.i32(i32 %2, i32 %3)
  %.not = icmp eq i32 %5, 0
  %i.a = select i1 %.not, ptr @.str.327, ptr @.str.326
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.325, i32 noundef %1, ptr noundef nonnull %i.a) #22 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge48

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.044 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.328, i32 noundef %.044, i32 noundef %spec.select43, i32 noundef %.044) #22 ; 0 uses
  %i.e = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %1
  br i1 %exitcond.not, label %.lr.ph47.preheader, label %.lr.ph, !llvm.loop !195

.lr.ph47.preheader:                               ; preds = %.lr.ph
  %fwrite3956 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %.lr.ph47
  %.145 = phi i32 [ %i.g, %.lr.ph47 ], [ 0, %.lr.ph47.preheader ] ; 3 uses
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.329, i32 noundef %.145, i32 noundef %spec.select, i32 noundef %.145) #22 ; 0 uses
  %i.g = add nuw nsw i32 %.145, 1                 ; 2 uses
  %exitcond54.not = icmp eq i32 %i.g, %1
  br i1 %exitcond54.not, label %._crit_edge48.thread, label %.lr.ph47, !llvm.loop !196

._crit_edge48.thread:                             ; preds = %.lr.ph47
  %fwrite4057 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph52.preheader

._crit_edge48:                                    ; preds = %bb.a
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.307, i64 3, i64 1, ptr %0) ; 0 uses
  %.not4149 = icmp slt i32 %1, 0
  br i1 %.not4149, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %._crit_edge48.thread, %._crit_edge48
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %.250 = phi i32 [ %i.i, %.lr.ph52 ], [ 0, %.lr.ph52.preheader ] ; 4 uses
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.323, i32 noundef %.250, i32 noundef %4, i32 noundef %.250) #22 ; 0 uses
  %i.i = add nuw i32 %.250, 1
  %exitcond55.not = icmp eq i32 %.250, %1
  br i1 %exitcond55.not, label %._crit_edge53, label %.lr.ph52, !llvm.loop !197

._crit_edge53:                                    ; preds = %.lr.ph52, %._crit_edge48
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenThresh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.d = getelementptr i8, ptr %2, i64 4          ; 14 uses
  %.val187 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.e = add nsw i32 %.val187, -1
  %i.f = tail call ptr (...) @Extra_TimeStamp() #22
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.330, i32 noundef %1, i32 noundef %i.e, ptr noundef %i.f) #22 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.331, i64 10, i64 1, ptr %i.c) ; 0 uses
  %.val186204 = load i32, ptr %i.d, align 4, !tbaa !15 ; 2 uses
  %i.h = icmp sgt i32 %.val186204, 1
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val191 = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val191, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.332, i32 noundef %i.k) #22 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val186 = load i32, ptr %i.d, align 4, !tbaa !15 ; 2 uses
  %i.m = add nsw i32 %.val186, -1
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !198

.critedge:                                        ; preds = %bb.b, %bb.a
  %.val186.lcssa = phi i32 [ %.val186204, %bb.a ], [ %.val186, %bb.b ]
  %i.p = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val194 = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.q = sext i32 %.val186.lcssa to i64
  %i.r = getelementptr [4 x i8], ptr %.val194, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.333, i32 noundef %i.t) #22 ; 0 uses
  %.val185 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.v = add nsw i32 %.val185, -1
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.334, i32 noundef %i.v, i32 noundef %1) #22 ; 0 uses
  %fwrite163 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.c) ; 0 uses
  %.val184206 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.x = icmp sgt i32 %.val184206, 1
  br i1 %i.x, label %.lr.ph208, label %._crit_edge

.lr.ph208:                                        ; preds = %.critedge, %.lr.ph208
  %.1153207 = phi i32 [ %i.z, %.lr.ph208 ], [ 0, %.critedge ] ; 2 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.58, i32 noundef %.1153207) #22 ; 0 uses
  %i.z = add nuw nsw i32 %.1153207, 1             ; 2 uses
  %.val184 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.aa = add nsw i32 %.val184, -1
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph208, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %.lr.ph208, %.critedge
  %fputc = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fwrite165 = tail call i64 @fwrite(ptr nonnull @.str.335, i64 11, i64 1, ptr %i.c) ; 0 uses
  %i.ac = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.ac, label %.lr.ph211, label %._crit_edge212

.lr.ph211:                                        ; preds = %._crit_edge, %.lr.ph211
  %.2154209 = phi i32 [ %i.ae, %.lr.ph211 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.336, i32 noundef 0, i32 noundef %.2154209) #22 ; 0 uses
  %i.ae = add nuw nsw i32 %.2154209, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %1
  br i1 %exitcond.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !200

._crit_edge212:                                   ; preds = %.lr.ph211, %._crit_edge
  %fwrite166 = tail call i64 @fwrite(ptr nonnull @.str.305, i64 12, i64 1, ptr %i.c) ; 0 uses
  %fwrite167 = tail call i64 @fwrite(ptr nonnull @.str.337, i64 14, i64 1, ptr %i.c) ; 0 uses
  %.val183217 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.af = icmp sgt i32 %.val183217, 0
  br i1 %i.af, label %.lr.ph220, label %.critedge2

.lr.ph220:                                        ; preds = %._crit_edge212, %._crit_edge216
  %.0148218 = phi i32 [ %i.ao, %._crit_edge216 ], [ 0, %._crit_edge212 ] ; 4 uses
  %i.ag = phi i32 [ %i.an, %._crit_edge216 ], [ 1, %._crit_edge212 ] ; 2 uses
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.338, i32 noundef %.0148218) #22 ; 0 uses
  %.val182 = load i32, ptr %i.d, align 4, !tbaa !15
  %i.ai = add nsw i32 %.val182, -1
  %i.aj = icmp slt i32 %.0148218, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph220
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.339, i32 noundef %.0148218) #22 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph220
  %fwrite173 = tail call i64 @fwrite(ptr nonnull @.str.340, i64 6, i64 1, ptr %i.c) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.ac, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %bb.e, %.lr.ph215
  %.3155213 = phi i32 [ %i.am, %.lr.ph215 ], [ 0, %bb.e ] ; 3 uses
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.341, i32 noundef %.3155213, i32 noundef %i.ag, i32 noundef %.3155213) #22 ; 0 uses
  %i.am = add nuw nsw i32 %.3155213, 1            ; 2 uses
  %exitcond268.not = icmp eq i32 %i.am, %1
  br i1 %exitcond268.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !201

._crit_edge216:                                   ; preds = %.lr.ph215, %bb.e
  %fputc175 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %i.an = add nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.ao = add nuw nsw i32 %.0148218, 1            ; 2 uses
  %.val183 = load i32, ptr %i.d, align 4, !tbaa !15
end_hunk_0
