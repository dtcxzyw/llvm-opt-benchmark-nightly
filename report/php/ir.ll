inline.NumInlined: 275
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ir_print_escaped_str:bb.a
  %fputc = tail call i32 @fputc(i32 39, ptr %2)   ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.150, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.151, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.152, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.153, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %.lr.ph
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.154, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.155, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.156, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.157, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %.lr.ph
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.158, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.159, i64 2, i64 1, ptr %2) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %or.cond = icmp ult i8 %i.a, 32
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.n = lshr i32 %i.b, 3
  %i.o = or disjoint i32 %i.n, 48
  %i.p = and i32 %i.b, 7
  %i.q = or disjoint i32 %i.p, 48
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 48, i32 noundef %i.o, i32 noundef %i.q) #22 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.s = tail call i32 @fputc(i32 noundef %i.b, ptr noundef %2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.u = add i64 %.02629, -1                      ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @ir_print_const(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = load i8, ptr %1, align 8, !tbaa !12
  switch i8 %i.c, label %bb.g [
    i8 70, label %bb.b
    i8 71, label %bb.b
    i8 72, label %bb.b
    i8 73, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = add nsw i32 %i.e, -1
  %i.h = tail call ptr @ir_strtab_str(ptr noundef nonnull %i.f, i32 noundef %i.g) #22
  %fputs76 = tail call i32 @fputs(ptr %i.h, ptr %2) ; 0 uses
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.l = add nsw i32 %i.j, -1
  %i.m = call ptr @ir_strtab_strl(ptr noundef nonnull %i.k, i32 noundef %i.l, ptr noundef nonnull %i.b) #22 ; 2 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc74 = call i32 @fputc(i32 34, ptr %2)      ; 0 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !15
  call void @ir_print_escaped_str(ptr noundef %i.m, i64 noundef %i.n, ptr noundef %2)
  %fputc75 = call i32 @fputc(i32 34, ptr %2)      ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !15
  call void @ir_print_escaped_str(ptr noundef %i.m, i64 noundef %i.o, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ao

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  switch i8 %i.q, label %bb.ao [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.p
    i8 8, label %bb.aa
    i8 9, label %bb.ab
    i8 10, label %bb.ac
    i8 11, label %bb.ad
    i8 12, label %bb.ae
    i8 13, label %bb.aj
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !12, !range !17, !noundef !18
  %i.t = zext nneg i8 %i.s to i32
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef %i.t) #22 ; 0 uses
  br label %bb.ao

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !12
  %i.x = zext i8 %i.w to i32
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef %i.x) #22 ; 0 uses
  br label %bb.ao

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !12
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef %i.ab) #22 ; 0 uses
  br label %bb.ao

bb.k:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef %i.ae) #22 ; 0 uses
  br label %bb.ao

bb.l:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.164, i64 noundef %i.ah) #22 ; 0 uses
  br label %bb.ao

bb.m:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.165, i64 noundef %i.ak) #22 ; 0 uses
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  %fputc = tail call i32 @fputc(i32 48, ptr %2)   ; 0 uses
  br label %bb.ao

bb.p:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !12  ; 5 uses
  %4 = sext i8 %i.an to i32
  switch i8 %i.an, label %bb.s [
    i8 92, label %bb.q
    i8 39, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.167, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.r:                                             ; preds = %bb.p
  %i.ap = tail call i64 @fwrite(ptr nonnull @.str.168, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.s:                                             ; preds = %bb.p
  %i.aq = icmp sgt i8 %i.an, 31
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.169, i32 noundef %4) #22 ; 0 uses
  br label %bb.ao

bb.u:                                             ; preds = %bb.s
  switch i8 %i.an, label %bb.z [
    i8 9, label %bb.v
    i8 13, label %bb.w
    i8 10, label %bb.x
    i8 0, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.170, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.w:                                             ; preds = %bb.u
  %i.at = tail call i64 @fwrite(ptr nonnull @.str.171, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.x:                                             ; preds = %bb.u
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.172, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.y:                                             ; preds = %bb.u
  %i.av = tail call i64 @fwrite(ptr nonnull @.str.173, i64 4, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.z:                                             ; preds = %bb.u
  %5 = zext i8 %i.an to i32
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.163, i32 noundef %5) #22 ; 0 uses
  br label %bb.ao

bb.aa:                                            ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !12
  %i.az = sext i8 %i.ay to i32
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef %i.az) #22 ; 0 uses
  br label %bb.ao

bb.ab:                                            ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !12
  %i.bd = sext i16 %i.bc to i32
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef %i.bd) #22 ; 0 uses
  br label %bb.ao

bb.ac:                                            ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !12
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef %i.bg) #22 ; 0 uses
  br label %bb.ao

bb.ad:                                            ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !12
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.175, i64 noundef %i.bj) #22 ; 0 uses
  br label %bb.ao

bb.ae:                                            ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12 ; 2 uses
  %i.bn = fcmp uno double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = tail call i64 @fwrite(ptr nonnull @.str.176, i64 3, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.177, double noundef %i.bm) #22 ; 0 uses
  %i.bq = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #22
  %i.br = load double, ptr %i.bl, align 8, !tbaa !12 ; 2 uses
  %i.bs = fcmp une double %i.bq, %i.br
  br i1 %i.bs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.178, double noundef %i.br) #22 ; 0 uses
  %i.bu = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #22 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %fputs73 = call i32 @fputs(ptr nonnull %i.a, ptr %2) ; 0 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !12 ; 2 uses
  %i.bx = fcmp uno float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.by = tail call i64 @fwrite(ptr nonnull @.str.176, i64 3, i64 1, ptr %2) ; 0 uses
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.bz = fpext float %i.bw to double
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.177, double noundef %i.bz) #22 ; 0 uses
  %i.cb = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #22
  %i.cc = load float, ptr %i.bv, align 8, !tbaa !12
  %i.cd = fpext float %i.cc to double             ; 2 uses
  %i.ce = fcmp une double %i.cb, %i.cd
  br i1 %i.ce, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.179, double noundef %i.cd) #22 ; 0 uses
  %i.cg = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #22 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %fputs = call i32 @fputs(ptr nonnull %i.a, ptr %2) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.o, %bb.n, %bb.r, %bb.v, %bb.x, %bb.z, %bb.y, %bb.w, %bb.t, %bb.q, %bb.ai, %bb.af, %bb.an, %bb.ak, %bb.g, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @ir_get_str(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = add nsw i32 %1, -1
  %i.c = tail call ptr @ir_strtab_str(ptr noundef nonnull %i.a, i32 noundef %i.b) #22
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @ir_get_strl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = add nsw i32 %1, -1
  %i.c = tail call ptr @ir_strtab_strl(ptr noundef nonnull %i.a, i32 noundef %i.b, ptr noundef %2) #22
  ret ptr %i.c
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @ir_truncate(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = load i32, ptr %i.a, align 8, !tbaa !38
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 4
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.g) #26 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.l
  %i.n = load i32, ptr %i.b, align 8, !tbaa !19
  %i.o = add nsw i32 %i.n, %i.j
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.m, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !40
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.u
  tail call void @_efree(ptr noundef %i.v) #22
  %i.w = load i32, ptr %i.b, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !41
  %i.y = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  store i32 %i.y, ptr %i.r, align 4, !tbaa !40
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.z
  store ptr %i.aa, ptr %0, align 8, !tbaa !39
  ret void
}

declare noalias ptr @_emalloc_24() local_unnamed_addr #5

declare noalias ptr @_emalloc_256() local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_efree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @ir_init(ptr noundef initializes((0, 920)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %0, i8 0, i64 920, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.b, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 63, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 -1, ptr %i.j, align 4, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 -1, ptr %i.k, align 4, !tbaa !47
  %i.l = add nsw i32 %3, %2
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @_emalloc(i64 noundef %i.n) #26
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 8 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !39
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i32 1542, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8
  store i64 0, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -32
  store i32 257, ptr %i.t, align 8, !tbaa !12
end_hunk_0
