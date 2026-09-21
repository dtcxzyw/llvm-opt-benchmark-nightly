Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pfr?download=true
inline.NumInlined: 33
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pfr_face_init:bb.a
  %i.zd = udiv i32 %i.zc, 5                       ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 142 ; 2 uses
  %sext = shl i32 %i.zd, 16
  %i.zf = ashr exact i32 %sext, 16
  %i.zg = sext i16 %i.yv to i32
  %i.zh = sext i16 %i.yz to i32
  %i.zi = sub nsw i32 %i.zg, %i.zh                ; 2 uses
  %i.zj = icmp slt i32 %i.zf, %i.zi
  %spec.select182 = select i1 %i.zj, i32 %i.zi, i32 %i.zd
  %storemerge181 = trunc i32 %spec.select182 to i16
  store i16 %storemerge181, ptr %i.ze, align 2, !tbaa !192
  br i1 %.not145, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !77
  %i.zm = zext i32 %i.xx to i64
  %i.zn = call ptr @ft_mem_qrealloc(ptr noundef %i.zl, i64 noundef 32, i64 noundef 0, i64 noundef %i.zm, ptr noundef null, ptr noundef nonnull %i.e) #12 ; 3 uses
  store ptr %i.zn, ptr %i.ym, align 8, !tbaa !75
  %i.zo = load i32, ptr %i.e, align 4, !tbaa !50  ; 2 uses
  %.not149 = icmp eq i32 %i.zo, 0
  br i1 %.not149, label %bb.cx, label %.critedge154

bb.cx:                                            ; preds = %bb.cw
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !78 ; 2 uses
  %xtraiter261 = and i32 %i.xx, 1
  %i.zr = icmp eq i32 %i.xx, 1
  br i1 %i.zr, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.cx
  %unroll_iter264 = and i32 %i.xx, -2
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.new
  %.0124191 = phi ptr [ %i.zq, %.new ], [ %i.aav, %bb.cy ] ; 5 uses
  %.0125190 = phi ptr [ %i.zn, %.new ], [ %i.aau, %bb.cy ] ; 11 uses
  %niter265 = phi i32 [ 0, %.new ], [ %niter265.next.1, %bb.cy ]
  %i.zs = getelementptr inbounds nuw i8, ptr %.0124191, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !81 ; 2 uses
  %i.zu = trunc i32 %i.zt to i16
  store i16 %i.zu, ptr %.0125190, align 8, !tbaa !194
  %i.zv = load i32, ptr %.0124191, align 8, !tbaa !82 ; 2 uses
  %i.zw = trunc i32 %i.zv to i16
  %i.zx = getelementptr inbounds nuw i8, ptr %.0125190, i64 2
  store i16 %i.zw, ptr %i.zx, align 2, !tbaa !195
  %i.zy = shl i32 %i.zt, 6
  %i.zz = zext i32 %i.zy to i64                   ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0125190, i64 8
  store i64 %i.zz, ptr %i.aaa, align 8, !tbaa !196
  %i.aab = shl i32 %i.zv, 6
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %.0125190, i64 16
  store i64 %i.aac, ptr %i.aad, align 8, !tbaa !197
  %i.aae = getelementptr inbounds nuw i8, ptr %.0125190, i64 24
  store i64 %i.zz, ptr %i.aae, align 8, !tbaa !198
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0125190, i64 32
  %i.aag = getelementptr inbounds nuw i8, ptr %.0124191, i64 40
  %i.aah = getelementptr inbounds nuw i8, ptr %.0124191, i64 44
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !81 ; 2 uses
  %i.aaj = trunc i32 %i.aai to i16
  store i16 %i.aaj, ptr %i.aaf, align 8, !tbaa !194
  %i.aak = load i32, ptr %i.aag, align 8, !tbaa !82 ; 2 uses
  %i.aal = trunc i32 %i.aak to i16
  %i.aam = getelementptr inbounds nuw i8, ptr %.0125190, i64 34
  store i16 %i.aal, ptr %i.aam, align 2, !tbaa !195
  %i.aan = shl i32 %i.aai, 6
  %i.aao = zext i32 %i.aan to i64                 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0125190, i64 40
  store i64 %i.aao, ptr %i.aap, align 8, !tbaa !196
  %i.aaq = shl i32 %i.aak, 6
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %.0125190, i64 48
  store i64 %i.aar, ptr %i.aas, align 8, !tbaa !197
  %i.aat = getelementptr inbounds nuw i8, ptr %.0125190, i64 56
  store i64 %i.aao, ptr %i.aat, align 8, !tbaa !198
  %i.aau = getelementptr inbounds nuw i8, ptr %.0125190, i64 64 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.0124191, i64 80 ; 2 uses
  %niter265.next.1 = add nuw i32 %niter265, 2     ; 2 uses
  %niter265.ncmp.1 = icmp eq i32 %niter265.next.1, %unroll_iter264
  br i1 %niter265.ncmp.1, label %.unr-lcssa, label %bb.cy, !llvm.loop !144

.unr-lcssa:                                       ; preds = %bb.cy
  %lcmp.mod262.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %bb.cz, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.cx
  %.0124191.epil.init = phi ptr [ %i.zq, %bb.cx ], [ %i.aav, %.unr-lcssa ] ; 2 uses
  %.0125190.epil.init = phi ptr [ %i.zn, %bb.cx ], [ %i.aau, %.unr-lcssa ] ; 5 uses
  %lcmp.mod263 = trunc i32 %i.xx to i1
  call void @llvm.assume(i1 %lcmp.mod263)
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0124191.epil.init, i64 4
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !81 ; 2 uses
  %i.aay = trunc i32 %i.aax to i16
  store i16 %i.aay, ptr %.0125190.epil.init, align 8, !tbaa !194
  %i.aaz = load i32, ptr %.0124191.epil.init, align 8, !tbaa !82 ; 2 uses
  %i.aba = trunc i32 %i.aaz to i16
  %i.abb = getelementptr inbounds nuw i8, ptr %.0125190.epil.init, i64 2
  store i16 %i.aba, ptr %i.abb, align 2, !tbaa !195
  %i.abc = shl i32 %i.aax, 6
  %i.abd = zext i32 %i.abc to i64                 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0125190.epil.init, i64 8
  store i64 %i.abd, ptr %i.abe, align 8, !tbaa !196
  %i.abf = shl i32 %i.aaz, 6
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %.0125190.epil.init, i64 16
  store i64 %i.abg, ptr %i.abh, align 8, !tbaa !197
  %i.abi = getelementptr inbounds nuw i8, ptr %.0125190.epil.init, i64 24
  store i64 %i.abd, ptr %i.abi, align 8, !tbaa !198
  br label %bb.cz

bb.cz:                                            ; preds = %.unr-lcssa, %.epil.preheader
  store i32 %i.xx, ptr %i.yl, align 8, !tbaa !187
  %.pre = load i32, ptr %i.xp, align 8, !tbaa !172
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cv
  %i.abj = phi i32 [ %.pre, %bb.cz ], [ %i.xq, %bb.cv ]
  %i.abk = and i32 %i.abj, 4
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !173
  %i.abo = trunc i32 %i.abn to i16
  br label %._crit_edge198

bb.dc:                                            ; preds = %bb.da
  %i.abp = load i32, ptr %i.ww, align 8, !tbaa !64 ; 4 uses
  %.not150192 = icmp eq i32 %i.abp, 0
  br i1 %.not150192, label %._crit_edge198, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.dc
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !65 ; 2 uses
  %xtraiter266 = and i32 %i.abp, 3                ; 3 uses
  %i.abs = icmp ult i32 %i.abp, 4
  br i1 %i.abs, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter270 = and i32 %i.abp, -4
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %.0195 = phi ptr [ %i.abr, %.lr.ph197.preheader.new ], [ %i.acb, %.lr.ph197 ] ; 5 uses
  %.0123193 = phi i32 [ 0, %.lr.ph197.preheader.new ], [ %spec.select.3, %.lr.ph197 ]
  %niter271 = phi i32 [ 0, %.lr.ph197.preheader.new ], [ %niter271.next.3, %.lr.ph197 ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.0195, i64 4
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !66
  %spec.select = call i32 @llvm.smax.i32(i32 %.0123193, i32 %i.abu)
  %i.abv = getelementptr inbounds nuw i8, ptr %.0195, i64 20
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !66
  %spec.select.1 = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.abw)
  %i.abx = getelementptr inbounds nuw i8, ptr %.0195, i64 36
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !66
  %spec.select.2 = call i32 @llvm.smax.i32(i32 %spec.select.1, i32 %i.aby)
  %i.abz = getelementptr inbounds nuw i8, ptr %.0195, i64 52
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !66
  %spec.select.3 = call i32 @llvm.smax.i32(i32 %spec.select.2, i32 %i.aca) ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.0195, i64 64 ; 2 uses
  %niter271.next.3 = add nuw i32 %niter271, 4     ; 2 uses
  %niter271.ncmp.3 = icmp eq i32 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %._crit_edge198.loopexit.unr-lcssa, label %.lr.ph197, !llvm.loop !145

._crit_edge198.loopexit.unr-lcssa:                ; preds = %.lr.ph197
  %lcmp.mod267.not = icmp eq i32 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %._crit_edge198.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %._crit_edge198.loopexit.unr-lcssa, %.lr.ph197.preheader
  %.0195.epil.init = phi ptr [ %i.abr, %.lr.ph197.preheader ], [ %i.acb, %._crit_edge198.loopexit.unr-lcssa ]
  %.0123193.epil.init = phi i32 [ 0, %.lr.ph197.preheader ], [ %spec.select.3, %._crit_edge198.loopexit.unr-lcssa ]
  %lcmp.mod269 = icmp ne i32 %xtraiter266, 0
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %.lr.ph197.epil

.lr.ph197.epil:                                   ; preds = %.lr.ph197.epil, %.lr.ph197.epil.preheader
  %.0195.epil = phi ptr [ %i.ace, %.lr.ph197.epil ], [ %.0195.epil.init, %.lr.ph197.epil.preheader ] ; 2 uses
  %.0123193.epil = phi i32 [ %spec.select.epil, %.lr.ph197.epil ], [ %.0123193.epil.init, %.lr.ph197.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph197.epil ], [ 0, %.lr.ph197.epil.preheader ]
  %i.acc = getelementptr inbounds nuw i8, ptr %.0195.epil, i64 4
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !66
  %spec.select.epil = call i32 @llvm.smax.i32(i32 %.0123193.epil, i32 %i.acd) ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0195.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter266
  br i1 %epil.iter.cmp.not, label %._crit_edge198.loopexit, label %.lr.ph197.epil, !llvm.loop !146

._crit_edge198.loopexit:                          ; preds = %.lr.ph197.epil, %._crit_edge198.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge198.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph197.epil ]
  %i.acf = trunc i32 %spec.select.lcssa to i16
  br label %._crit_edge198

._crit_edge198:                                   ; preds = %bb.dc, %._crit_edge198.loopexit, %bb.db
  %.0123.lcssa.sink = phi i16 [ %i.abo, %bb.db ], [ 0, %bb.dc ], [ %i.acf, %._crit_edge198.loopexit ]
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i16 %.0123.lcssa.sink, ptr %i.acg, align 8, !tbaa !200
  %i.ach = load i16, ptr %i.ze, align 2, !tbaa !192
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i16 %i.ach, ptr %i.aci, align 2, !tbaa !201
  %i.acj = load i16, ptr %i.ys, align 8, !tbaa !189 ; 2 uses
  %6 = udiv i16 %i.acj, 10
  %.neg = sub nsw i16 0, %6
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i16 %.neg, ptr %7, align 4, !tbaa !202
  %8 = udiv i16 %i.acj, 30
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 150
  store i16 %8, ptr %i.ack, align 2, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !204
  %i.acl = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 3, ptr %i.acl, align 4, !tbaa !205
  %i.acm = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1, ptr %i.acm, align 2, !tbaa !206
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1970170211, ptr %i.acn, align 8, !tbaa !207
  %i.aco = call i32 @FT_CMap_New(ptr noundef nonnull @pfr_cmap_class_rec, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.acp = load i32, ptr %i.ya, align 8, !tbaa !71
  %.not151 = icmp eq i32 %i.acp, 0
  br i1 %.not151, label %.critedge154, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge198
  %i.acq = load i64, ptr %i.xb, align 8, !tbaa !184
  %i.acr = or i64 %i.acq, 64
  store i64 %i.acr, ptr %i.xb, align 8, !tbaa !184
  br label %.critedge154

.critedge154:                                     ; preds = %._crit_edge.thread, %bb.l, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %pfr_phy_font_load.exit.thread, %pfr_log_font_load.exit.thread, %.thread, %bb.cw, %bb.dd, %._crit_edge198, %bb.k, %pfr_phy_font_load.exit, %pfr_log_font_load.exit
  %i.acs = phi i32 [ %.ph179, %pfr_phy_font_load.exit.thread ], [ %.055.i.ph, %pfr_log_font_load.exit.thread ], [ %.ph, %.thread ], [ %i.zo, %bb.cw ], [ 6, %bb.l ], [ %i.aco, %bb.dd ], [ %i.aco, %._crit_edge198 ], [ 0, %bb.k ], [ %.pre224.i, %pfr_phy_font_load.exit ], [ %.pre.i, %pfr_log_font_load.exit ], [ 2, %bb.f ], [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.c ], [ 2, %bb.d ], [ 2, %bb.e ], [ 3, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  ret i32 %i.acs
}

; Function Attrs: nounwind uwtable
define internal void @pfr_face_done(ptr nofree noundef captures(address_is_null) %0) #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.e) #12
  store ptr null, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.g) #12
  store ptr null, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.i) #12
  store ptr null, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.k) #12
  store ptr null, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 0, ptr %i.l, align 4, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 0, ptr %i.n, align 4, !tbaa !210
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.p) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.s) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 0, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.w) #12
  store ptr null, ptr %i.v, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 0, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 2 uses
  %.not38.i = icmp eq ptr %i.z, null
  br i1 %.not38.i, label %pfr_phy_font_done.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.039.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.z, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.039.i, align 8, !tbaa !86 ; 2 uses
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %.039.i) #12
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %pfr_phy_font_done.exit, label %.lr.ph.i, !llvm.loop !208

pfr_phy_font_done.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.ab, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.ad) #12
  store ptr null, ptr %i.ac, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %pfr_phy_font_done.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pfr_slot_init(ptr nofree noundef captures(none) initializes((304, 360)) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.c, ptr %i.e, align 8, !tbaa !101
  tail call void @FT_GlyphLoader_Rewind(ptr noundef %i.c) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @pfr_slot_done(ptr nofree noundef captures(none) initializes((308, 312), (320, 336), (352, 353)) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.i, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_slot_load(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.FT_BBox_, align 16          ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 1) ; 3 uses
  %.not91 = icmp eq ptr %i.i, null
  br i1 %.not91, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %.not92 = icmp ult i32 %spec.select, %i.l
  br i1 %.not92, label %bb.c, label %bb.ay

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %3, 9
  %.not93 = icmp eq i32 %i.m, 0
  br i1 %.not93, label %bb.d, label %pfr_slot_load_bitmap.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219  ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = zext i32 %spec.select to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.u = load i32, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %.not162.i = icmp eq i32 %i.u, 0
  br i1 %.not162.i, label %pfr_slot_load_bitmap.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !221
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 26
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.084160.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %bb.g ]
  %.085159.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 6 uses
  %i.ab = load i32, ptr %.085159.i, align 8, !tbaa !82
  %i.ac = icmp eq i32 %i.ab, %i.z
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.085159.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %i.af = load i16, ptr %i.aa, align 2, !tbaa !222
  %i.ag = zext i16 %i.af to i32
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.g
end_hunk_0
