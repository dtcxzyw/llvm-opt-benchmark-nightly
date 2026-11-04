Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/submodule--helper?download=true
inline.NumInlined: 212
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@generate_submodule_summary:bb.a
bb.u:                                             ; preds = %.sink.split104, %bb.s
  %.067 = phi ptr [ %i.bp, %bb.s ], [ %i.bs, %.sink.split104 ] ; 6 uses
  %i.bt = phi i1 [ false, %bb.s ], [ %i.bk, %.sink.split104 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !185 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !175 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !343 ; 3 uses
  %i.ca = icmp ne ptr %i.bx, null                 ; 2 uses
  %i.cb = icmp ne ptr %i.bz, null                 ; 2 uses
  %or.cond.i = and i1 %i.ca, %i.cb
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.189, i32 noundef 160, ptr noundef nonnull @.str.190, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bz) #19
  unreachable

bb.w:                                             ; preds = %bb.u
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.cc = call ptr @relative_path(ptr noundef %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %3) #18
  %i.cd = call ptr @xstrdup(ptr noundef %i.cc) #18
  call void @strbuf_release(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %get_submodule_displaypath.exit

bb.y:                                             ; preds = %bb.w
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.116, ptr noundef nonnull %i.bz, ptr noundef %i.bv) #18
  br label %get_submodule_displaypath.exit

bb.aa:                                            ; preds = %bb.y
  %i.cf = call ptr @xstrdup(ptr noundef %i.bv) #18
  br label %get_submodule_displaypath.exit

get_submodule_displaypath.exit:                   ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i86 = phi ptr [ %i.cd, %bb.x ], [ %i.ce, %bb.z ], [ %i.cf, %bb.aa ] ; 4 uses
  %or.cond = or i1 %i.bg, %i.bt
  br i1 %or.cond, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %get_submodule_displaypath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.print_submodule_summary.cp_log, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.326, ptr noundef null) #18
  %i.cg = load i32, ptr %1, align 8, !tbaa !193
  %i.ch = and i32 %i.cg, 61440
  %i.ci = icmp eq i32 %i.ch, 57344
  br i1 %i.ci, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i32, ptr %i.bh, align 4, !tbaa !194
  %i.ck = and i32 %i.cj, 61440
  %i.cl = icmp eq i32 %i.ck, 57344
  br i1 %i.cl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cm = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %6, ptr noundef nonnull @.str.327, ptr noundef %.169, ptr noundef %.067) #18 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cn = phi ptr [ %.169, %bb.ac ], [ %.067, %bb.ab ]
  %i.co = call ptr @strvec_push(ptr noundef nonnull %6, ptr noundef %i.cn) #18 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = call ptr @strvec_push(ptr noundef nonnull %6, ptr noundef nonnull @.str.84) #18 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = or i8 %i.cr, 8
  store i8 %i.cs, ptr %i.cq, align 8
  %i.ct = load ptr, ptr %i.bu, align 8, !tbaa !185
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !100
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @prepare_submodule_repo_env(ptr noundef nonnull %i.cv) #18
  %i.cw = call i32 @pipe_command(ptr noundef nonnull %6, ptr noundef null, i64 noundef 0, ptr noundef nonnull %7, i64 noundef 0, ptr noundef null, i64 noundef 0) #18
  %.not81 = icmp eq i32 %i.cw, 0
  br i1 %.not81, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.cz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cy, ptr noundef null, i32 noundef 10) #18, !inline_history !342
  %i.da = trunc i64 %i.cz to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i32 [ -1, %bb.af ], [ %i.da, %bb.ag ]
  call void @strbuf_release(ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.am

bb.ai:                                            ; preds = %get_submodule_displaypath.exit
  %i.db = load i32, ptr %i.bh, align 4, !tbaa !194
  %i.dc = and i32 %i.db, 61440
  %i.dd = icmp eq i32 %i.dc, 57344
  br i1 %i.dd, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %or.cond3 = and i1 %i.bg, %i.bt
  br i1 %or.cond3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = call ptr @oid_to_hex(ptr noundef nonnull %i.de) #18
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dh = call ptr @oid_to_hex(ptr noundef nonnull %i.dg) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.328, ptr noundef %.0.i86, ptr noundef %i.df, ptr noundef %i.dh) #18
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %. = select i1 %i.bg, i64 8, i64 44
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.dj = call ptr @oid_to_hex(ptr noundef nonnull %i.di) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.329, ptr noundef %.0.i86, ptr noundef %i.dj) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %bb.ak, %bb.ah
  %.1 = phi i32 [ -1, %bb.ak ], [ -1, %bb.al ], [ -1, %bb.ai ], [ %.0, %bb.ah ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !85
  %.not82 = icmp eq i64 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !184
  %i.dq = icmp eq i8 %i.dp, 84
  br i1 %i.dq, label %bb.an, label %_.exit.i

bb.an:                                            ; preds = %bb.am
  %i.dr = load i32, ptr %i.bh, align 4, !tbaa !194
  %i.ds = and i32 %i.dr, 61440
  %i.dt = icmp eq i32 %i.ds, 57344
  %i.du = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i = icmp eq i32 %i.du, 0
  %.str.333..str.334.i = select i1 %i.dt, ptr @.str.333, ptr @.str.334 ; 2 uses
  br i1 %.not4.i.i, label %_.exit.i, label %_.exit.sink.split.i

_.exit.sink.split.i:                              ; preds = %bb.an
  %i.dv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.333..str.334.i, i32 noundef 5) #18
  br label %_.exit.i

_.exit.i:                                         ; preds = %_.exit.sink.split.i, %bb.an, %bb.am
  %.0.i.sink.i = phi ptr [ %i.dv, %_.exit.sink.split.i ], [ %.str.333..str.334.i, %bb.an ], [ @.str.335, %bb.am ]
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i.sink.i, ptr noundef %.0.i86, ptr noundef %.169, ptr noundef %.067) ; 0 uses
  %i.dx = icmp slt i32 %.1, 0
  br i1 %i.dx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_.exit.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %_.exit.i
  %i.dy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.337, i32 noundef %.1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not.i8791 = icmp eq ptr %i.dn, null
  %.not.i87 = select i1 %.not82, i1 true, i1 %.not.i8791
  br i1 %.not.i87, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i30.i = icmp eq i32 %i.dz, 0
  br i1 %.not4.i30.i, label %_.exit32.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.136, i32 noundef 5) #18
  br label %_.exit32.i

_.exit32.i:                                       ; preds = %bb.as, %bb.ar
  %.0.i31.i = phi ptr [ %i.ea, %bb.as ], [ @.str.136, %bb.ar ]
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i31.i, ptr noundef nonnull %i.dn) ; 0 uses
  br label %print_submodule_summary.exit

bb.at:                                            ; preds = %bb.aq
  %i.ec = icmp sgt i32 %.1, 0
  br i1 %i.ec, label %bb.au, label %print_submodule_summary.exit

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.print_submodule_summary.cp_log, i64 136, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %i.bu, align 8, !tbaa !185
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !100
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @prepare_submodule_repo_env(ptr noundef nonnull %i.eg) #18
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.338, ptr noundef null) #18
  %i.eh = load <2 x i32>, ptr %1, align 8, !tbaa !24
  %8 = and <2 x i32> %i.eh, splat (i32 61440)
  %9 = icmp eq <2 x i32> %8, splat (i32 57344)    ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1         ; 2 uses
  %or.cond.i88 = select i1 %10, i1 %11, i1 false
  br i1 %or.cond.i88, label %bb.av, label %._crit_edge.i

bb.av:                                            ; preds = %bb.au
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !176 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.el = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %2, ptr noundef nonnull @.str.339, i32 noundef %i.ej) #18 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.325, ptr noundef null) #18
  %i.em = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %2, ptr noundef nonnull @.str.327, ptr noundef %.169, ptr noundef %.067) #18 ; 0 uses
  br label %bb.ba

._crit_edge.i:                                    ; preds = %bb.au
  br i1 %11, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.342, ptr noundef %.067, ptr noundef null) #18
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.342, ptr noundef %.169, ptr noundef null) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.en = call i32 @run_command(ptr noundef nonnull %2) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %print_submodule_summary.exit

print_submodule_summary.exit:                     ; preds = %_.exit32.i, %bb.at, %bb.ba
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  call void @free(ptr noundef %.0.i86) #18
  call void @free(ptr noundef %.169) #18
  call void @free(ptr noundef %.067) #18
  call void @strbuf_release(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @index_fd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @verify_submodule_committish(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 10 uses
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.print_submodule_summary.cp_log, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %0, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @prepare_submodule_repo_env(ptr noundef nonnull %i.c) #18
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.331, ptr noundef null) #18
  %i.d = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %2, ptr noundef nonnull @.str.332, ptr noundef %1) #18 ; 0 uses
  %i.e = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.84) #18 ; 0 uses
  %i.f = call i32 @pipe_command(ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3, i64 noundef 0, ptr noundef null, i64 noundef 0) #18
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @strbuf_trim_trailing_newline(ptr noundef nonnull %3) #18
  %i.g = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef null) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0
}

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_trim_trailing_newline(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare ptr @refs_resolve_refdup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pushremote_get(ptr noundef) local_unnamed_addr #3

declare ptr @get_local_heads() local_unnamed_addr #3

declare void @refspec_appendn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @count_refspec_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @refspec_clear(ptr noundef) local_unnamed_addr #3

declare void @free_refs(ptr noundef) local_unnamed_addr #3

declare void @repo_read_gitmodules(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @parse_opt_noop_cb(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @parse_opt_tracking_mode(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #3

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @printf_ln(ptr noundef, ...) local_unnamed_addr #3

declare void @create_branches_recursively(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { cold }
attributes #22 = { cold nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !28}
!1 = distinct !{null}
!2 = distinct !{!2, !28}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!"option", !12, i64 0, !12, i64 4, !17, i64 8, !15, i64 16, !18, i64 24, !17, i64 32, !17, i64 40, !12, i64 48, !15, i64 56, !18, i64 64, !15, i64 72, !18, i64 80, !15, i64 88}
!20 = !{!19, !12, i64 0}
!21 = !{!19, !12, i64 4}
!22 = !{!19, !17, i64 8}
!23 = !{!19, !15, i64 16}
!24 = !{!12, !12, i64 0}
!25 = !{!"strbuf", !18, i64 0, !18, i64 8, !17, i64 16}
!26 = !{!25, !17, i64 16}
!27 = !{!11, !11, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 _ZTS10repository", !15, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS15object_database", !15, i64 0}
!32 = !{!"p1 _ZTS18parsed_object_pool", !15, i64 0}
!33 = !{!"p1 _ZTS9ref_store", !15, i64 0}
!34 = !{!"_Bool", !11, i64 0}
!35 = !{!"any p2 pointer", !15, i64 0}
!36 = !{!"p2 _ZTS13hashmap_entry", !35, i64 0}
!37 = !{!"hashmap", !36, i64 0, !15, i64 8, !15, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!38 = !{!"p1 _ZTS8mem_pool", !15, i64 0}
!39 = !{!"strmap", !37, i64 0, !38, i64 48, !12, i64 56}
!40 = !{!"repo_path_cache", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!41 = !{!"p1 _ZTS18fsmonitor_settings", !15, i64 0}
!42 = !{!"repo_settings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !41, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !12, i64 128, !17, i64 136}
!43 = !{!"p1 _ZTS10config_set", !15, i64 0}
!44 = !{!"p1 _ZTS15submodule_cache", !15, i64 0}
!45 = !{!"p1 _ZTS11index_state", !15, i64 0}
!46 = !{!"p1 _ZTS12remote_state", !15, i64 0}
!47 = !{!"p1 _ZTS13git_hash_algo", !15, i64 0}
!48 = !{!"repo_config_values", !17, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!49 = !{!"p1 _ZTS6strmap", !15, i64 0}
!50 = !{!"p1 _ZTS16string_list_item", !15, i64 0}
!51 = !{!"string_list", !50, i64 0, !18, i64 8, !18, i64 16, !12, i64 24, !15, i64 32}
end_hunk_0
