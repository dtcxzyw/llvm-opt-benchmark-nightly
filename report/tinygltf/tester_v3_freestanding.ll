Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3json__parse_value:bb.a
  %i.ms = icmp ult ptr %i.mr, %i.m
  br i1 %i.ms, label %.lr.ph581, label %.critedge2.i, !llvm.loop !326

.lr.ph581:                                        ; preds = %.preheader117.preheader.i, %.preheader117.i
  %i.mt = phi ptr [ %i.mr, %.preheader117.i ], [ %i.mp, %.preheader117.preheader.i ] ; 3 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !37
  %i.mv = add i8 %i.mu, -48
  %or.cond101.i = icmp ult i8 %i.mv, 10
  br i1 %or.cond101.i, label %.preheader117.i, label %..critedge2.i.loopexit_crit_edge, !llvm.loop !326

..critedge2.i.loopexit_crit_edge:                 ; preds = %.lr.ph581
  br label %.critedge2.i, !llvm.loop !326

.critedge2.i:                                     ; preds = %.preheader117.i, %.preheader117.preheader.i, %..critedge2.i.loopexit_crit_edge, %bb.bz, %.critedge.i
  %.4.i80 = phi ptr [ %.2.i79, %.critedge.i ], [ %.2.i79, %bb.bz ], [ %scevgep128.i, %.preheader117.preheader.i ], [ %i.mt, %..critedge2.i.loopexit_crit_edge ], [ %scevgep128.i, %.preheader117.i ] ; 12 uses
  %.not95.i = phi i1 [ true, %.critedge.i ], [ true, %bb.bz ], [ false, %.preheader117.preheader.i ], [ false, %..critedge2.i.loopexit_crit_edge ], [ false, %.preheader117.i ]
  %i.mw = icmp ult ptr %.4.i80, %i.m
  br i1 %i.mw, label %bb.cc, label %.critedge4.i

bb.cc:                                            ; preds = %.critedge2.i
  %i.mx = load i8, ptr %.4.i80, align 1, !tbaa !37
  switch i8 %i.mx, label %.critedge4.i [
    i8 101, label %bb.cd
    i8 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.my = getelementptr inbounds nuw i8, ptr %.4.i80, i64 1 ; 4 uses
  %i.mz = icmp ult ptr %i.my, %i.m
  br i1 %i.mz, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.na = load i8, ptr %i.my, align 1, !tbaa !37
  switch i8 %i.na, label %bb.cg [
    i8 43, label %bb.cf
    i8 45, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.nb = getelementptr inbounds nuw i8, ptr %.4.i80, i64 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.5.i = phi ptr [ %i.nb, %bb.cf ], [ %i.my, %bb.ce ], [ %i.my, %bb.cd ] ; 5 uses
  %.5129.i = ptrtoaddr ptr %.5.i to i64
  %.not94.i = icmp ult ptr %.5.i, %i.m
  br i1 %.not94.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.nc = load i8, ptr %.5.i, align 1, !tbaa !37
  %i.nd = add i8 %i.nc, -58
  %or.cond102.i = icmp ult i8 %i.nd, -10
  br i1 %or.cond102.i, label %bb.cp, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ch
  %i.ne = sub i64 %i.lv, %.5129.i
  %scevgep130.i = getelementptr i8, ptr %.5.i, i64 %i.ne ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 2 uses
  %i.ng = icmp ult ptr %i.nf, %i.m
  br i1 %i.ng, label %.lr.ph584, label %.critedge105.i

.preheader.i:                                     ; preds = %.lr.ph584
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nj, i64 1 ; 2 uses
  %i.ni = icmp ult ptr %i.nh, %i.m
  br i1 %i.ni, label %.lr.ph584, label %.critedge105.i, !llvm.loop !327

.lr.ph584:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %i.nj = phi ptr [ %i.nh, %.preheader.i ], [ %i.nf, %.preheader.preheader.i ] ; 3 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !37
  %i.nl = add i8 %i.nk, -48
  %or.cond103.i = icmp ult i8 %i.nl, 10
  br i1 %or.cond103.i, label %.preheader.i, label %..critedge105.i.loopexit551_crit_edge, !llvm.loop !327

.critedge4.i:                                     ; preds = %bb.cc, %.critedge2.i
  br i1 %.not95.i, label %bb.ci, label %.critedge105.i

bb.ci:                                            ; preds = %.critedge4.i
  %i.nm = icmp uge ptr %.017.lcssa.i, %.4.i80
  %brmerge.i = or i1 %i.lt, %i.nm                 ; 3 uses
  %.029.i.i = select i1 %brmerge.i, ptr %.017.lcssa.i, ptr %i.lu ; 2 uses
  %.027.i.i = select i1 %brmerge.i, i64 9223372036854775807, i64 -9223372036854775808
  %.not.i.i = icmp ult ptr %.029.i.i, %.4.i80
  br i1 %.not.i.i, label %.preheader.i.i, label %.critedge105.i

.preheader.i.i:                                   ; preds = %bb.ci, %bb.ck
  %.02840.i.i = phi i64 [ %i.nw, %bb.ck ], [ 0, %bb.ci ] ; 2 uses
  %.13039.i.i = phi ptr [ %i.nx, %bb.ck ], [ %.029.i.i, %bb.ci ] ; 2 uses
  %i.nn = load i8, ptr %.13039.i.i, align 1, !tbaa !37
  %i.no = sext i8 %i.nn to i32
  %i.np = add nsw i32 %i.no, -48                  ; 2 uses
  %i.nq = icmp ugt i32 %i.np, 9
  br i1 %i.nq, label %.critedge105.i, label %bb.cj

bb.cj:                                            ; preds = %.preheader.i.i
  %i.nr = zext nneg i32 %i.np to i64              ; 2 uses
  %i.ns = sub nuw i64 %.027.i.i, %i.nr
  %i.nt = udiv i64 %i.ns, 10
  %i.nu = icmp ugt i64 %.02840.i.i, %i.nt
  br i1 %i.nu, label %.critedge105.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nv = mul nuw nsw i64 %.02840.i.i, 10
  %i.nw = add nuw i64 %i.nv, %i.nr                ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.13039.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.nx, %.4.i80
  br i1 %exitcond.not.i.i, label %bb.cl, label %.preheader.i.i, !llvm.loop !328

bb.cl:                                            ; preds = %bb.ck
  %i.ny = sub i64 0, %i.nw
  %.lcssa.sink.i.i = select i1 %brmerge.i, i64 %i.nw, i64 %i.ny
  store i32 2, ptr %2, align 8, !tbaa !40
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.lcssa.sink.i.i, ptr %i.nz, align 8, !tbaa !37
  store ptr %.4.i80, ptr %0, align 8, !tbaa !38
  br label %tg3json__set_error.exit

..critedge105.i.loopexit551_crit_edge:            ; preds = %.lr.ph584
  br label %.critedge105.i, !llvm.loop !327

.critedge105.i:                                   ; preds = %.preheader.i, %bb.cj, %.preheader.i.i, %.preheader.preheader.i, %..critedge105.i.loopexit551_crit_edge, %bb.ci, %.critedge4.i
  %.7110.i = phi ptr [ %scevgep130.i, %.preheader.preheader.i ], [ %.4.i80, %.critedge4.i ], [ %.4.i80, %bb.ci ], [ %.4.i80, %bb.cj ], [ %i.nj, %..critedge105.i.loopexit551_crit_edge ], [ %.4.i80, %.preheader.i.i ], [ %scevgep130.i, %.preheader.i ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ob = tail call fastcc i32 @tg3json__parse_f64_c(ptr noundef nonnull %.017.lcssa.i, ptr noundef %.7110.i, ptr noundef %i.oa) #21
  %.not97.i = icmp eq i32 %i.ob, 0
  br i1 %.not97.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.critedge105.i
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !36
  %.not98.i = icmp eq i32 %i.od, 0
  br i1 %.not98.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oe = load double, ptr %i.oa, align 8, !tbaa !37
  %i.of = fptrunc double %i.oe to float
  %i.og = fpext float %i.of to double
  store double %i.og, ptr %i.oa, align 8, !tbaa !37
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 3, ptr %2, align 8, !tbaa !40
  store ptr %.7110.i, ptr %0, align 8, !tbaa !38
  br label %tg3json__set_error.exit

bb.cp:                                            ; preds = %.critedge105.i, %bb.ch, %bb.cg, %bb.cb, %bb.ca, %bb.by, %bb.bv
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !27
  %.not.i106.i = icmp eq ptr %i.oi, null
  br i1 %.not.i106.i, label %bb.cq, label %tg3json__set_error.exit

bb.cq:                                            ; preds = %bb.cp
  %i.oj = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %i.oj, ptr %i.oh, align 8, !tbaa !27
  br label %tg3json__set_error.exit

tg3json__memcmp_fallback.exit:                    ; preds = %.lr.ph.i69.1, %.lr.ph.i69.2, %.lr.ph.i69.3, %.lr.ph.i69.4, %.lr.ph.i61.1, %.lr.ph.i61.2, %.lr.ph.i61.3, %.lr.ph.i59.1, %.lr.ph.i59.2, %.lr.ph.i59.3, %bb.bu, %bb.bt, %bb.bs
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !27
  %.not.i82 = icmp eq ptr %i.ol, null
  br i1 %.not.i82, label %bb.cr, label %tg3json__set_error.exit

bb.cr:                                            ; preds = %tg3json__memcmp_fallback.exit
  store ptr %.017.lcssa.i, ptr %i.ok, align 8, !tbaa !27
  br label %tg3json__set_error.exit

tg3json__set_error.exit:                          ; preds = %bb.ah, %.thread187, %._crit_edge220, %bb.bl, %._crit_edge, %bb.bo, %bb.cr, %tg3json__memcmp_fallback.exit, %bb.cq, %bb.cp, %bb.co, %bb.cl, %bb.l, %.thread178, %._crit_edge225, %bb.ac, %._crit_edge229, %bb.ad, %bb.g, %bb.f, %bb.c, %bb.b, %tg3json__memcmp_fallback.exit76.thread, %tg3json__memcmp_fallback.exit68.thread, %tg3json__memcmp_fallback.exit.thread, %bb.br
  %.1 = phi i32 [ 1, %tg3json__memcmp_fallback.exit76.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.g ], [ 0, %tg3json__memcmp_fallback.exit ], [ %.0, %bb.br ], [ 1, %tg3json__memcmp_fallback.exit.thread ], [ 0, %bb.cq ], [ 1, %tg3json__memcmp_fallback.exit68.thread ], [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %bb.l ], [ 0, %bb.cr ], [ 1, %.thread178 ], [ 0, %bb.ac ], [ 0, %._crit_edge225 ], [ 0, %._crit_edge229 ], [ 1, %bb.cl ], [ 1, %bb.co ], [ 0, %bb.cp ], [ 1, %bb.ah ], [ 0, %bb.bo ], [ 1, %.thread187 ], [ 0, %bb.bl ], [ 0, %._crit_edge220 ], [ 0, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @tg3json_value_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  switch i32 %i.a, label %tg3json__init_value.exit [
    i32 6, label %.preheader
    i32 5, label %.preheader24
  ]

.preheader24:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37
  %.not29 = icmp eq i64 %i.c, 0
  br i1 %.not29, label %tg3json__init_value.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %.not30 = icmp eq i64 %i.f, 0
  br i1 %.not30, label %tg3json__init_value.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.026 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.026
  tail call void @tg3json_value_free(ptr noundef %i.i) #21
  %i.j = add nuw i64 %.026, 1                     ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !37
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %tg3json__init_value.exit, !llvm.loop !329

bb.d:                                             ; preds = %.lr.ph28, %bb.f
  %i.m = phi i64 [ %i.f, %.lr.ph28 ], [ %i.q, %bb.f ]
  %.127 = phi i64 [ 0, %.lr.ph28 ], [ %i.r, %bb.f ] ; 2 uses
  %1 = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.127
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not23 = icmp eq ptr %i.p, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @tg3json_value_free(ptr noundef nonnull %i.p) #21
  %.pre.a = load i64, ptr %i.e, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = phi i64 [ %i.m, %bb.d ], [ %.pre.a, %bb.e ] ; 2 uses
  %i.r = add nuw i64 %.127, 1                     ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %tg3json__init_value.exit, !llvm.loop !330

tg3json__init_value.exit:                         ; preds = %bb.c, %bb.f, %.preheader24, %.preheader, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %tg3json__init_value.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_parse_n(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
tg3json__memset_fallback.exit:
  %5 = alloca %struct.tg3json_parse_options, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 %2, ptr %5, align 8, !tbaa !29
  %i.b = call i32 @tg3json_parse_n_opts(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.b
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_parse(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json_parse_options, align 8 ; 5 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not20 = or i1 %i.a, %i.b
  %i.c = icmp ult ptr %1, %0
  %or.cond17 = or i1 %i.c, %or.cond.not20
  br i1 %or.cond17, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %4, align 8, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i64 %2, ptr %5, align 8, !tbaa !29
  %i.h = call range(i32 0, 2) i32 @tg3json_parse_n_opts(ptr noundef nonnull %0, i64 noundef %i.f, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @tg3json_value_init_null(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %tg3json__init_value.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %bb.a, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @tg3json_value_init_bool(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %tg3json__init_value.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %bb.a, %.preheader.preheader.i
  store i32 1, ptr %0, align 8, !tbaa !40
  %.not = icmp ne i32 %1, 0
  %i.a = zext i1 %.not to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @tg3json_value_init_int(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %tg3json__init_value.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %bb.a, %.preheader.preheader.i
  store i32 2, ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @tg3json_value_init_real(ptr nofree noundef writeonly captures(address_is_null) %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %tg3json__init_value.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %bb.a, %.preheader.preheader.i
  store i32 3, ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_value_init_string_n(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %tg3json__init_value.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %bb.a, %.preheader.preheader.i
  store i32 4, ptr %0, align 8, !tbaa !40
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.a = select i1 %.not, i64 0, i64 %2           ; 5 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 16
  %i.d = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 3 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp ugt i64 %i.e, 524288
  br i1 %i.f, label %tg3json__init_value.exit15, label %bb.b

bb.b:                                             ; preds = %tg3json__init_value.exit
  %i.g = add i64 %i.a, 1
  %i.h = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.d ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !30
  store i64 %i.e, ptr @test_heap_used, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  %.not11.i = icmp eq i64 %i.a, 0
  br i1 %.not11.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.j = select i1 %.not, ptr @.str, ptr %1       ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = add i64 %i.d, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %2, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.o = getelementptr i8, ptr %i.j, i64 %n.vec
  %i.p = getelementptr i8, ptr %i.i, i64 %n.vec
  %i.q = and i64 %2, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %index ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.i, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load22 = load <16 x i8>, ptr %i.r, align 1, !tbaa !37
  %i.s = getelementptr i8, ptr %next.gep21, i64 16
  store <16 x i8> %wide.load, ptr %next.gep21, align 1, !tbaa !37
  store <16 x i8> %wide.load22, ptr %i.s, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@tg3__parse_int_array:bb.a
  %i.ej = add i32 %i.eh, 1
  store i32 %i.ej, ptr %i.ci, align 8, !tbaa !68
  %i.ek = zext i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %i.ek ; 5 uses
  store i32 2, ptr %i.el, align 8, !tbaa !124
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 50, ptr %i.em, align 4, !tbaa !125
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @.str.138, ptr %i.en, align 8, !tbaa !126
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %6, ptr %i.eo, align 8, !tbaa !127
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 -1, ptr %i.ep, align 8, !tbaa !128
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 1, ptr %i.eq, align 8, !tbaa !67
  br label %tg3__error_push.exit

bb.u:                                             ; preds = %.preheader, %bb.aa
  %.04380 = phi i64 [ 0, %.preheader ], [ %i.fo, %bb.aa ] ; 5 uses
  %i.er = load i32, ptr %i.ad, align 8, !tbaa !40
  %.not8.i = icmp eq i32 %i.er, 5
  br i1 %.not8.i, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.es = load i64, ptr %i.al, align 8, !tbaa !37
  %.not9.i = icmp ult i64 %.04380, %i.es
  br i1 %.not9.i, label %tg3json_array_get.exit, label %.critedge

tg3json_array_get.exit:                           ; preds = %bb.v
  %i.et = load ptr, ptr %i.cf, align 8, !tbaa !37 ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %.04380 ; 3 uses
  %.not52 = icmp eq ptr %i.et, null
  br i1 %.not52, label %.critedge, label %bb.w

bb.w:                                             ; preds = %tg3json_array_get.exit
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.04380
  %i.ew = load i32, ptr %i.eu, align 8, !tbaa !40
  switch i32 %i.ew, label %.critedge [
    i32 2, label %.thread.i
    i32 3, label %bb.y
  ]

.thread.i:                                        ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !37 ; 2 uses
  %i.ez = add i64 %i.ey, -2147483648
  %or.cond.i64 = icmp ult i64 %i.ez, -4294967296
  br i1 %or.cond.i64, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.thread.i
  %i.fa = trunc nsw i64 %i.ey to i32
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !37 ; 5 uses
  %i.fd = tail call double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp ueq double %i.fd, +inf
  %i.ff = fcmp olt double %i.fc, f0xC1E0000000000000
  %or.cond3.i = or i1 %i.ff, %i.fe
  %i.fg = fcmp ogt double %i.fc, f0x41DFFFFFFFC00000
  %or.cond5.i = or i1 %i.fg, %or.cond3.i
  br i1 %or.cond5.i, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fh = fptosi double %i.fc to i32              ; 2 uses
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fcmp une double %i.fc, %i.fi
  br i1 %i.fj, label %.critedge, label %bb.aa

.critedge:                                        ; preds = %bb.y, %.thread.i, %bb.z, %bb.w, %bb.u, %bb.v, %tg3json_array_get.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !145
  %i.fm = load ptr, ptr %0, align 8, !tbaa !144
  %i.fn = trunc i64 %.04380 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.fl, ptr noundef %i.fm, i32 poison, i32 noundef 11, ptr noundef %6, ptr noundef nonnull @.str.139, ptr noundef nonnull %2, i32 noundef %i.fn) #21
  br label %tg3__error_push.exit

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.sink.i = phi i32 [ %i.fa, %bb.x ], [ %i.fh, %bb.z ]
  store i32 %.sink.i, ptr %i.ev, align 4, !tbaa !48
  %i.fo = add nuw i64 %.04380, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.am
  br i1 %exitcond.not, label %bb.ab, label %bb.u, !llvm.loop !993

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ce, ptr %3, align 8, !tbaa !994
  %i.fp = trunc i64 %i.am to i32
  store i32 %i.fp, ptr %4, align 4, !tbaa !48
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.t, %bb.r, %bb.p, %tg3__arena_alloc.exit.thread, %.critedge, %bb.ab, %tg3json_array_size.exit.thread, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @tg3__parse_number_to_fixed(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 3, 17) %3) unnamed_addr #11 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_is_array.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !1

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %0, null
  br i1 %.not.i6.i.i, label %tg3__json_is_array.exit.thread, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %0, align 8, !tbaa !40
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_is_array.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_is_array.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.us.i.i.i, !llvm.loop !3

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.z, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !52
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.in.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ]
  %.018.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %1, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0917.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i.i.i, align 1, !tbaa !37
  %i.v = load i8, ptr %.018.i.i.i.i, align 1, !tbaa !37
  %.not14.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i64 %.in.i.i.i.i, -1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %tg3__json_get.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i
  %i.z = add nuw i64 %.01425.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.i.i.i, !llvm.loop !3

tg3__json_get.exit:                               ; preds = %bb.c, %.lr.ph.split.us.i.i.i
  %i.aa = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.c ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 5 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %tg3__json_is_array.exit.thread, label %tg3__json_is_array.exit

tg3__json_is_array.exit:                          ; preds = %tg3__json_get.exit
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40
  %.not = icmp eq i32 %i.ae, 5
  br i1 %.not, label %tg3json_array_size.exit, label %tg3__json_is_array.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = zext nneg i32 %3 to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  %.not40 = icmp eq i64 %i.ag, 0
  br i1 %.not40, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %tg3json_array_size.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %tg3json_array_get.exit.thread
  %.039.a = phi i64 [ %i.at, %tg3json_array_get.exit.thread ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %4 = load i64, ptr %i.ai, align 8, !tbaa !37
  %.not9.i = icmp ult i64 %.039.a, %4
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3json_array_get.exit.thread

tg3json_array_get.exit:                           ; preds = %.lr.ph.split
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.039.a ; 3 uses
  %.not19 = icmp eq ptr %i.ak, null
  br i1 %.not19, label %tg3json_array_get.exit.thread, label %bb.d

bb.d:                                             ; preds = %tg3json_array_get.exit
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40
  switch i32 %i.am, label %tg3__json_number_to_double.exit [
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37
  %i.ap = sitofp i64 %i.ao to double
  br label %tg3__json_number_to_double.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !37
  br label %tg3__json_number_to_double.exit

tg3__json_number_to_double.exit:                  ; preds = %bb.d, %bb.e, %bb.f
  %.0.i24 = phi double [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ 0.000000e+00, %bb.d ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.039.a
  store double %.0.i24, ptr %i.as, align 8, !tbaa !64
  br label %tg3json_array_get.exit.thread

tg3json_array_get.exit.thread:                    ; preds = %.lr.ph.split, %tg3json_array_get.exit, %tg3__json_number_to_double.exit
  %i.at = add nuw nsw i64 %.039.a, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %spec.select
  br i1 %exitcond.not, label %tg3__json_is_array.exit.thread, label %.lr.ph.split, !llvm.loop !995

tg3__json_is_array.exit.thread:                   ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %tg3json_array_get.exit.thread, %tg3json_array_size.exit, %.preheader.i.i.i, %bb.b, %tg3json__strlen_fallback.exit.i.i, %bb.a, %tg3__json_get.exit, %tg3__json_is_array.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__parse_double(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #9 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !1

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %1, null
  br i1 %.not.i6.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %1, align 8, !tbaa !40
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.us.i.i.i, !llvm.loop !3

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.z, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !52
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.in.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ]
  %.018.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %2, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0917.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i.i.i, align 1, !tbaa !37
  %i.v = load i8, ptr %.018.i.i.i.i, align 1, !tbaa !37
  %.not14.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i64 %.in.i.i.i.i, -1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %tg3__json_get.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i
  %i.z = add nuw i64 %.01425.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.i.i.i, !llvm.loop !3

tg3__json_get.exit:                               ; preds = %bb.c, %.lr.ph.split.us.i.i.i
  %i.aa = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.c ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 4 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.e

tg3__json_get.exit.thread:                        ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %.preheader.i.i.i, %bb.b, %tg3json__strlen_fallback.exit.i.i, %bb.a, %tg3__json_get.exit
  %.not16 = icmp eq i32 %4, 0
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %tg3__json_get.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145
  %i.ag = load ptr, ptr %0, align 8, !tbaa !144
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.af, ptr noundef %i.ag, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef %2) #21
  br label %bb.h

bb.e:                                             ; preds = %tg3__json_get.exit
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !40
  switch i32 %i.ah, label %bb.f [
    i32 2, label %.thread
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ak = load ptr, ptr %0, align 8, !tbaa !144
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.aj, ptr noundef %i.ak, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.62, ptr noundef nonnull %2) #21
  br label %bb.h

.thread:                                          ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37
  %i.an = sitofp i64 %i.am to double
  br label %tg3__json_number_to_double.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !37
  br label %tg3__json_number_to_double.exit

tg3__json_number_to_double.exit:                  ; preds = %.thread, %bb.g
  %.0.i = phi double [ %i.an, %.thread ], [ %i.ap, %bb.g ]
  store double %.0.i, ptr %3, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_number_to_double.exit, %bb.f, %bb.d
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !37
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !1

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %1, null
  br i1 %.not.i6.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %1, align 8, !tbaa !40
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.us.i.i.i, !llvm.loop !3

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.z, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i
end_hunk_1
