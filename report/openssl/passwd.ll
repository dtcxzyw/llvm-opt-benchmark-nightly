Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/passwd?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 36
begin_hunk_0_@passwd_main:bb.a
  %.092.be = phi i32 [ %.092, %bb.b ], [ %.092, %bb.f ], [ 1, %bb.g ], [ %.092, %bb.h ], [ %.092, %bb.i ], [ %.092, %bb.j ], [ %.092, %bb.s ], [ %.092, %bb.k ], [ %.092, %bb.l ], [ %.092, %bb.m ], [ %.092, %bb.n ], [ %.092, %bb.p ], [ %.092, %bb.o ], [ %.092, %bb.r ], [ %.092, %bb.q ]
  %.090.be = phi i32 [ %.090, %bb.b ], [ %.090, %bb.f ], [ %.090, %bb.g ], [ %.090, %bb.h ], [ %.090, %bb.i ], [ %.090, %bb.j ], [ %.090, %bb.s ], [ %.090, %bb.k ], [ %.090, %bb.l ], [ %.090, %bb.m ], [ %.090, %bb.n ], [ 1, %bb.p ], [ %.090, %bb.o ], [ %.090, %bb.r ], [ %.090, %bb.q ]
  %.088.be = phi i32 [ %.088, %bb.b ], [ %.088, %bb.f ], [ %.088, %bb.g ], [ 1, %bb.h ], [ %.088, %bb.i ], [ %.088, %bb.j ], [ %.088, %bb.s ], [ %.088, %bb.k ], [ %.088, %bb.l ], [ %.088, %bb.m ], [ %.088, %bb.n ], [ %.088, %bb.p ], [ %.088, %bb.o ], [ %.088, %bb.r ], [ %.088, %bb.q ]
  %.086.be = phi i32 [ %.086, %bb.b ], [ %.086, %bb.f ], [ %.086, %bb.g ], [ %.086, %bb.h ], [ 1, %bb.i ], [ %.086, %bb.j ], [ %.086, %bb.s ], [ %.086, %bb.k ], [ %.086, %bb.l ], [ %.086, %bb.m ], [ %.086, %bb.n ], [ %.086, %bb.p ], [ %.086, %bb.o ], [ %.086, %bb.r ], [ %.086, %bb.q ]
  %.084.be = phi i32 [ %.084, %bb.b ], [ %.084, %bb.f ], [ %.084, %bb.g ], [ %.084, %bb.h ], [ %.084, %bb.i ], [ 1, %bb.j ], [ %.084, %bb.s ], [ %.084, %bb.k ], [ %.084, %bb.l ], [ %.084, %bb.m ], [ %.084, %bb.n ], [ %.084, %bb.p ], [ %.084, %bb.o ], [ %.084, %bb.r ], [ %.084, %bb.q ]
  %.081.be = phi i32 [ %.081, %bb.b ], [ %.081, %bb.f ], [ %.081, %bb.g ], [ %.081, %bb.h ], [ %.081, %bb.i ], [ %.081, %bb.j ], [ %.081, %bb.s ], [ 1, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 2, %bb.n ], [ %.081, %bb.p ], [ 5, %bb.o ], [ %.081, %bb.r ], [ %.081, %bb.q ]
  br label %bb.b, !llvm.loop !16

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @opt_rand(i32 noundef %i.f) #7
  %.not128 = icmp eq i32 %i.k, 0
  br i1 %.not128, label %.thread149.loopexit154, label %.backedge

bb.s:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = tail call i32 @opt_provider(i32 noundef %i.f) #7
  %.not129 = icmp eq i32 %i.l, 0
  br i1 %.not129, label %.thread149.loopexit154, label %.backedge

bb.t:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.a, align 8
  %i.m = tail call ptr @opt_rest() #7             ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %.not115 = icmp eq ptr %i.n, null
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not116 = icmp eq i32 %.094, 0
  br i1 %.not116, label %bb.v, label %bb.c

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0100 = phi ptr [ null, %bb.t ], [ %i.m, %bb.u ] ; 4 uses
  %i.o = tail call i32 @app_RAND_load() #7
  %.not117 = icmp eq i32 %i.o, 0
  br i1 %.not117, label %.thread149, label %bb.w

bb.w:                                             ; preds = %bb.v
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.081, i32 1) ; 2 uses
  %i.p = icmp ne ptr %.0104, null                 ; 2 uses
  %i.q = icmp ne i32 %.096, 0                     ; 2 uses
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !13
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.49, ptr noundef %i.d) #7 ; 0 uses
  br label %.thread149

bb.y:                                             ; preds = %bb.w
  %or.cond4 = or i1 %i.p, %i.q
  br i1 %or.cond4, label %bb.z, label %.thread223

bb.z:                                             ; preds = %bb.y
  %i.t = tail call ptr @bio_open_default(ptr noundef %.0104, i8 noundef signext 114, i32 noundef 32769) #7 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread149, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.v = icmp eq ptr %.0100, null
  br i1 %i.v, label %bb.ab, label %.preheader151

.thread223:                                       ; preds = %bb.y
  %i.w = icmp eq ptr %.0100, null
  br i1 %i.w, label %bb.ac, label %.thread..preheader_crit_edge

.thread..preheader_crit_edge:                     ; preds = %.thread223
  %.pre.pre = load ptr, ptr %.0100, align 8, !tbaa !11
  br label %.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.x = tail call ptr @app_malloc(i64 noundef 258, ptr noundef nonnull @.str.50) #7
  br label %.preheader151

.preheader151:                                    ; preds = %bb.ab, %bb.aa
  %.098140142.ph = phi ptr [ %i.x, %bb.ab ], [ null, %bb.aa ] ; 5 uses
  br label %bb.af

bb.ac:                                            ; preds = %.thread223
  %i.y = tail call ptr @app_malloc(i64 noundef 258, ptr noundef nonnull @.str.50) #7 ; 5 uses
  %i.z = or i32 %.090, %.092
  %i.aa = xor i32 %i.z, 1
  %i.ab = tail call i32 @EVP_read_pw_string(ptr noundef %i.y, i32 noundef 258, ptr noundef nonnull @.str.51, i32 noundef %i.aa) #7
  %.not121 = icmp eq i32 %i.ab, 0
  br i1 %.not121, label %.split, label %.thread149

.split:                                           ; preds = %bb.ac
  store ptr %i.y, ptr @passwd_main.passwds_static, align 16, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %.thread..preheader_crit_edge, %.split
  %.pre = phi ptr [ %i.y, %.split ], [ %.pre.pre, %.thread..preheader_crit_edge ]
  %.098140143.ph = phi ptr [ %i.y, %.split ], [ null, %.thread..preheader_crit_edge ] ; 2 uses
  %.2102.ph = phi ptr [ @passwd_main.passwds_static, %.split ], [ %.0100, %.thread..preheader_crit_edge ]
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader, %bb.ae
  %i.ac = phi ptr [ %i.ag, %bb.ae ], [ %.pre, %.preheader ]
  %.2102 = phi ptr [ %i.af, %bb.ae ], [ %.2102.ph, %.preheader ]
  %i.ad = load ptr, ptr @bio_out, align 8, !tbaa !13
  %i.ae = call fastcc i32 @do_passwd(i32 noundef %.090, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %.088, i32 noundef %.086, i32 noundef %.084, i32 noundef %spec.store.select)
  %.not126 = icmp eq i32 %i.ae, 0
  br i1 %.not126, label %.thread149, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.2102, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not127 = icmp eq ptr %i.ag, null
  br i1 %.not127, label %.thread149, label %bb.ad, !llvm.loop !17

bb.af:                                            ; preds = %bb.al, %.preheader151
  %i.ah = call i32 @BIO_gets(ptr noundef nonnull %i.t, ptr noundef %.098140142.ph, i32 noundef 257) #7
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.ag, label %.thread149

bb.ag:                                            ; preds = %bb.af
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.098140142.ph, i32 noundef 10) #8 ; 2 uses
  %.not122 = icmp eq ptr %i.aj, null
  br i1 %.not122, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.ak = call i32 @BIO_gets(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, i32 noundef 8192) #7 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.am = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 10) #8
  %.not123 = icmp eq ptr %i.am, null
  br i1 %.not123, label %bb.aj, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.an = icmp slt i32 %i.ak, 1
  br label %bb.al

bb.al:                                            ; preds = %.critedge, %bb.ah
  %.076 = phi i1 [ false, %bb.ah ], [ %i.an, %.critedge ]
  %i.ao = load ptr, ptr @bio_out, align 8, !tbaa !13
  %i.ap = call fastcc i32 @do_passwd(i32 noundef %.090, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %.098140142.ph, ptr noundef %i.ao, i32 noundef %.088, i32 noundef %.086, i32 noundef %.084, i32 noundef %spec.store.select) ; 2 uses
  %.not124.not = icmp eq i32 %i.ap, 0
  %brmerge = or i1 %.not124.not, %.076
  br i1 %brmerge, label %.thread149.loopexit.split.loop.exit, label %bb.af

.thread149.loopexit154:                           ; preds = %bb.r, %bb.s
  store ptr %i.e, ptr %i.a, align 8
  br label %.thread149

.thread149.loopexit.split.loop.exit:              ; preds = %bb.al
  %.mux.le = xor i32 %i.ap, 1
  br label %.thread149

.thread149:                                       ; preds = %bb.ae, %bb.ad, %.thread149.loopexit.split.loop.exit, %bb.af, %.thread149.loopexit154, %bb.ac, %bb.z, %bb.v, %bb.x, %bb.d, %bb.c
  %.1107 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %.thread149.loopexit154 ], [ %i.t, %.thread149.loopexit.split.loop.exit ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ null, %bb.v ], [ %i.t, %bb.af ], [ null, %bb.ad ], [ null, %bb.ae ]
  %.199 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %.thread149.loopexit154 ], [ %.098140142.ph, %.thread149.loopexit.split.loop.exit ], [ null, %bb.x ], [ null, %bb.z ], [ %i.y, %bb.ac ], [ null, %bb.v ], [ %.098140142.ph, %bb.af ], [ %.098140143.ph, %bb.ad ], [ %.098140143.ph, %bb.ae ]
  %.083 = phi i32 [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %.thread149.loopexit154 ], [ 0, %bb.af ], [ 1, %bb.x ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %bb.v ], [ %.mux.le, %.thread149.loopexit.split.loop.exit ], [ 0, %bb.ae ], [ 1, %bb.ad ]
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @CRYPTO_free(ptr noundef %i.aq, ptr noundef nonnull @.str.52, i32 noundef 306) #7
  call void @CRYPTO_free(ptr noundef %.199, ptr noundef nonnull @.str.52, i32 noundef 307) #7
  %i.ar = call i32 @BIO_free(ptr noundef %.1107) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.083
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_next() local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opt_help(ptr noundef) local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare ptr @opt_rest() local_unnamed_addr #2

declare i32 @app_RAND_load() local_unnamed_addr #2

declare ptr @bio_open_default(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare ptr @app_malloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_read_pw_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @do_passwd(i32 noundef range(i32 0, 2) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 6) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 106 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = alloca [17 x i8], align 16               ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca [80 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add nsw i32 %8, -1           ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 5
  br i1 %i.g, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.do_passwd, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.067 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ]
  %i.i = add nsw i32 %8, -3
  %or.cond5 = icmp ult i32 %i.i, 2
  %spec.select = select i1 %or.cond5, i64 16, i64 %.067 ; 8 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !11
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = or disjoint i64 %spec.select, 1
  %i.m = tail call ptr @app_malloc(i64 noundef %i.l, ptr noundef nonnull @.str.53) #7 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !11
  store ptr %i.m, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.d ]
  %i.o = trunc nuw nsw i64 %spec.select to i32
  %i.p = tail call i32 @RAND_bytes(ptr noundef %i.n, i32 noundef %i.o) #7
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.be, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not88 = icmp eq i64 %spec.select, 0
  br i1 %.not88, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %spec.select, 1
  %i.r = icmp eq i64 %spec.select, 1
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06687 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06687 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = and i8 %i.u, 63
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  store i8 %i.y, ptr %i.t, align 1, !tbaa !15
  %i.z = load ptr, ptr %1, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.06687
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !15
  %i.ah = add nuw nsw i64 %.06687, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06687.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.ai = load ptr, ptr %1, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.06687.epil.init ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %.lr.ph.epil.preheader, %.thread.loopexit.unr-lcssa, %.preheader
  %i.ap = load ptr, ptr %1, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.a
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8
  %i.as = icmp ugt i64 %i.ar, 256
  br i1 %i.as, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not72 = icmp eq i32 %5, 0
  br i1 %.not72, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @bio_err, align 8, !tbaa !13
  %i.au = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.at, ptr noundef nonnull @.str.54, i32 noundef 256) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i8 0, ptr %i.av, align 1, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aw = add nsw i32 %8, -1
  %or.cond7 = icmp ult i32 %i.aw, 2
  br i1 %or.cond7, label %.thread74, label %bb.k

.thread74:                                        ; preds = %bb.j
  %i.ax = icmp eq i32 %8, 1
  %i.ay = select i1 %i.ax, ptr @.str.27, ptr @.str.25
  %i.az = load ptr, ptr %1, align 8, !tbaa !11
  %i.ba = tail call fastcc ptr @md5crypt(ptr noundef nonnull %3, ptr noundef nonnull %i.ay, ptr noundef %i.az)
  br label %.thread76

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %8, 5
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %1, align 8, !tbaa !11
  %i.bd = tail call fastcc ptr @md5crypt(ptr noundef nonnull %3, ptr noundef nonnull @.str.55, ptr noundef %i.bc)
  br label %.thread76

bb.m:                                             ; preds = %bb.k
  %i.be = icmp samesign ugt i32 %8, 2
  br i1 %i.be, label %bb.n, label %.thread76

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i32 %8, 3
  %i.bg = select i1 %i.bf, ptr @.str.23, ptr @.str.21 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !11    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8 ; 17 uses
  %9 = load i8, ptr %i.bg, align 1, !tbaa !15     ; 2 uses
  switch i8 %9, label %shacrypt.exit [
    i8 53, label %bb.o
    i8 54, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call ptr @EVP_sha256() #7
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bk = tail call ptr @EVP_sha512() #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0352.i = phi i64 [ 32, %bb.o ], [ 64, %bb.p ] ; 16 uses
  %.0342.i = phi ptr [ %i.bj, %bb.o ], [ %i.bk, %bb.p ] ; 5 uses
  %i.bl = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(8) @shacrypt.rounds_prefix, i64 noundef 7) #8
  %.not400.i = icmp eq i32 %i.bl, 0               ; 2 uses
  br i1 %.not400.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.bn = call i64 @strtoul(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.e, i32 noundef 10) #7
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = icmp eq i8 %i.bp, 36
  br i1 %i.bq, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %spec.select398.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1000)
  %.1340399.i = tail call i64 @llvm.umin.i64(i64 %spec.select398.i, i64 999999999)
  %.1340.i = trunc nuw nsw i64 %.1340399.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.1354.i = phi ptr [ %i.br, %bb.s ], [ %i.bh, %bb.q ]
  %.2341.i = phi i32 [ %.1340.i, %bb.s ], [ 5000, %bb.q ] ; 2 uses
  %.1338.i = phi i64 [ 20, %bb.s ], [ 3, %bb.q ]
  %i.bs = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bg, i64 noundef 2) #7 ; 0 uses
  %i.bt = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.d, ptr noundef nonnull %.1354.i, i64 noundef 17) #7 ; 0 uses
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #8 ; 9 uses
  store i8 0, ptr @shacrypt.out_buf, align 16, !tbaa !15
  %i.bv = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  %i.bw = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.c, i64 noundef 124) #7 ; 0 uses
  %i.bx = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  br i1 %.not400.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.by = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef 80, ptr noundef nonnull @.str.59, i32 noundef %.2341.i) #7 ; 0 uses
  %i.bz = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.f, i64 noundef 124) #7 ; 0 uses
  %i.ca = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.d, i64 noundef 124) #7 ; 0 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @shacrypt.out_buf) #8
  %i.cd = add i64 %i.bu, %.1338.i
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %.loopexit402.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = call ptr @EVP_MD_CTX_new() #7           ; 36 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.loopexit402.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.cf, ptr noundef %.0342.i, ptr noundef null) #7
  %.not367.i = icmp eq i32 %i.ch, 0
  br i1 %.not367.i, label %.loopexit402.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cf, ptr noundef nonnull %3, i64 noundef %i.bi) #7
  %.not368.i = icmp eq i32 %i.ci, 0
  br i1 %.not368.i, label %.loopexit402.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.d, i64 noundef %i.bu) #7
  %.not369.i = icmp eq i32 %i.cj, 0
  br i1 %.not369.i, label %.loopexit402.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = call ptr @EVP_MD_CTX_new() #7           ; 42 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.loopexit402.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ck, ptr noundef %.0342.i, ptr noundef null) #7
  %.not370.i = icmp eq i32 %i.cm, 0
  br i1 %.not370.i, label %.loopexit402.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %3, i64 noundef %i.bi) #7
  %.not371.i = icmp eq i32 %i.cn, 0
  br i1 %.not371.i, label %.loopexit402.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.d, i64 noundef %i.bu) #7
  %.not372.i = icmp eq i32 %i.co, 0
  br i1 %.not372.i, label %.loopexit402.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %3, i64 noundef %i.bi) #7
  %.not373.i = icmp eq i32 %i.cp, 0
  br i1 %.not373.i, label %.loopexit402.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not374.i = icmp eq i32 %i.cq, 0
  br i1 %.not374.i, label %.loopexit402.i, label %.preheader409.i

.preheader409.i:                                  ; preds = %bb.af
  %i.cr = icmp ugt i64 %i.bi, %.0352.i            ; 2 uses
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader409.i, %bb.ag
  %.0345412.i = phi i64 [ %i.ct, %bb.ag ], [ %i.bi, %.preheader409.i ]
  %i.cs = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a, i64 noundef %.0352.i) #7
  %.not397.i = icmp eq i32 %i.cs, 0
  br i1 %.not397.i, label %.loopexit402.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ct = sub nuw i64 %.0345412.i, %.0352.i       ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, %.0352.i
  br i1 %i.cu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.ag, %.preheader409.i
  %.0345.lcssa.i = phi i64 [ %i.bi, %.preheader409.i ], [ %i.ct, %bb.ag ]
  %i.cv = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a, i64 noundef %.0345.lcssa.i) #7
  %.not375.i = icmp eq i32 %i.cv, 0
  br i1 %.not375.i, label %.loopexit402.i, label %.preheader407.i

.preheader407.i:                                  ; preds = %._crit_edge.i
  %.not376413.i = icmp eq i64 %i.bi, 0            ; 2 uses
  br i1 %.not376413.i, label %._crit_edge416.i, label %.lr.ph415.i

bb.ah:                                            ; preds = %.lr.ph415.i
  %i.cw = lshr i64 %.1346414.i, 1                 ; 2 uses
  %.not376.i = icmp eq i64 %i.cw, 0
  br i1 %.not376.i, label %._crit_edge416.i, label %.lr.ph415.i, !llvm.loop !21

.lr.ph415.i:                                      ; preds = %.preheader407.i, %bb.ah
  %.1346414.i = phi i64 [ %i.cw, %bb.ah ], [ %i.bi, %.preheader407.i ] ; 2 uses
  %i.cx = and i64 %.1346414.i, 1
  %.not395.i = icmp eq i64 %i.cx, 0               ; 2 uses
  %i.cy = select i1 %.not395.i, ptr %3, ptr %i.a
  %i.cz = select i1 %.not395.i, i64 %i.bi, i64 %.0352.i
  %i.da = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cy, i64 noundef %i.cz) #7
  %.not396.i = icmp eq i32 %i.da, 0
  br i1 %.not396.i, label %.loopexit402.i, label %bb.ah

._crit_edge416.i:                                 ; preds = %bb.ah, %.preheader407.i
  %i.db = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not377.i = icmp eq i32 %i.db, 0
  br i1 %.not377.i, label %.loopexit402.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge416.i
  %i.dc = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ck, ptr noundef %.0342.i, ptr noundef null) #7
  %.not378.i = icmp eq i32 %i.dc, 0
  br i1 %.not378.i, label %.loopexit402.i, label %.preheader405.i

.preheader405.i:                                  ; preds = %bb.ai
  br i1 %.not376413.i, label %._crit_edge420.i, label %.lr.ph419.i

bb.aj:                                            ; preds = %.lr.ph419.i
  %i.dd = add i64 %.2347418.i, -1                 ; 2 uses
  %.not379.i = icmp eq i64 %i.dd, 0
  br i1 %.not379.i, label %._crit_edge420.i, label %.lr.ph419.i, !llvm.loop !22

.lr.ph419.i:                                      ; preds = %.preheader405.i, %bb.aj
  %.2347418.i = phi i64 [ %i.dd, %bb.aj ], [ %i.bi, %.preheader405.i ]
  %i.de = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %3, i64 noundef %i.bi) #7
  %.not394.i = icmp eq i32 %i.de, 0
  br i1 %.not394.i, label %.loopexit402.i, label %bb.aj

._crit_edge420.i:                                 ; preds = %bb.aj, %.preheader405.i
  %i.df = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.b, ptr noundef null) #7
  %.not380.i = icmp eq i32 %i.df, 0
  br i1 %.not380.i, label %.loopexit402.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge420.i
  %i.dg = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bi, ptr noundef nonnull @.str.52, i32 noundef 657) #7 ; 17 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.loopexit402.i, label %.preheader404.i

.preheader404.i:                                  ; preds = %bb.ak
  br i1 %i.cr, label %.lr.ph423.i, label %._crit_edge424.i

.lr.ph423.i:                                      ; preds = %.preheader404.i, %.lr.ph423.i
  %.0334422.i = phi ptr [ %i.dj, %.lr.ph423.i ], [ %i.dg, %.preheader404.i ] ; 2 uses
  %.3348421.i = phi i64 [ %i.di, %.lr.ph423.i ], [ %i.bi, %.preheader404.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0334422.i, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %.0352.i, i1 false)
  %i.di = sub nuw i64 %.3348421.i, %.0352.i       ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0334422.i, i64 %.0352.i ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %.0352.i
  br i1 %i.dk, label %.lr.ph423.i, label %._crit_edge424.i, !llvm.loop !23

._crit_edge424.i:                                 ; preds = %.lr.ph423.i, %.preheader404.i
  %.3348.lcssa.i = phi i64 [ %i.bi, %.preheader404.i ], [ %i.di, %.lr.ph423.i ]
  %.0334.lcssa.i = phi ptr [ %i.dg, %.preheader404.i ], [ %i.dj, %.lr.ph423.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0334.lcssa.i, ptr nonnull align 16 %i.b, i64 %.3348.lcssa.i, i1 false)
  %i.dl = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ck, ptr noundef %.0342.i, ptr noundef null) #7
  %.not381.i = icmp eq i32 %i.dl, 0
  br i1 %.not381.i, label %.loopexit402.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge424.i
  %i.dm = load i8, ptr %i.a, align 16, !tbaa !15
  %i.dn = zext i8 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dn, 16
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.dp = add nsw i64 %.4349427.i, -1             ; 2 uses
  %.not382.i = icmp eq i64 %i.dp, 0
  br i1 %.not382.i, label %bb.ao, label %bb.an, !llvm.loop !24

bb.an:                                            ; preds = %bb.am, %bb.al
  %.4349427.i = phi i64 [ %i.do, %bb.al ], [ %i.dp, %bb.am ]
  %i.dq = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.d, i64 noundef %i.bu) #7
  %.not393.i = icmp eq i32 %i.dq, 0
  br i1 %.not393.i, label %.loopexit402.i, label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.dr = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.b, ptr noundef null) #7
  %.not383.i = icmp eq i32 %i.dr, 0
  br i1 %.not383.i, label %.loopexit402.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bu, ptr noundef nonnull @.str.52, i32 noundef 674) #7 ; 11 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.loopexit402.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ap
  %i.du = icmp ugt i64 %i.bu, %.0352.i
  br i1 %i.du, label %.lr.ph430.i, label %._crit_edge431.i

.lr.ph430.i:                                      ; preds = %.preheader.i, %.lr.ph430.i
  %.1429.i = phi ptr [ %i.dw, %.lr.ph430.i ], [ %i.ds, %.preheader.i ] ; 2 uses
  %.5350428.i = phi i64 [ %i.dv, %.lr.ph430.i ], [ %i.bu, %.preheader.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1429.i, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %.0352.i, i1 false)
  %i.dv = sub nuw i64 %.5350428.i, %.0352.i       ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1429.i, i64 %.0352.i ; 2 uses
  %i.dx = icmp ugt i64 %i.dv, %.0352.i
  br i1 %i.dx, label %.lr.ph430.i, label %._crit_edge431.i, !llvm.loop !25

._crit_edge431.i:                                 ; preds = %.lr.ph430.i, %.preheader.i
  %.5350.lcssa.i = phi i64 [ %i.bu, %.preheader.i ], [ %i.dv, %.lr.ph430.i ]
  %.1.lcssa.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.dw, %.lr.ph430.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.lcssa.i, ptr nonnull align 16 %i.b, i64 %.5350.lcssa.i, i1 false)
  %i.dy = zext nneg i32 %.2341.i to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ay
  %i.dz = add nuw nsw i64 %.6351434.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dz, %i.dy
  br i1 %exitcond.not.i, label %bb.az, label %bb.ar, !llvm.loop !26

bb.ar:                                            ; preds = %bb.aq, %._crit_edge431.i
  %.6351434.i = phi i64 [ 0, %._crit_edge431.i ], [ %i.dz, %bb.aq ] ; 4 uses
  %i.ea = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ck, ptr noundef %.0342.i, ptr noundef null) #7
  %.not384.i = icmp eq i32 %i.ea, 0
  br i1 %.not384.i, label %.loopexit402.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = and i64 %.6351434.i, 1
  %.not385.i = icmp eq i64 %i.eb, 0               ; 4 uses
  %i.ec = select i1 %.not385.i, ptr %i.a, ptr %i.dg
  %i.ed = select i1 %.not385.i, i64 %.0352.i, i64 %i.bi
  %i.ee = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ec, i64 noundef %i.ed) #7
  %.not386.i = icmp eq i32 %i.ee, 0
  br i1 %.not386.i, label %.loopexit402.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ef = urem i64 %.6351434.i, 3
  %.not387.i = icmp eq i64 %i.ef, 0
  br i1 %.not387.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ds, i64 noundef %i.bu) #7
  %.not388.i = icmp eq i32 %i.eg, 0
  br i1 %.not388.i, label %.loopexit402.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eh = urem i64 %.6351434.i, 7
  %.not389.i = icmp eq i64 %i.eh, 0
  br i1 %.not389.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.dg, i64 noundef %i.bi) #7
  %.not390.i = icmp eq i32 %i.ei, 0
  br i1 %.not390.i, label %.loopexit402.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ej = select i1 %.not385.i, ptr %i.dg, ptr %i.a
  %i.ek = select i1 %.not385.i, i64 %i.bi, i64 %.0352.i
  %i.el = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ej, i64 noundef %i.ek) #7
  %.not391.i = icmp eq i32 %i.el, 0
  br i1 %.not391.i, label %.loopexit402.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not392.i = icmp eq i32 %i.em, 0
  br i1 %.not392.i, label %.loopexit402.i, label %bb.aq

bb.az:                                            ; preds = %bb.aq
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.ck) #7
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.cf) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.52, i32 noundef 706) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.52, i32 noundef 707) #7
  %i.en = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @shacrypt.out_buf) #8
  %i.eo = getelementptr inbounds nuw i8, ptr @shacrypt.out_buf, i64 %i.en ; 131 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  store i8 36, ptr %i.eo, align 1, !tbaa !15
  switch i8 %9, label %.loopexit402.i [
    i8 53, label %.loopexit.loopexit.i
    i8 54, label %.loopexit.loopexit534.i
  ]

.loopexit.loopexit.i:                             ; preds = %bb.az
  %10 = load i8, ptr %i.a, align 16, !tbaa !15
  %11 = zext i8 %10 to i32                        ; 2 uses
  %12 = shl nuw nsw i32 %11, 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !15
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 8                ; 2 uses
  %i.eu = or disjoint i32 %i.et, %12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !15
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = or disjoint i32 %i.et, %i.ex
  %i.ez = and i32 %i.ex, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  %13 = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.fc, ptr %i.ep, align 1, !tbaa !15
  %i.fd = lshr i32 %i.ey, 6
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %14 = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %i.fh, ptr %13, align 1, !tbaa !15
  %i.fi = lshr i32 %i.eu, 12
  %i.fj = and i32 %i.fi, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i8 %i.fm, ptr %14, align 1, !tbaa !15
  %i.fo = lshr i32 %11, 2
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fv = zext i8 %i.fu to i32                    ; 2 uses
  %i.fw = shl nuw nsw i32 %i.fv, 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 8                ; 2 uses
  %i.gb = or disjoint i32 %i.ga, %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = or disjoint i32 %i.ga, %i.ge
  %i.gg = and i32 %i.ge, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  store i8 %i.gj, ptr %i.fs, align 1, !tbaa !15
  %i.gl = lshr i32 %i.gf, 6
  %i.gm = and i32 %i.gl, 63
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 7
  store i8 %i.gp, ptr %i.gk, align 1, !tbaa !15
  %i.gr = lshr i32 %i.gb, 12
  %i.gs = and i32 %i.gr, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i8 %i.gv, ptr %i.gq, align 1, !tbaa !15
  %i.gx = lshr i32 %i.fv, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eo, i64 9
  store i8 %i.ha, ptr %i.gw, align 1, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !15
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = shl nuw nsw i32 %i.he, 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.hh = load i8, ptr %i.hg, align 2, !tbaa !15
  %i.hi = zext i8 %i.hh to i32
  %i.hj = shl nuw nsw i32 %i.hi, 8                ; 2 uses
  %i.hk = or disjoint i32 %i.hj, %i.hf
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !15
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = or disjoint i32 %i.hj, %i.hn
  %i.hp = and i32 %i.hn, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  store i8 %i.hs, ptr %i.hb, align 1, !tbaa !15
  %i.hu = lshr i32 %i.ho, 6
  %i.hv = and i32 %i.hu, 63
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eo, i64 11
  store i8 %i.hy, ptr %i.ht, align 1, !tbaa !15
  %i.ia = lshr i32 %i.hk, 12
  %i.ib = and i32 %i.ia, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i8 %i.ie, ptr %i.hz, align 1, !tbaa !15
  %i.ig = lshr i32 %i.he, 2
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eo, i64 13
  store i8 %i.ij, ptr %i.if, align 1, !tbaa !15
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.im = load i8, ptr %i.il, align 1, !tbaa !15
  %i.in = zext i8 %i.im to i32                    ; 2 uses
  %i.io = shl nuw nsw i32 %i.in, 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !15
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8                ; 2 uses
  %i.it = or disjoint i32 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !15
  %i.iw = zext i8 %i.iv to i32                    ; 2 uses
  %i.ix = or disjoint i32 %i.is, %i.iw
  %i.iy = and i32 %i.iw, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !15
  %i.jc = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  store i8 %i.jb, ptr %i.ik, align 1, !tbaa !15
  %i.jd = lshr i32 %i.ix, 6
  %i.je = and i32 %i.jd, 63
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %i.eo, i64 15
  store i8 %i.jh, ptr %i.jc, align 1, !tbaa !15
  %i.jj = lshr i32 %i.it, 12
  %i.jk = and i32 %i.jj, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !15
  %i.jo = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i8 %i.jn, ptr %i.ji, align 1, !tbaa !15
  %i.jp = lshr i32 %i.in, 2
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !15
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eo, i64 17
  store i8 %i.js, ptr %i.jo, align 1, !tbaa !15
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !15
  %i.jw = zext i8 %i.jv to i32                    ; 2 uses
  %i.jx = shl nuw nsw i32 %i.jw, 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jz = load i8, ptr %i.jy, align 4, !tbaa !15
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 8                ; 2 uses
  %i.kc = or disjoint i32 %i.kb, %i.jx
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !15
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = or disjoint i32 %i.kb, %i.kf
  %i.kh = and i32 %i.kf, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %i.eo, i64 18
  store i8 %i.kk, ptr %i.jt, align 1, !tbaa !15
  %i.km = lshr i32 %i.kg, 6
  %i.kn = and i32 %i.km, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %i.eo, i64 19
  store i8 %i.kq, ptr %i.kl, align 1, !tbaa !15
  %i.ks = lshr i32 %i.kc, 12
  %i.kt = and i32 %i.ks, 63
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store i8 %i.kw, ptr %i.kr, align 1, !tbaa !15
  %i.ky = lshr i32 %i.jw, 2
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !15
  %i.lc = getelementptr inbounds nuw i8, ptr %i.eo, i64 21
  store i8 %i.lb, ptr %i.kx, align 1, !tbaa !15
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !15
  %i.lf = zext i8 %i.le to i32                    ; 2 uses
  %i.lg = shl nuw nsw i32 %i.lf, 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !15
  %i.lj = zext i8 %i.li to i32
  %i.lk = shl nuw nsw i32 %i.lj, 8                ; 2 uses
  %i.ll = or disjoint i32 %i.lk, %i.lg
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !15
  %i.lo = zext i8 %i.ln to i32                    ; 2 uses
  %i.lp = or disjoint i32 %i.lk, %i.lo
  %i.lq = and i32 %i.lo, 63
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %i.eo, i64 22
  store i8 %i.lt, ptr %i.lc, align 1, !tbaa !15
  %i.lv = lshr i32 %i.lp, 6
  %i.lw = and i32 %i.lv, 63
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !15
  %i.ma = getelementptr inbounds nuw i8, ptr %i.eo, i64 23
  store i8 %i.lz, ptr %i.lu, align 1, !tbaa !15
  %i.mb = lshr i32 %i.ll, 12
  %i.mc = and i32 %i.mb, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i8 %i.mf, ptr %i.ma, align 1, !tbaa !15
  %i.mh = lshr i32 %i.lf, 2
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eo, i64 25
  store i8 %i.mk, ptr %i.mg, align 1, !tbaa !15
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.mn = load i8, ptr %i.mm, align 2, !tbaa !15
  %i.mo = zext i8 %i.mn to i32                    ; 2 uses
  %i.mp = shl nuw nsw i32 %i.mo, 16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mr = load i8, ptr %i.mq, align 16, !tbaa !15
  %i.ms = zext i8 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 8                ; 2 uses
  %i.mu = or disjoint i32 %i.mt, %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !15
  %i.mx = zext i8 %i.mw to i32                    ; 2 uses
  %i.my = or disjoint i32 %i.mt, %i.mx
  %i.mz = and i32 %i.mx, 63
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !15
  %i.nd = getelementptr inbounds nuw i8, ptr %i.eo, i64 26
  store i8 %i.nc, ptr %i.ml, align 1, !tbaa !15
  %i.ne = lshr i32 %i.my, 6
  %i.nf = and i32 %i.ne, 63
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !15
  %i.nj = getelementptr inbounds nuw i8, ptr %i.eo, i64 27
  store i8 %i.ni, ptr %i.nd, align 1, !tbaa !15
  %i.nk = lshr i32 %i.mu, 12
  %i.nl = and i32 %i.nk, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !15
  %i.np = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  store i8 %i.no, ptr %i.nj, align 1, !tbaa !15
  %i.nq = lshr i32 %i.mo, 2
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.eo, i64 29
  store i8 %i.nt, ptr %i.np, align 1, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !15
  %i.nx = zext i8 %i.nw to i32                    ; 2 uses
  %i.ny = shl nuw nsw i32 %i.nx, 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !15
  %i.ob = zext i8 %i.oa to i32
  %i.oc = shl nuw nsw i32 %i.ob, 8                ; 2 uses
  %i.od = or disjoint i32 %i.oc, %i.ny
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !15
  %i.og = zext i8 %i.of to i32                    ; 2 uses
  %i.oh = or disjoint i32 %i.oc, %i.og
  %i.oi = and i32 %i.og, 63
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !15
  %i.om = getelementptr inbounds nuw i8, ptr %i.eo, i64 30
  store i8 %i.ol, ptr %i.nu, align 1, !tbaa !15
  %i.on = lshr i32 %i.oh, 6
  %i.oo = and i32 %i.on, 63
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !15
  %i.os = getelementptr inbounds nuw i8, ptr %i.eo, i64 31
  store i8 %i.or, ptr %i.om, align 1, !tbaa !15
  %i.ot = lshr i32 %i.od, 12
  %i.ou = and i32 %i.ot, 63
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !15
  %i.oy = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i8 %i.ox, ptr %i.os, align 1, !tbaa !15
  %i.oz = lshr i32 %i.nx, 2
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.eo, i64 33
  store i8 %i.pc, ptr %i.oy, align 1, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.pf = load i8, ptr %i.pe, align 2, !tbaa !15
  %i.pg = zext i8 %i.pf to i32                    ; 2 uses
  %i.ph = shl nuw nsw i32 %i.pg, 16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.pj = load i8, ptr %i.pi, align 4, !tbaa !15
  %i.pk = zext i8 %i.pj to i32
  %i.pl = shl nuw nsw i32 %i.pk, 8                ; 2 uses
  %i.pm = or disjoint i32 %i.pl, %i.ph
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.po = load i8, ptr %i.pn, align 8, !tbaa !15
  %i.pp = zext i8 %i.po to i32                    ; 2 uses
  %i.pq = or disjoint i32 %i.pl, %i.pp
  %i.pr = and i32 %i.pp, 63
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !15
  %i.pv = getelementptr inbounds nuw i8, ptr %i.eo, i64 34
  store i8 %i.pu, ptr %i.pd, align 1, !tbaa !15
  %i.pw = lshr i32 %i.pq, 6
  %i.px = and i32 %i.pw, 63
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !15
  %i.qb = getelementptr inbounds nuw i8, ptr %i.eo, i64 35
  store i8 %i.qa, ptr %i.pv, align 1, !tbaa !15
  %i.qc = lshr i32 %i.pm, 12
  %i.qd = and i32 %i.qc, 63
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !15
  %i.qh = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  store i8 %i.qg, ptr %i.qb, align 1, !tbaa !15
  %i.qi = lshr i32 %i.pg, 2
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !15
  %i.qm = getelementptr inbounds nuw i8, ptr %i.eo, i64 37
  store i8 %i.ql, ptr %i.qh, align 1, !tbaa !15
  %i.qn = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !15
  %i.qp = zext i8 %i.qo to i32                    ; 2 uses
  %i.qq = shl nuw nsw i32 %i.qp, 16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !15
  %i.qt = zext i8 %i.qs to i32
  %i.qu = shl nuw nsw i32 %i.qt, 8                ; 2 uses
  %i.qv = or disjoint i32 %i.qu, %i.qq
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !15
  %i.qy = zext i8 %i.qx to i32                    ; 2 uses
  %i.qz = or disjoint i32 %i.qu, %i.qy
  %i.ra = and i32 %i.qy, 63
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !15
  %i.re = getelementptr inbounds nuw i8, ptr %i.eo, i64 38
  store i8 %i.rd, ptr %i.qm, align 1, !tbaa !15
  %i.rf = lshr i32 %i.qz, 6
  %i.rg = and i32 %i.rf, 63
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !15
  %i.rk = getelementptr inbounds nuw i8, ptr %i.eo, i64 39
  store i8 %i.rj, ptr %i.re, align 1, !tbaa !15
  %i.rl = lshr i32 %i.qv, 12
  %i.rm = and i32 %i.rl, 63
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !15
  %i.rq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i8 %i.rp, ptr %i.rk, align 1, !tbaa !15
  %i.rr = lshr i32 %i.qp, 2
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !15
  %i.rv = getelementptr inbounds nuw i8, ptr %i.eo, i64 41
  store i8 %i.ru, ptr %i.rq, align 1, !tbaa !15
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.rx = load i16, ptr %i.rw, align 2
  %i.ry = zext i16 %i.rx to i32                   ; 3 uses
  %i.rz = and i32 %i.ry, 63
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !15
  %i.sd = getelementptr inbounds nuw i8, ptr %i.eo, i64 42
  store i8 %i.sc, ptr %i.rv, align 1, !tbaa !15
  %i.se = lshr i32 %i.ry, 6
  %i.sf = and i32 %i.se, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !15
  %i.sj = getelementptr inbounds nuw i8, ptr %i.eo, i64 43
  store i8 %i.si, ptr %i.sd, align 1, !tbaa !15
  %i.sk = lshr i32 %i.ry, 12
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !15
  %i.so = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  store i8 %i.sn, ptr %i.sj, align 1, !tbaa !15
  br label %.loopexit.i

.loopexit.loopexit534.i:                          ; preds = %bb.az
  %15 = load i8, ptr %i.a, align 16, !tbaa !15
  %16 = zext i8 %15 to i32                        ; 2 uses
  %17 = shl nuw nsw i32 %16, 16
  %i.sp = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !15
  %i.sr = zext i8 %i.sq to i32
  %i.ss = shl nuw nsw i32 %i.sr, 8                ; 2 uses
  %i.st = or disjoint i32 %i.ss, %17
  %i.su = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.sv = load i8, ptr %i.su, align 2, !tbaa !15
  %i.sw = zext i8 %i.sv to i32                    ; 2 uses
  %i.sx = or disjoint i32 %i.ss, %i.sw
  %i.sy = and i32 %i.sw, 63
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.tb, ptr %i.ep, align 1, !tbaa !15
  %i.tc = lshr i32 %i.sx, 6
  %i.td = and i32 %i.tc, 63
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !15
  %19 = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %i.tg, ptr %18, align 1, !tbaa !15
  %i.th = lshr i32 %i.st, 12
  %i.ti = and i32 %i.th, 63
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !15
  %i.tm = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i8 %i.tl, ptr %19, align 1, !tbaa !15
  %i.tn = lshr i32 %16, 2
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !15
  %i.tr = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  store i8 %i.tq, ptr %i.tm, align 1, !tbaa !15
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.tt = load i8, ptr %i.ts, align 2, !tbaa !15
  %i.tu = zext i8 %i.tt to i32                    ; 2 uses
  %i.tv = shl nuw nsw i32 %i.tu, 16
  %i.tw = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !15
  %i.ty = zext i8 %i.tx to i32
  %i.tz = shl nuw nsw i32 %i.ty, 8                ; 2 uses
  %i.ua = or disjoint i32 %i.tz, %i.tv
  %i.ub = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !15
  %i.ud = zext i8 %i.uc to i32                    ; 2 uses
  %i.ue = or disjoint i32 %i.tz, %i.ud
  %i.uf = and i32 %i.ud, 63
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !15
  %i.uj = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  store i8 %i.ui, ptr %i.tr, align 1, !tbaa !15
  %i.uk = lshr i32 %i.ue, 6
  %i.ul = and i32 %i.uk, 63
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !15
  %i.up = getelementptr inbounds nuw i8, ptr %i.eo, i64 7
  store i8 %i.uo, ptr %i.uj, align 1, !tbaa !15
  %i.uq = lshr i32 %i.ua, 12
  %i.ur = and i32 %i.uq, 63
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !15
  %i.uv = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i8 %i.uu, ptr %i.up, align 1, !tbaa !15
  %i.uw = lshr i32 %i.tu, 2
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !15
  %i.va = getelementptr inbounds nuw i8, ptr %i.eo, i64 9
  store i8 %i.uz, ptr %i.uv, align 1, !tbaa !15
  %i.vb = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.vc = load i8, ptr %i.vb, align 4, !tbaa !15
  %i.vd = zext i8 %i.vc to i32                    ; 2 uses
  %i.ve = shl nuw nsw i32 %i.vd, 16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.vg = load i8, ptr %i.vf, align 2, !tbaa !15
  %i.vh = zext i8 %i.vg to i32
  %i.vi = shl nuw nsw i32 %i.vh, 8                ; 2 uses
  %i.vj = or disjoint i32 %i.vi, %i.ve
  %i.vk = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !15
  %i.vm = zext i8 %i.vl to i32                    ; 2 uses
  %i.vn = or disjoint i32 %i.vi, %i.vm
  %i.vo = and i32 %i.vm, 63
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !15
  %i.vs = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  store i8 %i.vr, ptr %i.va, align 1, !tbaa !15
  %i.vt = lshr i32 %i.vn, 6
  %i.vu = and i32 %i.vt, 63
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !15
  %i.vy = getelementptr inbounds nuw i8, ptr %i.eo, i64 11
  store i8 %i.vx, ptr %i.vs, align 1, !tbaa !15
  %i.vz = lshr i32 %i.vj, 12
  %i.wa = and i32 %i.vz, 63
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !15
  %i.we = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i8 %i.wd, ptr %i.vy, align 1, !tbaa !15
  %i.wf = lshr i32 %i.vd, 2
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !15
  %i.wj = getelementptr inbounds nuw i8, ptr %i.eo, i64 13
  store i8 %i.wi, ptr %i.we, align 1, !tbaa !15
  %i.wk = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !15
  %i.wm = zext i8 %i.wl to i32                    ; 2 uses
  %i.wn = shl nuw nsw i32 %i.wm, 16
  %i.wo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.wp = load i8, ptr %i.wo, align 8, !tbaa !15
  %i.wq = zext i8 %i.wp to i32
  %i.wr = shl nuw nsw i32 %i.wq, 8                ; 2 uses
  %i.ws = or disjoint i32 %i.wr, %i.wn
  %i.wt = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !15
  %i.wv = zext i8 %i.wu to i32                    ; 2 uses
  %i.ww = or disjoint i32 %i.wr, %i.wv
  %i.wx = and i32 %i.wv, 63
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !15
  %i.xb = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  store i8 %i.xa, ptr %i.wj, align 1, !tbaa !15
  %i.xc = lshr i32 %i.ww, 6
  %i.xd = and i32 %i.xc, 63
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !15
  %i.xh = getelementptr inbounds nuw i8, ptr %i.eo, i64 15
  store i8 %i.xg, ptr %i.xb, align 1, !tbaa !15
  %i.xi = lshr i32 %i.ws, 12
  %i.xj = and i32 %i.xi, 63
  %i.xk = zext nneg i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !15
  %i.xn = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i8 %i.xm, ptr %i.xh, align 1, !tbaa !15
  %i.xo = lshr i32 %i.wm, 2
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.xp
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !15
  %i.xs = getelementptr inbounds nuw i8, ptr %i.eo, i64 17
  store i8 %i.xr, ptr %i.xn, align 1, !tbaa !15
  %i.xt = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !15
  %i.xv = zext i8 %i.xu to i32                    ; 2 uses
  %i.xw = shl nuw nsw i32 %i.xv, 16
  %i.xx = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.xy = load i8, ptr %i.xx, align 2, !tbaa !15
  %i.xz = zext i8 %i.xy to i32
  %i.ya = shl nuw nsw i32 %i.xz, 8                ; 2 uses
  %i.yb = or disjoint i32 %i.ya, %i.xw
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.yd = load i8, ptr %i.yc, align 4, !tbaa !15
  %i.ye = zext i8 %i.yd to i32                    ; 2 uses
  %i.yf = or disjoint i32 %i.ya, %i.ye
  %i.yg = and i32 %i.ye, 63
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !15
  %i.yk = getelementptr inbounds nuw i8, ptr %i.eo, i64 18
  store i8 %i.yj, ptr %i.xs, align 1, !tbaa !15
  %i.yl = lshr i32 %i.yf, 6
  %i.ym = and i32 %i.yl, 63
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !15
  %i.yq = getelementptr inbounds nuw i8, ptr %i.eo, i64 19
  store i8 %i.yp, ptr %i.yk, align 1, !tbaa !15
  %i.yr = lshr i32 %i.yb, 12
  %i.ys = and i32 %i.yr, 63
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.yt
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !15
  %i.yw = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store i8 %i.yv, ptr %i.yq, align 1, !tbaa !15
  %i.yx = lshr i32 %i.xv, 2
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.yy
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !15
  %i.zb = getelementptr inbounds nuw i8, ptr %i.eo, i64 21
  store i8 %i.za, ptr %i.yw, align 1, !tbaa !15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !15
  %i.ze = zext i8 %i.zd to i32                    ; 2 uses
  %i.zf = shl nuw nsw i32 %i.ze, 16
  %i.zg = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !15
  %i.zi = zext i8 %i.zh to i32
  %i.zj = shl nuw nsw i32 %i.zi, 8                ; 2 uses
  %i.zk = or disjoint i32 %i.zj, %i.zf
  %i.zl = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.zm = load i8, ptr %i.zl, align 2, !tbaa !15
  %i.zn = zext i8 %i.zm to i32                    ; 2 uses
  %i.zo = or disjoint i32 %i.zj, %i.zn
  %i.zp = and i32 %i.zn, 63
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !15
  %i.zt = getelementptr inbounds nuw i8, ptr %i.eo, i64 22
  store i8 %i.zs, ptr %i.zb, align 1, !tbaa !15
  %i.zu = lshr i32 %i.zo, 6
  %i.zv = and i32 %i.zu, 63
  %i.zw = zext nneg i32 %i.zv to i64
  %i.zx = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !15
  %i.zz = getelementptr inbounds nuw i8, ptr %i.eo, i64 23
  store i8 %i.zy, ptr %i.zt, align 1, !tbaa !15
  %i.aaa = lshr i32 %i.zk, 12
  %i.aab = and i32 %i.aaa, 63
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aac
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !15
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i8 %i.aae, ptr %i.zz, align 1, !tbaa !15
  %i.aag = lshr i32 %i.ze, 2
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !15
  %i.aak = getelementptr inbounds nuw i8, ptr %i.eo, i64 25
  store i8 %i.aaj, ptr %i.aaf, align 1, !tbaa !15
end_hunk_0
begin_hunk_1_@do_passwd:bb.a
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.eo, i64 66
  store i8 %i.aon, ptr %i.anw, align 1, !tbaa !15
  %i.aop = lshr i32 %i.aoj, 6
  %i.aoq = and i32 %i.aop, 63
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aor
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !15
  %i.aou = getelementptr inbounds nuw i8, ptr %i.eo, i64 67
  store i8 %i.aot, ptr %i.aoo, align 1, !tbaa !15
  %i.aov = lshr i32 %i.aof, 12
  %i.aow = and i32 %i.aov, 63
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !15
  %i.apa = getelementptr inbounds nuw i8, ptr %i.eo, i64 68
  store i8 %i.aoz, ptr %i.aou, align 1, !tbaa !15
  %i.apb = lshr i32 %i.anz, 2
  %i.apc = zext nneg i32 %i.apb to i64
  %i.apd = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.apc
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !15
  %i.apf = getelementptr inbounds nuw i8, ptr %i.eo, i64 69
  store i8 %i.ape, ptr %i.apa, align 1, !tbaa !15
  %i.apg = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !15
  %i.api = zext i8 %i.aph to i32                  ; 2 uses
  %i.apj = shl nuw nsw i32 %i.api, 16
  %i.apk = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !15
  %i.apm = zext i8 %i.apl to i32
  %i.apn = shl nuw nsw i32 %i.apm, 8              ; 2 uses
  %i.apo = or disjoint i32 %i.apn, %i.apj
  %i.app = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.apq = load i8, ptr %i.app, align 2, !tbaa !15
  %i.apr = zext i8 %i.apq to i32                  ; 2 uses
  %i.aps = or disjoint i32 %i.apn, %i.apr
  %i.apt = and i32 %i.apr, 63
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.apu
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !15
  %i.apx = getelementptr inbounds nuw i8, ptr %i.eo, i64 70
  store i8 %i.apw, ptr %i.apf, align 1, !tbaa !15
  %i.apy = lshr i32 %i.aps, 6
  %i.apz = and i32 %i.apy, 63
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aqa
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !15
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.eo, i64 71
  store i8 %i.aqc, ptr %i.apx, align 1, !tbaa !15
  %i.aqe = lshr i32 %i.apo, 12
  %i.aqf = and i32 %i.aqe, 63
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !15
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  store i8 %i.aqi, ptr %i.aqd, align 1, !tbaa !15
  %i.aqk = lshr i32 %i.api, 2
  %i.aql = zext nneg i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !15
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.eo, i64 73
  store i8 %i.aqn, ptr %i.aqj, align 1, !tbaa !15
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.aqq = load i8, ptr %i.aqp, align 2, !tbaa !15
  %i.aqr = zext i8 %i.aqq to i32                  ; 2 uses
  %i.aqs = shl nuw nsw i32 %i.aqr, 16
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !15
  %i.aqv = zext i8 %i.aqu to i32
  %i.aqw = shl nuw nsw i32 %i.aqv, 8              ; 2 uses
  %i.aqx = or disjoint i32 %i.aqw, %i.aqs
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.aqz = load i8, ptr %i.aqy, align 4, !tbaa !15
  %i.ara = zext i8 %i.aqz to i32                  ; 2 uses
  %i.arb = or disjoint i32 %i.aqw, %i.ara
  %i.arc = and i32 %i.ara, 63
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ard
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !15
  %i.arg = getelementptr inbounds nuw i8, ptr %i.eo, i64 74
  store i8 %i.arf, ptr %i.aqo, align 1, !tbaa !15
  %i.arh = lshr i32 %i.arb, 6
  %i.ari = and i32 %i.arh, 63
  %i.arj = zext nneg i32 %i.ari to i64
  %i.ark = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !15
  %i.arm = getelementptr inbounds nuw i8, ptr %i.eo, i64 75
  store i8 %i.arl, ptr %i.arg, align 1, !tbaa !15
  %i.arn = lshr i32 %i.aqx, 12
  %i.aro = and i32 %i.arn, 63
  %i.arp = zext nneg i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !15
  %i.ars = getelementptr inbounds nuw i8, ptr %i.eo, i64 76
  store i8 %i.arr, ptr %i.arm, align 1, !tbaa !15
  %i.art = lshr i32 %i.aqr, 2
  %i.aru = zext nneg i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aru
  %i.arw = load i8, ptr %i.arv, align 1, !tbaa !15
  %i.arx = getelementptr inbounds nuw i8, ptr %i.eo, i64 77
  store i8 %i.arw, ptr %i.ars, align 1, !tbaa !15
  %i.ary = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.arz = load i8, ptr %i.ary, align 8, !tbaa !15
  %i.asa = zext i8 %i.arz to i32                  ; 2 uses
  %i.asb = shl nuw nsw i32 %i.asa, 16
  %i.asc = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !15
  %i.ase = zext i8 %i.asd to i32
  %i.asf = shl nuw nsw i32 %i.ase, 8              ; 2 uses
  %i.asg = or disjoint i32 %i.asf, %i.asb
  %i.ash = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !15
  %i.asj = zext i8 %i.asi to i32                  ; 2 uses
  %i.ask = or disjoint i32 %i.asf, %i.asj
  %i.asl = and i32 %i.asj, 63
  %i.asm = zext nneg i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.asm
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !15
  %i.asp = getelementptr inbounds nuw i8, ptr %i.eo, i64 78
  store i8 %i.aso, ptr %i.arx, align 1, !tbaa !15
  %i.asq = lshr i32 %i.ask, 6
  %i.asr = and i32 %i.asq, 63
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ass
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !15
  %i.asv = getelementptr inbounds nuw i8, ptr %i.eo, i64 79
  store i8 %i.asu, ptr %i.asp, align 1, !tbaa !15
  %i.asw = lshr i32 %i.asg, 12
  %i.asx = and i32 %i.asw, 63
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.asy
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !15
  %i.atb = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store i8 %i.ata, ptr %i.asv, align 1, !tbaa !15
  %i.atc = lshr i32 %i.asa, 2
  %i.atd = zext nneg i32 %i.atc to i64
  %i.ate = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.atd
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !15
  %i.atg = getelementptr inbounds nuw i8, ptr %i.eo, i64 81
  store i8 %i.atf, ptr %i.atb, align 1, !tbaa !15
  %i.ath = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.ati = load i8, ptr %i.ath, align 2, !tbaa !15
  %i.atj = zext i8 %i.ati to i32                  ; 2 uses
  %i.atk = shl nuw nsw i32 %i.atj, 16
  %i.atl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.atm = load i8, ptr %i.atl, align 4, !tbaa !15
  %i.atn = zext i8 %i.atm to i32
  %i.ato = shl nuw nsw i32 %i.atn, 8              ; 2 uses
  %i.atp = or disjoint i32 %i.ato, %i.atk
  %i.atq = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !15
  %i.ats = zext i8 %i.atr to i32                  ; 2 uses
  %i.att = or disjoint i32 %i.ato, %i.ats
  %i.atu = and i32 %i.ats, 63
  %i.atv = zext nneg i32 %i.atu to i64
  %i.atw = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.atv
  %i.atx = load i8, ptr %i.atw, align 1, !tbaa !15
  %i.aty = getelementptr inbounds nuw i8, ptr %i.eo, i64 82
  store i8 %i.atx, ptr %i.atg, align 1, !tbaa !15
  %i.atz = lshr i32 %i.att, 6
  %i.aua = and i32 %i.atz, 63
  %i.aub = zext nneg i32 %i.aua to i64
  %i.auc = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aub
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !15
  %i.aue = getelementptr inbounds nuw i8, ptr %i.eo, i64 83
  store i8 %i.aud, ptr %i.aty, align 1, !tbaa !15
  %i.auf = lshr i32 %i.atp, 12
  %i.aug = and i32 %i.auf, 63
  %i.auh = zext nneg i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.auh
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !15
  %i.auk = getelementptr inbounds nuw i8, ptr %i.eo, i64 84
  store i8 %i.auj, ptr %i.aue, align 1, !tbaa !15
  %i.aul = lshr i32 %i.atj, 2
  %i.aum = zext nneg i32 %i.aul to i64
  %i.aun = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !15
  %i.aup = getelementptr inbounds nuw i8, ptr %i.eo, i64 85
  store i8 %i.auo, ptr %i.auk, align 1, !tbaa !15
  %i.auq = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !15
  %i.aus = zext i8 %i.aur to i32                  ; 2 uses
  %i.aut = and i32 %i.aus, 63
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.auu
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !15
  %i.aux = getelementptr inbounds nuw i8, ptr %i.eo, i64 86
  store i8 %i.auw, ptr %i.aup, align 1, !tbaa !15
  %i.auy = lshr i32 %i.aus, 6
  %i.auz = zext nneg i32 %i.auy to i64
  %i.ava = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.auz
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !15
  %i.avc = getelementptr inbounds nuw i8, ptr %i.eo, i64 87
  store i8 %i.avb, ptr %i.aux, align 1, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit534.i, %.loopexit.loopexit.i
  %.35.i = phi ptr [ %i.so, %.loopexit.loopexit.i ], [ %i.avc, %.loopexit.loopexit534.i ]
  store i8 0, ptr %.35.i, align 1, !tbaa !15
  br label %shacrypt.exit

.loopexit402.i:                                   ; preds = %.lr.ph.i, %.lr.ph415.i, %.lr.ph419.i, %bb.an, %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.az, %bb.ap, %bb.ao, %._crit_edge424.i, %bb.ak, %._crit_edge420.i, %bb.ai, %._crit_edge416.i, %._crit_edge.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.0344.i = phi ptr [ null, %bb.v ], [ null, %bb.w ], [ %i.cf, %bb.aa ], [ %i.cf, %bb.ay ], [ %i.cf, %.lr.ph415.i ], [ %i.cf, %.lr.ph419.i ], [ %i.cf, %bb.ak ], [ %i.cf, %bb.an ], [ %i.cf, %bb.ap ], [ %i.cf, %bb.ad ], [ %i.cf, %bb.ac ], [ %i.cf, %bb.ab ], [ %i.cf, %bb.z ], [ %i.cf, %bb.y ], [ %i.cf, %bb.x ], [ null, %bb.az ], [ %i.cf, %bb.ao ], [ %i.cf, %._crit_edge424.i ], [ %i.cf, %._crit_edge420.i ], [ %i.cf, %bb.ai ], [ %i.cf, %._crit_edge416.i ], [ %i.cf, %._crit_edge.i ], [ %i.cf, %bb.af ], [ %i.cf, %bb.ae ], [ %i.cf, %bb.ar ], [ %i.cf, %bb.as ], [ %i.cf, %bb.au ], [ %i.cf, %bb.aw ], [ %i.cf, %bb.ax ], [ %i.cf, %.lr.ph.i ]
  %.0343.i = phi ptr [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.aa ], [ %i.ck, %bb.ay ], [ %i.ck, %.lr.ph415.i ], [ %i.ck, %.lr.ph419.i ], [ %i.ck, %bb.ak ], [ %i.ck, %bb.an ], [ %i.ck, %bb.ap ], [ %i.ck, %bb.ad ], [ %i.ck, %bb.ac ], [ %i.ck, %bb.ab ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.az ], [ %i.ck, %bb.ao ], [ %i.ck, %._crit_edge424.i ], [ %i.ck, %._crit_edge420.i ], [ %i.ck, %bb.ai ], [ %i.ck, %._crit_edge416.i ], [ %i.ck, %._crit_edge.i ], [ %i.ck, %bb.af ], [ %i.ck, %bb.ae ], [ %i.ck, %bb.ar ], [ %i.ck, %bb.as ], [ %i.ck, %bb.au ], [ %i.ck, %bb.aw ], [ %i.ck, %bb.ax ], [ %i.ck, %.lr.ph.i ]
  %.0336.i = phi ptr [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.aa ], [ %i.dg, %bb.ay ], [ null, %.lr.ph415.i ], [ null, %.lr.ph419.i ], [ null, %bb.ak ], [ %i.dg, %bb.an ], [ %i.dg, %bb.ap ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.az ], [ %i.dg, %bb.ao ], [ %i.dg, %._crit_edge424.i ], [ null, %._crit_edge420.i ], [ null, %bb.ai ], [ null, %._crit_edge416.i ], [ null, %._crit_edge.i ], [ null, %bb.af ], [ null, %bb.ae ], [ %i.dg, %bb.ar ], [ %i.dg, %bb.as ], [ %i.dg, %bb.au ], [ %i.dg, %bb.aw ], [ %i.dg, %bb.ax ], [ null, %.lr.ph.i ]
  %.0335.i = phi ptr [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.aa ], [ %i.ds, %bb.ay ], [ null, %.lr.ph415.i ], [ null, %.lr.ph419.i ], [ null, %bb.ak ], [ null, %bb.an ], [ null, %bb.ap ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.az ], [ null, %bb.ao ], [ null, %._crit_edge424.i ], [ null, %._crit_edge420.i ], [ null, %bb.ai ], [ null, %._crit_edge416.i ], [ null, %._crit_edge.i ], [ null, %bb.af ], [ null, %bb.ae ], [ %i.ds, %bb.ar ], [ %i.ds, %bb.as ], [ %i.ds, %bb.au ], [ %i.ds, %bb.aw ], [ %i.ds, %bb.ax ], [ null, %.lr.ph.i ]
  call void @EVP_MD_CTX_free(ptr noundef %.0343.i) #7
  call void @EVP_MD_CTX_free(ptr noundef %.0344.i) #7
  call void @CRYPTO_free(ptr noundef %.0336.i, ptr noundef nonnull @.str.52, i32 noundef 775) #7
  call void @CRYPTO_free(ptr noundef %.0335.i, ptr noundef nonnull @.str.52, i32 noundef 776) #7
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 777) #7
  br label %shacrypt.exit

.critedge.i:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %shacrypt.exit

shacrypt.exit:                                    ; preds = %bb.n, %.loopexit.i, %.loopexit402.i, %.critedge.i
  %.1356.i = phi ptr [ null, %.critedge.i ], [ null, %bb.n ], [ null, %.loopexit402.i ], [ @shacrypt.out_buf, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread76

.thread76:                                        ; preds = %bb.l, %.thread74, %bb.m, %shacrypt.exit
  %.2 = phi ptr [ %.1356.i, %shacrypt.exit ], [ null, %bb.m ], [ %i.ba, %.thread74 ], [ %i.bd, %bb.l ] ; 3 uses
  %i.avd = icmp eq i32 %6, 0                      ; 2 uses
  %i.ave = icmp ne i32 %7, 0                      ; 2 uses
  %or.cond11 = or i1 %i.avd, %i.ave
  br i1 %or.cond11, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.thread76
  %i.avf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %4, ptr noundef nonnull @.str.56, ptr noundef nonnull %3, ptr noundef %.2) #7 ; 0 uses
  br label %bb.be

bb.bb:                                            ; preds = %.thread76
  %.not98 = xor i1 %i.avd, true
  %or.cond13 = and i1 %i.ave, %.not98
  br i1 %or.cond13, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.avg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %4, ptr noundef nonnull @.str.56, ptr noundef %.2, ptr noundef nonnull %3) #7 ; 0 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.avh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %4, ptr noundef nonnull @.str.57, ptr noundef %.2) #7 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.e, %bb.ba, %bb.bd, %bb.bc
  %.070 = phi i32 [ 1, %bb.ba ], [ 1, %bb.bc ], [ 1, %bb.bd ], [ 0, %bb.e ]
  ret i32 %.070
}

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @md5crypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 25 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  %i.c = alloca [9 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8 ; 8 uses
  store i8 0, ptr @md5crypt.out_buf, align 16, !tbaa !15
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 4 uses
  %i.f = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i64 noundef 5) #7 ; 0 uses
  %i.g = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef 9) #7 ; 0 uses
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #8 ; 4 uses
  %.not = icmp eq i64 %i.e, 0                     ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @OPENSSL_strlcat(ptr noundef nonnull @md5crypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 41) #7 ; 0 uses
  %i.j = icmp ugt i64 %i.e, 4
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i64 @OPENSSL_strlcat(ptr noundef nonnull @md5crypt.out_buf, ptr noundef nonnull %i.b, i64 noundef 41) #7 ; 0 uses
  %i.l = call i64 @OPENSSL_strlcat(ptr noundef nonnull @md5crypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 41) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.m = call i64 @OPENSSL_strlcat(ptr noundef nonnull @md5crypt.out_buf, ptr noundef nonnull %i.c, i64 noundef 41) #7 ; 0 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @md5crypt.out_buf) #8
  %i.o = icmp ugt i64 %i.n, 14
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr @md5crypt.out_buf, i64 %i.e
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %.0102 = select i1 %.not, ptr @md5crypt.out_buf, ptr %i.q
  %i.r = call ptr @EVP_MD_CTX_new() #7            ; 34 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call ptr @EVP_md5() #7
  %i.u = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.r, ptr noundef %i.t, ptr noundef null) #7
  %.not113 = icmp eq i32 %i.u, 0
  br i1 %.not113, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %0, i64 noundef %i.d) #7
  %.not114 = icmp eq i32 %i.v, 0
  br i1 %.not114, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull @ascii_dollar, i64 noundef 1) #7
  %.not115 = icmp eq i32 %i.w, 0
  br i1 %.not115, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, i64 noundef %i.e) #7
  %.not116 = icmp eq i32 %i.x, 0
  br i1 %.not116, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull @ascii_dollar, i64 noundef 1) #7
  %.not117 = icmp eq i32 %i.y, 0
  br i1 %.not117, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.z = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, i64 noundef %i.h) #7
  %.not118 = icmp eq i32 %i.z, 0
  br i1 %.not118, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = call ptr @EVP_MD_CTX_new() #7           ; 28 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = call ptr @EVP_md5() #7
  %i.ad = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.aa, ptr noundef %i.ac, ptr noundef null) #7
  %.not119 = icmp eq i32 %i.ad, 0
  br i1 %.not119, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.aa, ptr noundef nonnull %0, i64 noundef %i.d) #7
  %.not120 = icmp eq i32 %i.ae, 0
  br i1 %.not120, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c, i64 noundef %i.h) #7
  %.not121 = icmp eq i32 %i.af, 0
  br i1 %.not121, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.aa, ptr noundef nonnull %0, i64 noundef %i.d) #7
  %.not122 = icmp eq i32 %i.ag, 0
  br i1 %.not122, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not123 = icmp eq i32 %i.ah, 0
  br i1 %.not123, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = trunc i64 %i.d to i32                   ; 2 uses
  %i.aj = and i64 %i.d, 4294967295                ; 3 uses
  %i.ak = icmp samesign ugt i64 %i.aj, 16
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0100145 = phi i64 [ %i.am, %bb.t ], [ %i.aj, %bb.s ]
  %i.al = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, i64 noundef 16) #7
  %.not138 = icmp eq i32 %i.al, 0
  br i1 %.not138, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.am = add nsw i64 %.0100145, -16              ; 3 uses
  %i.an = icmp ugt i64 %i.am, 16
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.t, %bb.s
  %.0100.lcssa = phi i64 [ %i.aj, %bb.s ], [ %i.am, %bb.t ]
  %i.ao = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, i64 noundef %.0100.lcssa) #7
  %.not124 = icmp eq i32 %i.ao, 0
  br i1 %.not124, label %.loopexit, label %.preheader141

.preheader141:                                    ; preds = %._crit_edge
  %.not125146 = icmp eq i32 %i.ai, 0
  br i1 %.not125146, label %._crit_edge149, label %.lr.ph148

bb.u:                                             ; preds = %.lr.ph148
  %i.ap = ashr i32 %.0101147, 1                   ; 2 uses
  %.not125 = icmp eq i32 %i.ap, 0
  br i1 %.not125, label %._crit_edge149, label %.lr.ph148, !llvm.loop !28

.lr.ph148:                                        ; preds = %.preheader141, %bb.u
  %.0101147 = phi i32 [ %i.ap, %bb.u ], [ %i.ai, %.preheader141 ] ; 2 uses
  %i.aq = and i32 %.0101147, 1
  %.not136 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not136, ptr %0, ptr @.str.58
  %i.as = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ar, i64 noundef 1) #7
  %.not137 = icmp eq i32 %i.as, 0
  br i1 %.not137, label %.loopexit, label %bb.u

end_hunk_1
