inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15) #18 ; 2 uses
  switch i32 %i.t, label %bb.i [
    i32 -1, label %bb.j
    i32 101, label %bb.c
    i32 104, label %bb.d
    i32 108, label %bb.e
    i32 116, label %bb.f
    i32 118, label %bb.g
    i32 119, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @option_string) ; 0 uses
  tail call void @exit(i32 noundef 0) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %puts4.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 0) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.v = load ptr, ptr @optarg, align 8, !tbaa !8
  %i.w = tail call noalias ptr @strdup(ptr noundef %i.v) #18
  store ptr %i.w, ptr @lock_file, align 8, !tbaa !8
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @optarg, align 8, !tbaa !8
  %i.y = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.x, ptr noundef null, i32 noundef 10) #18, !inline_history !11
  %sext.i = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.i, 32
  store i64 %i.z, ptr @stop_minutes, align 8, !tbaa !12
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 0) #22
  unreachable

bb.h:                                             ; preds = %bb.b
  store i1 true, ptr @main_batch, align 4
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 378, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.t) #18
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  br label %bb.b, !llvm.loop !14

bb.j:                                             ; preds = %bb.b
  %i.aa = load i32, ptr @optind, align 4, !tbaa !4
  %i.ab = icmp slt i32 %i.aa, %0
  br i1 %i.ab, label %bb.k, label %decode_switches.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 383, i32 noundef 1, ptr noundef nonnull @.str.19) #18
  br label %decode_switches.exit

decode_switches.exit:                             ; preds = %bb.j, %bb.k
  %i.ac = load ptr, ptr @lock_file, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.be, label %bb.l

bb.l:                                             ; preds = %decode_switches.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  %i.ad = tail call noalias ptr @fopen(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.23) ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 563, i32 noundef 1, ptr noundef nonnull @.str.24) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = load ptr, ptr @lock_file, align 8, !tbaa !8
  %puts.i16 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.af) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.036.i = phi ptr [ null, %bb.n ], [ %.146.i, %bb.t ] ; 4 uses
  %i.ag = call i64 @ftell(ptr noundef %i.ad)
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr @lock_file_offset, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false)
  %i.ai = call ptr @fgets(ptr noundef nonnull %i.i, i32 noundef 4095, ptr noundef %i.ad)
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %getline_llvm.exit.thread.i, label %bb.p

getline_llvm.exit.thread.i:                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #19 ; 5 uses
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.q, label %getline_llvm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.am = icmp eq ptr %.036.i, null
  %i.an = add nuw nsw i64 %i.ak, 1                ; 3 uses
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = call noalias ptr @malloc(i64 noundef %i.an) #20
  br label %getline_llvm.exit.thread42.i

bb.s:                                             ; preds = %bb.q
  %i.ap = call ptr @realloc(ptr noundef nonnull %.036.i, i64 noundef %i.an) #21
  br label %getline_llvm.exit.thread42.i

getline_llvm.exit.thread42.i:                     ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi ptr [ %i.ap, %bb.s ], [ %i.ao, %bb.r ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %storemerge.i.i, ptr noundef nonnull align 16 dereferenceable(1) %i.i, i64 %i.an, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.t

getline_llvm.exit.i:                              ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %cond.i = icmp eq i64 %i.ak, -1
  br i1 %cond.i, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %getline_llvm.exit.i, %getline_llvm.exit.thread42.i
  %.146.i = phi ptr [ %storemerge.i.i, %getline_llvm.exit.thread42.i ], [ %.036.i, %getline_llvm.exit.i ] ; 11 uses
  %i.aq = load i8, ptr %.146.i, align 1, !tbaa !16
  %.not21.i = icmp eq i8 %i.aq, 65
  br i1 %.not21.i, label %bb.u, label %bb.o, !llvm.loop !17

bb.u:                                             ; preds = %bb.t
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %.146.i) ; 0 uses
  %i.as = icmp ult i64 %i.ak, 19
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 577, i32 noundef 1, ptr noundef nonnull %.146.i) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.146.i, i64 18
  %i.au = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #18
  %.not22.i = icmp eq i32 %i.au, 2
  br i1 %.not22.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 580, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull %.146.i) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.av = load i32, ptr %i.j, align 4, !tbaa !4   ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 30
  br i1 %i.aw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 583, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %i.av) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !4   ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, 30
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 585, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %i.ax) #18
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.az = phi i32 [ %.pre.i, %bb.ab ], [ %i.ax, %bb.aa ]
  %i.ba = load i32, ptr %i.j, align 4, !tbaa !4
  %i.bb = mul i32 %i.ba, %i.az                    ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 128
  br i1 %i.bc, label %bb.ad, label %.preheader.i

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 587, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %i.bb) #18
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3600) %i.l, i8 0, i64 3600, i1 false), !tbaa !4
  store i32 30, ptr %i.n, align 4, !tbaa !4
  store i32 30, ptr %i.o, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.au, %.preheader.i
  %.012.i = phi i64 [ %indvars.iv.i.i, %bb.au ], [ 18, %.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ai ], [ %.012.i, %bb.ae ] ; 5 uses
  %.0.i.i = phi i32 [ %.1.i.i, %bb.ai ], [ 0, %bb.ae ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.146.i, i64 %indvars.iv.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  switch i8 %i.be, label %bb.ah [
    i8 0, label %next_valid_pos.exit.i
    i8 32, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %.not10.i.i = icmp eq i32 %.0.i.i, 0
  %spec.store.select.i.i = select i1 %.not10.i.i, i32 0, i32 2
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.bf = icmp eq i32 %.0.i.i, 2
  br i1 %i.bf, label %next_valid_pos.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.i.i = phi i32 [ %spec.store.select.i.i, %bb.ag ], [ 1, %bb.ah ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  br label %bb.af, !llvm.loop !18

next_valid_pos.exit.i:                            ; preds = %bb.ah, %bb.af
  %.not23.i = icmp ugt i64 %i.ak, %indvars.iv.i.i
  br i1 %.not23.i, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %next_valid_pos.exit.i
  %i.bg = getelementptr inbounds i8, ptr %.146.i, i64 %indvars.iv.i.i
  %i.bh = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.bg, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #18
  %.not24.i = icmp eq i32 %i.bh, 4
  br i1 %.not24.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.bi = load i8, ptr %i.m, align 1, !tbaa !16
  %i.bj = sext i8 %i.bi to i32
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !4
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !4
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl) ; 0 uses
  %i.bn = load i8, ptr %i.m, align 1, !tbaa !16
  switch i8 %i.bn, label %bb.at [
    i8 86, label %bb.al
    i8 72, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bo = load i32, ptr %i.o, align 4, !tbaa !4
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [120 x i8], ptr %i.l, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.n, align 4, !tbaa !4
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = getelementptr i8, ptr %i.bq, i64 120
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bs
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 1, ptr noundef nonnull %.146.i) #18
  %.pre68.i.a = load i32, ptr %i.o, align 4, !tbaa !4
  %.pre69.i = load i32, ptr %i.n, align 4, !tbaa !4
  %.pre70.i = sext i32 %.pre68.i.a to i64
  %.pre71.i = sext i32 %.pre69.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre-phi72.i = phi i64 [ %.pre71.i, %bb.an ], [ %i.bs, %bb.am ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre70.i, %bb.an ], [ %i.bp, %bb.am ]
  %i.ca = getelementptr [120 x i8], ptr %i.l, i64 %.pre-phi.i ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 120
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.pre-phi72.i
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %.pre-phi72.i
  store i32 1, ptr %i.cd, align 4, !tbaa !4
  br label %bb.au

bb.ap:                                            ; preds = %bb.ak
  %i.ce = load i32, ptr %i.n, align 4, !tbaa !4
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [120 x i8], ptr %i.l, i64 %i.cf
  %i.ch = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cm = getelementptr i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 613, i32 noundef 1, ptr noundef nonnull %.146.i) #18
  %.pre66.i = load i32, ptr %i.n, align 4, !tbaa !4
  %.pre67.i = load i32, ptr %i.o, align 4, !tbaa !4
  %.pre73.i = sext i32 %.pre66.i to i64
  %.pre75.i = sext i32 %.pre67.i to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre-phi76.i = phi i64 [ %.pre75.i, %bb.ar ], [ %i.ci, %bb.aq ]
  %.pre-phi74.i = phi i64 [ %.pre73.i, %bb.ar ], [ %i.cf, %bb.aq ]
  %i.cp = getelementptr inbounds [120 x i8], ptr %i.l, i64 %.pre-phi74.i
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %.pre-phi76.i ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  store i32 1, ptr %i.cr, align 4, !tbaa !4
  store i32 1, ptr %i.cq, align 4, !tbaa !4
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 615, i32 noundef 1, ptr noundef nonnull @.str.31) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %bb.ae

bb.av:                                            ; preds = %bb.aj, %next_valid_pos.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  %puts25.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ct = call i32 @fflush(ptr noundef %i.cs)     ; 0 uses
  br label %bb.aw

.loopexit.i:                                      ; preds = %getline_llvm.exit.i, %getline_llvm.exit.thread.i
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 624, i32 noundef 1, ptr noundef nonnull @.str.14) #18
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i, %bb.av
  %.140.i = phi ptr [ %.036.i, %.loopexit.i ], [ %.146.i, %bb.av ]
  %i.cu = load i32, ptr @lock_file_offset, align 4, !tbaa !4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = call i32 @fseek(ptr noundef %i.ad, i64 noundef %i.cv, i32 noundef 0) ; 0 uses
  %fputc.i = call i32 @fputc(i32 87, ptr %i.ad)   ; 0 uses
  %i.cx = call i32 @fflush(ptr noundef %i.ad)     ; 0 uses
  %i.cy = load i8, ptr %i.m, align 1, !tbaa !16
  switch i8 %i.cy, label %bb.az [
    i8 86, label %bb.ax
    i8 72, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  store i8 72, ptr @main_whos_turn, align 1, !tbaa !16
  br label %get_solve_command_from_lock_file.exit

bb.ay:                                            ; preds = %bb.aw
  store i8 86, ptr @main_whos_turn, align 1, !tbaa !16
  br label %get_solve_command_from_lock_file.exit

bb.az:                                            ; preds = %bb.aw
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 632, i32 noundef 1, ptr noundef nonnull @.str.31) #18
  br label %get_solve_command_from_lock_file.exit

get_solve_command_from_lock_file.exit:            ; preds = %bb.ax, %bb.ay, %bb.az
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !4
  %i.da = load i32, ptr %i.k, align 4, !tbaa !4
  call void @initialize_board(i32 noundef %i.cz, i32 noundef %i.da, ptr noundef nonnull %i.l) #18
  call void @free(ptr noundef %.140.i) #18
  %i.db = call i32 @fclose(ptr noundef %i.ad)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.dc = load i64, ptr @stop_minutes, align 8, !tbaa !12 ; 2 uses
  %.not13 = icmp eq i64 %i.dc, 0
  br i1 %.not13, label %bb.cc, label %bb.ba

bb.ba:                                            ; preds = %get_solve_command_from_lock_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = call i32 @sigfillset(ptr noundef nonnull %i.dd) #18 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.df, align 8, !tbaa !21
  store ptr @stop_alrm_handler, ptr %4, align 8, !tbaa !16
  %i.dg = call i32 @sigaction(i32 noundef 26, ptr noundef nonnull %4, ptr noundef null) #18
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 449, i32 noundef 1, ptr noundef nonnull @.str.20) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dh = mul nsw i64 %i.dc, 60                   ; 2 uses
  store i64 %i.dh, ptr %5, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.dk, align 8, !tbaa !29
  %i.dl = call i32 @setitimer(i32 noundef 1, ptr noundef nonnull %5, ptr noundef null) #18
  %.not2.i = icmp eq i32 %i.dl, 0
  br i1 %.not2.i, label %set_stop_alrm.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2, i32 noundef 457, i32 noundef 1, ptr noundef nonnull @.str.22) #18
  br label %set_stop_alrm.exit

set_stop_alrm.exit:                               ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.cc

bb.be:                                            ; preds = %decode_switches.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.dm = load ptr, ptr @stdin, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.dn = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4095, ptr noundef %i.dm)
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %getline_llvm.exit.thread.i25, label %.lr.ph
end_hunk_0
