Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_cli?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@ARKodeSetOptions:bb.a
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %2, align 1
  %.not19 = icmp eq i8 %char0, 0
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 45, ptr noundef nonnull @__func__.ARKodeSetOptions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %arkSetFromCommandLine.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %3, 0
  %i.e = icmp ne ptr %4, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.e, label %arkSetFromCommandLine.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 69, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #7
  br label %arkSetFromCommandLine.exit.thread

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.g = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #9 ; 2 uses
  %.not132.i = icmp eq i64 %i.h, 0
  %i.i = add i64 %i.h, 1
  %spec.select.i = select i1 %.not132.i, i64 7, i64 %i.i ; 3 uses
  %i.j = add i64 %spec.select.i, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 3 uses
  %char0.i = load i8, ptr %1, align 1
  %.not133.i = icmp eq i8 %char0.i, 0
  br i1 %.not133.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull readonly dereferenceable(1) %1) #7 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.thread.i
  %i.m = phi ptr [ %i.g, %.thread.i ], [ %i.k, %bb.h ] ; 2 uses
  %.0114155.i = phi i64 [ 7, %.thread.i ], [ %spec.select.i, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 1 dereferenceable(7) @.str.50, i64 7, i1 false) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = phi ptr [ %i.m, %bb.j ], [ %i.k, %bb.i ] ; 7 uses
  %.0114154.i = phi i64 [ %.0114155.i, %bb.j ], [ %spec.select.i, %bb.i ] ; 7 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr.i = getelementptr inbounds i8, ptr %i.n, i64 %strlen.i
  store i16 46, ptr %endptr.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %.not150211.i = icmp samesign ugt i32 %3, 1
  br i1 %.not150211.i, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %arkSetFromCommandLine.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %.outer.i

.outer.i:                                         ; preds = %.thread270.i, %.lr.ph.i
  %i.p = phi i1 [ false, %.thread270.i ], [ true, %.lr.ph.i ]
  %storemerge212.ph.i = phi i32 [ %i.cu, %.thread270.i ], [ 1, %.lr.ph.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.ar, %.outer.i
  %storemerge212.i = phi i32 [ %i.ct, %bb.ar ], [ %storemerge212.ph.i, %.outer.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.q = sext i32 %storemerge212.i to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %4, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #9
  %i.u = call i32 @strncmp(ptr noundef %i.s, ptr noundef nonnull %i.n, i64 noundef %i.t) #9
  %.not134.i = icmp eq i32 %i.u, 0
  br i1 %.not134.i, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.v = call i32 @sunCheckAndSetIntArgs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull @arkSetFromCommandLine.int_pairs, i32 noundef 17, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 3 uses
  %.not135.i = icmp eq i32 %i.v, 0
  br i1 %.not135.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr %i.b, align 4, !tbaa !9
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [16 x i8], ptr @arkSetFromCommandLine.int_pairs, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !14
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef 164, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef %i.z) #7
  br label %.thread170.i

bb.o:                                             ; preds = %bb.m
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !9
  %.not136.i = icmp eq i32 %i.aa, 0
  br i1 %.not136.i, label %bb.p, label %bb.ar

bb.p:                                             ; preds = %bb.o
  %i.ab = call i32 @sunCheckAndSetLongArgs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull @arkSetFromCommandLine.long_pairs, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 3 uses
  %.not137.i = icmp eq i32 %i.ab, 0
  br i1 %.not137.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr @arkSetFromCommandLine.long_pairs, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !16
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 176, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef %i.af) #7
  br label %.thread170.i

bb.r:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !9
  %.not138.i = icmp eq i32 %i.ag, 0
  br i1 %.not138.i, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %i.ah = call i32 @sunCheckAndSetRealArgs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull @arkSetFromCommandLine.real_pairs, i32 noundef 22, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 3 uses
  %.not139.i = icmp eq i32 %i.ah, 0
  br i1 %.not139.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [16 x i8], ptr @arkSetFromCommandLine.real_pairs, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !18
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 188, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef %i.al) #7
  br label %.thread170.i

bb.u:                                             ; preds = %bb.s
  %i.am = load i32, ptr %i.c, align 4, !tbaa !9
  %.not140.i = icmp eq i32 %i.am, 0
  br i1 %.not140.i, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.an = call i32 @sunCheckAndSetTwoRealArgs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull @arkSetFromCommandLine.tworeal_pairs, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 3 uses
  %.not141.i = icmp eq i32 %i.an, 0
  br i1 %.not141.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr @arkSetFromCommandLine.tworeal_pairs, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !20
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef 201, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef %i.ar) #7
  br label %.thread170.i

bb.x:                                             ; preds = %bb.v
  %i.as = load i32, ptr %i.c, align 4, !tbaa !9
  %.not142.i = icmp eq i32 %i.as, 0
  br i1 %.not142.i, label %bb.y, label %bb.ar

bb.y:                                             ; preds = %bb.x
  %i.at = call i32 @sunCheckAndSetActionArgs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull @arkSetFromCommandLine.action_pairs, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 3 uses
  %.not143.i = icmp eq i32 %i.at, 0
  br i1 %.not143.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = load i32, ptr %i.b, align 4, !tbaa !9
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr @arkSetFromCommandLine.action_pairs, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !22
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef 214, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef %i.ax) #7
  br label %.thread170.i

bb.aa:                                            ; preds = %bb.y
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !9
  %.not144.i = icmp eq i32 %i.ay, 0
  br i1 %.not144.i, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i32, ptr %i.a, align 4, !tbaa !9   ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0114154.i ; 3 uses
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(17) @.str.53) #9
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.bg = add nsw i32 %i.az, 1                    ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !9
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 3 uses
  %i.bk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(19) @.str.54) #9
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(20) @.str.55) #9
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(16) @.str.56) #9
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.af, label %.thread156.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink.i = phi i32 [ 0, %bb.ac ], [ 1, %bb.ad ], [ -1, %bb.ae ]
  %i.bq = call i32 @ARKodeSetInterpolantType(ptr noundef nonnull %0, i32 noundef %.sink.i) #7 ; 2 uses
  %.not149.i = icmp eq i32 %i.bq, 0
  br i1 %.not149.i, label %bb.ar, label %..thread156_crit_edge.i

..thread156_crit_edge.i:                          ; preds = %bb.af
  %.pre251.i = load i32, ptr %i.a, align 4, !tbaa !9
  %.phi.trans.insert252.i = sext i32 %.pre251.i to i64
  br label %.thread156.i

.thread156.i:                                     ; preds = %bb.ae, %..thread156_crit_edge.i
  %.pre-phi.i.a = phi i64 [ %.phi.trans.insert252.i, %..thread156_crit_edge.i ], [ %i.bh, %bb.ae ]
  %.0159.i = phi i32 [ %i.bq, %..thread156_crit_edge.i ], [ -22, %bb.ae ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %4, i64 %.pre-phi.i.a ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  %5 = load ptr, ptr %i.bs, align 8, !tbaa !12
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !12
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %.0159.i, i32 noundef 241, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, ptr noundef %5, ptr noundef %i.bt) #7
  br label %.thread170.i

bb.ag:                                            ; preds = %bb.ab
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(23) @.str.58) #9
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bw = add nsw i32 %i.az, 1                    ; 2 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !9
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12 ; 4 uses
  %i.ca = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(20) @.str.59) #9
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(19) @.str.60) #9
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(19) @.str.61) #9
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(19) @.str.62) #9
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.al, label %.thread160.i

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sink340.i = phi i32 [ 0, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ak ]
  %i.ci = call i32 @ARKodeSetAccumulatedErrorType(ptr noundef nonnull %0, i32 noundef %.sink340.i) #7 ; 2 uses
  %.not148.i = icmp eq i32 %i.ci, 0
  br i1 %.not148.i, label %bb.ar, label %..thread160_crit_edge.i

..thread160_crit_edge.i:                          ; preds = %bb.al
  %.pre247.i = load i32, ptr %i.a, align 4, !tbaa !9
  %.phi.trans.insert248.i = sext i32 %.pre247.i to i64
  br label %.thread160.i

.thread160.i:                                     ; preds = %bb.ak, %..thread160_crit_edge.i
  %.pre-phi255.i = phi i64 [ %.phi.trans.insert248.i, %..thread160_crit_edge.i ], [ %i.bx, %bb.ak ]
  %.1163.i = phi i32 [ %i.ci, %..thread160_crit_edge.i ], [ -22, %bb.ak ] ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %4, i64 %.pre-phi255.i ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %6 = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !12
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %.1163.i, i32 noundef 272, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, ptr noundef %6, ptr noundef %i.cl) #7
  br label %.thread170.i

bb.am:                                            ; preds = %bb.ag
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(17) @.str.63) #9
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread270.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !33  ; 2 uses
  %.not145.i = icmp eq ptr %i.co, null
  br i1 %.not145.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cp = call i32 %i.co(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef %.0114154.i, ptr noundef nonnull %i.c) #7, !inline_history !8 ; 2 uses
  %.not146.i = icmp eq i32 %i.cp, 0
  br i1 %.not146.i, label %bb.ap, label %.thread170.i

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !9
  %.not147.i = icmp eq i32 %i.cq, 0
  br i1 %.not147.i, label %._crit_edge244.i, label %bb.ar

._crit_edge244.i:                                 ; preds = %bb.ap
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !9
  %.phi.trans.insert.i = sext i32 %.pre.i to i64
  %.phi.trans.insert245.i = getelementptr inbounds [8 x i8], ptr %4, i64 %.phi.trans.insert.i
  %.pre246.i = load ptr, ptr %.phi.trans.insert245.i, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge244.i, %bb.an
  %i.cr = phi ptr [ %.pre246.i, %._crit_edge244.i ], [ %i.bc, %bb.an ]
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 302, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.64, ptr noundef %i.cr) #7
  br label %bb.ar

.thread170.i:                                     ; preds = %bb.ao, %.thread160.i, %.thread156.i, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n
  %.1118.i = phi i32 [ %i.an, %bb.w ], [ %i.v, %bb.n ], [ %i.at, %bb.z ], [ %i.ab, %bb.q ], [ %.1163.i, %.thread160.i ], [ %i.ah, %bb.t ], [ %.0159.i, %.thread156.i ], [ %i.cp, %bb.ao ]
  call void @free(ptr noundef nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %arkSetFromCommandLine.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.al, %bb.af, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ct = add nsw i32 %i.cs, 1                    ; 3 uses
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !9
  %.not150.i = icmp slt i32 %i.ct, %3
  br i1 %.not150.i, label %bb.l, label %._crit_edge.i

.thread270.i:                                     ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.cu = add nsw i32 %i.az, 1                    ; 3 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !9
  %.not150272.i = icmp slt i32 %i.cu, %3
  br i1 %.not150272.i, label %.outer.i, label %._crit_edge.thread274.i

._crit_edge.thread274.i:                          ; preds = %.thread270.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.as

._crit_edge.i:                                    ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %i.p, label %arkSetFromCommandLine.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i, %._crit_edge.thread274.i
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !35
  %i.cw = call i32 @ARKodeWriteParameters(ptr noundef nonnull %0, ptr noundef %i.cv) #7 ; 3 uses
  %.not152.i = icmp eq i32 %i.cw, 0
  br i1 %.not152.i, label %arkSetFromCommandLine.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.cw, i32 noundef 315, ptr noundef nonnull @__func__.arkSetFromCommandLine, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65) #7
  call void @free(ptr noundef nonnull %i.n) #7
  br label %arkSetFromCommandLine.exit.thread

arkSetFromCommandLine.exit:                       ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.as
  call void @free(ptr noundef nonnull %i.n) #7
  br label %arkSetFromCommandLine.exit.thread

arkSetFromCommandLine.exit.thread:                ; preds = %.thread170.i, %bb.at, %bb.f, %bb.d, %arkSetFromCommandLine.exit, %bb.c
  %.1 = phi i32 [ -22, %bb.c ], [ 0, %bb.d ], [ 0, %arkSetFromCommandLine.exit ], [ %.1118.i, %.thread170.i ], [ %i.cw, %bb.at ], [ -21, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @arkProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ARKodeSetOrder(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetInterpolantDegree(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetLinear(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetAutonomous(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetDeduceImplicitRhs(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetLSetupFrequency(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetPredictorMethod(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxNonlinIters(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxHnilWarns(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetInterpolateStopTime(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxNumConstrFails(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetAdaptivityAdjustment(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetSmallNumEFails(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxErrTestFails(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxConvFails(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetLinearSolutionScaling(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetUseCompensatedSums(ptr noundef, i32 noundef) #3

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) #3

declare i32 @ARKodeSetJacEvalFrequency(ptr noundef, i64 noundef) #3

declare i32 @ARKodeSetNonlinCRDown(ptr noundef, double noundef) #3

declare i32 @ARKodeSetNonlinRDiv(ptr noundef, double noundef) #3

declare i32 @ARKodeSetDeltaGammaMax(ptr noundef, double noundef) #3

declare i32 @ARKodeSetNonlinConvCoef(ptr noundef, double noundef) #3

declare i32 @ARKodeSetInitStep(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMinStep(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMaxStep(ptr noundef, double noundef) #3

declare i32 @ARKodeSetStopTime(ptr noundef, double noundef) #3

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) #3

declare i32 @ARKodeSetStepDirection(ptr noundef, double noundef) #3

declare i32 @ARKodeSetCFLFraction(ptr noundef, double noundef) #3

declare i32 @ARKodeSetSafetyFactor(ptr noundef, double noundef) #3

declare i32 @ARKodeSetErrorBias(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMaxGrowth(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMinReduction(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMaxFirstGrowth(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMaxEFailGrowth(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMaxCFailGrowth(ptr noundef, double noundef) #3

declare i32 @ARKodeSetEpsLin(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMassEpsLin(ptr noundef, double noundef) #3

declare i32 @ARKodeSetLSNormFactor(ptr noundef, double noundef) #3

declare i32 @ARKodeSetMassLSNormFactor(ptr noundef, double noundef) #3

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) #3

declare i32 @ARKodeSetFixedStepBounds(ptr noundef, double noundef, double noundef) #3

declare i32 @ARKodeSetNonlinear(ptr noundef) #3

declare i32 @ARKodeClearStopTime(ptr noundef) #3

declare i32 @ARKodeSetNoInactiveRootWarn(ptr noundef) #3

declare i32 @ARKodeResetAccumulatedError(ptr noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1
end_hunk_0
