Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@main:bb.a
  store i64 %i.bwi, ptr %i.btx, align 16, !tbaa !38
  %i.bwj = load ptr, ptr @context, align 8, !tbaa !148
  %i.bwk = call i32 @redisAppendCommandArgv(ptr noundef %i.bwj, i32 noundef 3, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #32
  %i.bwl = add i32 %.032.i.i, 1                   ; 2 uses
  %i.bwm = zext i32 %i.bwl to i64                 ; 2 uses
  %i.bwn = load i64, ptr %i.bvo, align 8, !tbaa !46 ; 2 uses
  %i.bwo = icmp ugt i64 %i.bwn, %i.bwm
  br i1 %i.bwo, label %bb.vy, label %.preheader.i.i, !llvm.loop !326

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i, %bb.we
  %i.bwp = phi i64 [ %i.bye, %bb.we ], [ 0, %.preheader.i.i ] ; 4 uses
  %.133.i.i = phi i32 [ %i.byd, %bb.we ], [ 0, %.preheader.i.i ]
  %i.bwq = load ptr, ptr @context, align 8, !tbaa !148
  %i.bwr = call i32 @redisGetReply(ptr noundef %i.bwq, ptr noundef nonnull %i.m) #32
  %.not.i.i124 = icmp eq i32 %i.bwr, 0
  br i1 %.not.i.i124, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %.lr.ph34.i.i
  %i.bws = call ptr @hi_sdsempty() #32
  %i.bwt = load ptr, ptr %i.bvy, align 8, !tbaa !47
  %i.bwu = getelementptr inbounds nuw [8 x i8], ptr %i.bwt, i64 %i.bwp
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !49 ; 2 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 32
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !51
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwv, i64 24
  %i.bwz = load i64, ptr %i.bwy, align 8, !tbaa !70
  %i.bxa = call ptr @hi_sdscatrepr(ptr noundef %i.bws, ptr noundef %i.bwx, i64 noundef %i.bwz) #32 ; 2 uses
  %i.bxb = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bxc = load ptr, ptr @context, align 8, !tbaa !148 ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 8
  %i.bxe = load i32, ptr %i.bxd, align 8, !tbaa !129
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxc, i64 12
  %i.bxg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bxb, ptr noundef nonnull @.str.845, ptr noundef %i.bxa, i32 noundef %i.bxe, ptr noundef nonnull %i.bxf) #39 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.bxa) #32
  call void @exit(i32 noundef 1) #40
  unreachable

bb.wa:                                            ; preds = %.lr.ph34.i.i
  %i.bxh = load ptr, ptr %i.m, align 8, !tbaa !49 ; 4 uses
  %i.bxi = load i32, ptr %i.bxh, align 8, !tbaa !50
  switch i32 %i.bxi, label %bb.wc [
    i32 3, label %bb.wd
    i32 6, label %bb.wb
  ]

bb.wb:                                            ; preds = %bb.wa
  %i.bxj = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxh, i64 32
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !51
  %i.bxm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bxj, ptr noundef nonnull @.str.463, ptr noundef %i.bxl) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.wc:                                            ; preds = %bb.wa
  %i.bxn = call ptr @hi_sdsempty() #32
  %i.bxo = load ptr, ptr %i.bvy, align 8, !tbaa !47
  %i.bxp = getelementptr inbounds nuw [8 x i8], ptr %i.bxo, i64 %i.bwp
  %i.bxq = load ptr, ptr %i.bxp, align 8, !tbaa !49 ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 32
  %i.bxs = load ptr, ptr %i.bxr, align 8, !tbaa !51
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxq, i64 24
  %i.bxu = load i64, ptr %i.bxt, align 8, !tbaa !70
  %i.bxv = call ptr @hi_sdscatrepr(ptr noundef %i.bxn, ptr noundef %i.bxs, i64 noundef %i.bxu) #32 ; 2 uses
  %i.bxw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bxx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bxw, ptr noundef nonnull @.str.846, ptr noundef %i.bxv) #39 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.bxv) #32
  %i.bxy = getelementptr inbounds nuw [8 x i8], ptr %.181.i, i64 %i.bwp
  store i64 0, ptr %i.bxy, align 8, !tbaa !189
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !49
  br label %bb.we

bb.wd:                                            ; preds = %bb.wa
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxh, i64 8
  %i.bya = load i64, ptr %i.bxz, align 8, !tbaa !132
  %i.byb = getelementptr inbounds nuw [8 x i8], ptr %.181.i, i64 %i.bwp
  store i64 %i.bya, ptr %i.byb, align 8, !tbaa !189
  br label %bb.we

bb.we:                                            ; preds = %bb.wd, %bb.wc
  %i.byc = phi ptr [ %.pre.i.i, %bb.wc ], [ %i.bxh, %bb.wd ]
  call void @freeReplyObject(ptr noundef %i.byc) #32
  %i.byd = add i32 %.133.i.i, 1                   ; 2 uses
  %i.bye = zext i32 %i.byd to i64                 ; 2 uses
  %i.byf = load i64, ptr %i.bvo, align 8, !tbaa !46 ; 2 uses
  %i.byg = icmp ugt i64 %i.byf, %i.bye
  br i1 %i.byg, label %.lr.ph34.i.i, label %getKeyFreqs.exit.i, !llvm.loop !327

getKeyFreqs.exit.i:                               ; preds = %bb.we, %.getKeyFreqs.exit_crit_edge.i
  %i.byh = phi i64 [ %.pre.i140, %.getKeyFreqs.exit_crit_edge.i ], [ %i.byf, %bb.we ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32
  %.not133.i = icmp eq i64 %i.byh, 0
  br i1 %.not133.i, label %._crit_edge.i127, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %getKeyFreqs.exit.i
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bvn, i64 56
  br label %bb.wf

bb.wf:                                            ; preds = %.critedge.i126, %.lr.ph.i125
  %i.byj = phi i64 [ 0, %.lr.ph.i125 ], [ %i.cau, %.critedge.i126 ] ; 2 uses
  %.076127.i = phi i32 [ 0, %.lr.ph.i125 ], [ %i.cat, %.critedge.i126 ]
  %.183126.i = phi i64 [ %.082.i, %.lr.ph.i125 ], [ %i.byk, %.critedge.i126 ]
  %i.byk = add i64 %.183126.i, 1                  ; 4 uses
  %i.byl = urem i64 %i.byk, 1000000
  %i.bym = icmp eq i64 %i.byl, 0
  br i1 %i.bym, label %bb.wg, label %bb.wj

bb.wg:                                            ; preds = %bb.wf
  %i.byn = call i32 @isatty(i32 noundef 1) #32
  %.not105.i138 = icmp eq i32 %i.byn, 0
  br i1 %.not105.i138, label %bb.wh, label %bb.wj

bb.wh:                                            ; preds = %bb.wg
  %i.byo = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not106.i139 = icmp eq ptr %i.byo, null
  br i1 %.not106.i139, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.byp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.769, double noundef %i.bvh, i64 noundef %i.byk) ; 0 uses
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh, %bb.wg, %bb.wf
  %i.byq = getelementptr inbounds nuw [8 x i8], ptr %.181.i, i64 %i.byj ; 3 uses
  %i.byr = load i64, ptr %i.byq, align 8, !tbaa !189 ; 16 uses
  %i.bys = load i64, ptr %i.p, align 16, !tbaa !189
  %.not200.i = icmp ugt i64 %i.byr, %i.bys
  br i1 %.not200.i, label %bb.wk, label %.critedge.i126

bb.wk:                                            ; preds = %bb.wj
  %i.byt = load i64, ptr %i.bty, align 8, !tbaa !189
  %i.byu = icmp ugt i64 %i.byr, %i.byt
  br i1 %i.byu, label %bb.wl, label %._crit_edge156.i

bb.wl:                                            ; preds = %bb.wk
  %i.byv = load i64, ptr %i.bud, align 16, !tbaa !189
  %i.byw = icmp ugt i64 %i.byr, %i.byv
  br i1 %i.byw, label %bb.wm, label %._crit_edge153.i.a

bb.wm:                                            ; preds = %bb.wl
  %i.byx = load i64, ptr %i.bue, align 8, !tbaa !189
  %i.byy = icmp ugt i64 %i.byr, %i.byx
  br i1 %i.byy, label %bb.wn, label %._crit_edge153.i.a

bb.wn:                                            ; preds = %bb.wm
  %i.byz = load i64, ptr %i.buf, align 16, !tbaa !189
  %i.bza = icmp ugt i64 %i.byr, %i.byz
  br i1 %i.bza, label %bb.wo, label %._crit_edge153.i.a

bb.wo:                                            ; preds = %bb.wn
  %i.bzb = load i64, ptr %i.bug, align 8, !tbaa !189
  %i.bzc = icmp ugt i64 %i.byr, %i.bzb
  br i1 %i.bzc, label %bb.wp, label %._crit_edge153.i.a

bb.wp:                                            ; preds = %bb.wo
  %i.bzd = load i64, ptr %i.buh, align 16, !tbaa !189
  %i.bze = icmp ugt i64 %i.byr, %i.bzd
  br i1 %i.bze, label %bb.wq, label %._crit_edge153.i.a

bb.wq:                                            ; preds = %bb.wp
  %i.bzf = load i64, ptr %i.bui, align 8, !tbaa !189
  %i.bzg = icmp ugt i64 %i.byr, %i.bzf
  br i1 %i.bzg, label %bb.wr, label %._crit_edge153.i.a

bb.wr:                                            ; preds = %bb.wq
  %i.bzh = load i64, ptr %i.buj, align 16, !tbaa !189
  %i.bzi = icmp ugt i64 %i.byr, %i.bzh
  br i1 %i.bzi, label %bb.ws, label %._crit_edge153.i.a

bb.ws:                                            ; preds = %bb.wr
  %i.bzj = load i64, ptr %i.buk, align 8, !tbaa !189
  %i.bzk = icmp ugt i64 %i.byr, %i.bzj
  br i1 %i.bzk, label %bb.wt, label %._crit_edge153.i.a

bb.wt:                                            ; preds = %bb.ws
  %i.bzl = load i64, ptr %i.bul, align 16, !tbaa !189
  %i.bzm = icmp ugt i64 %i.byr, %i.bzl
  br i1 %i.bzm, label %bb.wu, label %._crit_edge153.i.a

bb.wu:                                            ; preds = %bb.wt
  %i.bzn = load i64, ptr %i.bum, align 8, !tbaa !189
  %i.bzo = icmp ugt i64 %i.byr, %i.bzn
  br i1 %i.bzo, label %bb.wv, label %._crit_edge153.i.a

bb.wv:                                            ; preds = %bb.wu
  %i.bzp = load i64, ptr %i.bun, align 16, !tbaa !189
  %i.bzq = icmp ugt i64 %i.byr, %i.bzp
  br i1 %i.bzq, label %bb.ww, label %._crit_edge153.i.a

bb.ww:                                            ; preds = %bb.wv
  %i.bzr = load i64, ptr %i.buo, align 8, !tbaa !189
  %i.bzs = icmp ugt i64 %i.byr, %i.bzr
  br i1 %i.bzs, label %bb.wx, label %._crit_edge153.i.a

bb.wx:                                            ; preds = %bb.ww
  %i.bzt = load i64, ptr %i.bup, align 16, !tbaa !189
  %i.bzu = icmp ugt i64 %i.byr, %i.bzt
  br i1 %i.bzu, label %bb.wy, label %._crit_edge153.i.a

bb.wy:                                            ; preds = %bb.wx
  %i.bzv = load i64, ptr %i.buq, align 8, !tbaa !189
  %i.bzw = icmp ugt i64 %i.byr, %i.bzv
  %spec.select.i137 = select i1 %i.bzw, i32 15, i32 14
  br label %._crit_edge153.i.a

._crit_edge153.i.a:                               ; preds = %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl
  %.074125.lcssa.wide.ph.ph.i = phi i32 [ %spec.select.i137, %bb.wy ], [ 1, %bb.wl ], [ 2, %bb.wm ], [ 3, %bb.wn ], [ 4, %bb.wo ], [ 5, %bb.wp ], [ 6, %bb.wq ], [ 7, %bb.wr ], [ 8, %bb.ws ], [ 9, %bb.wt ], [ 10, %bb.wu ], [ 11, %bb.wv ], [ 12, %bb.ww ], [ 13, %bb.wx ] ; 2 uses
  %.phi.trans.insert.i136 = zext nneg i32 %.074125.lcssa.wide.ph.ph.i to i64 ; 3 uses
  %.phi.trans.insert154.i = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.phi.trans.insert.i136
  %.pre155.i = load i64, ptr %.phi.trans.insert154.i, align 8, !tbaa !189
  %36 = icmp eq i64 %.pre155.i, 0
  br i1 %36, label %._crit_edge156.i, label %bb.wz

._crit_edge156.i:                                 ; preds = %bb.wk, %._crit_edge153.i.a
  %i.bzx = phi i32 [ %.074125.lcssa.wide.ph.ph.i, %._crit_edge153.i.a ], [ 0, %bb.wk ]
  %i.bzy = zext nneg i32 %i.bzx to i64            ; 2 uses
  %i.bzz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bzy
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.caa) #32
  br label %bb.xa

bb.wz:                                            ; preds = %._crit_edge153.i.a
  %i.cab = load ptr, ptr %i.q, align 16, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.cab) #32
  %i.cac = shl nuw nsw i64 %.phi.trans.insert.i136, 3 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.bty, i64 %i.cac, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.btz, i64 %i.cac, i1 false)
  br label %bb.xa

bb.xa:                                            ; preds = %bb.wz, %._crit_edge156.i
  %.pre-phi.i134 = phi i64 [ %.phi.trans.insert.i136, %bb.wz ], [ %i.bzy, %._crit_edge156.i ] ; 2 uses
  %i.cad = load i64, ptr %i.byq, align 8, !tbaa !189
  %i.cae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi.i134
  store i64 %i.cad, ptr %i.cae, align 8, !tbaa !189
  %i.caf = call ptr @hi_sdsempty() #32
  %i.cag = load ptr, ptr %i.byi, align 8, !tbaa !47
  %i.cah = getelementptr inbounds nuw [8 x i8], ptr %i.cag, i64 %i.byj
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !49 ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 32
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !51
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cai, i64 24
  %i.cam = load i64, ptr %i.cal, align 8, !tbaa !70
  %i.can = call ptr @hi_sdscatrepr(ptr noundef %i.caf, ptr noundef %i.cak, i64 noundef %i.cam) #32 ; 2 uses
  %i.cao = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre-phi.i134
  store ptr %i.can, ptr %i.cao, align 8, !tbaa !40
  %i.cap = call i32 @isatty(i32 noundef 1) #32
  %.not107.i135 = icmp eq i32 %i.cap, 0
  br i1 %.not107.i135, label %bb.xb, label %.critedge.i126

bb.xb:                                            ; preds = %bb.xa
  %i.caq = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not108.i = icmp eq ptr %i.caq, null
  br i1 %.not108.i, label %bb.xc, label %.critedge.i126

bb.xc:                                            ; preds = %bb.xb
  %i.car = load i64, ptr %i.byq, align 8, !tbaa !189
  %i.cas = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.840, double noundef %i.bvh, ptr noundef %i.can, i64 noundef %i.car) ; 0 uses
  br label %.critedge.i126

.critedge.i126:                                   ; preds = %bb.xc, %bb.xb, %bb.xa, %bb.wj
  %i.cat = add i32 %.076127.i, 1                  ; 2 uses
  %i.cau = zext i32 %i.cat to i64                 ; 2 uses
  %i.cav = load i64, ptr %i.bvo, align 8, !tbaa !46
  %i.caw = icmp ugt i64 %i.cav, %i.cau
  br i1 %i.caw, label %bb.wf, label %._crit_edge.i127, !llvm.loop !328

._crit_edge.i127:                                 ; preds = %.critedge.i126, %getKeyFreqs.exit.i, %getKeyFreqs.exit.thread.i
  %.183.lcssa.i = phi i64 [ %.082.i, %getKeyFreqs.exit.i ], [ %.082.i, %getKeyFreqs.exit.thread.i ], [ %i.byk, %.critedge.i126 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cax = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #32 ; 0 uses
  %i.cay = load i64, ptr %8, align 8, !tbaa !186
  %i.caz = mul nsw i64 %i.cay, 1000000
  %i.cba = load i64, ptr %i.bua, align 8, !tbaa !187
  %i.cbb = add nsw i64 %i.caz, %i.cba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.cbc = sdiv i64 %i.cbb, 1000
  %i.cbd = add nsw i64 %.072.i, 300
  %i.cbe = icmp sgt i64 %i.cbc, %i.cbd
  br i1 %i.cbe, label %bb.xd, label %bb.ys

bb.xd:                                            ; preds = %._crit_edge.i127
  %i.cbf = call i32 @isatty(i32 noundef 1) #32
  %.not93.i = icmp eq i32 %i.cbf, 0
  br i1 %.not93.i, label %bb.xe, label %bb.xf

bb.xe:                                            ; preds = %bb.xd
  %i.cbg = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not94.i = icmp eq ptr %i.cbg, null
  br i1 %.not94.i, label %bb.ys, label %bb.xf

bb.xf:                                            ; preds = %bb.xe, %bb.xd
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cbh = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #32 ; 0 uses
  %i.cbi = load i64, ptr %7, align 8, !tbaa !186
  %i.cbj = mul nsw i64 %i.cbi, 1000000
  %i.cbk = load i64, ptr %i.bub, align 8, !tbaa !187
  %i.cbl = add nsw i64 %i.cbj, %i.cbk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cbm = sdiv i64 %i.cbl, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  br i1 %.not.i110.i, label %bb.xi, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.cbn = icmp ult i64 %.183.lcssa.i, %i.btt
  br i1 %i.cbn, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  %i.cbo = uitofp i64 %.183.lcssa.i to double
  %i.cbp = fdiv double %i.cbo, %i.btu
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg, %bb.xf
  %i.cbq = phi double [ 1.000000e+00, %bb.xg ], [ %i.cbp, %bb.xh ], [ 0.000000e+00, %bb.xf ] ; 2 uses
  %i.cbr = call i32 @isatty(i32 noundef 1) #32
  %.not16.i.i = icmp eq i32 %i.cbr, 0
  br i1 %.not16.i.i, label %bb.xj, label %bb.xk

bb.xj:                                            ; preds = %bb.xi
  %i.cbs = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17.i.i = icmp eq ptr %i.cbs, null
  br i1 %.not17.i.i, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  %i.cbt = fmul double %i.cbq, 6.000000e+01
  %i.cbu = call double @llvm.round.f64(double %i.cbt)
  %i.cbv = fptosi double %i.cbu to i32            ; 2 uses
  %i.cbw = zext nneg i32 %i.cbv to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.i, i8 124, i64 %i.cbw, i1 false)
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cbw
  store i8 0, ptr %i.cbx, align 1, !tbaa !73
  %i.cby = sub nsw i32 60, %i.cbv
  %i.cbz = sext i32 %i.cby to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.buc, i8 45, i64 %i.cbz, i1 false)
  %i.cca = getelementptr inbounds i8, ptr %i.buc, i64 %i.cbz
  store i8 0, ptr %i.cca, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.ccb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.buc, ptr noundef nonnull %i.l) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %displayKeyStatsProgressbar.exit.i

bb.xl:                                            ; preds = %bb.xj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %displayKeyStatsProgressbar.exit.i

displayKeyStatsProgressbar.exit.i:                ; preds = %bb.xl, %bb.xk
  %i.ccc = fmul double %i.cbq, 1.000000e+02
  %i.ccd = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.ccc, ptr noundef nonnull %i.h)
  %i.cce = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %.183.lcssa.i)
  %i.ccf = add nsw i32 %i.cce, %i.ccd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  %i.ccg = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.cch = add nsw i32 %i.ccf, %i.ccg             ; 2 uses
  %i.cci = load i64, ptr %i.buq, align 8, !tbaa !189 ; 2 uses
  %.not104.i132 = icmp eq i64 %i.cci, 0
  br i1 %.not104.i132, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %displayKeyStatsProgressbar.exit.i
  %i.ccj = load ptr, ptr %i.bur, align 8, !tbaa !40
  %i.cck = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cci, ptr noundef %i.ccj)
  %i.ccl = add nsw i32 %i.cck, %i.cch
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xm, %displayKeyStatsProgressbar.exit.i
  %.1.i133 = phi i32 [ %i.ccl, %bb.xm ], [ %i.cch, %displayKeyStatsProgressbar.exit.i ] ; 2 uses
  %i.ccm = load i64, ptr %i.bup, align 16, !tbaa !189 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.ccm, 0
  br i1 %.not104.1.i, label %bb.xp, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.ccn = load ptr, ptr %i.bus, align 16, !tbaa !40
  %i.cco = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccm, ptr noundef %i.ccn)
  %i.ccp = add nsw i32 %i.cco, %.1.i133
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xo, %bb.xn
  %.1.1.i = phi i32 [ %i.ccp, %bb.xo ], [ %.1.i133, %bb.xn ] ; 2 uses
  %i.ccq = load i64, ptr %i.buo, align 8, !tbaa !189 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.ccq, 0
  br i1 %.not104.2.i, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.ccr = load ptr, ptr %i.but, align 8, !tbaa !40
  %i.ccs = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccq, ptr noundef %i.ccr)
  %i.cct = add nsw i32 %i.ccs, %.1.1.i
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp
  %.1.2.i = phi i32 [ %i.cct, %bb.xq ], [ %.1.1.i, %bb.xp ] ; 2 uses
  %i.ccu = load i64, ptr %i.bun, align 16, !tbaa !189 ; 2 uses
  %.not104.3.i = icmp eq i64 %i.ccu, 0
  br i1 %.not104.3.i, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.ccv = load ptr, ptr %i.buu, align 16, !tbaa !40
  %i.ccw = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccu, ptr noundef %i.ccv)
  %i.ccx = add nsw i32 %i.ccw, %.1.2.i
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.1.3.i = phi i32 [ %i.ccx, %bb.xs ], [ %.1.2.i, %bb.xr ] ; 2 uses
  %i.ccy = load i64, ptr %i.bum, align 8, !tbaa !189 ; 2 uses
  %.not104.4.i = icmp eq i64 %i.ccy, 0
  br i1 %.not104.4.i, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.ccz = load ptr, ptr %i.buv, align 8, !tbaa !40
  %i.cda = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccy, ptr noundef %i.ccz)
  %i.cdb = add nsw i32 %i.cda, %.1.3.i
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %bb.xt
  %.1.4.i = phi i32 [ %i.cdb, %bb.xu ], [ %.1.3.i, %bb.xt ] ; 2 uses
  %i.cdc = load i64, ptr %i.bul, align 16, !tbaa !189 ; 2 uses
  %.not104.5.i = icmp eq i64 %i.cdc, 0
  br i1 %.not104.5.i, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cdd = load ptr, ptr %i.buw, align 16, !tbaa !40
  %i.cde = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdc, ptr noundef %i.cdd)
  %i.cdf = add nsw i32 %i.cde, %.1.4.i
  br label %bb.xx

end_hunk_0
