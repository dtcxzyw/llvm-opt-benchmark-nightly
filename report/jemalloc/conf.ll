Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/conf?download=true
inline.NumInlined: 132
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@malloc_conf_init_helper:bb.a
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ 0, %bb.f ], [ %i.be, %bb.e ]
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %.0.i
  store i8 0, ptr %i.bg, align 1, !tbaa !29
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.bh = call ptr @secure_getenv(ptr noundef nonnull @.str.91) #10 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bh, ptr @je_opt_malloc_conf_env_var, align 8, !tbaa !28
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr @malloc_conf_2_conf_harder, align 8, !tbaa !28
  br label %.thread

default.unreachable17.i:                          ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.1.i = phi ptr [ %i.bi, %bb.j ], [ %i.bb, %bb.d ], [ @.str.7, %bb.c ], [ %4, %bb.g ], [ %i.bh, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.1.i, ptr %i.bj, align 8, !tbaa !28
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 4 uses
  %i.bm = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @malloc_conf_init_helper.opts_explain, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  %.not924 = icmp eq ptr %i.bl, null
  %i.bq = select i1 %.not924, ptr @.str.7, ptr %i.bl
  %i.br = trunc i64 %indvars.iv to i32
  %i.bs = add i32 %i.br, 1
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.6, i32 noundef %i.bs, ptr noundef %i.bp, ptr noundef nonnull %i.bq) #10
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  %i.bt = phi ptr [ %.1.i, %.thread ], [ %i.bl, %bb.l ], [ %i.bl, %bb.k ] ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ri, label %.preheader2497

.preheader2497:                                   ; preds = %bb.m
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  %.not9252514 = icmp eq i8 %i.bv, 0
  br i1 %.not9252514, label %.critedge, label %.preheader2496

.preheader2496:                                   ; preds = %.preheader2497, %conf_error.exit.thread
  %i.bw = phi i8 [ %i.aqn, %conf_error.exit.thread ], [ %i.bv, %.preheader2497 ]
  %.020822515 = phi ptr [ %.12083, %conf_error.exit.thread ], [ %i.bt, %.preheader2497 ] ; 304 uses
  br label %bb.n

.preheader.i:                                     ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.049.i, i64 1 ; 254 uses
  %i.by = ptrtoint ptr %i.bx to i64               ; 41 uses
  %i.bz = ptrtoint ptr %.020822515 to i64         ; 2 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = add i64 %i.by, %i.ca                    ; 76 uses
  br label %bb.r

bb.n:                                             ; preds = %.preheader2496, %bb.q
  %i.cc = phi i8 [ %.pr, %bb.q ], [ %i.bw, %.preheader2496 ]
  %.049.i = phi ptr [ %i.ce, %bb.q ], [ %.020822515, %.preheader2496 ] ; 6 uses
  switch i8 %i.cc, label %.critedge.sink.split [
    i8 65, label %bb.q
    i8 66, label %bb.q
    i8 67, label %bb.q
    i8 68, label %bb.q
    i8 69, label %bb.q
    i8 70, label %bb.q
    i8 71, label %bb.q
    i8 72, label %bb.q
    i8 73, label %bb.q
    i8 74, label %bb.q
    i8 75, label %bb.q
    i8 76, label %bb.q
    i8 77, label %bb.q
    i8 78, label %bb.q
    i8 79, label %bb.q
    i8 80, label %bb.q
    i8 81, label %bb.q
    i8 82, label %bb.q
    i8 83, label %bb.q
    i8 84, label %bb.q
    i8 85, label %bb.q
    i8 86, label %bb.q
    i8 87, label %bb.q
    i8 88, label %bb.q
    i8 89, label %bb.q
    i8 90, label %bb.q
    i8 97, label %bb.q
    i8 98, label %bb.q
    i8 99, label %bb.q
    i8 100, label %bb.q
    i8 101, label %bb.q
    i8 102, label %bb.q
    i8 103, label %bb.q
    i8 104, label %bb.q
    i8 105, label %bb.q
    i8 106, label %bb.q
    i8 107, label %bb.q
    i8 108, label %bb.q
    i8 109, label %bb.q
    i8 110, label %bb.q
    i8 111, label %bb.q
    i8 112, label %bb.q
    i8 113, label %bb.q
    i8 114, label %bb.q
    i8 115, label %bb.q
    i8 116, label %bb.q
    i8 117, label %bb.q
    i8 118, label %bb.q
    i8 119, label %bb.q
    i8 120, label %bb.q
    i8 121, label %bb.q
    i8 122, label %bb.q
    i8 48, label %bb.q
    i8 49, label %bb.q
    i8 50, label %bb.q
    i8 51, label %bb.q
    i8 52, label %bb.q
    i8 53, label %bb.q
    i8 54, label %bb.q
    i8 55, label %bb.q
    i8 56, label %bb.q
    i8 57, label %bb.q
    i8 95, label %bb.q
    i8 58, label %.preheader.i
    i8 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %.not.i1010 = icmp eq ptr %.049.i, %.020822515
  br i1 %.not.i1010, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds i8, ptr %.049.i, i64 -1
  br label %.critedge.sink.split

bb.q:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.049.i, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.ce, align 1, !tbaa !29
  br label %bb.n, !llvm.loop !20

bb.r:                                             ; preds = %bb.w, %.preheader.i
  %.250.i = phi ptr [ %i.bx, %.preheader.i ], [ %i.cs, %bb.w ] ; 6 uses
  %i.cf = load i8, ptr %.250.i, align 1, !tbaa !29
  switch i8 %i.cf, label %bb.w [
    i8 44, label %bb.s
    i8 0, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.250.i, i64 1 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = ptrtoint ptr %.250.i to i64
  %reass.sub2518 = sub i64 %i.cj, %i.bz
  %i.ck = add i64 %reass.sub2518, 1
  %i.cl = call i64 @llvm.umin.i64(i64 %i.ck, i64 64)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %i.cm, ptr noundef nonnull %.020822515) #10
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = xor i64 %i.by, -1
  %i.cp = add i64 %i.cn, %i.co
  br label %conf_next.exit

bb.v:                                             ; preds = %bb.r
  %i.cq = ptrtoint ptr %.250.i to i64
  %i.cr = sub i64 %i.cq, %i.by
  br label %conf_next.exit

bb.w:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.250.i, i64 1
  br label %bb.r, !llvm.loop !21

conf_next.exit:                                   ; preds = %bb.v, %bb.u
  %.12083 = phi ptr [ %.250.i, %bb.v ], [ %i.cg, %bb.u ] ; 2 uses
  %.42071 = phi i64 [ %i.cr, %bb.v ], [ %i.cp, %bb.u ] ; 228 uses
  %i.ct = icmp eq i64 %i.cb, 12                   ; 2 uses
  br i1 %i.ct, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %conf_next.exit
  %i.cu = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.8, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 12) #12
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.y, label %.thread2106

bb.y:                                             ; preds = %bb.x
  switch i64 %.42071, label %conf_handle_bool.exit [
    i64 4, label %bb.z
    i64 5, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.cw = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %conf_error.exit, label %conf_handle_bool.exit

bb.aa:                                            ; preds = %bb.y
  %i.cy = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %conf_error.exit.thread2567, label %conf_handle_bool.exit

conf_error.exit.thread2567:                       ; preds = %bb.aa
  store i8 0, ptr @je_opt_confirm_conf, align 1, !tbaa !15
  br label %conf_error.exit.thread

conf_handle_bool.exit:                            ; preds = %bb.y, %bb.z, %bb.aa
  br i1 %2, label %conf_error.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %conf_handle_bool.exit
  %i.da = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.9, i32 noundef 12, ptr noundef nonnull %.020822515, i32 noundef %i.da, ptr noundef nonnull %i.bx) #10
  %i.db = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %conf_error.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ab
  %i.dd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %conf_error.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.preheader.i
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %conf_error.exit.thread

conf_error.exit:                                  ; preds = %bb.z
  store i8 1, ptr @je_opt_confirm_conf, align 1, !tbaa !15
  br i1 %2, label %conf_error.exit.thread, label %bb.ac, !llvm.loop !22

bb.ac:                                            ; preds = %conf_error.exit
  %5 = trunc nuw nsw i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull %.020822515, i32 noundef %5, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

bb.ad:                                            ; preds = %conf_next.exit
  br i1 %2, label %conf_error.exit.thread, label %bb.ae, !llvm.loop !22

.thread2106:                                      ; preds = %bb.x
  br i1 %2, label %conf_error.exit.thread, label %.thread2167, !llvm.loop !22

bb.ae:                                            ; preds = %bb.ad
  switch i64 %i.cb, label %.thread2167 [
    i64 5, label %bb.af
    i64 10, label %bb.al
    i64 15, label %bb.ar
    i64 13, label %bb.ax
    i64 41, label %bb.bd
    i64 31, label %bb.bj
    i64 18, label %bb.bp
  ]

bb.af:                                            ; preds = %bb.ae
  %i.df = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 5) #12
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %.thread2167

bb.ag:                                            ; preds = %bb.af
  switch i64 %.42071, label %bb.aj [
    i64 4, label %bb.ah
    i64 5, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dh = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %conf_error.exit1017, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dj = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %conf_error.exit1017, label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah
  %i.dl = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.9, i32 noundef 5, ptr noundef nonnull %.020822515, i32 noundef %i.dl, ptr noundef nonnull %i.bx) #10
  %i.dm = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %conf_error.exit.thread, label %.preheader.preheader.i1015

.preheader.preheader.i1015:                       ; preds = %bb.aj
  %i.do = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %conf_error.exit.thread, label %.critedge.i1016

.critedge.i1016:                                  ; preds = %.preheader.preheader.i1015
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %conf_error.exit.thread

conf_error.exit1017:                              ; preds = %bb.ai, %bb.ah
  %storemerge.i1013 = phi i8 [ 1, %bb.ah ], [ 0, %bb.ai ]
  store i8 %storemerge.i1013, ptr @je_opt_abort, align 1, !tbaa !15
  %i.dq = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ak, label %conf_error.exit.thread, !llvm.loop !22

bb.ak:                                            ; preds = %conf_error.exit1017
  %i.ds = trunc nuw nsw i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 5, ptr noundef nonnull %.020822515, i32 noundef %i.ds, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

bb.al:                                            ; preds = %bb.ae
  %i.dt = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.12, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 10) #12
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.am, label %.thread2167

bb.am:                                            ; preds = %bb.al
  switch i64 %.42071, label %bb.ap [
    i64 4, label %bb.an
    i64 5, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.dv = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %conf_error.exit1023, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dx = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %conf_error.exit1023, label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %i.dz = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.9, i32 noundef 10, ptr noundef nonnull %.020822515, i32 noundef %i.dz, ptr noundef nonnull %i.bx) #10
  %i.ea = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %conf_error.exit.thread, label %.preheader.preheader.i1021

.preheader.preheader.i1021:                       ; preds = %bb.ap
  %i.ec = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %conf_error.exit.thread, label %.critedge.i1022

.critedge.i1022:                                  ; preds = %.preheader.preheader.i1021
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %conf_error.exit.thread

conf_error.exit1023:                              ; preds = %bb.ao, %bb.an
  %storemerge.i1019 = phi i8 [ 1, %bb.an ], [ 0, %bb.ao ]
  store i8 %storemerge.i1019, ptr @je_opt_abort_conf, align 1, !tbaa !15
  %i.ee = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.aq, label %conf_error.exit.thread, !llvm.loop !22

bb.aq:                                            ; preds = %conf_error.exit1023
  %i.eg = trunc nuw nsw i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 10, ptr noundef nonnull %.020822515, i32 noundef %i.eg, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

bb.ar:                                            ; preds = %bb.ae
  %i.eh = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.13, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 15) #12
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.as, label %.thread2167

bb.as:                                            ; preds = %bb.ar
  switch i64 %.42071, label %bb.av [
    i64 4, label %bb.at
    i64 5, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.ej = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %conf_error.exit1029, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.el = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %conf_error.exit1029, label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.at
  %i.en = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.9, i32 noundef 15, ptr noundef nonnull %.020822515, i32 noundef %i.en, ptr noundef nonnull %i.bx) #10
  %i.eo = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %conf_error.exit.thread, label %.preheader.preheader.i1027

.preheader.preheader.i1027:                       ; preds = %bb.av
  %i.eq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %conf_error.exit.thread, label %.critedge.i1028

.critedge.i1028:                                  ; preds = %.preheader.preheader.i1027
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %conf_error.exit.thread

conf_error.exit1029:                              ; preds = %bb.au, %bb.at
  %storemerge.i1025 = phi i8 [ 1, %bb.at ], [ 0, %bb.au ]
  store i8 %storemerge.i1025, ptr @je_opt_cache_oblivious, align 1, !tbaa !15
  %i.es = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.aw, label %conf_error.exit.thread, !llvm.loop !22

bb.aw:                                            ; preds = %conf_error.exit1029
  %i.eu = trunc nuw nsw i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 15, ptr noundef nonnull %.020822515, i32 noundef %i.eu, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

bb.ax:                                            ; preds = %bb.ae
  %i.ev = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.14, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 13) #12
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ay, label %.thread2167

bb.ay:                                            ; preds = %bb.ax
  switch i64 %.42071, label %bb.bb [
    i64 4, label %bb.az
    i64 5, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ex = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %conf_error.exit1035, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ez = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull readonly dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %conf_error.exit1035, label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba, %bb.az
  %i.fb = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.9, i32 noundef 13, ptr noundef nonnull %.020822515, i32 noundef %i.fb, ptr noundef nonnull %i.bx) #10
  %i.fc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %conf_error.exit.thread, label %.preheader.preheader.i1033

.preheader.preheader.i1033:                       ; preds = %bb.bb
  %i.fe = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.020822515, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %conf_error.exit.thread, label %.critedge.i1034

.critedge.i1034:                                  ; preds = %.preheader.preheader.i1033
end_hunk_0
begin_hunk_1_@malloc_conf_init_helper:bb.a

.tail2483:                                        ; preds = %sub_02484, %sub_12485, %sub_22486
  %i.aok = phi i32 [ %i.aob, %sub_02484 ], [ %i.aof, %sub_12485 ], [ %i.aoj, %sub_22486 ]
  %i.aol = icmp eq i32 %i.aok, 0
  br i1 %i.aol, label %.preheader2495.preheader, label %.thread2448

.preheader2495.preheader:                         ; preds = %.tail2483
  %i.aom = load ptr, ptr @je_thp_mode_names, align 8, !tbaa !28
  %i.aon = call i32 @strncmp(ptr noundef %i.aom, ptr noundef nonnull %i.bx, i64 noundef %.42071) #12
  %i.aoo = icmp eq i32 %i.aon, 0
  br i1 %i.aoo, label %bb.qf, label %.preheader2495.1

.preheader2495.1:                                 ; preds = %.preheader2495.preheader
  %i.aop = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_thp_mode_names, i64 8), align 8, !tbaa !28
  %i.aoq = call i32 @strncmp(ptr noundef %i.aop, ptr noundef nonnull %i.bx, i64 noundef %.42071) #12
  %i.aor = icmp eq i32 %i.aoq, 0
  br i1 %i.aor, label %bb.qf, label %.preheader2495.2

.preheader2495.2:                                 ; preds = %.preheader2495.1
  %i.aos = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_thp_mode_names, i64 16), align 8, !tbaa !28
  %i.aot = call i32 @strncmp(ptr noundef %i.aos, ptr noundef nonnull %i.bx, i64 noundef %.42071) #12
  %i.aou = icmp eq i32 %i.aot, 0
  br i1 %i.aou, label %bb.qf, label %.thread2445

.thread2445:                                      ; preds = %.preheader2495.2
  call fastcc void @conf_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.020822515, i64 noundef 3, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %conf_error.exit.thread

bb.qf:                                            ; preds = %.preheader2495.2, %.preheader2495.1, %.preheader2495.preheader
  %.02508.lcssa.wide = phi i32 [ 0, %.preheader2495.preheader ], [ 1, %.preheader2495.1 ], [ 2, %.preheader2495.2 ]
  store i32 %.02508.lcssa.wide, ptr @je_opt_thp, align 4, !tbaa !18
  %i.aov = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.aow = trunc nuw i8 %i.aov to i1
  br i1 %i.aow, label %bb.qg, label %conf_error.exit.thread

bb.qg:                                            ; preds = %bb.qf
  %i.aox = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 3, ptr noundef nonnull %.020822515, i32 noundef %i.aox, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread

bb.qh:                                            ; preds = %bb.qe
  br i1 %i.ct, label %bb.qi, label %.thread2448

bb.qi:                                            ; preds = %bb.qh
  %i.aoy = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.85, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 12) #12
  %i.aoz = icmp eq i32 %i.aoy, 0
  br i1 %i.aoz, label %bb.qj, label %.thread2448

bb.qj:                                            ; preds = %bb.qi
  switch i64 %.42071, label %.thread2452 [
    i64 5, label %bb.qk
    i64 4, label %bb.ql
  ]

bb.qk:                                            ; preds = %bb.qj
  %i.apa = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.41, ptr noundef nonnull dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.apb = icmp eq i32 %i.apa, 0
  br i1 %i.apb, label %bb.qn, label %bb.qm

bb.ql:                                            ; preds = %bb.qj
  %i.apc = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.42, ptr noundef nonnull dereferenceable(1) %i.bx, i64 noundef 4) #12
  %i.apd = icmp eq i32 %i.apc, 0
  br i1 %i.apd, label %bb.qn, label %.thread2452

bb.qm:                                            ; preds = %bb.qk
  %i.ape = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %i.bx, i64 noundef 5) #12
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %bb.qn, label %.thread2452

.thread2452:                                      ; preds = %bb.qj, %bb.qm, %bb.ql
  call fastcc void @conf_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.020822515, i64 noundef 12, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %conf_error.exit.thread

bb.qn:                                            ; preds = %bb.qm, %bb.ql, %bb.qk
  %.sink2585 = phi i32 [ 0, %bb.qk ], [ 1, %bb.ql ], [ 2, %bb.qm ]
  store i32 %.sink2585, ptr @je_opt_zero_realloc_action, align 4, !tbaa !18
  %i.apg = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.aph = trunc nuw i8 %i.apg to i1
  br i1 %i.aph, label %bb.qo, label %conf_error.exit.thread, !llvm.loop !22

bb.qo:                                            ; preds = %bb.qn
  %i.api = trunc nuw nsw i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 12, ptr noundef nonnull %.020822515, i32 noundef %i.api, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

.thread2448:                                      ; preds = %.tail2483, %bb.qi, %bb.qh
  br i1 %i.ha, label %bb.qp, label %bb.rb

bb.qp:                                            ; preds = %.thread2448
  %i.apj = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.86, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 15) #12
  %i.apk = icmp eq i32 %i.apj, 0
  br i1 %i.apk, label %bb.qq, label %bb.qv

bb.qq:                                            ; preds = %bb.qp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #10
  %i.apl = tail call ptr @__errno_location() #11  ; 2 uses
  store i32 0, ptr %i.apl, align 4, !tbaa !18
  %i.apm = call i64 @je_malloc_strtoumax(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.ax, i32 noundef 0) #10
  %i.apn = load i32, ptr %i.apl, align 4, !tbaa !18
  %.not928 = icmp eq i32 %i.apn, 0
  br i1 %.not928, label %bb.qr, label %.thread2456

bb.qr:                                            ; preds = %bb.qq
  %i.apo = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.app = ptrtoint ptr %i.apo to i64
  %i.apq = sub i64 %i.app, %i.by
  %.not929 = icmp eq i64 %i.apq, %.42071
  br i1 %.not929, label %bb.qs, label %.thread2456

.thread2456:                                      ; preds = %bb.qr, %bb.qq
  call fastcc void @conf_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.020822515, i64 noundef %i.cb, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %bb.qu

bb.qs:                                            ; preds = %bb.qr
  store i64 %i.apm, ptr @je_opt_san_guard_small, align 8, !tbaa !32
  %i.apr = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.aps = trunc nuw i8 %i.apr to i1
  br i1 %i.aps, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.apt = trunc i64 %i.cb to i32
  %i.apu = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef %i.apt, ptr noundef nonnull %.020822515, i32 noundef %i.apu, ptr noundef nonnull %i.bx) #10
  br label %bb.qu

bb.qu:                                            ; preds = %.thread2456, %bb.qt, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  br label %conf_error.exit.thread

bb.qv:                                            ; preds = %bb.qp
  %i.apv = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.87, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 15) #12
  %i.apw = icmp eq i32 %i.apv, 0
  br i1 %i.apw, label %bb.qw, label %bb.rb

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #10
  %i.apx = tail call ptr @__errno_location() #11  ; 2 uses
  store i32 0, ptr %i.apx, align 4, !tbaa !18
  %i.apy = call i64 @je_malloc_strtoumax(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.ay, i32 noundef 0) #10
  %i.apz = load i32, ptr %i.apx, align 4, !tbaa !18
  %.not926 = icmp eq i32 %i.apz, 0
  br i1 %.not926, label %bb.qx, label %.thread2461

bb.qx:                                            ; preds = %bb.qw
  %i.aqa = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.aqb = ptrtoint ptr %i.aqa to i64
  %i.aqc = sub i64 %i.aqb, %i.by
  %.not927 = icmp eq i64 %i.aqc, %.42071
  br i1 %.not927, label %bb.qy, label %.thread2461

.thread2461:                                      ; preds = %bb.qx, %bb.qw
  call fastcc void @conf_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.020822515, i64 noundef %i.cb, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %bb.ra

bb.qy:                                            ; preds = %bb.qx
  store i64 %i.apy, ptr @je_opt_san_guard_large, align 8, !tbaa !32
  %i.aqd = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.aqe = trunc nuw i8 %i.aqd to i1
  br i1 %i.aqe, label %bb.qz, label %bb.ra

bb.qz:                                            ; preds = %bb.qy
  %i.aqf = trunc i64 %i.cb to i32
  %i.aqg = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef %i.aqf, ptr noundef nonnull %.020822515, i32 noundef %i.aqg, ptr noundef nonnull %i.bx) #10
  br label %bb.ra

bb.ra:                                            ; preds = %.thread2461, %bb.qz, %bb.qy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  br label %conf_error.exit.thread

bb.rb:                                            ; preds = %.thread2448, %bb.qv
  br i1 %i.aay, label %bb.rc, label %bb.rg

bb.rc:                                            ; preds = %bb.rb
  %i.aqh = call i32 @strncmp(ptr noundef nonnull dereferenceable(27) @.str.88, ptr noundef nonnull dereferenceable(1) %.020822515, i64 noundef 26) #12
  %i.aqi = icmp eq i32 %i.aqh, 0
  br i1 %i.aqi, label %bb.rd, label %bb.rg

bb.rd:                                            ; preds = %bb.rc
  %i.aqj = call fastcc zeroext i1 @conf_handle_bool(ptr noundef nonnull %i.bx, i64 noundef %.42071, ptr noundef nonnull @je_opt_disable_large_size_classes)
  br i1 %i.aqj, label %.thread2465, label %bb.re

.thread2465:                                      ; preds = %bb.rd
  call fastcc void @conf_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.020822515, i64 noundef 26, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %conf_error.exit.thread

bb.re:                                            ; preds = %bb.rd
  %i.aqk = load i8, ptr @je_opt_confirm_conf, align 1, !range !16
  %i.aql = trunc nuw i8 %i.aqk to i1
  br i1 %i.aql, label %bb.rf, label %conf_error.exit.thread, !llvm.loop !22

bb.rf:                                            ; preds = %bb.re
  %i.aqm = trunc i64 %.42071 to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.10, i32 noundef 26, ptr noundef nonnull %.020822515, i32 noundef %i.aqm, ptr noundef nonnull %i.bx) #10
  br label %conf_error.exit.thread, !llvm.loop !22

bb.rg:                                            ; preds = %bb.rb, %bb.rc
  call fastcc void @conf_error(ptr noundef nonnull @.str.89, ptr noundef nonnull %.020822515, i64 noundef %i.cb, ptr noundef nonnull %i.bx, i64 noundef %.42071)
  br label %conf_error.exit.thread

conf_error.exit.thread:                           ; preds = %conf_error.exit.thread2567, %.critedge.i1150, %.preheader.preheader.i1149, %bb.gy, %.critedge.i1144, %.preheader.preheader.i1143, %bb.gs, %.critedge.i1138, %.preheader.preheader.i1137, %bb.gm, %.critedge.i1132, %.preheader.preheader.i1131, %bb.gg, %.critedge.i1126, %.preheader.preheader.i1125, %.thread2252, %.critedge.i1106, %.preheader.preheader.i1105, %bb.ew, %bb.do, %.preheader.preheader.i1078, %.critedge.i1079, %.critedge.i1067, %.preheader.preheader.i1066, %conf_error.exit1065.2, %.critedge.i1061, %.preheader.preheader.i1060, %bb.cb, %.critedge1000, %.preheader.preheader.i1054, %.critedge.i1055, %.critedge.i1052, %.preheader.preheader.i1051, %bb.bt, %.critedge.i1046, %.preheader.preheader.i1045, %bb.bn, %.critedge.i1040, %.preheader.preheader.i1039, %bb.bh, %.critedge.i1034, %.preheader.preheader.i1033, %bb.bb, %.critedge.i1028, %.preheader.preheader.i1027, %bb.av, %.critedge.i1022, %.preheader.preheader.i1021, %bb.ap, %.critedge.i1016, %.preheader.preheader.i1015, %bb.aj, %.critedge.i, %.preheader.preheader.i, %bb.ab, %conf_handle_bool.exit, %.thread2465, %.thread2452, %.thread2445, %.thread2413, %.thread2388, %.thread2367, %.thread2359, %.thread2356, %.thread2106, %bb.re, %bb.rf, %bb.qn, %bb.qo, %bb.qf, %bb.qg, %bb.pw, %bb.px, %bb.ok, %bb.ol, %bb.of, %bb.og, %bb.mr, %bb.ms, %bb.ll, %bb.lm, %bb.ky, %bb.kz, %bb.kt, %bb.ku, %conf_error.exit1151, %bb.gz, %conf_error.exit1145, %bb.gt, %conf_error.exit1139, %bb.gn, %conf_error.exit1133, %bb.gh, %conf_error.exit1127, %bb.gb, %init_opt_stats_opts.exit1124, %bb.fq, %init_opt_stats_opts.exit, %bb.fd, %conf_error.exit1107, %bb.ex, %conf_error.exit1080, %bb.dp, %bb.cp, %bb.cq, %conf_error.exit1068, %bb.ck, %conf_error.exit1062, %bb.cc, %conf_error.exit1056, %bb.bv, %conf_error.exit1053, %bb.bu, %conf_error.exit1047, %bb.bo, %conf_error.exit1041, %bb.bi, %conf_error.exit1035, %bb.bc, %conf_error.exit1029, %bb.aw, %conf_error.exit1023, %bb.aq, %conf_error.exit1017, %bb.ak, %bb.ad, %conf_error.exit, %bb.ac, %bb.rg, %bb.ra, %bb.qu, %bb.qd, %bb.pr, %bb.pk, %bb.pe, %bb.ox, %bb.oq, %bb.od, %bb.nw, %bb.np, %.thread2397, %bb.mz, %bb.mn, %bb.mh, %bb.ma, %bb.lt, %bb.li, %.thread2352, %.thread2347, %.thread2342, %bb.jr, %bb.jk, %bb.je, %bb.iy, %bb.ir, %bb.ik, %bb.ie, %conf_error.exit1163.thread, %conf_error.exit1160.thread, %conf_error.exit1157.thread, %conf_error.exit1154.thread, %conf_error.exit1112.thread, %conf_error.exit1101.thread, %conf_error.exit1095.thread, %conf_error.exit1089.thread, %conf_error.exit1083.thread, %bb.dk, %conf_error.exit1074.thread, %conf_error.exit1071.thread
  %i.aqn = load i8, ptr %.12083, align 1, !tbaa !29 ; 2 uses
  %.not925 = icmp eq i8 %i.aqn, 0
  br i1 %.not925, label %.critedge, label %.preheader2496

.critedge.sink.split:                             ; preds = %bb.n, %bb.p
  %.sink2610 = phi ptr [ %i.cd, %bb.p ], [ %.049.i, %bb.n ]
  %.str.92.sink = phi ptr [ @.str.92, %bb.p ], [ @.str.93, %bb.n ]
  %i.aqo = ptrtoint ptr %.sink2610 to i64
  %i.aqp = ptrtoint ptr %.020822515 to i64
  %reass.sub = sub i64 %i.aqo, %i.aqp
  %i.aqq = add i64 %reass.sub, 1
  %i.aqr = call i64 @llvm.umin.i64(i64 %i.aqq, i64 64)
  %i.aqs = trunc nuw nsw i64 %i.aqr to i32
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.95, ptr noundef nonnull %.str.92.sink, i32 noundef %i.aqs, ptr noundef nonnull %.020822515) #10
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %conf_error.exit.thread, %.critedge.sink.split, %.preheader2497, %bb.o
  %i.aqt = call zeroext i1 @je_hpa_supported() #10 ; 0 uses
  %i.aqu = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !15, !range !16, !noundef !17
  %i.aqv = trunc nuw i8 %i.aqu to i1
  %i.aqw = load i8, ptr @je_had_conf_error, align 1, !range !16
  %i.aqx = trunc nuw i8 %i.aqw to i1
  %or.cond370 = select i1 %i.aqv, i1 %i.aqx, i1 false
  br i1 %or.cond370, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %.critedge
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str) #10
  call void %i.az() #10, !inline_history !19
  br label %bb.ri

bb.ri:                                            ; preds = %.critedge, %bb.rh, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.rj, label %bb.b, !llvm.loop !26

bb.rj:                                            ; preds = %bb.ri
  store atomic i8 1, ptr @je_log_init_done release, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @conf_handle_bool(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %bb.e [
    i64 4, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.39, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4) #12
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 5) #12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %storemerge, ptr %2, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @conf_error(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = trunc i64 %4 to i32
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %i.b, ptr noundef %3) #10
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.97, i64 noundef 13) #12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(26) @.str.98, i64 noundef 25) #12
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.preheader.preheader
  store i8 1, ptr @je_had_conf_error, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.critedge, %bb.a
  ret void
}

declare zeroext i1 @je_extent_dss_prec_set(i32 noundef) local_unnamed_addr #1

declare i64 @je_malloc_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @je_fxp_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @je_multi_setting_parse_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @je_bin_update_shard_size(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @je_tcache_bin_info_default_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @je_sc_data_init(ptr noundef) local_unnamed_addr #1

declare void @je_sc_data_update_slab_size(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @secure_getenv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @je_hpa_supported() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!9, !9, i64 0}
!19 = !{ptr @je_malloc_abort_invalid_conf}
!20 = distinct !{!20, !30}
!21 = distinct !{!21, !30}
!22 = distinct !{!22, !30}
!23 = distinct !{!23, !30}
!24 = distinct !{!24, !30}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !30}
!27 = !{!"p1 omnipotent char", !12, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"long", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"hpa_shard_opts_s", !31, i64 0, !31, i64 8, !9, i64 16, !14, i64 20, !31, i64 24, !14, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !9, i64 72}
!34 = !{!33, !31, i64 0}
!35 = !{!33, !31, i64 8}
!36 = !{!33, !31, i64 24}
!37 = !{!33, !31, i64 40}
!38 = !{!33, !31, i64 48}
!39 = !{!33, !31, i64 56}
!40 = !{!33, !31, i64 64}
!41 = !{!33, !9, i64 72}
!42 = !{!33, !9, i64 16}
!43 = !{!"sec_opts_s", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!44 = !{!43, !31, i64 0}
end_hunk_1
