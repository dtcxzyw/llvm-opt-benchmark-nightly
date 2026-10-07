Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pack-objects?download=true
inline.NumInlined: 363
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@write_no_reuse_object:bb.a
  %.not.i130 = icmp ne i32 %i.el, 0
  call void @llvm.assume(i1 %.not.i130)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = and i64 %i.en, 36028797018963968
  %.not8.i131 = icmp eq i64 %i.eo, 0
  %i.ep = add i32 %i.el, -1
  %i.eq = zext i32 %i.ep to i64
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 136), align 8
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8
  %.0.i132.v = select i1 %.not8.i131, ptr %i.es, ptr %i.er
  %.0.i132 = getelementptr inbounds nuw [96 x i8], ptr %.0.i132.v, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i132, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !200
  %i.ev = sub nsw i64 %i.ej, %i.eu                ; 2 uses
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = and i8 %i.ew, 127
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !64
  %i.ez = ashr i64 %i.ev, 7                       ; 2 uses
  %.not114167 = icmp eq i64 %i.ez, 0
  br i1 %.not114167, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %oe_delta.exit133, %.lr.ph
  %i.fa = phi i64 [ %i.fh, %.lr.ph ], [ %i.ez, %oe_delta.exit133 ]
  %.081168 = phi i32 [ %i.fe, %.lr.ph ], [ 9, %oe_delta.exit133 ]
  %i.fb = add nsw i64 %i.fa, -1                   ; 2 uses
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = or i8 %i.fc, -128
  %i.fe = add i32 %.081168, -1                    ; 3 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ff
  store i8 %i.fd, ptr %i.fg, align 1, !tbaa !64
  %i.fh = ashr i64 %i.fb, 7                       ; 2 uses
  %.not114 = icmp eq i64 %i.fh, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph, %oe_delta.exit133
  %.081.lcssa = phi i32 [ 9, %oe_delta.exit133 ], [ %i.fe, %.lr.ph ] ; 3 uses
  %.not115 = icmp eq i64 %2, 0
  br i1 %.not115, label %._crit_edge..thread154_crit_edge, label %bb.ad

._crit_edge..thread154_crit_edge:                 ; preds = %._crit_edge
  %.pre = zext i32 %.081.lcssa to i64
  br label %.thread154

bb.ad:                                            ; preds = %._crit_edge
  %i.fi = zext i32 %i.eg to i64
  %i.fj = zext i32 %.081.lcssa to i64             ; 2 uses
  %i.fk = and i64 %i.p, 4294967295
  %i.fl = add nuw nsw i64 %i.fk, 10
  %i.fm = add i64 %i.fl, %.086
  %i.fn = add i64 %i.fm, %i.fi
  %i.fo = sub i64 %i.fn, %i.fj
  %.not116 = icmp ult i64 %i.fo, %2
  br i1 %.not116, label %.thread154, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not108150, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = call i32 @odb_read_stream_close(ptr noundef nonnull %.2146) #21 ; 0 uses
  br label %bb.ag

.thread154:                                       ; preds = %._crit_edge..thread154_crit_edge, %bb.ad
  %.pre-phi = phi i64 [ %.pre, %._crit_edge..thread154_crit_edge ], [ %i.fj, %bb.ad ]
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %i.eg) #21
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi
  %i.fr = sub i32 10, %.081.lcssa                 ; 2 uses
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.fq, i32 noundef %i.fr) #21
  %i.fs = add i32 %i.fr, %i.eg
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ft = load ptr, ptr %i.j, align 8, !tbaa !72
  call void @free(ptr noundef %i.ft) #21
  br label %bb.bf

bb.ah:                                            ; preds = %bb.ac
  %.not112 = icmp eq i64 %2, 0
  br i1 %.not112, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = add i32 %i.eg, %i.q
  %i.fv = zext i32 %i.fu to i64
  %i.fw = and i64 %i.p, 4294967295
  %i.fx = add i64 %.086, %i.fw
  %i.fy = add i64 %i.fx, %i.fv
  %.not113 = icmp ult i64 %i.fy, %2
  br i1 %.not113, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not108150, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = call i32 @odb_read_stream_close(ptr noundef nonnull %.2146) #21 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !72
  call void @free(ptr noundef %i.ga) #21
  br label %bb.bf

bb.am:                                            ; preds = %bb.ai, %bb.ah
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %i.eg) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !134 ; 2 uses
  %.not.i134 = icmp eq i32 %i.gc, 0
  br i1 %.not.i134, label %oe_delta.exit137, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = and i64 %i.ge, 36028797018963968
  %.not8.i135 = icmp eq i64 %i.gf, 0
  %i.gg = add i32 %i.gc, -1
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  br i1 %.not8.i135, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 136), align 8, !tbaa !140
  %i.gj = getelementptr inbounds nuw [96 x i8], ptr %i.gi, i64 %i.gh
  br label %oe_delta.exit137

bb.ap:                                            ; preds = %bb.an
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.gl = getelementptr inbounds nuw [96 x i8], ptr %i.gk, i64 %i.gh
  br label %oe_delta.exit137

oe_delta.exit137:                                 ; preds = %bb.am, %bb.ao, %bb.ap
  %.0.i136 = phi ptr [ %i.gj, %bb.ao ], [ %i.gl, %bb.ap ], [ null, %bb.am ]
  call void @hashwrite(ptr noundef %0, ptr noundef %.0.i136, i32 noundef %i.q) #21
  %i.gm = add i32 %i.eg, %i.q
  br label %bb.aw

bb.aq:                                            ; preds = %bb.ac
  %.not110 = icmp eq i64 %2, 0
  br i1 %.not110, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = zext i32 %i.eg to i64
  %i.go = and i64 %i.p, 4294967295
  %i.gp = add i64 %.086, %i.go
  %i.gq = add i64 %i.gp, %i.gn
  %.not111 = icmp ult i64 %i.gq, %2
  br i1 %.not111, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not108150, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gr = call i32 @odb_read_stream_close(ptr noundef nonnull %.2146) #21 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gs = load ptr, ptr %i.j, align 8, !tbaa !72
  call void @free(ptr noundef %i.gs) #21
  br label %bb.bf

bb.av:                                            ; preds = %bb.ar, %bb.aq
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %i.eg) #21
  br label %bb.aw

bb.aw:                                            ; preds = %.thread154, %oe_delta.exit137, %bb.av
  %.185 = phi i32 [ %i.fs, %.thread154 ], [ %i.gm, %oe_delta.exit137 ], [ %i.eg, %bb.av ]
  br i1 %.not108150, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.gt = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.gu = call ptr @repo_config_values(ptr noundef %i.gt) #21
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !73
  call void @git_deflate_init(ptr noundef nonnull %4, i32 noundef %i.gw) #21
  %i.gx = call i64 @odb_read_stream_read(ptr noundef nonnull %.2146, ptr noundef nonnull %i.a, i64 noundef 16384) #21 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, -1
  br i1 %i.gy, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.hd = ptrtoint ptr %i.b to i64                ; 4 uses
  br label %bb.ay

._crit_edge.i:                                    ; preds = %.thread.i, %bb.ax
  %i.he = call fastcc ptr @_(ptr noundef nonnull @.str.273)
  %i.hf = call ptr @oid_to_hex(ptr noundef %1) #21
  call void (ptr, ...) @die(ptr noundef %i.he, ptr noundef %i.hf) #22
  unreachable

bb.ay:                                            ; preds = %.thread.i, %.lr.ph.i
  %i.hg = phi i64 [ %i.gx, %.lr.ph.i ], [ %i.ie, %.thread.i ]
  %.01838.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ia, %.thread.i ] ; 2 uses
  %.fr39.i = freeze i64 %i.hg                     ; 2 uses
  store ptr %i.a, ptr %i.gz, align 8, !tbaa !196
  store i64 %.fr39.i, ptr %i.ha, align 8, !tbaa !197
  %i.hh = icmp eq i64 %.fr39.i, 0                 ; 2 uses
  %5 = select i1 %i.hh, i32 4, i32 0              ; 2 uses
  br i1 %i.hh, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.ay, %bb.az
  %.01734.us.i = phi i32 [ %i.hj, %bb.az ], [ 0, %bb.ay ] ; 4 uses
  %.133.us.i = phi i64 [ %i.hr, %bb.az ], [ %.01838.i, %bb.ay ] ; 2 uses
  %i.hi = phi i64 [ %.pr.us.i, %bb.az ], [ 0, %bb.ay ]
  switch i32 %.01734.us.i, label %.critedge.i [
    i32 -5, label %bb.az
    i32 0, label %bb.az
  ]

bb.az:                                            ; preds = %.split.us.i, %.split.us.i
  store ptr %i.b, ptr %i.hb, align 8, !tbaa !198
  store i64 16384, ptr %i.hc, align 8, !tbaa !199
  %i.hj = call i32 @git_deflate(ptr noundef nonnull %4, i32 noundef %5) #21
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !198
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.hd
  %i.hn = trunc i64 %i.hm to i32
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.hn) #21
  %i.ho = load ptr, ptr %i.hb, align 8, !tbaa !198
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 %.133.us.i, %i.hd
  %i.hr = add i64 %i.hq, %i.hp
  %.pr.us.i = load i64, ptr %i.ha, align 8, !tbaa !197
  br label %.split.us.i

.split.i:                                         ; preds = %bb.ay, %bb.ba
  %.01734.i = phi i32 [ %i.hs, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %.133.i = phi i64 [ %i.ia, %bb.ba ], [ %.01838.i, %bb.ay ]
  switch i32 %.01734.i, label %.critedge.thread.i [
    i32 -5, label %bb.ba
    i32 0, label %bb.ba
  ]

bb.ba:                                            ; preds = %.split.i, %.split.i
  store ptr %i.b, ptr %i.hb, align 8, !tbaa !198
  store i64 16384, ptr %i.hc, align 8, !tbaa !199
  %i.hs = call i32 @git_deflate(ptr noundef nonnull %4, i32 noundef %5) #21
  %i.ht = load ptr, ptr %i.hb, align 8, !tbaa !198
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.hd
  %i.hw = trunc i64 %i.hv to i32
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.hw) #21
  %i.hx = load ptr, ptr %i.hb, align 8, !tbaa !198
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 %.133.i, %i.hd
  %i.ia = add i64 %i.hz, %i.hy                    ; 2 uses
  %.pr.i = load i64, ptr %i.ha, align 8, !tbaa !197
  %.not40.i = icmp eq i64 %.pr.i, 0
  br i1 %.not40.i, label %.thread.i, label %.split.i, !llvm.loop !447

.critedge.i:                                      ; preds = %.split.us.i
  %i.ib = icmp eq i64 %i.hi, 0
  br i1 %i.ib, label %bb.bb, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.split.i, %.critedge.i
  %.us-phi3651.i = phi i32 [ %.01734.us.i, %.critedge.i ], [ %.01734.i, %.split.i ]
  %i.ic = call fastcc ptr @_(ptr noundef nonnull @.str.275)
  call void (ptr, ...) @die(ptr noundef %i.ic, i32 noundef %.us-phi3651.i) #22
  unreachable

bb.bb:                                            ; preds = %.critedge.i
  %.not20.i = icmp eq i32 %.01734.us.i, 1
  br i1 %.not20.i, label %write_large_blob_data.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.id = call fastcc ptr @_(ptr noundef nonnull @.str.275)
  call void (ptr, ...) @die(ptr noundef %i.id, i32 noundef %.01734.us.i) #22
  unreachable

.thread.i:                                        ; preds = %bb.ba
  %i.ie = call i64 @odb_read_stream_read(ptr noundef nonnull %.2146, ptr noundef nonnull %i.a, i64 noundef 16384) #21 ; 2 uses
  %i.if = icmp eq i64 %i.ie, -1
  br i1 %i.if, label %._crit_edge.i, label %bb.ay

write_large_blob_data.exit:                       ; preds = %bb.bb
  call void @git_deflate_end(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ig = call i32 @odb_read_stream_close(ptr noundef nonnull %.2146) #21 ; 0 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.aw
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.ii = trunc i64 %.086 to i32
  call void @hashwrite(ptr noundef %0, ptr noundef %i.ih, i32 noundef %i.ii) #21
  call void @free(ptr noundef %i.ih) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %write_large_blob_data.exit
  %.187 = phi i64 [ %.133.us.i, %write_large_blob_data.exit ], [ %.086, %bb.bd ]
  %i.ij = zext i32 %.185 to i64
  %i.ik = add i64 %.187, %i.ij
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ag, %bb.be, %bb.au, %bb.al
  %.191 = phi i64 [ %i.ik, %bb.be ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  ret i64 %.191
}

declare i32 @crc32_end(ptr noundef) local_unnamed_addr #2

declare ptr @odb_read_stream_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @odb_read_stream_close(ptr noundef) local_unnamed_addr #2

declare i64 @odb_read_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @check_pack_crc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @git_inflate_init(ptr noundef) local_unnamed_addr #2

declare i32 @git_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @git_inflate_end(ptr noundef) local_unnamed_addr #2

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !83}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = distinct !{!3, !83}
!4 = distinct !{null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTS10repository", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!"p1 _ZTS15object_database", !17, i64 0}
!22 = !{!"p1 _ZTS18parsed_object_pool", !17, i64 0}
!23 = !{!"p1 _ZTS9ref_store", !17, i64 0}
!24 = !{!"_Bool", !13, i64 0}
!25 = !{!"any p2 pointer", !17, i64 0}
!26 = !{!"p2 _ZTS13hashmap_entry", !25, i64 0}
!27 = !{!"hashmap", !26, i64 0, !17, i64 8, !17, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40}
!28 = !{!"p1 _ZTS8mem_pool", !17, i64 0}
!29 = !{!"strmap", !27, i64 0, !28, i64 48, !14, i64 56}
!30 = !{!"repo_path_cache", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!31 = !{!"p1 _ZTS18fsmonitor_settings", !17, i64 0}
!32 = !{!"long", !13, i64 0}
!33 = !{!"repo_settings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !31, i64 56, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !32, i64 96, !32, i64 104, !32, i64 112, !32, i64 120, !14, i64 128, !20, i64 136}
!34 = !{!"p1 _ZTS10config_set", !17, i64 0}
!35 = !{!"p1 _ZTS15submodule_cache", !17, i64 0}
!36 = !{!"p1 _ZTS11index_state", !17, i64 0}
!37 = !{!"p1 _ZTS12remote_state", !17, i64 0}
!38 = !{!"p1 _ZTS13git_hash_algo", !17, i64 0}
!39 = !{!"repo_config_values", !20, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!40 = !{!"p1 _ZTS6strmap", !17, i64 0}
!41 = !{!"p1 _ZTS16string_list_item", !17, i64 0}
!42 = !{!"string_list", !41, i64 0, !32, i64 8, !32, i64 16, !14, i64 24, !17, i64 32}
!43 = !{!"p1 _ZTS22promisor_remote_config", !17, i64 0}
!44 = !{!"repository", !20, i64 0, !20, i64 8, !21, i64 16, !22, i64 24, !23, i64 32, !24, i64 40, !29, i64 48, !29, i64 112, !30, i64 176, !20, i64 232, !20, i64 240, !20, i64 248, !24, i64 256, !24, i64 257, !20, i64 264, !33, i64 272, !34, i64 416, !35, i64 424, !36, i64 432, !37, i64 440, !38, i64 448, !38, i64 456, !39, i64 464, !14, i64 512, !20, i64 520, !14, i64 528, !14, i64 532, !40, i64 536, !14, i64 544, !29, i64 552, !42, i64 616, !20, i64 656, !43, i64 664, !14, i64 672, !14, i64 676, !14, i64 680, !14, i64 684, !14, i64 688, !24, i64 689, !24, i64 690}
!45 = !{!44, !21, i64 16}
!46 = !{!32, !32, i64 0}
!47 = !{!"p1 _ZTS12object_entry", !17, i64 0}
!48 = !{!"p1 _ZTS14packing_region", !17, i64 0}
!49 = !{!"p1 int", !17, i64 0}
!50 = !{!"p1 long", !17, i64 0}
!51 = !{!"p2 _ZTS10packed_git", !25, i64 0}
!52 = !{!"packing_data", !18, i64 0, !47, i64 8, !14, i64 16, !14, i64 20, !48, i64 24, !32, i64 32, !32, i64 40, !49, i64 48, !14, i64 56, !49, i64 64, !50, i64 72, !51, i64 80, !51, i64 88, !13, i64 96, !47, i64 136, !14, i64 144, !14, i64 148, !32, i64 152, !32, i64 160, !49, i64 168, !20, i64 176, !49, i64 184}
!53 = !{!52, !51, i64 80}
!54 = !{!52, !51, i64 88}
!55 = !{!52, !47, i64 8}
!56 = !{!"p1 _ZTS10packed_git", !17, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTS11pack_window", !17, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"object_id", !13, i64 0, !14, i64 32}
!61 = !{!"pack_idx_entry", !60, i64 0, !14, i64 36, !32, i64 40}
!62 = !{!"object_entry", !61, i64 0, !17, i64 48, !32, i64 56, !14, i64 64, !14, i64 68, !14, i64 71, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 86, !13, i64 87, !14, i64 88, !14, i64 89, !14, i64 91, !14, i64 91, !14, i64 92, !14, i64 92, !14, i64 92, !14, i64 92, !14, i64 93, !14, i64 93, !14, i64 93, !14, i64 94}
!63 = !{!62, !32, i64 56}
end_hunk_0
