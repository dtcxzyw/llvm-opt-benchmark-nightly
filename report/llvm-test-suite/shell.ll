Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shell?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@process_input:bb.a
  %i.gi = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.164) #22 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %.not117 = icmp eq ptr %i.gj, null
  br i1 %.not117, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gj) ; 0 uses
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !13
  call void @sqlite3_free(ptr noundef %i.gl) #22
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.gm = load ptr, ptr %0, align 8, !tbaa !26
  %i.gn = call ptr @sqlite3_errmsg(ptr noundef %i.gm) #22
  %i.go = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef nonnull %i.b, ptr noundef %i.gn) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gp = add nsw i32 %.086.ph174.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bs

bb.bs:                                            ; preds = %endTimer.exit, %bb.br
  %.288 = phi i32 [ %i.gp, %bb.br ], [ %.086.ph174.ph, %endTimer.exit ]
  call void @free(ptr noundef nonnull %.295.ph) #22
  br label %_contains_semicolon.exit.thread

_contains_semicolon.exit.thread:                  ; preds = %bb.az, %bb.bh, %.preheader, %bb.bg, %bb.bs, %_contains_semicolon.exit
  %.2152 = phi i32 [ %.2.ph, %bb.bs ], [ %.2.ph, %_contains_semicolon.exit ], [ %.084.ph, %.preheader ], [ %.2.ph, %bb.bg ], [ %.2.ph, %bb.bh ], [ %.084.ph, %bb.az ]
  %.396 = phi ptr [ null, %bb.bs ], [ %.295.ph, %_contains_semicolon.exit ], [ null, %.preheader ], [ %.295.ph, %bb.bg ], [ %.295.ph, %bb.bh ], [ null, %bb.az ]
  %.392 = phi i32 [ 0, %bb.bs ], [ %.291.ph, %_contains_semicolon.exit ], [ %.089.ph173, %.preheader ], [ %.291.ph, %bb.bg ], [ %.291.ph, %bb.bh ], [ %.089.ph173, %bb.az ]
  %.3 = phi i32 [ %.288, %bb.bs ], [ %.086.ph174.ph, %_contains_semicolon.exit ], [ %.086.ph174.ph, %.preheader ], [ %.086.ph174.ph, %bb.bg ], [ %.086.ph174.ph, %bb.bh ], [ %.086.ph174.ph, %bb.az ]
  br label %.outer, !llvm.loop !95

.loopexit177:                                     ; preds = %bb.ax, %bb.j, %one_input_line.exit, %bb.c
  %.198 = phi ptr [ null, %one_input_line.exit ], [ %.097, %bb.c ], [ %.07.i, %bb.j ], [ %.07.i, %bb.ax ]
  br i1 %.not10.i, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %.loopexit177
  %i.gq = load i8, ptr %.093.ph, align 1, !tbaa !19 ; 2 uses
  %.not37.i127 = icmp eq i8 %i.gq, 0
  br i1 %.not37.i127, label %_all_whitespace.exit140, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.bt
  %i.gr = tail call ptr @__ctype_b_loc() #29
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !30
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i131, %.lr.ph.i128
  %i.gt = phi i8 [ %i.gq, %.lr.ph.i128 ], [ %i.ho, %.loopexit.i131 ] ; 2 uses
  %.038.i129 = phi ptr [ %.093.ph, %.lr.ph.i128 ], [ %i.hn, %.loopexit.i131 ] ; 5 uses
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !32
  %i.gx = and i16 %i.gw, 8192
  %.not27.i130 = icmp eq i16 %i.gx, 0
  br i1 %.not27.i130, label %bb.bv, label %.loopexit.i131

bb.bv:                                            ; preds = %bb.bu
  switch i8 %i.gt, label %.loopexit [
    i8 47, label %bb.bw
    i8 45, label %bb.ca
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.gy = getelementptr inbounds nuw i8, ptr %.038.i129, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !19
  %i.ha = icmp eq i8 %i.gz, 42
  br i1 %i.ha, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.hb = getelementptr inbounds nuw i8, ptr %.038.i129, i64 2
  br label %bb.by

bb.by:                                            ; preds = %.critedge2.i138, %bb.bx
  %.1.i136 = phi ptr [ %i.hb, %bb.bx ], [ %i.hf, %.critedge2.i138 ] ; 4 uses
  %i.hc = load i8, ptr %.1.i136, align 1, !tbaa !19
  switch i8 %i.hc, label %.critedge2.i138 [
    i8 0, label %.loopexit
    i8 42, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !19
  %.not32.i137 = icmp eq i8 %i.he, 47
  br i1 %.not32.i137, label %.loopexit.i131.loopexit, label %.critedge2.i138

.critedge2.i138:                                  ; preds = %bb.bz, %bb.by
  %i.hf = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  br label %bb.by, !llvm.loop !92

bb.ca:                                            ; preds = %bb.bv
  %i.hg = getelementptr inbounds nuw i8, ptr %.038.i129, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !19
  %i.hi = icmp eq i8 %i.hh, 45
  br i1 %i.hi, label %bb.cb, label %.loopexit

bb.cb:                                            ; preds = %bb.ca
  %i.hj = getelementptr inbounds nuw i8, ptr %.038.i129, i64 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.2.i135 = phi ptr [ %i.hj, %bb.cb ], [ %i.hl, %bb.cd ] ; 3 uses
  %i.hk = load i8, ptr %.2.i135, align 1, !tbaa !19
  switch i8 %i.hk, label %bb.cd [
    i8 0, label %_all_whitespace.exit140
    i8 10, label %.loopexit.i131
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.hl = getelementptr inbounds nuw i8, ptr %.2.i135, i64 1
  br label %bb.cc, !llvm.loop !93

.loopexit.i131.loopexit:                          ; preds = %bb.bz
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  br label %.loopexit.i131

.loopexit.i131:                                   ; preds = %bb.cc, %.loopexit.i131.loopexit, %bb.bu
  %.3.i132 = phi ptr [ %.038.i129, %bb.bu ], [ %i.hm, %.loopexit.i131.loopexit ], [ %.2.i135, %bb.cc ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.3.i132, i64 1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !19  ; 2 uses
  %.not.i133 = icmp eq i8 %i.ho, 0
  br i1 %.not.i133, label %_all_whitespace.exit140, label %bb.bu, !llvm.loop !94

.loopexit:                                        ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.by
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166, ptr noundef nonnull %.093.ph) ; 0 uses
  br label %_all_whitespace.exit140

_all_whitespace.exit140:                          ; preds = %.loopexit.i131, %bb.cc, %bb.bt, %.loopexit
  call void @free(ptr noundef %.093.ph) #22
  br label %bb.ce

bb.ce:                                            ; preds = %_all_whitespace.exit140, %.loopexit177
  call void @free(ptr noundef %.198) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.086.ph174.ph
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @set_table_name(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__ctype_b_loc() #29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !19      ; 4 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !32
  %i.j = and i16 %i.i, 1024
  %.not50 = icmp eq i16 %i.j, 0
  %i.k = icmp ne i8 %i.f, 95
  %narrow = and i1 %i.k, %.not50
  %i.l = zext i1 %narrow to i32                   ; 2 uses
  %.not5158 = icmp eq i8 %i.f, 0
  br i1 %.not5158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ]
  %i.m = phi i8 [ %i.u, %.lr.ph ], [ %i.f, %bb.d ] ; 3 uses
  %.061 = phi i32 [ %.1, %.lr.ph ], [ %i.l, %bb.d ]
  %.04060 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.d ]
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !32
  %i.q = and i16 %i.p, 8
  %.not54 = icmp eq i16 %i.q, 0                   ; 2 uses
  %.not55 = icmp ne i8 %i.m, 95
  %or.cond.not = and i1 %.not55, %.not54
  %i.r = icmp eq i8 %i.m, 39
  %narrow57 = and i1 %i.r, %.not54
  %spec.select = zext i1 %narrow57 to i32
  %.1 = select i1 %or.cond.not, i32 1, i32 %.061  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.141 = add i32 %.04060, 1
  %i.s = add i32 %.141, %spec.select              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19    ; 2 uses
  %.not51 = icmp eq i8 %i.u, 0
  br i1 %.not51, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %2 = add i32 %i.s, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.040.lcssa = phi i32 [ 1, %bb.d ], [ %2, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.l, %bb.d ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.not52 = icmp eq i32 %.0.lcssa, 0              ; 2 uses
  %3 = shl nuw nsw i32 %.0.lcssa, 1
  %i.v = add i32 %.040.lcssa, %3
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #24 ; 7 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !27
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.168, i64 15, i64 1, ptr %i.z) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 39, ptr %i.x, align 1, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]        ; 2 uses
  %i.aa = load i8, ptr %1, align 1, !tbaa !19     ; 2 uses
  %.not5363 = icmp eq i8 %i.aa, 0
  br i1 %.not5363, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.h, %bb.j
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.j ], [ 0, %bb.h ]
  %i.ab = phi i8 [ %i.ak, %bb.j ], [ %i.aa, %bb.h ] ; 2 uses
  %.465 = phi i32 [ %.5, %bb.j ], [ %.3, %bb.h ]  ; 3 uses
  %i.ac = add nsw i32 %.465, 1                    ; 2 uses
  %i.ad = sext i32 %.465 to i64
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !19
  %i.af = icmp eq i8 %i.ab, 39
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph67
  %i.ag = add nsw i32 %.465, 2
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 %i.ah
  store i8 39, ptr %i.ai, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph67, %bb.i
  %.5 = phi i32 [ %i.ag, %bb.i ], [ %i.ac, %.lr.ph67 ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next71
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19  ; 2 uses
  %.not53 = icmp eq i8 %i.ak, 0
  br i1 %.not53, label %._crit_edge68, label %.lr.ph67, !llvm.loop !102

._crit_edge68:                                    ; preds = %bb.j, %bb.h
  %.4.lcssa = phi i32 [ %.3, %bb.h ], [ %.5, %bb.j ] ; 3 uses
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge68
  %i.al = add nsw i32 %.4.lcssa, 1
  %i.am = sext i32 %.4.lcssa to i64
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 %i.am
  store i8 39, ptr %i.an, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge68
  %.6 = phi i32 [ %i.al, %bb.k ], [ %.4.lcssa, %._crit_edge68 ]
  %i.ao = sext i32 %.6 to i64
  %i.ap = getelementptr inbounds i8, ptr %i.x, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l
  ret void
}

declare i32 @sqlite3_close(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @sqlite3_interrupt(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @shellstaticFunc(ptr noundef %0, i32 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr @zShellStatic, align 8, !tbaa !13
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.a, i32 noundef -1, ptr noundef null) #22
  ret void
}

declare i32 @sqlite3_errcode(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @booleanValue(ptr nofree noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strtol(ptr noundef nonnull captures(none) %0, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.b = trunc i64 %i.a to i32
  %i.c = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not14 = icmp eq i8 %i.c, 0
  br i1 %.not14, label %.tail.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call ptr @__ctype_tolower_loc() #29
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = phi i8 [ %i.c, %.lr.ph ], [ %i.m, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.h = sext i8 %i.e to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.f, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %sub_0, label %bb.b, !llvm.loop !1

sub_0:                                            ; preds = %bb.b
  %.pre = load i8, ptr %0, align 1
  %i.n = icmp eq i8 %.pre, 111
  br i1 %i.n, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.not17 = icmp eq i8 %i.p, 110
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %bb.a, %sub_1, %sub_0, %.tail
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.119) #23
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, i32 1, i32 %i.b
  br label %bb.c

bb.c:                                             ; preds = %.tail.thread, %.tail
  %.0 = phi i32 [ %spec.select, %.tail.thread ], [ 1, %.tail ]
  ret i32 %.0
}

declare void @sqlite3_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @run_schema_dump_query(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = tail call i32 @sqlite3_exec(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull @dump_callback, ptr noundef nonnull %0, ptr noundef null) #22
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.e = shl i64 %i.d, 32
  %sext = add i64 %i.e, 429496729600
  %i.f = ashr exact i64 %sext, 32
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #24 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 8, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.120, ptr noundef nonnull %1) #22 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !26
  %i.j = tail call i32 @sqlite3_exec(ptr noundef %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull @dump_callback, ptr noundef nonnull %0, ptr noundef null) #22 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.g) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @run_table_dump_query(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
end_hunk_0
