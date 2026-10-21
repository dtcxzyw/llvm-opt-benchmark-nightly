Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_guc_capture?download=true
inline.NumInlined: 184
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@intel_guc_capture_destroy:bb.a
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void @kfree(ptr noundef %i.hk) #16
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.hl = getelementptr i8, ptr %i.e, i64 1376
  %i.hm = load i8, ptr %i.hl, align 8, !range !13, !noundef !14
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ho = getelementptr i8, ptr %i.e, i64 1384
  %i.hp = load ptr, ptr %i.ho, align 8
  tail call void @kfree(ptr noundef %i.hp) #16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.hq = getelementptr i8, ptr %i.e, i64 1408
  %i.hr = load i8, ptr %i.hq, align 8, !range !13, !noundef !14
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ht = getelementptr i8, ptr %i.e, i64 1416
  %i.hu = load ptr, ptr %i.ht, align 8
  tail call void @kfree(ptr noundef %i.hu) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.hv = getelementptr i8, ptr %i.e, i64 1440
  %i.hw = load i8, ptr %i.hv, align 8, !range !13, !noundef !14
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hy = getelementptr i8, ptr %i.e, i64 1448
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void @kfree(ptr noundef %i.hz) #16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ia = getelementptr i8, ptr %i.e, i64 1472
  %i.ib = load i8, ptr %i.ia, align 8, !range !13, !noundef !14
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.id = getelementptr i8, ptr %i.e, i64 1480
  %i.ie = load ptr, ptr %i.id, align 8
  tail call void @kfree(ptr noundef %i.ie) #16
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.if = getelementptr i8, ptr %i.e, i64 1504
  %i.ig = load i8, ptr %i.if, align 8, !range !13, !noundef !14
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ii = getelementptr i8, ptr %i.e, i64 1512
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void @kfree(ptr noundef %i.ij) #16
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.d, label %.preheader14.i, label %guc_capture_free_ads_cache.exit, !llvm.loop !36

guc_capture_free_ads_cache.exit:                  ; preds = %bb.cr
  %i.ik = getelementptr i8, ptr %i.b, i64 3088
  %i.il = load ptr, ptr %i.ik, align 8
  tail call void @kfree(ptr noundef %i.il) #16
  %i.im = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 3120   ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  %.not32.i = icmp eq ptr %i.io, %i.in
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %guc_capture_free_ads_cache.exit, %.lr.ph.i
  %.033.i = phi ptr [ %.028.i, %.lr.ph.i ], [ %i.io, %guc_capture_free_ads_cache.exit ] ; 8 uses
  %.028.i = load ptr, ptr %.033.i, align 8        ; 2 uses
  %i.ip = getelementptr i8, ptr %.033.i, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8
  tail call void @kfree(ptr noundef %i.iq) #16
  %i.ir = getelementptr i8, ptr %.033.i, i64 64
  %i.is = load ptr, ptr %i.ir, align 8
  tail call void @kfree(ptr noundef %i.is) #16
  %i.it = getelementptr i8, ptr %.033.i, i64 80
  %i.iu = load ptr, ptr %i.it, align 8
  tail call void @kfree(ptr noundef %i.iu) #16
  %i.iv = getelementptr i8, ptr %.033.i, i64 8    ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.ix = load ptr, ptr %.033.i, align 8          ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store ptr %i.iw, ptr %i.iy, align 8
  store volatile ptr %i.ix, ptr %i.iw, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.033.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.iv, align 8
  tail call void @kfree(ptr noundef %.033.i) #16
  %i.iz = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 3120
  %.not.i = icmp eq ptr %.028.i, %i.ja
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %.lr.ph.i, %guc_capture_free_ads_cache.exit
  %i.jb = phi ptr [ %i.im, %guc_capture_free_ads_cache.exit ], [ %i.iz, %.lr.ph.i ] ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 3096   ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %.not3134.i = icmp eq ptr %i.jd, %i.jc
  br i1 %.not3134.i, label %guc_capture_delete_prealloc_nodes.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i, %.lr.ph37.i
  %.135.i = phi ptr [ %.129.i, %.lr.ph37.i ], [ %i.jd, %._crit_edge.i ] ; 8 uses
  %.129.i = load ptr, ptr %.135.i, align 8        ; 2 uses
  %i.je = getelementptr i8, ptr %.135.i, i64 48
  %i.jf = load ptr, ptr %i.je, align 8
  tail call void @kfree(ptr noundef %i.jf) #16
  %i.jg = getelementptr i8, ptr %.135.i, i64 64
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void @kfree(ptr noundef %i.jh) #16
  %i.ji = getelementptr i8, ptr %.135.i, i64 80
  %i.jj = load ptr, ptr %i.ji, align 8
  tail call void @kfree(ptr noundef %i.jj) #16
  %i.jk = getelementptr i8, ptr %.135.i, i64 8    ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8            ; 2 uses
  %i.jm = load ptr, ptr %.135.i, align 8          ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  store ptr %i.jl, ptr %i.jn, align 8
  store volatile ptr %i.jm, ptr %i.jl, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.135.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.jk, align 8
  tail call void @kfree(ptr noundef %.135.i) #16
  %i.jo = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 3096
  %.not31.i = icmp eq ptr %.129.i, %i.jp
  br i1 %.not31.i, label %guc_capture_delete_prealloc_nodes.exit, label %.lr.ph37.i, !llvm.loop !38

guc_capture_delete_prealloc_nodes.exit:           ; preds = %.lr.ph37.i, %._crit_edge.i
  %i.jq = phi ptr [ %i.jb, %._crit_edge.i ], [ %i.jo, %.lr.ph37.i ]
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8            ; 4 uses
  %.not.i7 = icmp eq ptr %i.js, null
  br i1 %.not.i7, label %guc_capture_free_extlists.exit, label %.preheader.i

.preheader.i:                                     ; preds = %guc_capture_delete_prealloc_nodes.exit
  %i.jt = getelementptr i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8            ; 2 uses
  %.not56.i = icmp eq ptr %i.ju, null
  br i1 %.not56.i, label %guc_capture_free_extlists.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.preheader.i, %.lr.ph.i8
  %i.jv = phi ptr [ %i.ka, %.lr.ph.i8 ], [ %i.ju, %.preheader.i ]
  %.07.i = phi i32 [ %i.jw, %.lr.ph.i8 ], [ 0, %.preheader.i ]
  %i.jw = add i32 %.07.i, 1                       ; 2 uses
  tail call void @kfree(ptr noundef nonnull %i.jv) #16
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [32 x i8], ptr %i.js, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ka, null
  br i1 %.not5.i, label %guc_capture_free_extlists.exit.loopexit, label %.lr.ph.i8, !llvm.loop !39

guc_capture_free_extlists.exit.loopexit:          ; preds = %.lr.ph.i8
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8
  br label %guc_capture_free_extlists.exit

guc_capture_free_extlists.exit:                   ; preds = %guc_capture_free_extlists.exit.loopexit, %guc_capture_delete_prealloc_nodes.exit, %.preheader.i
  %i.kb = phi ptr [ %.pre9, %guc_capture_free_extlists.exit.loopexit ], [ null, %guc_capture_delete_prealloc_nodes.exit ], [ %i.js, %.preheader.i ]
  tail call void @kfree(ptr noundef %i.kb) #16
  %i.kc = load ptr, ptr %i.a, align 8
  tail call void @kfree(ptr noundef %i.kc) #16
  store ptr null, ptr %i.a, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %guc_capture_free_extlists.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @intel_guc_capture_init(ptr noundef initializes((1016, 1024)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.d = tail call noalias align 8 dereferenceable_or_null(3136) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef 3136) #14 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 1016       ; 9 uses
  store ptr %i.d, ptr %i.e, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %check_guc_capture_size.exit, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.f = getelementptr i8, ptr %0, i64 -624       ; 14 uses
  %.val.i = load ptr, ptr %i.f, align 8           ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 1656  ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp ugt i8 %i.h, 11
  %xe_lp_lists.gen8_lists.i = select i1 %i.i, ptr @xe_lp_lists, ptr @gen8_lists ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %1 = load ptr, ptr %xe_lp_lists.gen8_lists.i, align 16
  %.not2021.i.i = icmp eq ptr %1, null
  br i1 %.not2021.i.i, label %guc_capture_alloc_steered_lists.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %i.j = phi ptr [ %i.v, %bb.d ], [ %xe_lp_lists.gen8_lists.i, %bb.a ] ; 4 uses
  %.022.i.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.a ]
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr i8, ptr %i.j, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.j, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %guc_capture_get_one_list.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.t = add i32 %.022.i.i, 1                     ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [32 x i8], ptr %xe_lp_lists.gen8_lists.i, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16
  %.not20.i.i16 = icmp eq ptr %i.w, null
  br i1 %.not20.i.i16, label %guc_capture_alloc_steered_lists.exit, label %.lr.ph.i.i, !llvm.loop !0

guc_capture_get_one_list.exit.i:                  ; preds = %bb.c
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %guc_capture_alloc_steered_lists.exit, label %bb.e

bb.e:                                             ; preds = %guc_capture_get_one_list.exit.i
  %i.x = getelementptr i8, ptr %i.d, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %.not69.i = icmp eq ptr %i.y, null
  br i1 %.not69.i, label %bb.f, label %guc_capture_alloc_steered_lists.exit

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !annotation !43
  store i32 0, ptr %i.b, align 4, !annotation !43
  %i.z = load i8, ptr %i.g, align 8
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr i8, ptr %.val.i, i64 1657
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = icmp samesign ugt i32 %i.af, 3126       ; 2 uses
  %spec.select.i = select i1 %i.ag, i32 3, i32 2
  call void @intel_gt_mcr_get_ss_steering(ptr noundef %i.f, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.ah = getelementptr i8, ptr %0, i64 4496      ; 4 uses
  %i.ai = getelementptr i8, ptr %0, i64 4497      ; 4 uses
  %i.aj = getelementptr i8, ptr %0, i64 4495      ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 4336      ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %intel_sseu_has_subslice.exit.thread.i, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %intel_sseu_has_subslice.exit.thread.i ] ; 4 uses
  %.064139.i = phi i32 [ 0, %bb.f ], [ %.165.i, %intel_sseu_has_subslice.exit.thread.i ] ; 9 uses
  %i.al = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 1656
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr i8, ptr %i.al, i64 1657
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = icmp samesign ugt i32 %i.at, 3126
  br i1 %i.au, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ah, align 8
  %.not.i73.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i73.not.i, label %intel_sseu_has_subslice.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i8, ptr %i.ai, align 1
  %i.ax = zext i8 %i.aw to i64
  %.not22.i.i18 = icmp samesign ult i64 %indvars.iv.i, %i.ax
  br i1 %.not22.i.i18, label %bb.j, label %intel_sseu_has_subslice.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.aj, align 1
  %i.az = and i8 %i.ay, 8
  %.not23.i.i = icmp eq i8 %i.az, 0
  br i1 %.not23.i.i, label %.split.i, label %.split107.i

.split107.i:                                      ; preds = %bb.j
  %i.ba = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, i64 range(i64 -2147483648, 255) %indvars.iv.i) #13, !srcloc !44 ; 2 uses
  %i.bb = icmp ult i8 %i.ba, 2
  call void @llvm.assume(i1 %i.bb)
  %i.bc = trunc nuw i8 %i.ba to i1
  br i1 %i.bc, label %bb.n, label %intel_sseu_has_subslice.exit.thread.i

.split.i:                                         ; preds = %bb.j
  %i.bd = load i8, ptr %i.ak, align 8
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %indvars.iv.i
  %i.bg = and i64 %i.bf, %i.be
  %.not133.i = icmp eq i64 %i.bg, 0
  br i1 %.not133.i, label %intel_sseu_has_subslice.exit.thread.i, label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bj = load i8, ptr %i.ah, align 8
  %i.bk = zext i8 %i.bj to i32
  %.not.i75.i = icmp slt i32 %i.bh, %i.bk
  br i1 %.not.i75.i, label %bb.l, label %intel_sseu_has_subslice.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.ai, align 1
  %i.bm = zext i8 %i.bl to i32
  %.not22.i77.i = icmp slt i32 %i.bi, %i.bm
  br i1 %.not22.i77.i, label %bb.m, label %intel_sseu_has_subslice.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bn = load i8, ptr %i.aj, align 1
  %i.bo = and i8 %i.bn, 8
  %.not23.i78.i = icmp eq i8 %i.bo, 0
  br i1 %.not23.i78.i, label %.split109.i, label %.split111.i

.split111.i:                                      ; preds = %bb.m
  %i.bp = sext i32 %i.bi to i64
  %i.bq = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, i64 range(i64 -2147483648, 255) %i.bp) #13, !srcloc !44 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  call void @llvm.assume(i1 %i.br)
  %i.bs = trunc nuw i8 %i.bq to i1
  br i1 %i.bs, label %bb.n, label %intel_sseu_has_subslice.exit.thread.i

.split109.i:                                      ; preds = %bb.m
  %i.bt = sext i32 %i.bh to i64
  %i.bu = getelementptr i8, ptr %i.ak, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = zext nneg i32 %i.bi to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.by, %i.bw
  %.not130.i = icmp eq i64 %i.bz, 0
  br i1 %.not130.i, label %intel_sseu_has_subslice.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.split109.i, %.split111.i, %.split.i, %.split107.i
  %i.ca = add i32 %.064139.i, %spec.select.i
  br label %intel_sseu_has_subslice.exit.thread.i

intel_sseu_has_subslice.exit.thread.i:            ; preds = %bb.n, %.split109.i, %.split111.i, %bb.l, %bb.k, %.split.i, %.split107.i, %bb.i, %bb.h
  %.165.i = phi i32 [ %i.ca, %bb.n ], [ %.064139.i, %bb.k ], [ %.064139.i, %bb.h ], [ %.064139.i, %.split111.i ], [ %.064139.i, %.split.i ], [ %.064139.i, %bb.l ], [ %.064139.i, %.split107.i ], [ %.064139.i, %bb.i ], [ %.064139.i, %.split109.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  call void @intel_gt_mcr_get_ss_steering(ptr noundef %i.f, i32 noundef %i.cb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.o, label %bb.g, !llvm.loop !40

bb.o:                                             ; preds = %intel_sseu_has_subslice.exit.thread.i
  %.not70.i = icmp eq i32 %.165.i, 0
  br i1 %.not70.i, label %guc_capture_alloc_steered_lists.exit, label %_kzalloc_noprof.exit.i

_kzalloc_noprof.exit.i:                           ; preds = %bb.o
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.cd = call noalias align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_noprof(ptr noundef %i.cc, i32 noundef 3520, i64 noundef 64) #14 ; 8 uses
  %.not71.i = icmp eq ptr %i.cd, null
  br i1 %.not71.i, label %guc_capture_alloc_steered_lists.exit, label %_kzalloc_noprof.exit.i.i

_kzalloc_noprof.exit.i.i:                         ; preds = %_kzalloc_noprof.exit.i
  %i.ce = sext i32 %.165.i to i64
  %i.cf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.ce, i64 24) ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  %i.ch = extractvalue { i64, i1 } %i.cf, 0
  %.0.i.i81.i = select i1 %i.cg, i64 -1, i64 %i.ch
  %i.ci = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %.0.i.i81.i, i32 noundef 3520) #15 ; 3 uses
  %.not.i82.i = icmp eq ptr %i.ci, null
  br i1 %.not.i82.i, label %__alloc_ext_regs.exit.i, label %bb.p

__alloc_ext_regs.exit.i:                          ; preds = %_kzalloc_noprof.exit.i.i
  call void @kfree(ptr noundef nonnull %i.cd) #16
  br label %guc_capture_alloc_steered_lists.exit

bb.p:                                             ; preds = %_kzalloc_noprof.exit.i.i
  %i.cj = getelementptr i8, ptr %i.cd, i64 24
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.cd, i64 8
  store i32 %.165.i, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %i.cd, i64 16
  store i32 1, ptr %i.cn, align 8
  call void @intel_gt_mcr_get_ss_steering(ptr noundef %i.f, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  br label %bb.q

bb.q:                                             ; preds = %intel_sseu_has_subslice.exit89.thread.i, %bb.p
  %indvars.iv154.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next155.i, %intel_sseu_has_subslice.exit89.thread.i ] ; 4 uses
  %.062144.i = phi ptr [ %i.ci, %bb.p ], [ %.3.i, %intel_sseu_has_subslice.exit89.thread.i ] ; 18 uses
  %i.co = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 1656
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = getelementptr i8, ptr %i.co, i64 1657
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv
  %i.cx = icmp samesign ugt i32 %i.cw, 3126
  br i1 %i.cx, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cy = load i8, ptr %i.ah, align 8
  %.not.i84.not.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i84.not.i, label %intel_sseu_has_subslice.exit89.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i8, ptr %i.ai, align 1
  %i.da = zext i8 %i.cz to i64
  %.not22.i86.i = icmp samesign ult i64 %indvars.iv154.i, %i.da
  br i1 %.not22.i86.i, label %bb.t, label %intel_sseu_has_subslice.exit89.thread.i

bb.t:                                             ; preds = %bb.s
  %i.db = load i8, ptr %i.aj, align 1
  %i.dc = and i8 %i.db, 8
  %.not23.i87.i = icmp eq i8 %i.dc, 0
  br i1 %.not23.i87.i, label %.split115.i, label %.split117.i

.split117.i:                                      ; preds = %bb.t
  %i.dd = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, i64 range(i64 -2147483648, 255) %indvars.iv154.i) #13, !srcloc !44 ; 2 uses
  %i.de = icmp ult i8 %i.dd, 2
  call void @llvm.assume(i1 %i.de)
  %i.df = trunc nuw i8 %i.dd to i1
  br i1 %i.df, label %__fill_ext_reg.exit.i, label %intel_sseu_has_subslice.exit89.thread.i

.split115.i:                                      ; preds = %bb.t
  %i.dg = load i8, ptr %i.ak, align 8
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw i64 1, %indvars.iv154.i
  %i.dj = and i64 %i.di, %i.dh
  %.not127.i = icmp eq i64 %i.dj, 0
  br i1 %.not127.i, label %intel_sseu_has_subslice.exit89.thread.i, label %__fill_ext_reg.exit.i

bb.u:                                             ; preds = %bb.q
  %i.dk = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dl = load i32, ptr %i.b, align 4             ; 3 uses
  %i.dm = load i8, ptr %i.ah, align 8
  %i.dn = zext i8 %i.dm to i32
  %.not.i90.i = icmp slt i32 %i.dk, %i.dn
  br i1 %.not.i90.i, label %bb.v, label %intel_sseu_has_subslice.exit89.thread.i

bb.v:                                             ; preds = %bb.u
  %i.do = load i8, ptr %i.ai, align 1
  %i.dp = zext i8 %i.do to i32
  %.not22.i92.i = icmp slt i32 %i.dl, %i.dp
  br i1 %.not22.i92.i, label %bb.w, label %intel_sseu_has_subslice.exit89.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dq = load i8, ptr %i.aj, align 1
  %i.dr = and i8 %i.dq, 8
  %.not23.i93.i = icmp eq i8 %i.dr, 0
  br i1 %.not23.i93.i, label %.split119.i, label %.split121.i

.split121.i:                                      ; preds = %bb.w
  %i.ds = sext i32 %i.dl to i64
  %i.dt = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, i64 range(i64 -2147483648, 255) %i.ds) #13, !srcloc !44 ; 2 uses
  %i.du = icmp ult i8 %i.dt, 2
  call void @llvm.assume(i1 %i.du)
  %i.dv = trunc nuw i8 %i.dt to i1
  br i1 %i.dv, label %__fill_ext_reg.exit.i, label %intel_sseu_has_subslice.exit89.thread.i

.split119.i:                                      ; preds = %bb.w
  %i.dw = sext i32 %i.dk to i64
  %i.dx = getelementptr i8, ptr %i.ak, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i64
  %i.ea = zext nneg i32 %i.dl to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %i.dz
  %.not124.i = icmp eq i64 %i.ec, 0
  br i1 %.not124.i, label %intel_sseu_has_subslice.exit89.thread.i, label %__fill_ext_reg.exit.i

__fill_ext_reg.exit.i:                            ; preds = %.split119.i, %.split121.i, %.split115.i, %.split117.i
  %i.ed = load i32, ptr %i.a, align 4
  %i.ee = load i32, ptr %i.b, align 4
  store i32 57696, ptr %.062144.i, align 8
  %i.ef = shl i32 %i.ed, 12
  %i.eg = and i32 %i.ef, 61440
  %i.eh = getelementptr i8, ptr %.062144.i, i64 4
  %i.ei = shl i32 %i.ee, 20
  %i.ej = and i32 %i.ei, 15728640
  %i.ek = or disjoint i32 %i.ej, %i.eg
  store i32 %i.ek, ptr %i.eh, align 4
  %i.el = getelementptr i8, ptr %.062144.i, i64 16
  store ptr @.str.110, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %.062144.i, i64 24
  %i.en = load i32, ptr %i.a, align 4
  %i.eo = load i32, ptr %i.b, align 4
  store i32 57700, ptr %i.em, align 8
  %i.ep = shl i32 %i.en, 12
  %i.eq = and i32 %i.ep, 61440
  %i.er = getelementptr i8, ptr %.062144.i, i64 28
  %i.es = shl i32 %i.eo, 20
  %i.et = and i32 %i.es, 15728640
  %i.eu = or disjoint i32 %i.et, %i.eq
  store i32 %i.eu, ptr %i.er, align 4
  %i.ev = getelementptr i8, ptr %.062144.i, i64 40
  store ptr @.str.111, ptr %i.ev, align 8
  %i.ew = getelementptr i8, ptr %.062144.i, i64 48 ; 2 uses
  br i1 %i.ag, label %.preheader.i, label %intel_sseu_has_subslice.exit89.thread.i

.preheader.i:                                     ; preds = %__fill_ext_reg.exit.i
  %i.ex = load i32, ptr %i.a, align 4
  %i.ey = load i32, ptr %i.b, align 4
  store i32 26220, ptr %i.ew, align 8
  %i.ez = shl i32 %i.ex, 12
  %i.fa = and i32 %i.ez, 61440
  %i.fb = getelementptr i8, ptr %.062144.i, i64 52
  %i.fc = shl i32 %i.ey, 20
  %i.fd = and i32 %i.fc, 15728640
  %i.fe = or disjoint i32 %i.fd, %i.fa
  store i32 %i.fe, ptr %i.fb, align 4
  %i.ff = getelementptr i8, ptr %.062144.i, i64 64
  store ptr @.str.113, ptr %i.ff, align 8
  %i.fg = getelementptr i8, ptr %.062144.i, i64 72
  br label %intel_sseu_has_subslice.exit89.thread.i

intel_sseu_has_subslice.exit89.thread.i:          ; preds = %.preheader.i, %__fill_ext_reg.exit.i, %.split119.i, %.split121.i, %bb.v, %bb.u, %.split115.i, %.split117.i, %bb.s, %bb.r
  %.3.i = phi ptr [ %.062144.i, %bb.v ], [ %i.ew, %__fill_ext_reg.exit.i ], [ %.062144.i, %bb.u ], [ %.062144.i, %bb.r ], [ %.062144.i, %.split121.i ], [ %.062144.i, %.split115.i ], [ %i.fg, %.preheader.i ], [ %.062144.i, %.split117.i ], [ %.062144.i, %bb.s ], [ %.062144.i, %.split119.i ]
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 3 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv.next155.i to i32
  call void @intel_gt_mcr_get_ss_steering(ptr noundef %i.f, i32 noundef %i.fh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %exitcond157.not.i = icmp eq i64 %indvars.iv.next155.i, 64
  br i1 %exitcond157.not.i, label %bb.x, label %bb.q, !llvm.loop !41

bb.x:                                             ; preds = %intel_sseu_has_subslice.exit89.thread.i
  %i.fi = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i102.i = icmp eq ptr %i.fi, null
  br i1 %.not.i102.i, label %__drm_to_dev.exit.i17, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  br label %__drm_to_dev.exit.i17

__drm_to_dev.exit.i17:                            ; preds = %bb.y, %bb.x
  %i.fl = phi ptr [ %i.fk, %bb.y ], [ null, %bb.x ]
  %i.fm = getelementptr i8, ptr %0, i64 4312
  %i.fn = load i32, ptr %i.fm, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fl, i32 noundef 1, ptr noundef @.str.109, i32 noundef %i.fn, i32 noundef %.165.i) #16
  %i.fo = load ptr, ptr %i.e, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  store ptr %i.cd, ptr %i.fp, align 8
  br label %guc_capture_alloc_steered_lists.exit

guc_capture_alloc_steered_lists.exit:             ; preds = %bb.d, %bb.a, %guc_capture_get_one_list.exit.i, %bb.e, %bb.o, %_kzalloc_noprof.exit.i, %__alloc_ext_regs.exit.i, %__drm_to_dev.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.fq = load ptr, ptr %i.e, align 8
  store ptr %xe_lp_lists.gen8_lists.i, ptr %i.fq, align 8
  %i.fr = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 3120   ; 3 uses
  store volatile ptr %i.fs, ptr %i.fs, align 8
  %i.ft = getelementptr i8, ptr %i.fr, i64 3128
  store volatile ptr %i.fs, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 3096   ; 3 uses
  store volatile ptr %i.fv, ptr %i.fv, align 8
  %i.fw = getelementptr i8, ptr %i.fu, i64 3104
  store volatile ptr %i.fv, ptr %i.fw, align 8
  %i.fx = load ptr, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %guc_capture_output_min_size_est.exit.thread.i, label %.preheader.i.i

guc_capture_output_min_size_est.exit.thread.i:    ; preds = %guc_capture_alloc_steered_lists.exit
  %i.fy = getelementptr i8, ptr %0, i64 416
  %i.fz = call i32 @intel_guc_log_section_size_capture(ptr noundef %i.fy) #16 ; 0 uses
  br label %bb.bh

.preheader.i.i:                                   ; preds = %guc_capture_alloc_steered_lists.exit
  %i.ga = getelementptr i8, ptr %0, i64 3400
  %i.gb = getelementptr i8, ptr %0, i64 4312      ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %guc_capture_getlistsize.exit34.thread.i.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %guc_capture_getlistsize.exit34.thread.i.i ] ; 2 uses
  %.0127.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.3.i.i, %guc_capture_getlistsize.exit34.thread.i.i ] ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %i.ga, i64 %indvars.iv.i.i
  %i.gd = load ptr, ptr %i.gc, align 8            ; 3 uses
  %.not19.i.i = icmp eq ptr %i.gd, null
  br i1 %.not19.i.i, label %guc_capture_getlistsize.exit34.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ge = add i32 %.0127.i.i, 68                  ; 6 uses
  %i.gf = load ptr, ptr %i.e, align 8             ; 11 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 9 uses
  %.not41.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not41.i.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gh = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i, label %__drm_to_dev.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  br label %__drm_to_dev.exit.i.i.i

__drm_to_dev.exit.i.i.i:                          ; preds = %bb.ac, %bb.ab
  %i.gk = phi ptr [ %i.gj, %bb.ac ], [ null, %bb.ab ]
  %i.gl = load i32, ptr %i.gb, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.gk, ptr noundef @.str.28, i32 noundef %i.gl) #12
  %.pre.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.pre140.i.i = load ptr, ptr %.pre.i.i, align 8
  br label %guc_capture_getlistsize.exit.thread.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.gm = getelementptr i8, ptr %i.gf, i64 16
  %i.gn = load i8, ptr %i.gm, align 8, !range !13, !noundef !14
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %guc_capture_getlistsize.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ad
  %i.gp = load ptr, ptr %i.gg, align 8
  %.not2021.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not2021.i.i.i.i, label %guc_capture_getlistsize.exit.thread.thread.i.i, label %.lr.ph.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.preheader.i.i.i.i, %bb.af
  %i.gq = phi ptr [ %i.gz, %bb.af ], [ %i.gg, %.preheader.i.i.i.i ] ; 4 uses
  %.022.i.us.i.i.i = phi i32 [ %i.gx, %bb.af ], [ 0, %.preheader.i.i.i.i ]
  %i.gr = getelementptr i8, ptr %i.gq, i64 12
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.us.i.i.i
  %i.gu = getelementptr i8, ptr %i.gq, i64 16
  %i.gv = load i32, ptr %i.gu, align 8
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %guc_capture_get_one_list.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.us.i.i.i
  %i.gx = add i32 %.022.i.us.i.i.i, 1             ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [32 x i8], ptr %i.gg, i64 %i.gy ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %.not20.i.us.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not20.i.us.i.i.i, label %guc_capture_getlistsize.exit.thread.i.i, label %.lr.ph.i.us.i.i.i, !llvm.loop !0

guc_capture_get_one_list.exit.i.i.i:              ; preds = %bb.ae
  %.not.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i, label %guc_capture_getlistsize.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %guc_capture_get_one_list.exit.i.i.i
  %i.hb = getelementptr i8, ptr %i.gq, i64 8
  %i.hc = load i32, ptr %i.hb, align 8            ; 5 uses
  %i.hd = getelementptr i8, ptr %i.gf, i64 8
  %i.he = load ptr, ptr %i.hd, align 8            ; 4 uses
  %.not.i18.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i18.i.i.i, label %guc_cap_list_num_regs.exit.i.i, label %.preheader.i19.i.i.i

.preheader.i19.i.i.i:                             ; preds = %bb.ag
  %i.hf = getelementptr i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  %.not2021.i20.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not2021.i20.i.i.i, label %guc_cap_list_num_regs.exit.i.i, label %.lr.ph.i22.us.i.i.i

.lr.ph.i22.us.i.i.i:                              ; preds = %.preheader.i19.i.i.i, %bb.ai
  %i.hh = phi ptr [ %i.hq, %bb.ai ], [ %i.he, %.preheader.i19.i.i.i ] ; 4 uses
  %.022.i23.us.i.i.i = phi i32 [ %i.ho, %bb.ai ], [ 0, %.preheader.i19.i.i.i ]
  %i.hi = getelementptr i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i22.us.i.i.i
  %i.hl = getelementptr i8, ptr %i.hh, i64 16
  %i.hm = load i32, ptr %i.hl, align 8
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %guc_capture_get_one_ext_list.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i22.us.i.i.i
  %i.ho = add i32 %.022.i23.us.i.i.i, 1           ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr [32 x i8], ptr %i.he, i64 %i.hp ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  %.not20.i24.us.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not20.i24.us.i.i.i, label %guc_cap_list_num_regs.exit.i.i, label %.lr.ph.i22.us.i.i.i, !llvm.loop !1

guc_capture_get_one_ext_list.exit.i.i.i:          ; preds = %bb.ah
  %.not17.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not17.i.i.i, label %guc_cap_list_num_regs.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %guc_capture_get_one_ext_list.exit.i.i.i
  %i.ht = getelementptr i8, ptr %i.hh, i64 8
  %i.hu = load i32, ptr %i.ht, align 8
  %i.hv = add i32 %i.hu, %i.hc
  br label %guc_cap_list_num_regs.exit.i.i

guc_cap_list_num_regs.exit.i.i:                   ; preds = %bb.ai, %bb.aj, %guc_capture_get_one_ext_list.exit.i.i.i, %.preheader.i19.i.i.i, %bb.ag
  %.014.i.i.i = phi i32 [ %i.hc, %.preheader.i19.i.i.i ], [ %i.hv, %bb.aj ], [ %i.hc, %guc_capture_get_one_ext_list.exit.i.i.i ], [ %i.hc, %bb.ag ], [ %i.hc, %bb.ai ] ; 2 uses
  %.not43.i.i.i = icmp eq i32 %.014.i.i.i, 0
  br i1 %.not43.i.i.i, label %guc_capture_getlistsize.exit.thread.i.i, label %guc_capture_getlistsize.exit.thread83.i.i

guc_capture_getlistsize.exit.thread83.i.i:        ; preds = %guc_cap_list_num_regs.exit.i.i
  %i.hw = shl i32 %.014.i.i.i, 4
  %i.hx = and i32 %i.hw, -4096
  %i.hy = add i32 %.0127.i.i, 4164
  %i.hz = add i32 %i.hy, %i.hx
  br label %guc_capture_getlistsize.exit.thread.i.i

guc_capture_getlistsize.exit.i.i:                 ; preds = %bb.ad
  %i.ia = getelementptr i8, ptr %i.gf, i64 32
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = getelementptr i8, ptr %i.gf, i64 40
  %i.id = load i32, ptr %i.ic, align 8
  %.fr.i.i = freeze i32 %i.id
  %.not20.i.i = icmp eq i32 %.fr.i.i, 0
  %i.ie = trunc i64 %i.ib to i32
  %i.if = select i1 %.not20.i.i, i32 %i.ie, i32 0
  %spec.select.i.i = add i32 %i.if, %i.ge
  br label %guc_capture_getlistsize.exit.thread.thread.i.i

guc_capture_getlistsize.exit.thread.thread.i.i:   ; preds = %guc_capture_getlistsize.exit.i.i, %.preheader.i.i.i.i
  %.ph.i.i = phi i32 [ %spec.select.i.i, %guc_capture_getlistsize.exit.i.i ], [ %i.ge, %.preheader.i.i.i.i ]
  %i.ig = getelementptr i8, ptr %i.gd, i64 56
  %i.ih = load i8, ptr %i.ig, align 8             ; 2 uses
  %i.ii = getelementptr i8, ptr %i.gf, i64 528
  %i.ij = zext i8 %i.ih to i64                    ; 2 uses
  %i.ik = getelementptr [32 x i8], ptr %i.ii, i64 %i.ij
  br label %bb.am

guc_capture_getlistsize.exit.thread.i.i:          ; preds = %bb.af, %guc_capture_getlistsize.exit.thread83.i.i, %guc_cap_list_num_regs.exit.i.i, %guc_capture_get_one_list.exit.i.i.i, %__drm_to_dev.exit.i.i.i
  %i.il = phi ptr [ %i.gg, %guc_capture_get_one_list.exit.i.i.i ], [ %.pre140.i.i, %__drm_to_dev.exit.i.i.i ], [ %i.gg, %guc_capture_getlistsize.exit.thread83.i.i ], [ %i.gg, %guc_cap_list_num_regs.exit.i.i ], [ %i.gg, %bb.af ] ; 2 uses
  %i.im = phi ptr [ %i.gf, %guc_capture_get_one_list.exit.i.i.i ], [ %.pre.i.i, %__drm_to_dev.exit.i.i.i ], [ %i.gf, %guc_capture_getlistsize.exit.thread83.i.i ], [ %i.gf, %guc_cap_list_num_regs.exit.i.i ], [ %i.gf, %bb.af ] ; 2 uses
  %i.in = phi i32 [ %i.ge, %guc_capture_get_one_list.exit.i.i.i ], [ %i.ge, %__drm_to_dev.exit.i.i.i ], [ %i.hz, %guc_capture_getlistsize.exit.thread83.i.i ], [ %i.ge, %guc_cap_list_num_regs.exit.i.i ], [ %i.ge, %bb.af ] ; 2 uses
  %i.io = getelementptr i8, ptr %i.gd, i64 56     ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8             ; 2 uses
  %i.iq = getelementptr i8, ptr %i.im, i64 528
  %i.ir = zext i8 %i.ip to i64                    ; 2 uses
  %i.is = getelementptr [32 x i8], ptr %i.iq, i64 %i.ir
  %.not41.i23.i.i = icmp eq ptr %i.il, null
  br i1 %.not41.i23.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %guc_capture_getlistsize.exit.thread.i.i
  %i.it = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i.i26.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i26.i.i, label %__drm_to_dev.exit.i27.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  br label %__drm_to_dev.exit.i27.i.i

end_hunk_0
