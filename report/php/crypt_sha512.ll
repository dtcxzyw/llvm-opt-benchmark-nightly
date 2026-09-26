Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crypt_sha512?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@php_sha512_crypt_r:sub_0

bb.f:                                             ; preds = %bb.e
  %i.af = call noalias ptr @_emalloc(i64 noundef %i.ad) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = alloca i8, i64 %i.ad, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ah = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = and i64 %i.aj, 7
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %0, i64 %i.aa, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.0511 = phi ptr [ %i.am, %bb.h ], [ %0, %bb.d ] ; 5 uses
  %.0470 = phi ptr [ %i.am, %bb.h ], [ null, %bb.d ] ; 2 uses
  %.0462 = phi ptr [ %i.ah, %bb.h ], [ null, %bb.d ] ; 2 uses
  %.0461 = phi i1 [ %i.ae, %bb.h ], [ false, %bb.d ]
  %i.an = ptrtoint ptr %.3509 to i64
  %i.ao = and i64 %i.an, 7
  %.not526 = icmp ne i64 %i.ao, 0                 ; 2 uses
  br i1 %.not526, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw nsw i64 %spec.select536, 9
  %i.aq = alloca i8, i64 %i.ap, align 16          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 1 %.3509, i64 %spec.select536, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %spec.select536
  store i8 0, ptr %i.as, align 1, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4510 = phi ptr [ %i.ar, %bb.j ], [ %.3509, %bb.i ] ; 4 uses
  %.0469 = phi ptr [ %i.ar, %bb.j ], [ null, %bb.i ] ; 2 uses
  %.0460 = phi ptr [ %i.aq, %bb.j ], [ null, %bb.i ] ; 2 uses
  store i64 7640891576956012808, ptr %4, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 -4942790177534073029, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 4354685564936845355, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 -6534734903238641935, ptr %i.av, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 5840696475078001361, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 -7276294671716946913, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store i64 2270897969802886507, ptr %i.ay, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store i64 6620516959819538809, ptr %i.az, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.0511, i64 noundef %i.aa, ptr noundef %4)
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.4510, i64 noundef %spec.select536, ptr noundef %4)
  store i64 7640891576956012808, ptr %5, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 -4942790177534073029, ptr %i.bb, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 4354685564936845355, ptr %i.bc, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store i64 -6534734903238641935, ptr %i.bd, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i64 5840696475078001361, ptr %i.be, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i64 -7276294671716946913, ptr %i.bf, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store i64 2270897969802886507, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  store i64 6620516959819538809, ptr %i.bh, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.0511, i64 noundef %i.aa, ptr noundef %5)
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.4510, i64 noundef %spec.select536, ptr noundef %5)
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.0511, i64 noundef %i.aa, ptr noundef %5)
  %i.bj = call fastcc ptr @sha512_finish_ctx(ptr noundef %5, ptr noundef %i.a) ; 0 uses
  %i.bk = icmp ugt i64 %i.aa, 64
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.0474538 = phi i64 [ %i.bl, %.lr.ph ], [ %i.aa, %bb.k ]
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4)
  %i.bl = add i64 %.0474538, -64                  ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 64
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !21

._crit_edge.thread:                               ; preds = %.lr.ph
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef %i.bl, ptr noundef %4)
  br label %.lr.ph542.preheader

._crit_edge:                                      ; preds = %bb.k
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef %i.aa, ptr noundef %4)
  %.not527539 = icmp eq i64 %i.aa, 0
  br i1 %.not527539, label %._crit_edge547.critedge, label %.lr.ph542.preheader

.lr.ph542.preheader:                              ; preds = %._crit_edge.thread, %._crit_edge
  br label %.lr.ph542

.lr.ph542:                                        ; preds = %.lr.ph542.preheader, %bb.n
  %.1475540 = phi i64 [ %i.bo, %bb.n ], [ %i.aa, %.lr.ph542.preheader ] ; 2 uses
  %i.bn = and i64 %.1475540, 1
  %.not535 = icmp eq i64 %i.bn, 0
  br i1 %.not535, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph542
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph542
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.0511, i64 noundef %i.aa, ptr noundef %4)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bo = lshr i64 %.1475540, 1                   ; 2 uses
  %.not527 = icmp eq i64 %i.bo, 0
  br i1 %.not527, label %._crit_edge543, label %.lr.ph542, !llvm.loop !22

._crit_edge543:                                   ; preds = %bb.n
  %i.bp = call fastcc ptr @sha512_finish_ctx(ptr noundef %4, ptr noundef %i.a) ; 0 uses
  store i64 7640891576956012808, ptr %5, align 8, !tbaa !16
  store i64 -4942790177534073029, ptr %i.bb, align 8, !tbaa !16
  store i64 4354685564936845355, ptr %i.bc, align 8, !tbaa !16
  store i64 -6534734903238641935, ptr %i.bd, align 8, !tbaa !16
  store i64 5840696475078001361, ptr %i.be, align 8, !tbaa !16
  store i64 -7276294671716946913, ptr %i.bf, align 8, !tbaa !16
  store i64 2270897969802886507, ptr %i.bg, align 8, !tbaa !16
  store i64 6620516959819538809, ptr %i.bh, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %.lr.ph546

.lr.ph546:                                        ; preds = %._crit_edge543, %.lr.ph546
  %.2476544 = phi i64 [ %i.bq, %.lr.ph546 ], [ 0, %._crit_edge543 ]
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.0511, i64 noundef %i.aa, ptr noundef %5)
  %i.bq = add nuw i64 %.2476544, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.aa
  br i1 %exitcond.not, label %._crit_edge547, label %.lr.ph546, !llvm.loop !23

._crit_edge547.critedge:                          ; preds = %._crit_edge
  %i.br = call fastcc ptr @sha512_finish_ctx(ptr noundef %4, ptr noundef %i.a) ; 0 uses
  store i64 7640891576956012808, ptr %5, align 8, !tbaa !16
  store i64 -4942790177534073029, ptr %i.bb, align 8, !tbaa !16
  store i64 4354685564936845355, ptr %i.bc, align 8, !tbaa !16
  store i64 -6534734903238641935, ptr %i.bd, align 8, !tbaa !16
  store i64 5840696475078001361, ptr %i.be, align 8, !tbaa !16
  store i64 -7276294671716946913, ptr %i.bf, align 8, !tbaa !16
  store i64 2270897969802886507, ptr %i.bg, align 8, !tbaa !16
  store i64 6620516959819538809, ptr %i.bh, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %._crit_edge547

._crit_edge547:                                   ; preds = %.lr.ph546, %._crit_edge547.critedge
  %i.bs = call fastcc ptr @sha512_finish_ctx(ptr noundef %5, ptr noundef %i.b) ; 0 uses
  %i.bt = icmp ugt i64 %i.aa, 32768               ; 2 uses
  br i1 %i.bt, label %bb.o, label %bb.p, !prof !29

bb.o:                                             ; preds = %._crit_edge547
  %i.bu = call noalias ptr @_emalloc(i64 noundef %i.aa) #13
  br label %.lr.ph551.preheader

bb.p:                                             ; preds = %._crit_edge547
  %i.bv = alloca i8, i64 %i.aa, align 16          ; 3 uses
  %i.bw = icmp samesign ugt i64 %i.aa, 63
  br i1 %i.bw, label %.lr.ph551.preheader, label %._crit_edge552

.lr.ph551.preheader:                              ; preds = %bb.o, %bb.p
  %i.bx = phi ptr [ %i.bv, %bb.p ], [ %i.bu, %bb.o ] ; 2 uses
  br label %.lr.ph551

.lr.ph551:                                        ; preds = %.lr.ph551.preheader, %.lr.ph551
  %.0471549 = phi ptr [ %i.by, %.lr.ph551 ], [ %i.bx, %.lr.ph551.preheader ] ; 2 uses
  %.3477548 = phi i64 [ %i.bz, %.lr.ph551 ], [ %i.aa, %.lr.ph551.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.0471549, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.0471549, i64 64 ; 2 uses
  %i.bz = add i64 %.3477548, -64                  ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 63
  br i1 %i.ca, label %.lr.ph551, label %._crit_edge552, !llvm.loop !24

._crit_edge552:                                   ; preds = %.lr.ph551, %bb.p
  %i.cb = phi ptr [ %i.bv, %bb.p ], [ %i.bx, %.lr.ph551 ] ; 5 uses
  %.3477.lcssa = phi i64 [ %i.aa, %bb.p ], [ %i.bz, %.lr.ph551 ]
  %.0471.lcssa = phi ptr [ %i.bv, %bb.p ], [ %i.by, %.lr.ph551 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0471.lcssa, ptr nonnull align 8 %i.b, i64 %.3477.lcssa, i1 false)
  store i64 7640891576956012808, ptr %5, align 8, !tbaa !16
  store i64 -4942790177534073029, ptr %i.bb, align 8, !tbaa !16
  store i64 4354685564936845355, ptr %i.bc, align 8, !tbaa !16
  store i64 -6534734903238641935, ptr %i.bd, align 8, !tbaa !16
  store i64 5840696475078001361, ptr %i.be, align 8, !tbaa !16
  store i64 -7276294671716946913, ptr %i.bf, align 8, !tbaa !16
  store i64 2270897969802886507, ptr %i.bg, align 8, !tbaa !16
  store i64 6620516959819538809, ptr %i.bh, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge552, %bb.q
  %.4478555 = phi i64 [ 0, %._crit_edge552 ], [ %i.cc, %bb.q ]
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %.4510, i64 noundef %spec.select536, ptr noundef %5)
  %i.cc = add nuw nsw i64 %.4478555, 1            ; 2 uses
  %i.cd = load i8, ptr %i.a, align 8, !tbaa !27
  %i.ce = zext i8 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.ce, 16
  %i.cg = icmp samesign ult i64 %i.cc, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.r, !llvm.loop !25

bb.r:                                             ; preds = %bb.q
  %i.ch = call fastcc ptr @sha512_finish_ctx(ptr noundef %5, ptr noundef %i.b) ; 0 uses
  %i.ci = alloca i8, i64 %spec.select536, align 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ci, ptr nonnull align 8 %i.b, i64 %spec.select536, i1 false)
  %.not761 = icmp eq i64 %.2468, 0
  br i1 %.not761, label %._crit_edge559, label %.lr.ph558

.lr.ph558:                                        ; preds = %bb.r, %bb.ab
  %.6480556 = phi i64 [ %i.cn, %bb.ab ], [ 0, %bb.r ] ; 4 uses
  store i64 7640891576956012808, ptr %4, align 8, !tbaa !16
  store i64 -4942790177534073029, ptr %i.at, align 8, !tbaa !16
  store i64 4354685564936845355, ptr %i.au, align 8, !tbaa !16
  store i64 -6534734903238641935, ptr %i.av, align 8, !tbaa !16
  store i64 5840696475078001361, ptr %i.aw, align 8, !tbaa !16
  store i64 -7276294671716946913, ptr %i.ax, align 8, !tbaa !16
  store i64 2270897969802886507, ptr %i.ay, align 8, !tbaa !16
  store i64 6620516959819538809, ptr %i.az, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.cj = and i64 %.6480556, 1
  %.not532 = icmp eq i64 %i.cj, 0                 ; 2 uses
  br i1 %.not532, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph558
  call fastcc void @sha512_process_bytes(ptr noundef %i.cb, i64 noundef %i.aa, ptr noundef %4)
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph558
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = urem i64 %.6480556, 3
  %.not533 = icmp eq i64 %i.ck, 0
  br i1 %.not533, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.ci, i64 noundef %spec.select536, ptr noundef %4)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = urem i64 %.6480556, 7
  %.not534 = icmp eq i64 %i.cl, 0
  br i1 %.not534, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @sha512_process_bytes(ptr noundef %i.cb, i64 noundef %i.aa, ptr noundef %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not532, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @sha512_process_bytes(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %4)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call fastcc void @sha512_process_bytes(ptr noundef %i.cb, i64 noundef %i.aa, ptr noundef %4)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cm = call fastcc ptr @sha512_finish_ctx(ptr noundef %4, ptr noundef %i.a) ; 0 uses
  %i.cn = add nuw i64 %.6480556, 1                ; 2 uses
  %exitcond808.not = icmp eq i64 %i.cn, %.2468
  br i1 %exitcond808.not, label %._crit_edge559, label %.lr.ph558, !llvm.loop !26

._crit_edge559:                                   ; preds = %bb.ab, %bb.r
  %i.co = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = call ptr @__php_stpncpy(ptr noundef %2, ptr noundef nonnull @sha512_salt_prefix, i64 noundef %i.cp) #11 ; 3 uses
  %i.cr = add i32 %3, -3                          ; 3 uses
  br i1 %.2, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge559
  %i.cs = call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef %i.cq, i64 noundef %i.ct, ptr noundef nonnull @.str.1, ptr noundef nonnull @sha512_rounds_prefix, i64 noundef %.2468) #11 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 %i.cv
  %i.cx = sub nsw i32 %i.cr, %i.cu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge559
  %.0481 = phi i32 [ %i.cx, %bb.ac ], [ %i.cr, %._crit_edge559 ] ; 2 uses
  %.2473 = phi ptr [ %i.cw, %bb.ac ], [ %i.cq, %._crit_edge559 ]
  %i.cy = call i32 @llvm.smax.i32(i32 %.0481, i32 0)
  %i.cz = zext nneg i32 %i.cy to i64
  %.spec.select536 = call i64 @llvm.umin.i64(i64 %spec.select536, i64 %i.cz) ; 2 uses
  %i.da = call ptr @__php_stpncpy(ptr noundef %.2473, ptr noundef nonnull %.4510, i64 noundef %.spec.select536) #11 ; 6 uses
  %i.db = trunc nuw nsw i64 %.spec.select536 to i32
  %i.dc = sub nsw i32 %.0481, %i.db               ; 8 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.ae, label %._crit_edge755.thread

bb.ae:                                            ; preds = %bb.ad
  store i8 36, ptr %i.da, align 1, !tbaa !27
  %i.de = add nsw i32 %i.dc, -1                   ; 2 uses
  %.not916 = icmp eq i32 %i.de, 0
  br i1 %.not916, label %._crit_edge755.thread, label %.lr.ph565

.lr.ph565:                                        ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27
  %i.dh = load i8, ptr %i.a, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !27
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dm = and i32 %i.dk, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !27
  %i.dr = add nsw i32 %i.dc, -2
  %.not1028 = icmp eq i32 %i.de, 1
  br i1 %.not1028, label %._crit_edge566, label %.lr.ph565.1

.lr.ph565.1:                                      ; preds = %.lr.ph565
  %i.ds = zext i8 %i.dg to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %i.du = zext i8 %i.dh to i32                    ; 2 uses
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dt, %i.dv            ; 2 uses
  %i.dx = or disjoint i32 %i.dw, %i.dk
  %i.dy = lshr i32 %i.dx, 6
  %i.dz = and i32 %i.dy, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 3 ; 2 uses
  store i8 %i.ec, ptr %i.dq, align 1, !tbaa !27
  %i.ee = add nsw i32 %i.dc, -3
  %i.ef = icmp sgt i32 %i.dc, 3
  br i1 %i.ef, label %.lr.ph565.2, label %._crit_edge566

.lr.ph565.2:                                      ; preds = %.lr.ph565.1
  %i.eg = lshr i32 %i.dw, 12
  %i.eh = and i32 %i.eg, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  store i8 %i.ek, ptr %i.ed, align 1, !tbaa !27
  %i.em = add nsw i32 %i.dc, -4
  %.not1029 = icmp eq i32 %i.dc, 4
  br i1 %.not1029, label %._crit_edge566, label %.lr.ph565.3

.lr.ph565.3:                                      ; preds = %.lr.ph565.2
  %i.en = lshr i32 %i.du, 2
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !27
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  store i8 %i.eq, ptr %i.el, align 1, !tbaa !27
  %i.es = add nsw i32 %i.dc, -5
  br label %._crit_edge566

._crit_edge566:                                   ; preds = %.lr.ph565.3, %.lr.ph565.2, %.lr.ph565.1, %.lr.ph565
  %.lcssa1024 = phi ptr [ %i.dq, %.lr.ph565 ], [ %i.ed, %.lr.ph565.1 ], [ %i.el, %.lr.ph565.2 ], [ %i.er, %.lr.ph565.3 ] ; 5 uses
  %.lcssa1023 = phi i32 [ %i.dr, %.lr.ph565 ], [ %i.ee, %.lr.ph565.1 ], [ %i.em, %.lr.ph565.2 ], [ %i.es, %.lr.ph565.3 ] ; 8 uses
  %.not917 = icmp eq i32 %.lcssa1023, 0
  br i1 %.not917, label %._crit_edge755.thread, label %.lr.ph574

.lr.ph574:                                        ; preds = %._crit_edge566
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !27
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !27
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = and i32 %i.ez, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !27
  %i.fe = getelementptr inbounds nuw i8, ptr %.lcssa1024, i64 1 ; 2 uses
  store i8 %i.fd, ptr %.lcssa1024, align 1, !tbaa !27
  %i.ff = add nsw i32 %.lcssa1023, -1
  %.not1030 = icmp eq i32 %.lcssa1023, 1
  br i1 %.not1030, label %._crit_edge575, label %.lr.ph574.1

.lr.ph574.1:                                      ; preds = %.lr.ph574
  %i.fg = zext i8 %i.eu to i32
  %i.fh = shl nuw nsw i32 %i.fg, 8
  %i.fi = zext i8 %i.ew to i32                    ; 2 uses
  %i.fj = shl nuw nsw i32 %i.fi, 16
  %i.fk = or disjoint i32 %i.fh, %i.fj            ; 2 uses
  %i.fl = or disjoint i32 %i.fk, %i.ez
  %i.fm = lshr i32 %i.fl, 6
  %i.fn = and i32 %i.fm, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @b64t, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %.lcssa1024, i64 2 ; 2 uses
  store i8 %i.fq, ptr %i.fe, align 1, !tbaa !27
  %i.fs = add nsw i32 %.lcssa1023, -2
  %i.ft = icmp sgt i32 %.lcssa1023, 2
  br i1 %i.ft, label %.lr.ph574.2, label %._crit_edge575
end_hunk_0
