Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/klp-post-link?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
begin_hunk_0_@cmd_klp_post_link:bb.a
  %i.au = and i64 %i.at, 4294967295
  %i.av = mul i64 %i.au, %.val.val.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !49
  %i.az = sext i32 %i.ay to i64
  br label %reloc_addend.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !51
  br label %reloc_addend.exit.i

reloc_addend.exit.i:                              ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.az, %bb.j ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bd = add nuw nsw i64 %i.v, 8
  %i.be = call ptr @find_reloc_by_dest(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.bd) #9 ; 4 uses
  %.not95.i = icmp eq ptr %i.be, null
  br i1 %.not95.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %reloc_addend.exit.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bg = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not96.i = icmp eq ptr %i.bg, null             ; 2 uses
  %..str.53.i = select i1 %.not96.i, ptr @.str.5, ptr %i.bg
  %i.bh = select i1 %.not96.i, ptr @.str.5, ptr @.str.6
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.8, ptr noundef nonnull %..str.53.i, ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.critedge111.i

bb.m:                                             ; preds = %reloc_addend.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.be, i64 8
  %.val.i114.i = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 3 uses
  %i.bm = getelementptr i8, ptr %.val.i114.i, i64 88
  %.val.val.i115.i = load i64, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bn = icmp ult i64 %.val.val.i115.i, 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i114.i, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i114.i, i64 184
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = ptrtoint ptr %i.be to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 5
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = mul i64 %i.bx, %.val.val.i115.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.by ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !49
  %i.cc = sext i32 %i.cb to i64
  br label %reloc_addend.exit116.i

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !51
  br label %reloc_addend.exit116.i

reloc_addend.exit116.i:                           ; preds = %bb.o, %bb.n
  %i.cf = phi i64 [ %i.cc, %bb.n ], [ %i.ce, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  %i.cj = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) #9
  %.not97.i = icmp eq i32 %i.cj, 1
  br i1 %.not97.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %reloc_addend.exit116.i
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cl = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not98.i = icmp eq ptr %i.cl, null             ; 2 uses
  %..str.54.i = select i1 %.not98.i, ptr @.str.5, ptr %i.cl
  %i.cm = select i1 %.not98.i, ptr @.str.5, ptr @.str.6
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.10, ptr noundef nonnull %..str.54.i, ptr noundef nonnull %i.cm, ptr noundef nonnull @.str.7, ptr noundef %i.cn) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %reloc_addend.exit116.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef %i.cq) #9 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cu = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not100.i = icmp eq ptr %i.cu, null            ; 2 uses
  %..str.55.i = select i1 %.not100.i, ptr @.str.5, ptr %i.cu
  %i.cv = select i1 %.not100.i, ptr @.str.5, ptr @.str.6
  %i.cw = tail call ptr @__errno_location() #10
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !54
  %i.cy = call ptr @strerror(i32 noundef %i.cx) #9
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.12, ptr noundef nonnull %..str.55.i, ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef 87, ptr noundef nonnull @__func__.fix_klp_relocs, ptr noundef %i.cy) #7 ; 0 uses
  br label %.critedge111.i

bb.s:                                             ; preds = %bb.q
  %i.da = icmp samesign ugt i32 %i.cr, 1023
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dd = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not99.i = icmp eq ptr %i.dd, null             ; 2 uses
  %..str.56.i = select i1 %.not99.i, ptr @.str.5, ptr %i.dd
  %i.de = select i1 %.not99.i, ptr @.str.5, ptr @.str.6
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !53
  %i.dg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.14, ptr noundef nonnull %..str.56.i, ptr noundef nonnull %i.de, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef %i.df) #7 ; 0 uses
  br label %.critedge111.i

bb.u:                                             ; preds = %bb.s
  %i.dh = call ptr @find_section_by_name(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not102.i = icmp eq ptr %i.dh, null
  br i1 %.not102.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.val113.i = load i8, ptr %i.n, align 4, !tbaa !55
  %i.di = icmp eq i8 %.val113.i, 1                ; 2 uses
  %i.dj = select i1 %i.di, i64 12, i64 24
  %i.dk = select i1 %i.di, i32 4, i32 8
  %i.dl = call ptr @elf_create_section(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef %i.dj, i32 noundef 4, i32 noundef %i.dk, i32 noundef 1048642) #9 ; 5 uses
  %.not103.i = icmp eq ptr %i.dl, null
  br i1 %.not103.i, label %.critedge111.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = load i32, ptr %i.o, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !58
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 128
  store ptr %i.ah, ptr %i.dr, align 8, !tbaa !59
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.078.i = phi ptr [ %i.dh, %bb.u ], [ %i.dl, %bb.w ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !60
  store ptr %.078.i, ptr %i.ds, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !62
  %i.dw = call ptr @elf_create_reloc(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ah, i64 noundef %i.bc, ptr noundef nonnull %i.bk, i64 noundef %i.cf, i32 noundef %i.dv) #9
  %.not104.i = icmp eq ptr %i.dw, null
  br i1 %.not104.i, label %.critedge111.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bk, i64 78
  store i16 -224, ptr %i.dy, align 2, !tbaa !63
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !64
  %i.ec = call i32 @gelf_update_sym(ptr noundef %i.dz, i32 noundef %i.eb, ptr noundef nonnull %i.dx) #9
  %.not105.i = icmp eq i32 %i.ec, 0
  br i1 %.not105.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ee = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not106.i = icmp eq ptr %i.ee, null            ; 2 uses
  %..str.57.i = select i1 %.not106.i, ptr @.str.5, ptr %i.ee
  %i.ef = select i1 %.not106.i, ptr @.str.5, ptr @.str.6
  %i.eg = call ptr @elf_errmsg(i32 noundef -1) #9
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.15, ptr noundef nonnull %..str.57.i, ptr noundef nonnull %i.ef, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef 116, ptr noundef nonnull @__func__.fix_klp_relocs, ptr noundef %i.eg) #7 ; 0 uses
  br label %.critedge111.i

bb.aa:                                            ; preds = %bb.y
  %i.ei = call ptr @find_reloc_by_dest(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ah, i64 noundef %i.bc) #9 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !37 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 78
  store i16 -224, ptr %i.em, align 2, !tbaa !63
  %i.en = getelementptr i8, ptr %i.ei, i64 8
  %.val11.i.i = load ptr, ptr %i.en, align 8, !tbaa !45 ; 4 uses
  %i.eo = getelementptr i8, ptr %.val11.i.i, i64 88
  %.val11.val.i.i = load i64, ptr %i.eo, align 8, !tbaa !46 ; 2 uses
  %i.ep = icmp ult i64 %.val11.val.i.i, 16
  %i.eq = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 152
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !33
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 184
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !47
  %i.ev = ptrtoint ptr %i.ei to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = lshr exact i64 %i.ex, 5
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = mul i64 %i.ez, %.val11.val.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fa ; 2 uses
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !65
  %i.fe = and i32 %i.fd, -256
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !65
  br label %set_reloc_type.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %2 = load i64, ptr %i.ff, align 8, !tbaa !66
  %3 = and i64 %2, -4294967296
  store i64 %3, ptr %i.ff, align 8, !tbaa !66
  br label %set_reloc_type.exit.i

set_reloc_type.exit.i:                            ; preds = %bb.ac, %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 172
  store i8 1, ptr %i.fg, align 4, !tbaa !67
  store i8 1, ptr %i.q, align 4, !tbaa !73
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !64
  %i.fk = call i32 @gelf_update_sym(ptr noundef %i.fh, i32 noundef %i.fj, ptr noundef nonnull %i.el) #9
  %.not107.i = icmp eq i32 %i.fk, 0
  br i1 %.not107.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %set_reloc_type.exit.i
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fm = load ptr, ptr @objname, align 8, !tbaa !17 ; 2 uses
  %.not108.i = icmp eq ptr %i.fm, null            ; 2 uses
  %..str.58.i = select i1 %.not108.i, ptr @.str.5, ptr %i.fm
  %i.fn = select i1 %.not108.i, ptr @.str.5, ptr @.str.6
  %i.fo = call ptr @elf_errmsg(i32 noundef -1) #9
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull @.str.15, ptr noundef nonnull %..str.58.i, ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef 129, ptr noundef nonnull @__func__.fix_klp_relocs, ptr noundef %i.fo) #7 ; 0 uses
  br label %.critedge111.i

bb.ae:                                            ; preds = %set_reloc_type.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !32
  %i.fq = udiv i64 %.val.i, 24
  %.not109.i = icmp samesign ugt i64 %i.fq, %indvars.iv.next.i
  br i1 %.not109.i, label %bb.g, label %.loopexit, !llvm.loop !12

.critedge111.i:                                   ; preds = %bb.x, %bb.v, %bb.ad, %bb.z, %bb.t, %bb.r, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %fix_klp_relocs.exit

.loopexit:                                        ; preds = %bb.ae, %bb.d, %.preheader.i
  %i.fr = call i32 @elf_write(ptr noundef nonnull %i.i) #9
  %.not13 = icmp eq i32 %i.fr, 0
  br i1 %.not13, label %bb.af, label %fix_klp_relocs.exit

bb.af:                                            ; preds = %.loopexit
  %i.fs = call i32 @elf_close(ptr noundef nonnull %i.i) #9
  br label %fix_klp_relocs.exit

fix_klp_relocs.exit:                              ; preds = %.critedge111.i, %bb.f, %.loopexit, %bb.c, %bb.af, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %.loopexit ], [ %i.fs, %bb.af ], [ -1, %bb.f ], [ -1, %.critedge111.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @elf_open_read(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @elf_write(ptr noundef) local_unnamed_addr #3

declare i32 @elf_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @find_section_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reloc_by_dest(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @elf_create_section(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @elf_create_reloc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gelf_update_sym(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @elf_errmsg(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !74}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS9list_head", !13, i64 0}
!19 = !{!"list_head", !18, i64 0, !18, i64 8}
!20 = !{!"p1 _ZTS13elf_hash_node", !13, i64 0}
!21 = !{!"elf_hash_node", !20, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"", !9, i64 0, !9, i64 4, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !9, i64 40, !9, i64 44, !22, i64 48, !22, i64 56}
!24 = !{!"p1 _ZTS7rb_node", !13, i64 0}
!25 = !{!"rb_root", !24, i64 0}
!26 = !{!"rb_root_cached", !25, i64 0, !24, i64 8}
!27 = !{!"p1 _ZTS7section", !13, i64 0}
!28 = !{!"p1 _ZTS6symbol", !13, i64 0}
!29 = !{!"_Bool", !8, i64 0}
!30 = !{!"p1 _ZTS5reloc", !13, i64 0}
!31 = !{!"section", !19, i64 0, !21, i64 16, !21, i64 24, !23, i64 32, !26, i64 96, !19, i64 112, !27, i64 128, !27, i64 136, !28, i64 144, !13, i64 152, !16, i64 160, !9, i64 168, !29, i64 172, !29, i64 173, !29, i64 174, !29, i64 175, !29, i64 176, !29, i64 177, !30, i64 184, !22, i64 192, !27, i64 200}
!32 = !{!31, !22, i64 64}
!33 = !{!31, !13, i64 152}
!34 = !{!"", !13, i64 0, !9, i64 8, !9, i64 12, !22, i64 16, !22, i64 24, !22, i64 32}
!35 = !{!34, !13, i64 0}
!36 = !{!"reloc", !21, i64 0, !27, i64 8, !28, i64 16, !22, i64 24}
!37 = !{!36, !28, i64 16}
!38 = !{!"rb_node", !22, i64 0, !24, i64 8, !24, i64 16}
!39 = !{!"short", !8, i64 0}
!40 = !{!"", !9, i64 0, !8, i64 4, !8, i64 5, !39, i64 6, !22, i64 8, !22, i64 16}
!41 = !{!"p1 _ZTS12XXH3_state_s", !13, i64 0}
!42 = !{!"checksum", !41, i64 0, !22, i64 8}
!43 = !{!"symbol", !19, i64 0, !19, i64 16, !38, i64 32, !21, i64 56, !21, i64 64, !40, i64 72, !27, i64 96, !16, i64 104, !16, i64 112, !9, i64 120, !9, i64 124, !22, i64 128, !22, i64 136, !28, i64 144, !28, i64 152, !28, i64 160, !28, i64 168, !8, i64 176, !8, i64 177, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 178, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 179, !8, i64 180, !8, i64 180, !8, i64 180, !19, i64 184, !30, i64 200, !27, i64 208, !42, i64 216, !28, i64 232, !28, i64 240}
!44 = !{!43, !27, i64 96}
!45 = !{!36, !27, i64 8}
!46 = !{!31, !22, i64 88}
!47 = !{!31, !30, i64 184}
!48 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!49 = !{!48, !9, i64 8}
!50 = !{!"", !22, i64 0, !22, i64 8, !22, i64 16}
!51 = !{!50, !22, i64 16}
!52 = !{!43, !16, i64 104}
!53 = !{!31, !16, i64 160}
!54 = !{!9, !9, i64 0}
!55 = !{!8, !8, i64 0}
!56 = !{!31, !9, i64 168}
!57 = !{!31, !9, i64 72}
!58 = !{!31, !9, i64 76}
!59 = !{!31, !27, i64 128}
!60 = !{!31, !27, i64 136}
!61 = !{!"klp_reloc", !13, i64 0, !13, i64 8, !9, i64 16}
!62 = !{!61, !9, i64 16}
!63 = !{!43, !39, i64 78}
!64 = !{!43, !9, i64 120}
!65 = !{!48, !9, i64 4}
!66 = !{!50, !22, i64 8}
!67 = !{!31, !29, i64 172}
!68 = !{!"p1 _ZTS3Elf", !13, i64 0}
!69 = !{!"", !8, i64 0, !39, i64 16, !39, i64 18, !9, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !9, i64 48, !39, i64 52, !39, i64 54, !39, i64 56, !39, i64 58, !39, i64 60, !39, i64 62}
!70 = !{!"any p2 pointer", !13, i64 0}
!71 = !{!"p2 _ZTS13elf_hash_node", !70, i64 0}
!72 = !{!"elf", !68, i64 0, !69, i64 8, !9, i64 72, !29, i64 76, !16, i64 80, !16, i64 88, !9, i64 96, !19, i64 104, !19, i64 120, !22, i64 136, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !71, i64 168, !71, i64 176, !71, i64 184, !71, i64 192, !71, i64 200, !27, i64 208, !28, i64 216}
!73 = !{!72, !29, i64 76}
!74 = !{!"llvm.loop.mustprogress"}
end_hunk_0
