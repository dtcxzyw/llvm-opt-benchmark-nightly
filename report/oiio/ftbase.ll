inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@raccess_guess_apple_generic:bb.a

._crit_edge:                                      ; preds = %bb.i
  %.pre26 = load i64, ptr %i.j, align 8, !tbaa !273
  br label %bb.k

bb.j:                                             ; preds = %.thread.i43.thread, %.thread.i43
  %i.af = phi i64 [ %i.aa, %.thread.i43.thread ], [ %i.ad, %.thread.i43 ] ; 2 uses
  %i.ag = phi i64 [ %i.u, %.thread.i43.thread ], [ %.pre.pre.i42, %.thread.i43 ]
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !273 ; 2 uses
  %.not17.i.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not17.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.ai = phi i64 [ %i.ad, %._crit_edge ], [ %i.af, %bb.j ] ; 4 uses
  %i.aj = phi i64 [ %.pre.pre.i42, %._crit_edge ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ak = phi i64 [ %.pre26, %._crit_edge ], [ %i.ah, %bb.j ]
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !280
  store i32 0, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.al = add i64 %i.aj, 21
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.l, label %FT_Stream_ReadUShort.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !335 ; 2 uses
  %.not.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = call i64 %i.an(ptr noundef nonnull %0, i64 noundef %i.ai, ptr noundef nonnull %i.c, i64 noundef 2) #32, !inline_history !582
  %.not20.i = icmp eq i64 %i.ao, 2
  br i1 %.not20.i, label %..thread_crit_edge.i52, label %FT_Stream_ReadUShort.exit.thread

..thread_crit_edge.i52:                           ; preds = %bb.m
  %.pre.pre.i53 = load i64, ptr %i.g, align 8, !tbaa !280
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  %.not21.i = icmp eq ptr %i.ap, null
  br i1 %.not21.i, label %.thread13, label %bb.o

.thread13:                                        ; preds = %bb.n
  %i.ar = add i64 %i.aj, 22
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

FT_Stream_ReadUShort.exit.thread:                 ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

bb.o:                                             ; preds = %..thread_crit_edge.i52, %bb.n
  %.pre.i55 = phi i64 [ %i.ai, %bb.n ], [ %.pre.pre.i53, %..thread_crit_edge.i52 ]
  %.01724.i = phi ptr [ %i.aq, %bb.n ], [ %i.c, %..thread_crit_edge.i52 ] ; 2 uses
  %i.as = load i8, ptr %.01724.i, align 1, !tbaa !242
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.01724.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !242
  %i.ax = zext i8 %i.aw to i16
  %i.ay = or disjoint i16 %i.au, %i.ax            ; 2 uses
  %i.az = add i64 %.pre.i55, 2
  store i64 %i.az, ptr %i.g, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.ba = zext i16 %i.ay to i32
  %i.bb = icmp eq i16 %i.ay, 0
  br i1 %i.bb, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %bb.ac
  %.02125 = phi i32 [ %i.ci, %bb.ac ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !280 ; 6 uses
  %i.bd = add i64 %i.bc, 3
  %i.be = load i64, ptr %i.j, align 8, !tbaa !273
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.p, label %FT_Stream_ReadULong.exit68.thread

bb.p:                                             ; preds = %.preheader
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !335 ; 2 uses
  %.not.i59 = icmp eq ptr %i.bg, null
  br i1 %.not.i59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = call i64 %i.bg(ptr noundef nonnull %0, i64 noundef %i.bc, ptr noundef nonnull %i.b, i64 noundef 4) #32, !inline_history !584
  %.not22.i60 = icmp eq i64 %i.bh, 4
  br i1 %.not22.i60, label %..thread_crit_edge.i61, label %FT_Stream_ReadULong.exit68.thread

..thread_crit_edge.i61:                           ; preds = %bb.q
  %.pre.pre.i62 = load i64, ptr %i.g, align 8, !tbaa !280
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  %.not23.i67 = icmp eq ptr %i.bi, null
  br i1 %.not23.i67, label %.thread39, label %bb.s

.thread39:                                        ; preds = %bb.r
  %i.bk = add i64 %i.bc, 4
  store i64 %i.bk, ptr %i.g, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.bl = add i64 %i.bc, 12
  br label %bb.ab

FT_Stream_ReadULong.exit68.thread:                ; preds = %.preheader, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.loopexit

bb.s:                                             ; preds = %..thread_crit_edge.i61, %bb.r
  %.pre.i64 = phi i64 [ %i.bc, %bb.r ], [ %.pre.pre.i62, %..thread_crit_edge.i61 ] ; 3 uses
  %.01926.i65 = phi ptr [ %i.bj, %bb.r ], [ %i.b, %..thread_crit_edge.i61 ]
  %i.bm = load i32, ptr %.01926.i65, align 1
  %i.bn = add i64 %.pre.i64, 4                    ; 5 uses
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.bo = icmp eq i32 %i.bm, 33554432
  br i1 %i.bo, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bp = add i64 %.pre.i64, 7
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !273
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.u, label %FT_Stream_ReadULong.exit80.thread

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !335 ; 2 uses
  %.not.i71 = icmp eq ptr %i.bs, null
  br i1 %.not.i71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = call i64 %i.bs(ptr noundef nonnull %0, i64 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 4) #32, !inline_history !584
  %.not22.i72 = icmp eq i64 %i.bt, 4
  br i1 %.not22.i72, label %..thread_crit_edge.i73, label %FT_Stream_ReadULong.exit80.thread

..thread_crit_edge.i73:                           ; preds = %bb.v
  %.pre.pre.i74 = load i64, ptr %i.g, align 8, !tbaa !280
  br label %.thread.i75

bb.w:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bn
  %.not23.i79 = icmp eq ptr %i.bu, null
  br i1 %.not23.i79, label %bb.x, label %.thread.i75

.thread.i75:                                      ; preds = %bb.w, %..thread_crit_edge.i73
  %.pre.i76 = phi i64 [ %i.bn, %bb.w ], [ %.pre.pre.i74, %..thread_crit_edge.i73 ]
  %.01926.i77 = phi ptr [ %i.bv, %bb.w ], [ %i.a, %..thread_crit_edge.i73 ]
  %i.bw = load i32, ptr %.01926.i77, align 1
  %i.bx = call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = sext i32 %i.bx to i64
  br label %bb.x

FT_Stream_ReadULong.exit80.thread:                ; preds = %bb.t, %bb.v
  store i32 85, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ac

bb.x:                                             ; preds = %.thread.i75, %bb.w
  %i.bz = phi i64 [ %.pre.i76, %.thread.i75 ], [ %i.bn, %bb.w ]
  %.0.i78 = phi i64 [ %i.by, %.thread.i75 ], [ 0, %bb.w ]
  %i.ca = add i64 %i.bz, 4
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cb = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.f) ; 0 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !3
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  store i64 %.0.i78, ptr %2, align 8, !tbaa !39
  br label %.loopexit

bb.z:                                             ; preds = %bb.s
  %.pre28 = load ptr, ptr %i.m, align 8, !tbaa !335 ; 2 uses
  %i.cd = add i64 %.pre.i64, 12                   ; 3 uses
  %.not.i.i81 = icmp eq ptr %.pre28, null
  br i1 %.not.i.i81, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = call i64 %.pre28(ptr noundef nonnull %0, i64 noundef %i.cd, ptr noundef null, i64 noundef 0) #32, !inline_history !580
  %.not10.i.i82 = icmp eq i64 %i.ce, 0
  br i1 %.not10.i.i82, label %FT_Stream_Skip.exit85, label %.loopexit

bb.ab:                                            ; preds = %.thread39, %bb.z
  %i.cf = phi i64 [ %i.bl, %.thread39 ], [ %i.cd, %bb.z ] ; 2 uses
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !273
  %.not17.i.i84 = icmp ugt i64 %i.cf, %i.cg
  br i1 %.not17.i.i84, label %.loopexit, label %FT_Stream_Skip.exit85

FT_Stream_Skip.exit85:                            ; preds = %bb.aa, %bb.ab
  %i.ch = phi i64 [ %i.cd, %bb.aa ], [ %i.cf, %bb.ab ]
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !280
  store i32 0, ptr %i.f, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %FT_Stream_Skip.exit85, %FT_Stream_ReadULong.exit80.thread, %bb.x
  %i.ci = add nuw nsw i32 %.02125, 1              ; 2 uses
  %3 = icmp samesign ult i32 %i.ci, %i.ba
  br i1 %3, label %.preheader, label %.loopexit, !llvm.loop !657

.loopexit:                                        ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.i, %bb.j, %FT_Stream_ReadULong.exit68.thread, %.thread13, %FT_Stream_ReadUShort.exit.thread, %FT_Stream_ReadULong.exit48.thread, %.thread, %FT_Stream_ReadULong.exit.thread, %bb.o, %bb.e, %bb.y
  %.0 = phi i32 [ 85, %bb.i ], [ 85, %FT_Stream_ReadULong.exit.thread ], [ 2, %bb.e ], [ 85, %FT_Stream_ReadULong.exit48.thread ], [ 85, %bb.j ], [ 85, %FT_Stream_ReadUShort.exit.thread ], [ 2, %bb.o ], [ 0, %bb.y ], [ 85, %FT_Stream_ReadULong.exit68.thread ], [ 2, %.thread13 ], [ 2, %.thread ], [ 85, %bb.aa ], [ 85, %bb.ab ], [ 2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @raccess_make_file_name(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !186
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %i.d) #32, !inline_history !192 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ft_mem_qalloc.exit, label %select.unfold24

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp eq i64 %i.d, 0
  br i1 %.not14.i, label %select.unfold24, label %ft_mem_qalloc.exit

select.unfold24:                                  ; preds = %bb.c, %bb.b
  %.0.i.ph = phi ptr [ %i.h, %bb.b ], [ null, %bb.c ] ; 6 uses
  %i.i = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #33 ; 3 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = tail call ptr @strncpy(ptr noundef %.0.i.ph, ptr noundef nonnull %1, i64 noundef %i.m) #32 ; 0 uses
  %i.o = getelementptr inbounds i8, ptr %.0.i.ph, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.f

bb.e:                                             ; preds = %select.unfold24
  store i8 0, ptr %.0.i.ph, align 1, !tbaa !242
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.e ]
  %i.q = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %2) #32 ; 0 uses
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %.021) #32 ; 0 uses
  br label %ft_mem_qalloc.exit

ft_mem_qalloc.exit:                               ; preds = %bb.b, %bb.c, %bb.f
  %.0 = phi ptr [ %.0.i.ph, %bb.f ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #29

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 32}
!8 = !{!"FT_FaceRec_", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !10, i64 48, !4, i64 56, !12, i64 64, !4, i64 72, !13, i64 80, !15, i64 88, !16, i64 104, !17, i64 136, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !18, i64 152, !19, i64 160, !20, i64 168, !21, i64 176, !22, i64 184, !23, i64 192, !24, i64 200, !15, i64 216, !11, i64 232, !26, i64 240}
!9 = !{!"long", !5, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!13 = !{!"p2 _ZTS14FT_CharMapRec_", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"FT_Generic_", !11, i64 0, !11, i64 8}
!16 = !{!"FT_BBox_", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!17 = !{!"short", !5, i64 0}
!18 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!19 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!20 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!21 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!22 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!23 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!24 = !{!"FT_ListRec_", !25, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!26 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!27 = !{!8, !21, i64 176}
!28 = !{!29, !33, i64 24}
!29 = !{!"FT_DriverRec_", !30, i64 0, !33, i64 24, !24, i64 32, !34, i64 48}
!30 = !{!"FT_ModuleRec_", !31, i64 0, !32, i64 8, !22, i64 16}
!31 = !{!"p1 _ZTS16FT_Module_Class_", !11, i64 0}
!32 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!33 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !11, i64 0}
!34 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !11, i64 0}
!35 = !{!36, !11, i64 168}
!36 = !{!"FT_Driver_ClassRec_", !37, i64 0, !9, i64 72, !9, i64 80, !9, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!37 = !{!"FT_Module_Class_", !9, i64 0, !9, i64 8, !10, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!38 = !{!8, !19, i64 160}
!39 = !{!9, !9, i64 0}
!40 = distinct !{!40, !41, !42, !43}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !41, !43, !42}
!45 = !{!8, !18, i64 152}
!46 = !{!47, !9, i64 128}
!47 = !{!"FT_GlyphSlotRec_", !32, i64 0, !48, i64 8, !18, i64 16, !4, i64 24, !15, i64 32, !49, i64 48, !9, i64 112, !9, i64 120, !50, i64 128, !4, i64 144, !51, i64 152, !4, i64 192, !4, i64 196, !52, i64 200, !4, i64 240, !55, i64 248, !11, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !11, i64 288, !56, i64 296}
!48 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!49 = !{!"FT_Glyph_Metrics_", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!50 = !{!"FT_Vector_", !9, i64 0, !9, i64 8}
!51 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 16, !17, i64 24, !5, i64 26, !5, i64 27, !11, i64 32}
!52 = !{!"FT_Outline_", !17, i64 0, !17, i64 2, !53, i64 8, !10, i64 16, !54, i64 24, !4, i64 32}
!53 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!54 = !{!"p1 short", !11, i64 0}
end_hunk_0
