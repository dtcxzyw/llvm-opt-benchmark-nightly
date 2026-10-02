Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gv2gml?download=true
inline.NumInlined: 109
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@main:bb.a
    i8 9, label %bb.fe
    i8 10, label %bb.fe
    i8 11, label %bb.fe
    i8 12, label %bb.fe
    i8 13, label %bb.fe
    i8 32, label %bb.fe
    i8 0, label %bb.ff
  ]

bb.fe:                                            ; preds = %.preheader.i.i67.i, %.preheader.i.i67.i, %.preheader.i.i67.i, %.preheader.i.i67.i, %.preheader.i.i67.i, %.preheader.i.i67.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 1
  br label %.preheader.i.i67.i, !llvm.loop !11

bb.ff:                                            ; preds = %.preheader.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  %i.abs = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.abt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abs, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.55, ptr noundef nonnull %.sroa.41.1.i.i.i) #15 ; 0 uses
  br label %emitAttr.exit70.i

.loopexit.i68.i:                                  ; preds = %.preheader.i.i67.i, %.preheader185.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  %i.abu = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.abv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.55) #15 ; 0 uses
  %i.abw = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.abx = call i32 @gv_xml_escape(ptr noundef nonnull %.sroa.41.1.i.i.i, i32 6, ptr noundef nonnull @put, ptr noundef %i.abw) #15 ; 0 uses
  %i.aby = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i69.i = call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %i.aby) ; 0 uses
  br label %emitAttr.exit70.i

emitAttr.exit70.i:                                ; preds = %.loopexit.i68.i, %bb.ff, %emitAttr.exit79.i
  %.not134.i.i40.i = icmp eq ptr %.sroa.44.1.i.i.i, null
  br i1 %.not134.i.i40.i, label %emitAttr.exit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %emitAttr.exit70.i
  %i.abz = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i.i59.i = call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %i.abz) ; 0 uses
  %i.aca = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i.i59.1.i = call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %i.aca) ; 0 uses
  %i.acb = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i.i59.2.i = call i64 @fwrite(ptr nonnull @.str.18, i64 2, i64 1, ptr %i.acb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #15
  store ptr %.sroa.44.1.i.i.i, ptr %i.aa, align 8, !tbaa !24
  %i.acc = call double @strtod(ptr noundef nonnull %.sroa.44.1.i.i.i, ptr noundef nonnull %i.aa) #15 ; 0 uses
  %i.acd = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %.sroa.44.1.i.i.i, %i.acd
  br i1 %.not.i5.i.i, label %.loopexit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.preheader.i, %bb.fg
  %i.ace = phi ptr [ %i.acg, %bb.fg ], [ %i.acd, %.preheader.preheader.i ] ; 2 uses
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !33
  switch i8 %i.acf, label %.loopexit.i.i [
    i8 9, label %bb.fg
    i8 10, label %bb.fg
    i8 11, label %bb.fg
    i8 12, label %bb.fg
    i8 13, label %bb.fg
    i8 32, label %bb.fg
    i8 0, label %bb.fh
  ]

bb.fg:                                            ; preds = %.preheader.i.i.i, %.preheader.i.i.i, %.preheader.i.i.i, %.preheader.i.i.i, %.preheader.i.i.i, %.preheader.i.i.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ace, i64 1
  br label %.preheader.i.i.i, !llvm.loop !11

bb.fh:                                            ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  %i.ach = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.aci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ach, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.56, ptr noundef nonnull %.sroa.44.1.i.i.i) #15 ; 0 uses
  br label %emitAttr.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i.i, %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  %i.acj = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.ack = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.acj, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.56) #15 ; 0 uses
  %i.acl = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.acm = call i32 @gv_xml_escape(ptr noundef nonnull %.sroa.44.1.i.i.i, i32 6, ptr noundef nonnull @put, ptr noundef %i.acl) #15 ; 0 uses
  %i.acn = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i61.i = call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %i.acn) ; 0 uses
  br label %emitAttr.exit.i

emitAttr.exit.i:                                  ; preds = %.loopexit.i.i, %bb.fh, %emitAttr.exit70.i
  %i.aco = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite135.i.i.i = call i64 @fwrite(ptr nonnull @.str.51, i64 6, i64 1, ptr %i.aco) ; 0 uses
  br label %emitEdge.exit.i

emitEdge.exit.i:                                  ; preds = %emitAttr.exit.i, %bb.ey, %.split.i.i35.i, %.lr.ph204.i
  %i.acp = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite.i41.i = call i64 @fwrite(ptr nonnull @.str.21, i64 4, i64 1, ptr %i.acp) ; 0 uses
  %i.acq = call ptr @agnxtout(ptr noundef nonnull %i.bp, ptr noundef nonnull %.0202.i) #15 ; 2 uses
  %.not25.i = icmp eq ptr %i.acq, null
  br i1 %.not25.i, label %._crit_edge205.i, label %.lr.ph204.i, !llvm.loop !19

._crit_edge205.i:                                 ; preds = %emitEdge.exit.i, %.lr.ph209.i
  %i.acr = call ptr @agnxtnode(ptr noundef nonnull %i.bp, ptr noundef nonnull %.1207.i) #15 ; 2 uses
  %.not23.i = icmp eq ptr %i.acr, null
  br i1 %.not23.i, label %gv_to_gml.exit, label %.lr.ph209.i, !llvm.loop !20

gv_to_gml.exit:                                   ; preds = %._crit_edge205.i, %._crit_edge.i
  %i.acs = load ptr, ptr @outFile, align 8, !tbaa !27
  %fwrite24.i = call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %i.acs) ; 0 uses
  %i.act = load ptr, ptr @outFile, align 8, !tbaa !27
  %i.acu = call i32 @fflush(ptr noundef %i.act)   ; 0 uses
  %i.acv = call ptr @nextGraph(ptr noundef nonnull %2) #15 ; 2 uses
  %.not = icmp eq ptr %i.acv, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %gv_to_gml.exit, %initargs.exit
  call fastcc void @graphviz_exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @newIngraph(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nextGraph(ptr noundef) local_unnamed_addr #2

declare i32 @agclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit(i32 noundef range(i32 0, 2) %0) unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef %0) #20
  unreachable
}

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @agisdirected(ptr noundef) local_unnamed_addr #2

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

declare hidden i32 @gv_xml_escape(ptr noundef, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind uwtable
define internal noundef i32 @put(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = tail call i32 @fputs(ptr noundef %1, ptr noundef %0)
  ret i32 %i.a
}

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 512) i32 @parseStyle(ptr nofree noundef readonly captures(address) %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call i64 @strcspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #16, !noalias !59
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.m ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %tok_next.exit, %.lr.ph
  %.038 = phi i32 [ 0, %.lr.ph ], [ %.1, %tok_next.exit ] ; 7 uses
  %.sroa.6.037 = phi ptr [ %0, %.lr.ph ], [ %i.z, %tok_next.exit ] ; 7 uses
  %.sroa.11.036 = phi i64 [ %i.b, %.lr.ph ], [ %i.aa, %tok_next.exit ] ; 7 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %.sroa.11.036, i64 5) ; 2 uses
  %i.f = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.58, i64 noundef %i.e) #16
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq i64 %.sroa.11.036, 5             ; 2 uses
  %spec.select.i.i = and i1 %i.g, %.not.i.i.i
  br i1 %spec.select.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = or i32 %.038, 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.11.036, i64 6) ; 3 uses
  %i.j = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.59, i64 noundef %i.i) #16
  %.not.i.i.i21 = icmp eq i32 %i.j, 0
  %i.k = icmp eq i64 %.sroa.11.036, 6             ; 3 uses
  %spec.select.i.i22 = and i1 %i.k, %.not.i.i.i21
  br i1 %spec.select.i.i22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = or i32 %.038, 16
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.24, i64 noundef %i.i) #16
  %.not.i.i.i24 = icmp eq i32 %i.m, 0
  %spec.select.i.i25 = and i1 %i.k, %.not.i.i.i24
  br i1 %spec.select.i.i25, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = or i32 %.038, 64
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.25, i64 noundef %i.i) #16
  %.not.i.i.i27 = icmp eq i32 %i.o, 0
  %spec.select.i.i28 = and i1 %i.k, %.not.i.i.i27
  br i1 %spec.select.i.i28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = or i32 %.038, 128
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.60, i64 noundef %i.e) #16
  %.not.i.i.i30 = icmp eq i32 %i.q, 0
  %spec.select.i.i31 = and i1 %i.g, %.not.i.i.i30
  br i1 %spec.select.i.i31, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = or i32 %.038, 32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = tail call i64 @llvm.umin.i64(i64 %.sroa.11.036, i64 4)
  %i.t = tail call i32 @strncmp(ptr noundef nonnull readonly %.sroa.6.037, ptr noundef nonnull readonly @.str.61, i64 noundef %i.s) #16
  %.not.i.i.i33 = icmp eq i32 %i.t, 0
  %i.u = icmp eq i64 %.sroa.11.036, 4
  %spec.select.i.i34 = and i1 %i.u, %.not.i.i.i33
  %i.v = or i32 %.038, 256
  %spec.select = select i1 %spec.select.i.i34, i32 %i.v, i32 %.038
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.i, %bb.k, %bb.g, %bb.c
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.037, i64 %.sroa.11.036 ; 3 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %._crit_edge, label %tok_next.exit

tok_next.exit:                                    ; preds = %bb.m
  %i.y = tail call i64 @strspn(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.57) #16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = tail call i64 @strcspn(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.57) #16
  br label %bb.b, !llvm.loop !55
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{null}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!6, !6, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"any p2 pointer", !22, i64 0}
!29 = !{!"p2 omnipotent char", !28, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!"p1 _ZTS9dtlink_s_", !22, i64 0}
!35 = !{!"dtlink_s_", !34, i64 0, !5, i64 8}
!36 = !{!"p1 _ZTS8Agraph_s", !22, i64 0}
!37 = !{!"Agsym_s", !35, i64 0, !23, i64 16, !23, i64 24, !6, i64 32, !5, i64 36, !5, i64 37, !5, i64 38, !36, i64 40}
!38 = !{!37, !23, i64 16}
!39 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !31, i64 8}
!40 = !{!"p1 _ZTS7Agrec_s", !22, i64 0}
!41 = !{!"Agobj_s", !39, i64 0, !40, i64 16}
!42 = !{!"p1 _ZTS8Agnode_s", !22, i64 0}
!43 = !{!"Agsubnode_s", !35, i64 0, !35, i64 16, !42, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64}
!44 = !{!"Agnode_s", !41, i64 0, !36, i64 24, !43, i64 32}
!45 = !{!44, !40, i64 16}
!46 = !{!"Agrec_s", !23, i64 0, !40, i64 8}
!47 = !{!"", !46, i64 0, !31, i64 16}
!48 = !{!47, !31, i64 16}
!49 = !{!"double", !5, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"Agedge_s", !41, i64 0, !35, i64 24, !35, i64 40, !42, i64 56}
!52 = !{!51, !42, i64 56}
!55 = distinct !{!55, !9}
!57 = distinct !{!57, i1 false, !"tok"}
!58 = distinct !{!58, !57, !"tok: argument 0"}
!59 = !{!58}
end_hunk_0
