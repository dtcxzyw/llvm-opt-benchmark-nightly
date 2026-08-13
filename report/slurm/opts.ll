inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@parse_command_line:bb.a
  %i.gk = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 42), align 2, !range !13, !noundef !14
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = select i1 %i.gl, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.gm) #12
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.gn = call i32 @get_log_level() #12
  %i.go = icmp sgt i32 %i.gn, 3
  br i1 %i.go, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.gp = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 43), align 1, !range !13, !noundef !14
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.gq, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.86, ptr noundef nonnull %i.gr) #12
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.gs = call i32 @get_log_level() #12
  %i.gt = icmp sgt i32 %i.gs, 3
  br i1 %i.gt, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.gu = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 44), align 4, !range !13, !noundef !14
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = select i1 %i.gv, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.gw) #12
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.gx = call i32 @get_log_level() #12
  %i.gy = icmp sgt i32 %i.gx, 3
  br i1 %i.gy, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.gz = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 45), align 1, !range !13, !noundef !14
  %i.ha = trunc nuw i8 %i.gz to i1
  %i.hb = select i1 %i.ha, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.hb) #12
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.hc = call i32 @get_log_level() #12
  %i.hd = icmp sgt i32 %i.hc, 3
  br i1 %i.hd, label %bb.ej, label %_print_options.exit

bb.ej:                                            ; preds = %bb.ei
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.50) #12
  br label %_print_options.exit

_print_options.exit:                              ; preds = %bb.ej, %bb.ei, %bb.bk
  %i.he = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 32), align 8, !range !13, !noundef !14 ; 2 uses
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 33), align 1, !range !13, !noundef !14
  %narrow.i = add nuw nsw i8 %i.hg, %i.he
  %i.hh = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 34), align 2, !range !13, !noundef !14 ; 2 uses
  %narrow21.i = add nuw nsw i8 %narrow.i, %i.hh
  %.not.i = icmp eq i8 %narrow21.i, 1
  br i1 %.not.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_print_options.exit
  %i.hi = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.89) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.el:                                            ; preds = %_print_options.exit
  %i.hj = trunc nuw i8 %i.hh to i1
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 88), align 8
  %i.hl = icmp ne i32 %i.hk, -2
  %not..i = xor i1 %i.hj, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.hl
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 84), align 4
  %i.hn = icmp ne i32 %i.hm, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.hn
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 20), align 4
  %i.hp = icmp ne i32 %i.ho, 0                    ; 3 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.hp
  %i.hq = load i64, ptr getelementptr inbounds nuw (i8, ptr @params, i64 24), align 8
  %i.hr = icmp ne i64 %i.hq, 0                    ; 3 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.hr
  br i1 %or.cond7.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.hs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.90) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.en:                                            ; preds = %bb.el
  br i1 %i.hf, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %bb.en
  %i.ht = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 47), align 1, !range !13, !noundef !14
  %i.hu = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 48), align 8, !range !13, !noundef !14
  %narrow22.i = add nuw nsw i8 %i.hu, %i.ht
  %i.hv = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 65), align 1, !range !13, !noundef !14
  %narrow23.i = add nuw nsw i8 %narrow22.i, %i.hv
  %i.hw = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 64), align 8, !range !13, !noundef !14
  %narrow24.i = add nuw nsw i8 %narrow23.i, %i.hw
  %i.hx = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 67), align 1, !range !13, !noundef !14
  %narrow25.i = add nuw nsw i8 %narrow24.i, %i.hx
  %i.hy = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 81), align 1, !range !13, !noundef !14
  %narrow26.i = add nuw nsw i8 %narrow25.i, %i.hy
  %i.hz = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 18), align 2, !range !13, !noundef !14 ; 2 uses
  %narrow27.i = add nuw nsw i8 %narrow26.i, %i.hz
  %i.ia = zext nneg i8 %narrow27.i to i32
  %i.ib = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 82), align 2, !range !13, !noundef !14 ; 2 uses
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 49), align 1, !range !13, !noundef !14
  %i.ie = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 66), align 2, !range !13, !noundef !14
  %i.if = load i8, ptr @params, align 8, !range !13, !noundef !14
  %i.ig = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @params, i64 35), align 1
  %i.ih = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 43), align 1, !range !13, !noundef !14
  %i.ii = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 44), align 4, !range !13, !noundef !14
  %i.ij = zext nneg i8 %i.ii to i32
  %.mask = and <8 x i8> %i.ig, splat (i8 1)
  %i.ik = zext nneg <8 x i8> %.mask to <8 x i32>
  %i.il = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ik)
  %op.rdx = add nuw nsw i32 %i.il, %i.ic
  %narrow = add nuw nsw i8 %i.id, %i.ie
  %op.rdx40 = zext nneg i8 %narrow to i32
  %narrow46 = add nuw nsw i8 %i.if, %i.ih
  %op.rdx41 = zext nneg i8 %narrow46 to i32
  %op.rdx42 = add nuw nsw i32 %i.ij, %i.ia
  %op.rdx43 = add nuw nsw i32 %op.rdx, %op.rdx40
  %op.rdx44 = add nuw nsw i32 %op.rdx42, %op.rdx41
  %op.rdx45 = add nuw nsw i32 %op.rdx43, %op.rdx44
  %i.im = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 45), align 1, !range !13, !noundef !14
  %i.in = zext nneg i8 %i.im to i32
  %i.io = or i32 %op.rdx45, %i.in
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.iq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.91) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8 ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.er, label %.thread47.i

bb.er:                                            ; preds = %bb.eq
  %i.it = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.92) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.es:                                            ; preds = %bb.en
  %.pre.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 18), align 2, !range !13
  %.pre44.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 82), align 2, !range !13
  %i.iu = or i8 %.pre44.i, %.pre.i
  %i.iv = icmp eq i8 %i.iu, 0
  %or.cond11.not31.i = select i1 %i.iv, i1 true, i1 %i.hp
  %or.cond13.i = select i1 %or.cond11.not31.i, i1 true, i1 %i.hr
  br i1 %or.cond13.i, label %bb.eu, label %bb.et

.thread47.i:                                      ; preds = %bb.eq
  %i.iw = or i8 %i.ib, %i.hz
  %i.ix = icmp eq i8 %i.iw, 0
  %or.cond11.not3148.i = select i1 %i.ix, i1 true, i1 %i.hp
  %or.cond1349.i = select i1 %or.cond11.not3148.i, i1 true, i1 %i.hr
  br i1 %or.cond1349.i, label %.thread50.i, label %bb.et

bb.et:                                            ; preds = %.thread47.i, %bb.es
  %i.iy = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.93) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %.thread39.i, label %.thread50.i

.thread50.i:                                      ; preds = %bb.eu, %.thread47.i
  %i.jb = phi ptr [ %i.iz, %bb.eu ], [ %i.ir, %.thread47.i ] ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1
  %.not33.i = icmp eq i8 %i.jc, 47
  br i1 %.not33.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.thread50.i
  %i.jd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.94) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.ew:                                            ; preds = %.thread50.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.je = call ptr @xstrdup(ptr noundef nonnull %i.jb) #12 ; 5 uses
  store ptr %i.je, ptr %i.a, align 8
  %i.jf = load i8, ptr %i.je, align 1             ; 2 uses
  %.not3541.i = icmp eq i8 %i.jf, 0
  br i1 %.not3541.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ew
  %i.jg = tail call ptr @__ctype_b_loc() #16
  %i.jh = load ptr, ptr %i.jg, align 8
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ey
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.next.i
  %i.jj = load i8, ptr %i.ji, align 1             ; 2 uses
  %.not35.i = icmp eq i8 %i.jj, 0
  br i1 %.not35.i, label %.loopexit.i, label %bb.ey, !llvm.loop !15

bb.ey:                                            ; preds = %bb.ex, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ex ] ; 2 uses
  %i.jk = phi i8 [ %i.jf, %.lr.ph.i ], [ %i.jj, %bb.ex ]
  %i.jl = sext i8 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.jh, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2
  %i.jo = and i16 %i.jn, 8192
  %.not36.i = icmp eq i16 %i.jo, 0
  br i1 %.not36.i, label %bb.ex, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.i
  store i8 0, ptr %i.jp, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ex, %bb.ez, %bb.ew
  %i.jq = call i32 @stat(ptr noundef nonnull %i.je, ptr noundef nonnull %2) #12
  %.not37.i = icmp eq i32 %i.jq, 0
  br i1 %.not37.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.loopexit.i
  %i.jr = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.95) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.fb:                                            ; preds = %.loopexit.i
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = and i32 %i.jt, 61440
  %i.jv = icmp eq i32 %i.ju, 32768
  br i1 %i.jv, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.96) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.fd:                                            ; preds = %bb.fb
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.thread39.i

.thread39.i:                                      ; preds = %bb.fd, %bb.eu
  %i.jx = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 68), align 4
  %i.jy = add i32 %i.jx, -32001
  %or.cond15.i = icmp ult i32 %i.jy, -64001
  br i1 %or.cond15.i, label %bb.fe, label %_validate_options.exit

bb.fe:                                            ; preds = %.thread39.i
  %i.jz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.97) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

_validate_options.exit:                           ; preds = %.thread39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i64 @str2sluid(ptr noundef) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #4

declare void @list_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @slurm_get_cluster_info(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @print_db_notok(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare ptr @list_peek(ptr noundef) local_unnamed_addr #4

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare void @print_slurm_version() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @_help() unnamed_addr #6 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @_usage() unnamed_addr #6 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret void
}

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @uid_from_string(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @suggest_completion(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #4

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = distinct !{!15, !9, !10}
end_hunk_0
