Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/deflate_stored?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@deflate_stored:bb.a
bb.wa:                                            ; preds = %bb.vz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @271, i64 %i.p) #6, !nosanitize !12
  br label %bb.wb, !nosanitize !12

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  %i.adk = load i32, ptr %i.o, align 64, !tbaa !33
  br label %bb.wc

bb.wc:                                            ; preds = %bb.vw, %bb.wb
  %i.adl = phi i32 [ %i.adk, %bb.wb ], [ %i.adh, %bb.vw ]
  br i1 %i.d, label %bb.we, label %bb.wd, !prof !13, !nosanitize !12

bb.wd:                                            ; preds = %bb.wc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @272, i64 %i.b) #6, !nosanitize !12
  br label %bb.we, !nosanitize !12

bb.we:                                            ; preds = %bb.wc, %bb.wd
  %i.adm = load i32, ptr %i.ao, align 4, !tbaa !40 ; 2 uses
  br i1 %i.d, label %bb.wg, label %bb.wf, !prof !13, !nosanitize !12

bb.wf:                                            ; preds = %bb.we
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @273, i64 %i.b) #6, !nosanitize !12
  br label %bb.wg, !nosanitize !12

bb.wg:                                            ; preds = %bb.we, %bb.wf
  %i.adn = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.ado = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.adm, i32 %i.adn), !nosanitize !12 ; 2 uses
  %i.adp = extractvalue { i32, i1 } %i.ado, 0, !nosanitize !12 ; 5 uses
  %i.adq = extractvalue { i32, i1 } %i.ado, 1, !nosanitize !12
  br i1 %i.adq, label %bb.wh, label %bb.wi, !prof !27, !nosanitize !12

bb.wh:                                            ; preds = %bb.wg
  %i.adr = zext i32 %i.adm to i64, !nosanitize !12
  %i.ads = zext i32 %i.adn to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @274, i64 %i.adr, i64 %i.ads) #6, !nosanitize !12
  br label %bb.wi, !nosanitize !12

bb.wi:                                            ; preds = %bb.wh, %bb.wg
  %.not256 = icmp ult i32 %i.adp, %i.adl
  br i1 %.not256, label %bb.wj, label %bb.wq

bb.wj:                                            ; preds = %bb.wi
  %i.adt = icmp ne i32 %i.adp, 0
  %or.cond7 = or i1 %i.as, %i.adt
  %or.cond9 = and i1 %i.to, %or.cond7
  br i1 %or.cond9, label %bb.wk, label %bb.xk

bb.wk:                                            ; preds = %bb.wj
  br i1 %i.d, label %.critedge343, label %bb.wl, !prof !13, !nosanitize !12

bb.wl:                                            ; preds = %bb.wk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @275, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @276, i64 %i.b) #6, !nosanitize !12
  br label %.critedge343, !nosanitize !12

.critedge343:                                     ; preds = %bb.wk, %bb.wl
  %i.adu = load ptr, ptr %0, align 64, !tbaa !34  ; 3 uses
  %i.adv = icmp ne ptr %i.adu, null, !nosanitize !12
  %i.adw = ptrtoint ptr %i.adu to i64, !nosanitize !12 ; 2 uses
  %i.adx = and i64 %i.adw, 7, !nosanitize !12
  %i.ady = icmp eq i64 %i.adx, 0, !nosanitize !12
  %i.adz = and i1 %i.adv, %i.ady, !nosanitize !12
  br i1 %i.adz, label %bb.wn, label %bb.wm, !prof !13, !nosanitize !12

bb.wm:                                            ; preds = %.critedge343
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @277, i64 %i.adw) #6, !nosanitize !12
  br label %bb.wn, !nosanitize !12

bb.wn:                                            ; preds = %bb.wm, %.critedge343
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adu, i64 8 ; 2 uses
  %i.aeb = ptrtoint ptr %i.aea to i64, !nosanitize !12 ; 2 uses
  %i.aec = and i64 %i.aeb, 7, !nosanitize !12
  %i.aed = icmp eq i64 %i.aec, 0, !nosanitize !12
  br i1 %i.aed, label %bb.wp, label %bb.wo, !prof !13, !nosanitize !12

bb.wo:                                            ; preds = %bb.wn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @278, i64 %i.aeb) #6, !nosanitize !12
  br label %bb.wp, !nosanitize !12

bb.wp:                                            ; preds = %bb.wo, %bb.wn
  %i.aee = load i32, ptr %i.aea, align 8, !tbaa !37
  %i.aef = icmp ne i32 %i.aee, 0
  %.not257 = icmp ugt i32 %i.adp, %i.adh
  %or.cond259 = select i1 %i.aef, i1 true, i1 %.not257
  br i1 %or.cond259, label %bb.xk, label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %bb.wi
  %i.aeg = call i32 @llvm.umin.i32(i32 %i.adp, i32 %i.adh) ; 3 uses
  br i1 %i.as, label %bb.wr, label %bb.wy

bb.wr:                                            ; preds = %bb.wq
  br i1 %i.d, label %.critedge345, label %bb.ws, !prof !13, !nosanitize !12

bb.ws:                                            ; preds = %bb.wr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @279, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @280, i64 %i.b) #6, !nosanitize !12
  br label %.critedge345, !nosanitize !12

.critedge345:                                     ; preds = %bb.wr, %bb.ws
  %i.aeh = load ptr, ptr %0, align 64, !tbaa !34  ; 3 uses
  %i.aei = icmp ne ptr %i.aeh, null, !nosanitize !12
  %i.aej = ptrtoint ptr %i.aeh to i64, !nosanitize !12 ; 2 uses
  %i.aek = and i64 %i.aej, 7, !nosanitize !12
  %i.ael = icmp eq i64 %i.aek, 0, !nosanitize !12
  %i.aem = and i1 %i.aei, %i.ael, !nosanitize !12
  br i1 %i.aem, label %bb.wu, label %bb.wt, !prof !13, !nosanitize !12

bb.wt:                                            ; preds = %.critedge345
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @281, i64 %i.aej) #6, !nosanitize !12
  br label %bb.wu, !nosanitize !12

bb.wu:                                            ; preds = %bb.wt, %.critedge345
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8 ; 2 uses
  %i.aeo = ptrtoint ptr %i.aen to i64, !nosanitize !12 ; 2 uses
  %i.aep = and i64 %i.aeo, 7, !nosanitize !12
  %i.aeq = icmp eq i64 %i.aep, 0, !nosanitize !12
  br i1 %i.aeq, label %bb.ww, label %bb.wv, !prof !13, !nosanitize !12

bb.wv:                                            ; preds = %bb.wu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @282, i64 %i.aeo) #6, !nosanitize !12
  br label %bb.ww, !nosanitize !12

bb.ww:                                            ; preds = %bb.wv, %bb.wu
  %i.aer = load i32, ptr %i.aen, align 8, !tbaa !37
  %i.aes = icmp eq i32 %i.aer, 0
  br i1 %i.aes, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  %i.aet = icmp ule i32 %i.adp, %i.adh
  %i.aeu = zext i1 %i.aet to i32
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.ww, %bb.wq
  %i.aev = phi i32 [ 0, %bb.ww ], [ 0, %bb.wq ], [ %i.aeu, %bb.wx ] ; 2 uses
  br i1 %i.d, label %bb.xa, label %bb.wz, !prof !13, !nosanitize !12

bb.wz:                                            ; preds = %bb.wy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @283, i64 %i.b) #6, !nosanitize !12
  br label %bb.xa, !nosanitize !12

bb.xa:                                            ; preds = %bb.wy, %bb.wz
  %i.aew = load ptr, ptr %i.au, align 8, !tbaa !43 ; 3 uses
  br i1 %i.d, label %bb.xc, label %bb.xb, !prof !13, !nosanitize !12

bb.xb:                                            ; preds = %bb.xa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @284, i64 %i.b) #6, !nosanitize !12
  br label %bb.xc, !nosanitize !12

bb.xc:                                            ; preds = %bb.xa, %bb.xb
  %i.aex = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.aey = sext i32 %i.aex to i64                 ; 2 uses
  %i.aez = getelementptr inbounds i8, ptr %i.aew, i64 %i.aey
  %i.afa = ptrtoint ptr %i.aew to i64, !nosanitize !12 ; 3 uses
  %i.afb = add i64 %i.aey, %i.afa, !nosanitize !12 ; 3 uses
  %i.afc = icmp ne ptr %i.aew, null, !nosanitize !12
  %i.afd = icmp eq i64 %i.afb, 0
  %i.afe = xor i1 %i.afc, %i.afd
  %i.aff = icmp uge i64 %i.afb, %i.afa, !nosanitize !12
  %i.afg = icmp slt i32 %i.aex, 0
  %i.afh = xor i1 %i.afg, %i.aff
  %i.afi = and i1 %i.afe, %i.afh, !nosanitize !12
  br i1 %i.afi, label %bb.xe, label %bb.xd, !prof !13, !nosanitize !12

bb.xd:                                            ; preds = %bb.xc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @285, i64 %i.afa, i64 %i.afb) #6, !nosanitize !12
  br label %bb.xe, !nosanitize !12

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  call void @zng_tr_stored_block(ptr noundef %0, ptr noundef %i.aez, i32 noundef %i.aeg, i32 noundef %i.aev) #6
  br i1 %i.d, label %bb.xg, label %bb.xf, !prof !13, !nosanitize !12

bb.xf:                                            ; preds = %bb.xe
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @286, i64 %i.b) #6, !nosanitize !12
  br label %bb.xg, !nosanitize !12

bb.xg:                                            ; preds = %bb.xe, %bb.xf
  %i.afj = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.afk = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.afj, i32 %i.aeg), !nosanitize !12 ; 2 uses
  %i.afl = extractvalue { i32, i1 } %i.afk, 0, !nosanitize !12
  %i.afm = extractvalue { i32, i1 } %i.afk, 1, !nosanitize !12
  br i1 %i.afm, label %bb.xh, label %bb.xi, !prof !27, !nosanitize !12

bb.xh:                                            ; preds = %bb.xg
  %i.afn = zext i32 %i.afj to i64, !nosanitize !12
  %i.afo = zext i32 %i.aeg to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @287, i64 %i.afn, i64 %i.afo) #6, !nosanitize !12
  br label %bb.xi, !nosanitize !12

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  store i32 %i.afl, ptr %i.ap, align 4, !tbaa !41
  br i1 %i.d, label %.critedge347, label %bb.xj, !prof !13, !nosanitize !12

bb.xj:                                            ; preds = %bb.xi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @288, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @289, i64 %i.b) #6, !nosanitize !12
  br label %.critedge347, !nosanitize !12

.critedge347:                                     ; preds = %bb.xi, %bb.xj
  %i.afp = load ptr, ptr %0, align 64, !tbaa !34
  call void @zng_flush_pending(ptr noundef %i.afp) #6
  %2 = shl nuw nsw i32 %i.aev, 1
  br label %bb.xk

bb.xk:                                            ; preds = %bb.wp, %.critedge347, %bb.wj, %bb.nu, %bb.ni
  %.0224 = phi i32 [ 1, %bb.nu ], [ 3, %bb.ni ], [ %2, %.critedge347 ], [ 0, %bb.wj ], [ 0, %bb.wp ]
  ret i32 %.0224
}

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

declare hidden void @zng_tr_stored_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @put_short(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #4 !func_sanitize !59 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 4 uses
  %i.c = and i64 %i.b, 63, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12       ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @290, i64 %i.b) #6, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @291, i64 %i.g) #6, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @292, i64 %i.b) #6, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64, !nosanitize !12 ; 3 uses
  %i.p = add i64 %i.m, %i.o, !nosanitize !12      ; 3 uses
  %i.q = icmp ne ptr %i.j, null                   ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  %i.s = xor i1 %i.q, %i.r
  %i.t = icmp uge i64 %i.p, %i.o, !nosanitize !12
  %i.u = and i1 %i.t, %i.s, !nosanitize !12
  br i1 %i.u, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @293, i64 %i.o, i64 %i.p) #6, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.q, label %zng_memwrite_2.exit, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  %i.v = ptrtoint ptr %i.n to i64, !nosanitize !12 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @297, i64 %i.v) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @299, i64 %i.v) #6, !nosanitize !12
  br label %zng_memwrite_2.exit, !nosanitize !12

zng_memwrite_2.exit:                              ; preds = %bb.i, %bb.j
  store i16 %1, ptr %i.n, align 1, !tbaa !61
  br i1 %i.e, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %zng_memwrite_2.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @294, i64 %i.b) #6, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %zng_memwrite_2.exit, %bb.k
  %i.w = load i32, ptr %i.k, align 4, !tbaa !28   ; 2 uses
  %i.x = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.w, i32 2), !nosanitize !12 ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1, !nosanitize !12
  br i1 %i.y, label %bb.m, label %bb.n, !prof !27, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  %i.z = zext i32 %i.w to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @295, i64 %i.z, i64 2) #7, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = extractvalue { i32, i1 } %i.x, 0, !nosanitize !12
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !28
  ret void
}

declare hidden void @zng_flush_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_function_type_mismatch(ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{}
!13 = !{!"branch_weights", i32 1048575, i32 1}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS12zng_stream_s", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS15zng_gz_header_s", !14, i64 0}
!18 = !{!"p1 short", !14, i64 0}
!19 = !{!"short", !8, i64 0}
!20 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!21 = !{!"p1 _ZTS9ct_data_s", !14, i64 0}
!22 = !{!"p1 _ZTS18static_tree_desc_s", !14, i64 0}
!23 = !{!"tree_desc_s", !21, i64 0, !9, i64 8, !22, i64 16}
!24 = !{!"long", !8, i64 0}
!25 = !{!"p1 _ZTS16deflate_allocs_s", !14, i64 0}
!26 = !{!"internal_state", !15, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !17, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !16, i64 88, !18, i64 96, !18, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !19, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !14, i64 152, !14, i64 160, !14, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !20, i64 192, !8, i64 260, !8, i64 2552, !8, i64 2796, !23, i64 2952, !23, i64 2976, !23, i64 3000, !8, i64 3024, !8, i64 3056, !9, i64 5348, !9, i64 5352, !8, i64 5356, !9, i64 5932, !18, i64 5936, !16, i64 5944, !9, i64 5952, !9, i64 5956, !24, i64 5960, !24, i64 5968, !9, i64 5976, !9, i64 5980, !24, i64 5984, !24, i64 5992, !25, i64 6000, !24, i64 6008, !9, i64 6016, !8, i64 6020}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!26, !9, i64 28}
!29 = distinct !{null}
!30 = distinct !{!30, !53}
!31 = !{i32 -1056584962, i32 -1028573135}
!32 = !{!26, !9, i64 24}
!33 = !{!26, !9, i64 64}
!34 = !{!26, !15, i64 0}
!35 = !{!"p1 _ZTS14internal_state", !14, i64 0}
!36 = !{!"zng_stream_s", !16, i64 0, !9, i64 8, !24, i64 16, !16, i64 24, !9, i64 32, !24, i64 40, !16, i64 48, !35, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !9, i64 88, !9, i64 92, !24, i64 96}
!37 = !{!36, !9, i64 8}
!38 = !{!26, !9, i64 6016}
!39 = !{!36, !9, i64 32}
!40 = !{!26, !9, i64 132}
!41 = !{!26, !9, i64 116}
!42 = !{!36, !16, i64 24}
!43 = !{!26, !16, i64 88}
!44 = !{!36, !24, i64 40}
!45 = !{!36, !35, i64 56}
!46 = !{!26, !9, i64 32}
!47 = !{!"functable_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!48 = !{!47, !14, i64 56}
!49 = !{!36, !16, i64 0}
!50 = !{!47, !14, i64 16}
!51 = !{!36, !9, i64 92}
!52 = !{!36, !24, i64 16}
end_hunk_0
