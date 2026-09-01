Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bar?download=true
inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZL19read_lambda_compvecPKcP12lambda_vec_tPK19lambda_components_tPS3_PS0_S0_:bb.a
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.b = icmp eq ptr %2, null
  %spec.select91231 = select i1 %i.b, ptr %3, ptr %2 ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br i1 %.not83, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  br i1 %i.c, label %.split108.us, label %.split108

.thread:                                          ; preds = %bb.c
  br i1 %i.c, label %.split108.us.split.preheader, label %.split108

.split108.us:                                     ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %.fr162 = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr162, 0
  br i1 %i.h, label %.split108.us.split.us, label %.split108.us.split.preheader

.split108.us.split.preheader:                     ; preds = %.thread, %.split108.us
  br label %.split108.us.split

.split108.us.split.us:                            ; preds = %.split108.us, %.split108.us.split.us.backedge
  %.073.us.us = phi ptr [ %i.ax, %.split108.us.split.us.backedge ], [ %0, %.split108.us ] ; 8 uses
  %.069.us.us = phi i1 [ %.170.us.us243, %.split108.us.split.us.backedge ], [ false, %.split108.us ]
  %.067.us.us = phi i8 [ %.168.us.us244, %.split108.us.split.us.backedge ], [ 0, %.split108.us ] ; 4 uses
  %.064.us.us = phi i32 [ %.266.us.us245, %.split108.us.split.us.backedge ], [ 0, %.split108.us ] ; 6 uses
  %.063.us.us = phi ptr [ %.2.us.us246, %.split108.us.split.us.backedge ], [ null, %.split108.us ] ; 6 uses
  br i1 %.069.us.us, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.split108.us.split.us
  %i.i = load i8, ptr %.073.us.us, align 1, !tbaa !18 ; 4 uses
  %i.j = sext i8 %i.i to i32                      ; 2 uses
  %i.k = tail call i32 @isalnum(i32 noundef %i.j) #26
  %.not84.us.us = icmp eq i32 %i.k, 0
  br i1 %.not84.us.us, label %bb.f, label %thread-pre-split97.us.us

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i8 %i.i, 40
  br i1 %i.l, label %thread-pre-split97.us.us.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @isspace(i32 noundef %i.j) #26
  %.not85.us.us = icmp eq i32 %i.m, 0
  br i1 %.not85.us.us, label %.split110.us, label %thread-pre-split97.us.us

bb.h:                                             ; preds = %.split108.us.split.us
  %.not86.us.us = icmp eq ptr %.063.us.us, null
  %i.n = load i8, ptr %.073.us.us, align 1, !tbaa !18 ; 4 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  br i1 %.not86.us.us, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @isspace(i32 noundef %i.o) #26
  %.fr.us.us = freeze i32 %i.p
  %.not88.not.us.us = icmp eq i32 %.fr.us.us, 0
  br i1 %.not88.not.us.us, label %switch.early.test.us.us, label %bb.j

switch.early.test.us.us:                          ; preds = %bb.i
  switch i8 %i.n, label %thread-pre-split.us.us [
    i8 44, label %bb.j
    i8 41, label %bb.j
    i8 0, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test.us.us, %switch.early.test.us.us, %switch.early.test.us.us, %bb.i
  %i.q = ptrtoint ptr %.073.us.us to i64
  %i.r = ptrtoint ptr %.063.us.us to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %.not15.i.us.us = icmp slt i32 %i.t, %i.u
  %.pre17.i.us.us = load ptr, ptr %3, align 8, !tbaa !48 ; 2 uses
  br i1 %.not15.i.us.us, label %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.j, %.lr.ph.i.us.us
  %i.v = phi ptr [ %i.aa, %.lr.ph.i.us.us ], [ %.pre17.i.us.us, %bb.j ]
  %i.w = phi i32 [ %i.ac, %.lr.ph.i.us.us ], [ %i.u, %bb.j ] ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %i.y = shl nsw i32 %i.w, 1
  %spec.select.i.us.us = select i1 %i.x, i32 2, i32 %i.y ; 2 uses
  store i32 %spec.select.i.us.us, ptr %i.e, align 4, !tbaa !47
  %i.z = sext i32 %spec.select.i.us.us to i64
  %i.aa = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.116, i32 noundef 247, ptr noundef %i.v, i64 noundef range(i64 -2147483648, 2147483648) %i.z, i64 noundef 8) ; 3 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !48
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %.not.i.us.us = icmp slt i32 %i.ab, %i.ac
  br i1 %.not.i.us.us, label %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us, label %.lr.ph.i.us.us, !llvm.loop !80

_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us: ; preds = %.lr.ph.i.us.us, %bb.j
  %i.ad = phi ptr [ %.pre17.i.us.us, %bb.j ], [ %i.aa, %.lr.ph.i.us.us ]
  %.lcssa.i.us.us = phi i32 [ %i.t, %bb.j ], [ %i.ab, %.lr.ph.i.us.us ]
  %i.ae = sext i32 %.lcssa.i.us.us to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = add i64 %i.s, 1
  %i.ah = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.116, i32 noundef 249, i64 noundef %i.ag, i64 noundef 1)
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !52
  %i.ai = load ptr, ptr %3, align 8, !tbaa !79
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !46
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = tail call ptr @strncpy(ptr noundef %i.am, ptr noundef nonnull readonly %.063.us.us, i64 noundef %i.s) #23 ; 0 uses
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !46
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !46
  %i.aq = trunc nuw i8 %.067.us.us to i1
  br i1 %i.aq, label %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread

_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge: ; preds = %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us
  %i.ar = add nsw i32 %.064.us.us, 1
  %.pr.us.us.pre = load i8, ptr %.073.us.us, align 1, !tbaa !18
  br label %thread-pre-split.us.us

bb.k:                                             ; preds = %bb.h
  %i.as = tail call i32 @isalnum(i32 noundef %i.o) #26
  %.not87.us.us = icmp eq i32 %i.as, 0
  %spec.select94.us.us = select i1 %.not87.us.us, ptr null, ptr %.073.us.us
  br label %thread-pre-split.us.us

thread-pre-split.us.us:                           ; preds = %switch.early.test.us.us, %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge, %bb.k
  %i.at = phi i8 [ %i.n, %bb.k ], [ %i.n, %switch.early.test.us.us ], [ %.pr.us.us.pre, %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge ] ; 2 uses
  %.165.us.us = phi i32 [ %.064.us.us, %bb.k ], [ %.064.us.us, %switch.early.test.us.us ], [ %i.ar, %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge ] ; 2 uses
  %.1.us.us = phi ptr [ %spec.select94.us.us, %bb.k ], [ %.063.us.us, %switch.early.test.us.us ], [ null, %_ZL21lambda_components_addP19lambda_components_tPKcm.exit.us.us.thread-pre-split.us.us_crit_edge ]
  %i.au = icmp eq i8 %i.at, 41
  br i1 %i.au, label %.split112.us, label %thread-pre-split97.us.us

thread-pre-split97.us.us:                         ; preds = %bb.g, %thread-pre-split.us.us, %bb.e
  %i.av = phi i8 [ %i.i, %bb.e ], [ %i.at, %thread-pre-split.us.us ], [ %i.i, %bb.g ]
  %.170.us.us = phi i1 [ true, %bb.e ], [ true, %thread-pre-split.us.us ], [ false, %bb.g ]
  %.168.us.us = phi i8 [ 0, %bb.e ], [ %.067.us.us, %thread-pre-split.us.us ], [ %.067.us.us, %bb.g ] ; 2 uses
  %.266.us.us = phi i32 [ %.064.us.us, %bb.e ], [ %.165.us.us, %thread-pre-split.us.us ], [ %.064.us.us, %bb.g ]
  %.2.us.us = phi ptr [ %.073.us.us, %bb.e ], [ %.1.us.us, %thread-pre-split.us.us ], [ %.063.us.us, %bb.g ]
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.split117.us, label %thread-pre-split97.us.us.thread

thread-pre-split97.us.us.thread:                  ; preds = %bb.f, %thread-pre-split97.us.us
  %.2.us.us246 = phi ptr [ %.2.us.us, %thread-pre-split97.us.us ], [ %.063.us.us, %bb.f ]
  %.266.us.us245 = phi i32 [ %.266.us.us, %thread-pre-split97.us.us ], [ %.064.us.us, %bb.f ]
  %.168.us.us244 = phi i8 [ %.168.us.us, %thread-pre-split97.us.us ], [ 1, %bb.f ]
  %.170.us.us243 = phi i1 [ %.170.us.us, %thread-pre-split97.us.us ], [ true, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.073.us.us, i64 1 ; 2 uses
  br i1 %.not, label %.split108.us.split.us.backedge, label %bb.l

bb.l:                                             ; preds = %thread-pre-split97.us.us.thread
  store ptr %i.ax, ptr %4, align 8, !tbaa !52
  br label %.split108.us.split.us.backedge

.split108.us.split.us.backedge:                   ; preds = %bb.l, %thread-pre-split97.us.us.thread
  br label %.split108.us.split.us, !llvm.loop !320

.split108.us.split:                               ; preds = %.split108.us.split.backedge, %.split108.us.split.preheader
  %.073.us = phi ptr [ %0, %.split108.us.split.preheader ], [ %i.bz, %.split108.us.split.backedge ] ; 8 uses
  %.069.us = phi i1 [ false, %.split108.us.split.preheader ], [ %.170.us251, %.split108.us.split.backedge ]
  %.067.us = phi i8 [ 0, %.split108.us.split.preheader ], [ %.168.us252, %.split108.us.split.backedge ] ; 4 uses
  %.064.us = phi i32 [ 0, %.split108.us.split.preheader ], [ %.266.us253, %.split108.us.split.backedge ] ; 8 uses
  %.063.us = phi ptr [ null, %.split108.us.split.preheader ], [ %.2.us254, %.split108.us.split.backedge ] ; 7 uses
  br i1 %.069.us, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.split108.us.split
  %i.ay = load i8, ptr %.073.us, align 1, !tbaa !18 ; 4 uses
  %i.az = sext i8 %i.ay to i32                    ; 2 uses
  %i.ba = tail call i32 @isalnum(i32 noundef %i.az) #26
  %.not84.us = icmp eq i32 %i.ba, 0
  br i1 %.not84.us, label %bb.n, label %thread-pre-split97.us

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp eq i8 %i.ay, 40
  br i1 %i.bb, label %thread-pre-split97.us.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call i32 @isspace(i32 noundef %i.az) #26
  %.not85.us = icmp eq i32 %i.bc, 0
  br i1 %.not85.us, label %.split110.us, label %thread-pre-split97.us

bb.p:                                             ; preds = %.split108.us.split
  %.not86.us = icmp eq ptr %.063.us, null
  %i.bd = load i8, ptr %.073.us, align 1, !tbaa !18 ; 4 uses
  %i.be = sext i8 %i.bd to i32                    ; 2 uses
  br i1 %.not86.us, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call i32 @isspace(i32 noundef %i.be) #26
  %.fr.us = freeze i32 %i.bf
  %.not88.not.us = icmp eq i32 %.fr.us, 0
  br i1 %.not88.not.us, label %switch.early.test.us, label %bb.r

switch.early.test.us:                             ; preds = %bb.q
  switch i8 %i.bd, label %thread-pre-split.us [
    i8 44, label %bb.r
    i8 41, label %bb.r
    i8 0, label %bb.r
  ]

bb.r:                                             ; preds = %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %bb.q
  %i.bg = ptrtoint ptr %.073.us to i64
  %i.bh = ptrtoint ptr %.063.us to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  br i1 %.not83, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !46
  %.not27.i.us = icmp slt i32 %.064.us, %i.bj
  br i1 %.not27.i.us, label %bb.t, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %3, align 8, !tbaa !79
  %i.bl = sext i32 %.064.us to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread, label %.thread31.i.us

.thread31.i.us:                                   ; preds = %bb.t
  %i.bp = icmp eq ptr %.073.us, %.063.us
  %i.bq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #26
  %.not29.i.us = icmp ne i64 %i.bq, %i.bi         ; 2 uses
  %brmerge.i.us = or i1 %i.bp, %.not29.i.us
  br i1 %brmerge.i.us, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.us, label %.split.us

.split.us:                                        ; preds = %.thread31.i.us
  %i.br = tail call i32 @strncmp(ptr noundef nonnull %i.bn, ptr noundef nonnull readonly %.063.us, i64 noundef %i.bi) #26
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread

_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.us: ; preds = %.thread31.i.us
  br i1 %.not29.i.us, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.us, %.split.us
  %i.bt = add nsw i32 %.064.us, 1
  %i.bu = trunc nuw i8 %.067.us to i1
  br i1 %i.bu, label %thread-pre-split.us, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread

bb.v:                                             ; preds = %bb.p
  %i.bv = tail call i32 @isalnum(i32 noundef %i.be) #26
  %.not87.us = icmp eq i32 %i.bv, 0
  %spec.select94.us = select i1 %.not87.us, ptr null, ptr %.073.us
  br label %thread-pre-split.us

thread-pre-split.us:                              ; preds = %switch.early.test.us, %bb.u, %bb.v
  %.165.us = phi i32 [ %.064.us, %bb.v ], [ %.064.us, %switch.early.test.us ], [ %i.bt, %bb.u ] ; 2 uses
  %.1.us = phi ptr [ %spec.select94.us, %bb.v ], [ %.063.us, %switch.early.test.us ], [ null, %bb.u ]
  %i.bw = icmp eq i8 %i.bd, 41
  br i1 %i.bw, label %.split112.us, label %thread-pre-split97.us

thread-pre-split97.us:                            ; preds = %bb.o, %thread-pre-split.us, %bb.m
  %i.bx = phi i8 [ %i.ay, %bb.m ], [ %i.bd, %thread-pre-split.us ], [ %i.ay, %bb.o ]
  %.170.us = phi i1 [ true, %bb.m ], [ true, %thread-pre-split.us ], [ false, %bb.o ]
  %.168.us = phi i8 [ 0, %bb.m ], [ %.067.us, %thread-pre-split.us ], [ %.067.us, %bb.o ] ; 2 uses
  %.266.us = phi i32 [ %.064.us, %bb.m ], [ %.165.us, %thread-pre-split.us ], [ %.064.us, %bb.o ]
  %.2.us = phi ptr [ %.073.us, %bb.m ], [ %.1.us, %thread-pre-split.us ], [ %.063.us, %bb.o ]
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.split117.us, label %thread-pre-split97.us.thread

thread-pre-split97.us.thread:                     ; preds = %bb.n, %thread-pre-split97.us
  %.2.us254 = phi ptr [ %.2.us, %thread-pre-split97.us ], [ %.063.us, %bb.n ]
  %.266.us253 = phi i32 [ %.266.us, %thread-pre-split97.us ], [ %.064.us, %bb.n ]
  %.168.us252 = phi i8 [ %.168.us, %thread-pre-split97.us ], [ 1, %bb.n ]
  %.170.us251 = phi i1 [ %.170.us, %thread-pre-split97.us ], [ true, %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.073.us, i64 1 ; 2 uses
  br i1 %.not, label %.split108.us.split.backedge, label %bb.w

bb.w:                                             ; preds = %thread-pre-split97.us.thread
  store ptr %i.bz, ptr %4, align 8, !tbaa !52
  br label %.split108.us.split.backedge

.split108.us.split.backedge:                      ; preds = %bb.w, %thread-pre-split97.us.thread
  br label %.split108.us.split, !llvm.loop !320

.split108:                                        ; preds = %.thread, %bb.d
  br i1 %.not, label %.split108.split.us, label %.split108.split

.split108.split.us:                               ; preds = %.split108, %thread-pre-split97.us138.thread
  %.073.us119 = phi ptr [ %i.cv, %thread-pre-split97.us138.thread ], [ %0, %.split108 ] ; 7 uses
  %.069.us120 = phi i1 [ %.170.us144259, %thread-pre-split97.us138.thread ], [ false, %.split108 ]
  %.067.us121 = phi i8 [ %.168.us145260, %thread-pre-split97.us138.thread ], [ 0, %.split108 ] ; 4 uses
  %.064.us122 = phi i32 [ %.266.us146261, %thread-pre-split97.us138.thread ], [ 0, %.split108 ] ; 7 uses
  %.063.us123 = phi ptr [ %.2.us147262, %thread-pre-split97.us138.thread ], [ null, %.split108 ] ; 6 uses
  br i1 %.069.us120, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.split108.split.us
  %i.ca = load i8, ptr %.073.us119, align 1, !tbaa !18 ; 4 uses
  %i.cb = sext i8 %i.ca to i32                    ; 2 uses
  %i.cc = tail call i32 @isalnum(i32 noundef %i.cb) #26
  %.not84.us124 = icmp eq i32 %i.cc, 0
  br i1 %.not84.us124, label %bb.y, label %thread-pre-split97.us138

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp eq i8 %i.ca, 40
  br i1 %i.cd, label %thread-pre-split97.us138.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = tail call i32 @isspace(i32 noundef %i.cb) #26
  %.not85.us125 = icmp eq i32 %i.ce, 0
  br i1 %.not85.us125, label %.split110.us, label %thread-pre-split97.us138

bb.aa:                                            ; preds = %.split108.split.us
  %.not86.us126 = icmp eq ptr %.063.us123, null
  %i.cf = load i8, ptr %.073.us119, align 1, !tbaa !18 ; 4 uses
  %i.cg = sext i8 %i.cf to i32                    ; 2 uses
  br i1 %.not86.us126, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = tail call i32 @isspace(i32 noundef %i.cg) #26
  %.fr.us127 = freeze i32 %i.ch
  %.not88.not.us128 = icmp eq i32 %.fr.us127, 0
  br i1 %.not88.not.us128, label %switch.early.test.us129, label %bb.ac

switch.early.test.us129:                          ; preds = %bb.ab
  switch i8 %i.cf, label %thread-pre-split.us130 [
    i8 44, label %bb.ac
    i8 41, label %bb.ac
    i8 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %switch.early.test.us129, %switch.early.test.us129, %switch.early.test.us129, %bb.ab
  %i.ci = call double @strtod(ptr noundef nonnull %.063.us123, ptr noundef nonnull %i.a) #23
  %i.cj = load ptr, ptr %1, align 8, !tbaa !86
  %i.ck = sext i32 %.064.us122 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !81
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.cn = icmp eq ptr %.063.us123, %i.cm
  br i1 %i.cn, label %.split.us148, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = trunc nuw i8 %.067.us121 to i1
  br i1 %i.co, label %.thread-pre-split.us130_crit_edge, label %_ZL23lambda_components_checkPK19lambda_components_tiPKcm.exit.thread

.thread-pre-split.us130_crit_edge:                ; preds = %bb.ad
  %i.cp = add nsw i32 %.064.us122, 1
  %.pr.us133.pre = load i8, ptr %.073.us119, align 1, !tbaa !18
  br label %thread-pre-split.us130

bb.ae:                                            ; preds = %bb.aa
  %i.cq = tail call i32 @isalnum(i32 noundef %i.cg) #26
  %.not87.us134 = icmp eq i32 %i.cq, 0
  %spec.select94.us135 = select i1 %.not87.us134, ptr null, ptr %.073.us119
  br label %thread-pre-split.us130

thread-pre-split.us130:                           ; preds = %switch.early.test.us129, %.thread-pre-split.us130_crit_edge, %bb.ae
  %i.cr = phi i8 [ %i.cf, %bb.ae ], [ %i.cf, %switch.early.test.us129 ], [ %.pr.us133.pre, %.thread-pre-split.us130_crit_edge ] ; 2 uses
  %.165.us136 = phi i32 [ %.064.us122, %bb.ae ], [ %.064.us122, %switch.early.test.us129 ], [ %i.cp, %.thread-pre-split.us130_crit_edge ] ; 2 uses
  %.1.us137 = phi ptr [ %spec.select94.us135, %bb.ae ], [ %.063.us123, %switch.early.test.us129 ], [ null, %.thread-pre-split.us130_crit_edge ]
  %i.cs = icmp eq i8 %i.cr, 41
  br i1 %i.cs, label %.split112.us, label %thread-pre-split97.us138

thread-pre-split97.us138:                         ; preds = %bb.z, %thread-pre-split.us130, %bb.x
  %i.ct = phi i8 [ %i.ca, %bb.x ], [ %i.cr, %thread-pre-split.us130 ], [ %i.ca, %bb.z ]
  %.170.us144 = phi i1 [ true, %bb.x ], [ true, %thread-pre-split.us130 ], [ false, %bb.z ]
  %.168.us145 = phi i8 [ 0, %bb.x ], [ %.067.us121, %thread-pre-split.us130 ], [ %.067.us121, %bb.z ] ; 2 uses
  %.266.us146 = phi i32 [ %.064.us122, %bb.x ], [ %.165.us136, %thread-pre-split.us130 ], [ %.064.us122, %bb.z ]
  %.2.us147 = phi ptr [ %.073.us119, %bb.x ], [ %.1.us137, %thread-pre-split.us130 ], [ %.063.us123, %bb.z ]
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %.split117.us, label %thread-pre-split97.us138.thread

thread-pre-split97.us138.thread:                  ; preds = %bb.y, %thread-pre-split97.us138
  %.2.us147262 = phi ptr [ %.2.us147, %thread-pre-split97.us138 ], [ %.063.us123, %bb.y ]
  %.266.us146261 = phi i32 [ %.266.us146, %thread-pre-split97.us138 ], [ %.064.us122, %bb.y ]
  %.168.us145260 = phi i8 [ %.168.us145, %thread-pre-split97.us138 ], [ 1, %bb.y ]
  %.170.us144259 = phi i1 [ %.170.us144, %thread-pre-split97.us138 ], [ true, %bb.y ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.073.us119, i64 1
  br label %.split108.split.us, !llvm.loop !320

.split108.split:                                  ; preds = %.split108, %thread-pre-split97.thread
  %.073 = phi ptr [ %i.ed, %thread-pre-split97.thread ], [ %0, %.split108 ] ; 7 uses
  %.069 = phi i1 [ %.170278, %thread-pre-split97.thread ], [ false, %.split108 ]
  %.067 = phi i8 [ %.168279, %thread-pre-split97.thread ], [ 0, %.split108 ] ; 4 uses
  %.064 = phi i32 [ %.266280, %thread-pre-split97.thread ], [ 0, %.split108 ] ; 7 uses
  %.063 = phi ptr [ %.2281, %thread-pre-split97.thread ], [ null, %.split108 ] ; 6 uses
  br i1 %.069, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %.split108.split
  %i.cw = load i8, ptr %.073, align 1, !tbaa !18  ; 4 uses
  %i.cx = sext i8 %i.cw to i32                    ; 2 uses
  %i.cy = tail call i32 @isalnum(i32 noundef %i.cx) #26
  %.not84 = icmp eq i32 %i.cy, 0
  br i1 %.not84, label %bb.ag, label %thread-pre-split97

bb.ag:                                            ; preds = %bb.af
  %i.cz = icmp eq i8 %i.cw, 40
  br i1 %i.cz, label %thread-pre-split97.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = tail call i32 @isspace(i32 noundef %i.cx) #26
  %.not85 = icmp eq i32 %i.da, 0
  br i1 %.not85, label %.split110.us, label %thread-pre-split97

.split110.us:                                     ; preds = %bb.g, %bb.ah, %bb.z, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 2276, ptr noundef nonnull @.str.192, ptr noundef %5) #24
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.split110.us
  unreachable

bb.aj:                                            ; preds = %.split110.us
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.be

bb.ak:                                            ; preds = %.split108.split
  %.not86 = icmp eq ptr %.063, null
  %i.dc = load i8, ptr %.073, align 1, !tbaa !18  ; 4 uses
  %i.dd = sext i8 %i.dc to i32                    ; 2 uses
  br i1 %.not86, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = tail call i32 @isspace(i32 noundef %i.dd) #26
  %.fr = freeze i32 %i.de
  %.not88.not = icmp eq i32 %.fr, 0
  br i1 %.not88.not, label %switch.early.test, label %bb.am

switch.early.test:                                ; preds = %bb.al
  switch i8 %i.dc, label %thread-pre-split [
    i8 44, label %bb.am
    i8 41, label %bb.am
    i8 0, label %bb.am
  ]

bb.am:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.al
  %i.df = call double @strtod(ptr noundef nonnull %.063, ptr noundef nonnull %i.a) #23
  %i.dg = load ptr, ptr %1, align 8, !tbaa !86
  %i.dh = sext i32 %.064 to i64
end_hunk_0
