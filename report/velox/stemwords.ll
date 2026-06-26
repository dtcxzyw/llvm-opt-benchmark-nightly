inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@main:bb.a

sub_1100:                                         ; preds = %sub_195, %.tail93
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %.not155 = icmp eq i8 %i.bi, 104
  br i1 %.not155, label %.tail98, label %.tail98.thread

.tail98:                                          ; preds = %sub_1100
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %.tail98.thread

bb.p:                                             ; preds = %.tail98
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %i.a) ; 0 uses
  tail call void @exit(i32 noundef 0) #13
  unreachable

.tail98.thread:                                   ; preds = %sub_1100, %.tail98
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.bp = load ptr, ptr @progname, align 8, !tbaa !7
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %i.bp) ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.q:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.bt = load ptr, ptr @progname, align 8, !tbaa !7
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %i.bt) ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.r:                                             ; preds = %bb.d, %bb.j, %bb.n, %bb.o, %bb.m, %bb.g
  %.164 = phi ptr [ %i.s, %bb.d ], [ %.063137, %bb.g ], [ %.063137, %bb.j ], [ %.063137, %bb.m ], [ %.063137, %bb.n ], [ %.063137, %bb.o ] ; 3 uses
  %.162 = phi ptr [ %.061138, %bb.d ], [ %.061138, %bb.g ], [ %i.ao, %bb.j ], [ %.061138, %bb.m ], [ %.061138, %bb.n ], [ %.061138, %bb.o ] ; 3 uses
  %.160 = phi ptr [ %.059139, %bb.d ], [ %.059139, %bb.g ], [ %.059139, %bb.j ], [ %i.az, %bb.m ], [ %.059139, %bb.n ], [ %.059139, %bb.o ] ; 3 uses
  %.158 = phi i32 [ %i.p, %bb.d ], [ %i.aa, %bb.g ], [ %i.al, %bb.j ], [ %i.aw, %bb.m ], [ %i.c, %bb.n ], [ %i.c, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %.0141, %bb.d ], [ %i.ad, %bb.g ], [ %.0141, %bb.j ], [ %.0141, %bb.m ], [ %.0141, %bb.n ], [ %.0141, %bb.o ] ; 4 uses
  %i.bv = icmp slt i32 %.158, %0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.r
  %i.bw = icmp eq ptr %.1, null
  br i1 %i.bw, label %._crit_edge.thread, label %bb.s

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.059.lcssa185 = phi ptr [ %.160, %._crit_edge ], [ null, %bb.a ]
  %.061.lcssa183 = phi ptr [ %.162, %._crit_edge ], [ @.str, %bb.a ]
  %.063.lcssa181 = phi ptr [ %.164, %._crit_edge ], [ null, %bb.a ]
  %i.bx = load ptr, ptr @stdin, align 8, !tbaa !11
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.by = tail call noalias ptr @fopen(ptr noundef nonnull %.1, ptr noundef nonnull @.str.11)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.thread
  %i.bz = phi i1 [ true, %._crit_edge.thread ], [ false, %bb.s ]
  %.0.lcssa186 = phi ptr [ null, %._crit_edge.thread ], [ %.1, %bb.s ]
  %.059.lcssa184 = phi ptr [ %.059.lcssa185, %._crit_edge.thread ], [ %.160, %bb.s ] ; 3 uses
  %.061.lcssa182 = phi ptr [ %.061.lcssa183, %._crit_edge.thread ], [ %.162, %bb.s ] ; 3 uses
  %.063.lcssa180 = phi ptr [ %.063.lcssa181, %._crit_edge.thread ], [ %.164, %bb.s ] ; 3 uses
  %i.ca = phi ptr [ %i.bx, %._crit_edge.thread ], [ %i.by, %bb.s ] ; 5 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.12, ptr noundef %.0.lcssa186) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ce = icmp eq ptr %.063.lcssa180, null        ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !11
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cg = tail call noalias ptr @fopen(ptr noundef nonnull %.063.lcssa180, ptr noundef nonnull @.str.13)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ch = phi ptr [ %i.cf, %bb.w ], [ %i.cg, %bb.x ] ; 39 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.14, ptr noundef %.063.lcssa180) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cl = tail call ptr @sb_stemmer_new(ptr noundef %.061.lcssa182, ptr noundef %.059.lcssa184) #14 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cn = icmp eq ptr %.059.lcssa184, null
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !11 ; 2 uses
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.15, ptr noundef %.061.lcssa182) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.16, ptr noundef %.061.lcssa182, ptr noundef nonnull %.059.lcssa184) #10 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.cr = tail call noalias dereferenceable_or_null(10) ptr @malloc(i64 noundef 10) #15 ; 2 uses
  %i.cs = tail call i32 @getc(ptr noundef nonnull %i.ca) ; 2 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %.sink.split.i, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ae, %tolower.exit.i
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i, %tolower.exit.i ], [ 0, %bb.ae ]
  %.075.i.ph = phi i32 [ %spec.select.i, %tolower.exit.i ], [ 0, %bb.ae ]
  %.070.i.ph = phi i32 [ %i.dj, %tolower.exit.i ], [ %i.cs, %bb.ae ]
  %.165.i.ph = phi ptr [ %.367.i, %tolower.exit.i ], [ %i.cr, %bb.ae ] ; 8 uses
  %.163.i.ph = phi i32 [ %.3.i, %tolower.exit.i ], [ 10, %bb.ae ] ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %.critedge.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.i ], [ %indvars.iv.i.ph, %.preheader.i.outer ] ; 6 uses
  %.075.i = phi i32 [ 0, %.critedge.i ], [ %.075.i.ph, %.preheader.i.outer ] ; 3 uses
  %.070.i = phi i32 [ %i.eb, %.critedge.i ], [ %.070.i.ph, %.preheader.i.outer ] ; 5 uses
  switch i32 %.070.i, label %bb.af [
    i32 -1, label %bb.ai
    i32 10, label %bb.ai
  ]

bb.af:                                            ; preds = %.preheader.i
  %i.cu = zext i32 %.163.i.ph to i64
  %i.cv = icmp eq i64 %indvars.iv.i, %i.cu
  br i1 %i.cv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cw = add nsw i32 %.163.i.ph, 10              ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = tail call ptr @realloc(ptr noundef %.165.i.ph, i64 noundef %i.cx) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.367.i = phi ptr [ %i.cy, %bb.ag ], [ %.165.i.ph, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %i.cw, %bb.ag ], [ %.163.i.ph, %bb.af ]
  %i.cz = add i32 %.070.i, -192
  %or.cond.i = icmp ult i32 %i.cz, -64
  %i.da = zext i1 %or.cond.i to i32
  %spec.select.i = add nuw nsw i32 %.075.i, %i.da
  %i.db = add i32 %.070.i, 128
  %or.cond.i.i = icmp ult i32 %i.db, 384
  br i1 %or.cond.i.i, label %tolower.exit.sink.split.i, label %tolower.exit.i

tolower.exit.sink.split.i:                        ; preds = %bb.ah
  %i.dc = tail call ptr @__ctype_tolower_loc() #17
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !15
  %i.de = sext i32 %.070.i to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  br label %tolower.exit.i

tolower.exit.i:                                   ; preds = %tolower.exit.sink.split.i, %bb.ah
  %.071.i = phi i32 [ %i.dg, %tolower.exit.sink.split.i ], [ %.070.i, %bb.ah ]
  %i.dh = trunc i32 %.071.i to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.367.i, i64 %indvars.iv.i
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dj = tail call i32 @getc(ptr noundef nonnull %i.ca)
  br label %.preheader.i.outer, !llvm.loop !17

bb.ai:                                            ; preds = %.preheader.i, %.preheader.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dl = tail call ptr @sb_stemmer_stem(ptr noundef nonnull %i.cl, ptr noundef %.165.i.ph, i32 noundef %i.dk) #14 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.do = tail call i64 @fwrite(ptr nonnull @.str.18, i64 13, i64 1, ptr %i.dn) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #11
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dp = load i32, ptr @pretty, align 4, !tbaa !3
  switch i32 %i.dp, label %.critedge.i [
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %2 = and i64 %indvars.iv.i, 4294967295
  %i.dq = tail call i64 @fwrite(ptr noundef %.165.i.ph, i64 noundef %2, i64 noundef 1, ptr noundef nonnull %i.ch) ; 0 uses
  %i.dr = tail call i64 @fwrite(ptr nonnull @.str.19, i64 4, i64 1, ptr nonnull %i.ch) ; 0 uses
  br label %.critedge.i

bb.am:                                            ; preds = %bb.ak
  %3 = and i64 %indvars.iv.i, 4294967295
  %i.ds = tail call i64 @fwrite(ptr noundef %.165.i.ph, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %i.ch) ; 0 uses
  %i.dt = tail call i32 @sb_stemmer_length(ptr noundef nonnull %i.cl) #14
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.an, label %.critedge.i

bb.an:                                            ; preds = %bb.am
  %i.dv = icmp samesign ult i32 %.075.i, 30
  br i1 %i.dv, label %.lr.ph.preheader.i, label %.critedge.loopexit100.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.dw = sub nuw nsw i32 30, %.075.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.097.i = phi i32 [ %i.dx, %.lr.ph.i ], [ %i.dw, %.lr.ph.preheader.i ] ; 2 uses
  %fputc83.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %i.dx = add nsw i32 %.097.i, -1
  %i.dy = icmp samesign ugt i32 %.097.i, 1
  br i1 %i.dy, label %.lr.ph.i, label %.critedge.i, !llvm.loop !18

.critedge.loopexit100.i:                          ; preds = %bb.an
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %i.ch) ; 0 uses
  %fputc82.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.1.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.2.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.3.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.4.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.5.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.6.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.7.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.8.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.9.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.10.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.11.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.12.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.13.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.14.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.15.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.16.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.17.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.18.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.19.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.20.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.21.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.22.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.23.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.24.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.25.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.26.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.27.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.28.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  %fputc82.29.i = tail call i32 @fputc(i32 32, ptr nonnull %i.ch) ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedge.loopexit100.i, %bb.am, %bb.al, %bb.ak
  %i.dz = tail call i32 @fputs(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.ch) ; 0 uses
  %i.ea = tail call i32 @putc(i32 noundef 10, ptr noundef nonnull %i.ch) ; 0 uses
  %i.eb = tail call i32 @getc(ptr noundef nonnull %i.ca) ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %.sink.split.i, label %.preheader.i

bb.ao:                                            ; preds = %bb.ag
  %.not84.i = icmp eq ptr %.165.i.ph, null
  br i1 %.not84.i, label %stem_file.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.critedge.i, %bb.ao, %bb.ae
  %.064.lcssa.sink.i = phi ptr [ %.165.i.ph, %bb.ao ], [ %i.cr, %bb.ae ], [ %.165.i.ph, %.critedge.i ]
  tail call void @free(ptr noundef %.064.lcssa.sink.i) #14
  br label %stem_file.exit

stem_file.exit:                                   ; preds = %bb.ao, %.sink.split.i
  tail call void @sb_stemmer_delete(ptr noundef nonnull %i.cl) #14
  br i1 %i.bz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %stem_file.exit
  %i.ed = tail call i32 @fclose(ptr noundef nonnull %i.ca) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %stem_file.exit
  br i1 %i.ce, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = tail call i32 @fclose(ptr noundef nonnull %i.ch) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @sb_stemmer_new(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @sb_stemmer_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

declare ptr @sb_stemmer_stem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @sb_stemmer_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !9, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
end_hunk_0
