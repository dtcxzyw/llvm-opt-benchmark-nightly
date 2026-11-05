Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4namespace?download=true
inline.NumInlined: 43
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nfs4_negotiate_security:bb.a
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = tail call i32 @nfs4_proc_secinfo(ptr noundef %1, ptr noundef %2, ptr noundef %i.h) #8 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %i.i to i64
  %i.l = inttoptr i64 %i.k to ptr
  br label %nfs_find_best_sec.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.h, align 4
  %.not27.i = icmp eq i32 %i.m, 0
  br i1 %.not27.i, label %nfs_find_best_sec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.o, align 32
  %i.p = getelementptr i8, ptr %i.h, i64 4
  %i.q = getelementptr i8, ptr %.val.val, i64 244
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %i.r = getelementptr [48 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  switch i32 %i.s, label %.thread.i [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %i.u = tail call i32 @rpcauth_get_pseudoflavor(i32 noundef %i.s, ptr noundef %i.t) #8 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 8
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call zeroext i1 @nfs_auth_info_match(ptr noundef %i.q, i32 noundef %i.u) #8
  br i1 %i.v, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @rpc_clone_client_set_auth(ptr noundef %0, i32 noundef %i.u) #8 ; 4 uses
  %i.x = icmp ugt ptr %i.w, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.w, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @rpcauth_lookupcred(ptr noundef %i.z, i32 noundef 0) #8 ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, inttoptr (i64 -4096 to ptr)
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @rpc_shutdown_client(ptr noundef %i.w) #8
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  tail call void @put_rpccred(ptr noundef %i.aa) #8
  br label %nfs_find_best_sec.exit

.thread.i:                                        ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.h, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %bb.e, label %nfs_find_best_sec.exit, !llvm.loop !11

nfs_find_best_sec.exit:                           ; preds = %.thread.i, %bb.k, %bb.d, %bb.c
  %.016 = phi ptr [ %i.l, %bb.c ], [ %i.w, %bb.k ], [ inttoptr (i64 -1 to ptr), %bb.d ], [ inttoptr (i64 -1 to ptr), %.thread.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.a, i64 8
  %i.ag = load volatile i64, ptr %i.af, align 8   ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = or i64 %i.ai, %i.ag
  %i.ak = and i64 %i.aj, %i.c
  %i.al = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load i32, ptr %i.am, align 16
  %.mask.i.i = and i32 %i.an, -16777216
  switch i32 %.mask.i.i, label %bb.l [
    i32 -184549376, label %put_page.exit
    i32 -134217728, label %put_page.exit
  ]

bb.l:                                             ; preds = %nfs_find_best_sec.exit
  %i.ao = getelementptr i8, ptr %i.al, i64 52     ; 2 uses
  %i.ap = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, ptr elementtype(i32) %i.ao) #9, !srcloc !12 ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 2
  tail call void @llvm.assume(i1 %i.aq)
  %.not.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i, label %put_page.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__folio_put(ptr noundef %i.al) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %bb.m, %bb.l, %nfs_find_best_sec.exit, %nfs_find_best_sec.exit, %bb.a
  %.0 = phi ptr [ inttoptr (i64 -12 to ptr), %bb.a ], [ %.016, %nfs_find_best_sec.exit ], [ %.016, %nfs_find_best_sec.exit ], [ %.016, %bb.l ], [ %.016, %bb.m ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nfs4_proc_secinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nfs4_submount(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %.val = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.c = getelementptr i8, ptr %.val, i64 520
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call ptr @dget_parent(ptr noundef %i.d) #8 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %.val20 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val, i64 488
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %.val, i64 528     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @nfs4_proc_lookup_mountpoint(ptr noundef %.val20, ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.j) #8 ; 5 uses
  tail call void @dput(ptr noundef %i.e) #8
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = trunc i64 %i.m to i32
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.k, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %.val, i64 104
  store i32 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1048576
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.b, align 8
  %i.w = tail call ptr @alloc_pages_noprof(i32 noundef 3264, i32 noundef 0) #8 ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nfs_do_refmount.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noalias align 4096 dereferenceable_or_null(91904) ptr @__kmalloc_large_noprof(i64 noundef 91904, i32 noundef 3264) #10 ; 10 uses
  %.not35.i = icmp eq ptr %i.x, null
  br i1 %.not35.i, label %bb.al, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @nfs_alloc_fattr() #8      ; 2 uses
  store ptr %i.y, ptr %i.x, align 4096
  %.not36.i = icmp eq ptr %i.y, null
  br i1 %.not36.i, label %bb.ak, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %.val.i, i64 520
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call ptr @dget_parent(ptr noundef %i.aa) #8 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 48
  %.val38.i = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.aa, i64 32
  %i.ae = tail call i32 @nfs4_proc_fs_locations(ptr noundef %i.k, ptr noundef %.val38.i, ptr noundef %i.ad, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w) #8 ; 2 uses
  tail call void @dput(ptr noundef %i.ab) #8
  %.not37.i = icmp eq i32 %i.ae, 0
  br i1 %.not37.i, label %bb.h, label %nfs_follow_referral.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.x, i64 8216    ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %nfs_follow_referral.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.x, i64 16      ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 16
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %nfs_follow_referral.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %.val.i.i, i64 520
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.ao = tail call noalias align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.an, i32 noundef 3264, i64 noundef 4096) #11 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %nfs_follow_referral.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !annotation !19
  %i.ap = call ptr @nfs_path(ptr noundef nonnull %i.a, ptr noundef %i.am, ptr noundef nonnull %i.ao, i64 noundef 4096, i32 noundef 1) #8 ; 5 uses
  %i.aq = icmp ugt ptr %i.ap, inttoptr (i64 -4096 to ptr)
  br i1 %i.aq, label %nfs_path_component.exit.thread.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = load i8, ptr %i.ap, align 1
  %i.at = icmp eq i8 %i.as, 91
  br i1 %i.at, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.au = call ptr @strchr(ptr noundef readonly %i.ap, i32 noundef 93) #8 ; 3 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not16.i.i.i.i.i, label %nfs_path_component.exit.thread.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.au, i64 1      ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.ar
  br i1 %i.aw, label %bb.o, label %nfs_path_component.exit.thread.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ax = load i8, ptr %i.av, align 1
  %i.ay = icmp eq i8 %i.ax, 58
  %i.az = getelementptr i8, ptr %i.au, i64 2
  br i1 %i.ay, label %nfs_path_component.exit.i.i.i.i, label %nfs_path_component.exit.thread.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %i.ba = call ptr @strchr(ptr noundef readonly %i.ap, i32 noundef 58) #8 ; 3 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.ba, null
  %i.bb = icmp ult ptr %i.ba, %i.ar
  %or.cond.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.bb
  %i.bc = getelementptr i8, ptr %i.ba, i64 1
  br i1 %or.cond.i.i.i.i.i, label %nfs_path_component.exit.i.i.i.i, label %nfs_path_component.exit.thread.i.i.i.i

nfs_path_component.exit.i.i.i.i:                  ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi ptr [ %i.az, %bb.o ], [ %i.bc, %bb.p ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %nfs_path_component.exit.thread.i.i.i.i, label %nfs4_path.exit.i.i.i

nfs_path_component.exit.thread.i.i.i.i:           ; preds = %nfs_path_component.exit.i.i.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  br label %nfs4_path.exit.i.i.i

nfs4_path.exit.i.i.i:                             ; preds = %nfs_path_component.exit.thread.i.i.i.i, %nfs_path_component.exit.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ap, %nfs_path_component.exit.thread.i.i.i.i ], [ %.0.i.i.i.i.i, %nfs_path_component.exit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bd = icmp ugt ptr %.1.i.i.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bd, label %nfs4_validate_fspath.exit.i.i, label %bb.q

bb.q:                                             ; preds = %nfs4_path.exit.i.i.i
  %i.be = load i32, ptr %i.ai, align 16           ; 2 uses
  %.not.i.i20.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i20.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.x, i64 24
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.bg = add nuw i32 %.01120.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.bg, %i.be
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.s, !llvm.loop !13

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01120.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bg, %bb.r ] ; 2 uses
  %.01219.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bn, %bb.r ]
  %i.bh = sext i32 %.01120.i.i.i.i.i to i64
  %i.bi = getelementptr [16 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 256
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %.01219.i.i.i.i.i, %i.bm ; 3 uses
  %i.bo = icmp samesign ult i64 %i.bn, 4097
  %.not18.i.i.i.i.i = select i1 %i.bk, i1 %i.bo, i1 false
  br i1 %.not18.i.i.i.i.i, label %bb.r, label %nfs4_pathname_string.exit.thread.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %.013.i.ph.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.bn, %bb.r ] ; 2 uses
  %i.bp = add nuw nsw i64 %.013.i.ph.i.i.i.i, 1
  %i.bq = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -9223372036854775807) %i.bp, i32 noundef 3264) #10 ; 8 uses
  %.not.i21.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i21.i.i.i, label %nfs4_pathname_string.exit.thread.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i
  %i.br = load i32, ptr %i.ai, align 16           ; 5 uses
  %.not33.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not33.i.i.i.i, label %nfs4_pathname_string.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.bs = getelementptr i8, ptr %i.x, i64 24      ; 3 uses
  %xtraiter = and i32 %i.br, 1
  %i.bt = icmp eq i32 %i.br, 1
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i32 %i.br, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.new
  %.02532.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.new ], [ %i.ck, %bb.t ] ; 2 uses
  %.02631.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.cl, %bb.t ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.t ]
  %i.bu = sext i32 %.02631.i.i.i.i to i64
  %i.bv = getelementptr [16 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %.02532.i.i.i.i, i64 1 ; 2 uses
  store i8 47, ptr %.02532.i.i.i.i, align 1
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 32
  %i.bz = load i32, ptr %i.bv, align 8
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.by, i64 %i.ca, i1 false)
  %i.cb = getelementptr i8, ptr %i.bw, i64 %i.ca  ; 2 uses
  %i.cc = sext i32 %.02631.i.i.i.i to i64
  %i.cd = getelementptr [16 x i8], ptr %i.bs, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  store i8 47, ptr %i.cb, align 1
  %i.cg = getelementptr i8, ptr %i.cd, i64 24
  %i.ch = load ptr, ptr %i.cg, align 16
  %i.ci = load i32, ptr %i.ce, align 8
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  %i.ck = getelementptr i8, ptr %i.cf, i64 %i.cj  ; 3 uses
  %i.cl = add nuw i32 %.02631.i.i.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !14

nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.t
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %nfs4_pathname_string.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.02532.i.i.i.i.epil.init = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.ck, %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.02631.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.cl, %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = trunc i32 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.cm = sext i32 %.02631.i.i.i.i.epil.init to i64
  %i.cn = getelementptr [16 x i8], ptr %i.bs, i64 %i.cm ; 2 uses
  %i.co = getelementptr i8, ptr %.02532.i.i.i.i.epil.init, i64 1 ; 2 uses
  store i8 47, ptr %.02532.i.i.i.i.epil.init, align 1
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 16
  %i.cr = load i32, ptr %i.cn, align 8
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cq, i64 %i.cs, i1 false)
  %i.ct = getelementptr i8, ptr %i.co, i64 %i.cs
  br label %nfs4_pathname_string.exit.i.i.i

nfs4_pathname_string.exit.i.i.i:                  ; preds = %.epil.preheader, %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i
  %.025.lcssa.i.i.i.i = phi ptr [ %i.bq, %.preheader.i.i.i.i ], [ %i.ck, %nfs4_pathname_string.exit.i.i.i.loopexit.unr-lcssa ], [ %i.ct, %.epil.preheader ]
  store i8 0, ptr %.025.lcssa.i.i.i.i, align 1
  %i.cu = icmp ugt ptr %i.bq, inttoptr (i64 -4096 to ptr)
  br i1 %i.cu, label %nfs4_pathname_string.exit.thread.i.i.i, label %bb.u

nfs4_pathname_string.exit.thread.i.i.i:           ; preds = %bb.s, %nfs4_pathname_string.exit.i.i.i, %.loopexit.i.i.i.i
  %.0.i4.i.i.i = phi ptr [ %i.bq, %nfs4_pathname_string.exit.i.i.i ], [ inttoptr (i64 -12 to ptr), %.loopexit.i.i.i.i ], [ inttoptr (i64 -36 to ptr), %bb.s ]
  call void @kfree(ptr noundef nonnull %i.ao) #8
  %2 = ptrtoint ptr %.0.i4.i.i.i to i64
  %3 = trunc nsw i64 %2 to i32
  br label %nfs_follow_referral.exit.i

bb.u:                                             ; preds = %nfs4_pathname_string.exit.i.i.i
  %i.cv = call i32 @strncmp(ptr noundef %.1.i.i.i.i, ptr noundef nonnull %i.bq, i64 noundef %.013.i.ph.i.i.i.i) #8
  call void @kfree(ptr noundef nonnull %i.ao) #8
  call void @kfree(ptr noundef nonnull %i.bq) #8
  %.not19.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not19.i.i.i, label %.preheader.i.i, label %nfs_follow_referral.exit.i

nfs4_validate_fspath.exit.i.i:                    ; preds = %nfs4_path.exit.i.i.i
  call void @kfree(ptr noundef nonnull %i.ao) #8
  %i.cw = ptrtoint ptr %.1.i.i.i.i to i64
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %nfs_follow_referral.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %nfs4_validate_fspath.exit.i.i, %bb.u
  %i.cz = load i32, ptr %i.af, align 8
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i, label %nfs_follow_referral.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.db = getelementptr i8, ptr %i.x, i64 8224
  %i.dc = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.dd = getelementptr i8, ptr %0, i64 72
  br label %bb.v

bb.v:                                             ; preds = %try_location.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %try_location.exit.thread.i.i ] ; 2 uses
  %.02274.i.i = phi i32 [ -2, %.lr.ph.i.i ], [ %.123.ph.i.i, %try_location.exit.thread.i.i ] ; 3 uses
  %i.de = getelementptr [8368 x i8], ptr %i.db, i64 %indvars.iv.i.i ; 8 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %try_location.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = load i32, ptr %i.de, align 16           ; 3 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %try_location.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr i8, ptr %i.de, i64 168    ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %try_location.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %.val.i.i.i = load ptr, ptr %i.b, align 8       ; 6 uses
  %i.dl = getelementptr i8, ptr %i.de, i64 8      ; 6 uses
  %wide.trip.count.i.i.i = zext i32 %i.dg to i64  ; 2 uses
  %xtraiter73 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.dm = icmp ult i32 %i.dg, 4
  br i1 %i.dm, label %.epil.preheader72, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter77 = and i64 %wide.trip.count.i.i.i, 4294967292
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.y ] ; 5 uses
  %.072106.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.y ]
  %niter78 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter78.next.3, %bb.y ]
  %i.dn = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  %i.do = load i32, ptr %i.dn, align 8
  %spec.select.i.i.i = call i32 @llvm.umax.i32(i32 %i.do, i32 %.072106.i.i.i)
  %i.dp = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 8
  %spec.select.i.i.i.1 = call i32 @llvm.umax.i32(i32 %i.dr, i32 %spec.select.i.i.i)
  %i.ds = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8
  %spec.select.i.i.i.2 = call i32 @llvm.umax.i32(i32 %i.du, i32 %spec.select.i.i.i.1)
  %i.dv = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 48
  %i.dx = load i32, ptr %i.dw, align 8
  %spec.select.i.i.i.3 = call i32 @llvm.umax.i32(i32 %i.dx, i32 %spec.select.i.i.i.2) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter78.next.3 = add i64 %niter78, 4           ; 2 uses
  %niter78.ncmp.3 = icmp eq i64 %niter78.next.3, %unroll_iter77
  br i1 %niter78.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %bb.y, !llvm.loop !15

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %bb.y
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.i.i.i, label %.epil.preheader72

.epil.preheader72:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ]
  %.072106.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter73, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader72
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader72 ], [ %indvars.iv.next.i.i.i.epil, %bb.z ] ; 2 uses
  %.072106.i.i.i.epil = phi i32 [ %.072106.i.i.i.epil.init, %.epil.preheader72 ], [ %spec.select.i.i.i.epil, %bb.z ]
  %epil.iter = phi i64 [ 0, %.epil.preheader72 ], [ %epil.iter.next, %bb.z ]
  %i.dy = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i.epil
  %i.dz = load i32, ptr %i.dy, align 8
  %spec.select.i.i.i.epil = call i32 @llvm.umax.i32(i32 %i.dz, i32 %.072106.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter73
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %bb.z, !llvm.loop !16

._crit_edge.i.i.i:                                ; preds = %bb.z, %._crit_edge.i.i.i.unr-lcssa
  %spec.select.i.i.i.lcssa = phi i32 [ %spec.select.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ], [ %spec.select.i.i.i.epil, %bb.z ]
  %i.ea = getelementptr i8, ptr %.val.i.i.i, i64 320 ; 4 uses
  %i.eb = getelementptr i8, ptr %.val.i.i.i, i64 456 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  call void @kfree(ptr noundef %i.ec) #8
  %i.ed = add i32 %spec.select.i.i.i.lcssa, 1     ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -9223372036854775807) %i.ee, i32 noundef 3264) #10 ; 2 uses
  store ptr %i.ef, ptr %i.eb, align 8
  %.not.i31.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i31.i.i, label %try_location.exit.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.eg = getelementptr i8, ptr %.val.i.i.i, i64 482 ; 3 uses
  %i.eh = load i32, ptr %i.di, align 8            ; 2 uses
  %.not.i.i.i32.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i32.i.i, label %.loopexit.i.i39.i.i, label %.lr.ph.i.i.i33.i.i

.lr.ph.i.i.i33.i.i:                               ; preds = %bb.aa
  %i.ei = getelementptr i8, ptr %i.de, i64 176
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.ej = add nuw i32 %.01120.i.i.i34.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i38.i.i = icmp eq i32 %i.ej, %i.eh
  br i1 %exitcond.not.i.i.i38.i.i, label %.loopexit.i.i39.i.i, label %bb.ac, !llvm.loop !13

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i.i33.i.i
  %.01120.i.i.i34.i.i = phi i32 [ 0, %.lr.ph.i.i.i33.i.i ], [ %i.ej, %bb.ab ] ; 2 uses
  %.01219.i.i.i35.i.i = phi i64 [ 0, %.lr.ph.i.i.i33.i.i ], [ %i.eq, %bb.ab ]
  %i.ek = sext i32 %.01120.i.i.i34.i.i to i64
  %i.el = getelementptr [16 x i8], ptr %i.ei, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 16           ; 2 uses
  %i.en = icmp ult i32 %i.em, 256
  %i.eo = add nuw nsw i32 %i.em, 1
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = add nuw nsw i64 %.01219.i.i.i35.i.i, %i.ep ; 3 uses
  %i.er = icmp samesign ult i64 %i.eq, 4097
  %.not18.i.i.i36.i.i = select i1 %i.en, i1 %i.er, i1 false
  br i1 %.not18.i.i.i36.i.i, label %bb.ab, label %nfs4_pathname_string.exit.thread.i37.i.i

.loopexit.i.i39.i.i:                              ; preds = %bb.ab, %bb.aa
  %.013.i.ph.i.i40.i.i = phi i64 [ 0, %bb.aa ], [ %i.eq, %bb.ab ] ; 2 uses
  %i.es = trunc nuw nsw i64 %.013.i.ph.i.i40.i.i to i16
  store i16 %i.es, ptr %i.eg, align 2
  %i.et = add nuw nsw i64 %.013.i.ph.i.i40.i.i, 1
  %i.eu = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -9223372036854775807) %i.et, i32 noundef 3264) #10 ; 7 uses
  %.not.i.i43.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i43.i.i, label %nfs4_pathname_string.exit.thread.i37.i.i, label %.preheader.i.i44.i.i

.preheader.i.i44.i.i:                             ; preds = %.loopexit.i.i39.i.i
  %i.ev = load i32, ptr %i.di, align 8            ; 5 uses
  %.not33.i.i45.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not33.i.i45.i.i, label %nfs4_pathname_string.exit.i50.i.i, label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.preheader.i.i44.i.i
  %i.ew = getelementptr i8, ptr %i.de, i64 176    ; 3 uses
  %xtraiter80 = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ev, 1
  br i1 %i.ex, label %.epil.preheader79, label %.lr.ph.i.i46.i.i.new

.lr.ph.i.i46.i.i.new:                             ; preds = %.lr.ph.i.i46.i.i
  %unroll_iter85 = and i32 %i.ev, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i46.i.i.new
  %.02532.i.i47.i.i = phi ptr [ %i.eu, %.lr.ph.i.i46.i.i.new ], [ %i.fo, %bb.ad ] ; 2 uses
  %.02631.i.i48.i.i = phi i32 [ 0, %.lr.ph.i.i46.i.i.new ], [ %i.fp, %bb.ad ] ; 3 uses
  %niter86 = phi i32 [ 0, %.lr.ph.i.i46.i.i.new ], [ %niter86.next.1, %bb.ad ]
  %i.ey = sext i32 %.02631.i.i48.i.i to i64
  %i.ez = getelementptr [16 x i8], ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = getelementptr i8, ptr %.02532.i.i47.i.i, i64 1 ; 2 uses
  store i8 47, ptr %.02532.i.i47.i.i, align 1
  %i.fb = getelementptr i8, ptr %i.ez, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load i32, ptr %i.ez, align 16
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.fc, i64 %i.fe, i1 false)
  %i.ff = getelementptr i8, ptr %i.fa, i64 %i.fe  ; 2 uses
  %i.fg = sext i32 %.02631.i.i48.i.i to i64
  %i.fh = getelementptr [16 x i8], ptr %i.ew, i64 %i.fg ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  %i.fj = getelementptr i8, ptr %i.ff, i64 1      ; 2 uses
  store i8 47, ptr %i.ff, align 1
  %i.fk = getelementptr i8, ptr %i.fh, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = load i32, ptr %i.fi, align 16
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  %i.fo = getelementptr i8, ptr %i.fj, i64 %i.fn  ; 3 uses
  %i.fp = add nuw i32 %.02631.i.i48.i.i, 2        ; 2 uses
  %niter86.next.1 = add nuw i32 %niter86, 2       ; 2 uses
  %niter86.ncmp.1 = icmp eq i32 %niter86.next.1, %unroll_iter85
  br i1 %niter86.ncmp.1, label %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !14

nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod82.not = icmp eq i32 %xtraiter80, 0
  br i1 %lcmp.mod82.not, label %nfs4_pathname_string.exit.i50.i.i, label %.epil.preheader79

.epil.preheader79:                                ; preds = %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa, %.lr.ph.i.i46.i.i
  %.02532.i.i47.i.i.epil.init = phi ptr [ %i.eu, %.lr.ph.i.i46.i.i ], [ %i.fo, %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.02631.i.i48.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i46.i.i ], [ %i.fp, %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa ]
  %lcmp.mod84 = trunc i32 %i.ev to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.fq = sext i32 %.02631.i.i48.i.i.epil.init to i64
  %i.fr = getelementptr [16 x i8], ptr %i.ew, i64 %i.fq ; 2 uses
  %i.fs = getelementptr i8, ptr %.02532.i.i47.i.i.epil.init, i64 1 ; 2 uses
  store i8 47, ptr %.02532.i.i47.i.i.epil.init, align 1
  %i.ft = getelementptr i8, ptr %i.fr, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load i32, ptr %i.fr, align 16
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %i.fu, i64 %i.fw, i1 false)
  %i.fx = getelementptr i8, ptr %i.fs, i64 %i.fw
  br label %nfs4_pathname_string.exit.i50.i.i

nfs4_pathname_string.exit.i50.i.i:                ; preds = %.epil.preheader79, %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa, %.preheader.i.i44.i.i
  %.025.lcssa.i.i51.i.i = phi ptr [ %i.eu, %.preheader.i.i44.i.i ], [ %i.fo, %nfs4_pathname_string.exit.i50.i.i.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader79 ]
  store i8 0, ptr %.025.lcssa.i.i51.i.i, align 1
  %i.fy = icmp ugt ptr %i.eu, inttoptr (i64 -4096 to ptr)
  br i1 %i.fy, label %nfs4_pathname_string.exit.thread.i37.i.i, label %_kmalloc_noprof.exit.i.i.i

nfs4_pathname_string.exit.thread.i37.i.i:         ; preds = %bb.ac, %nfs4_pathname_string.exit.i50.i.i, %.loopexit.i.i39.i.i
  %.0.i9598.i.i.i = phi ptr [ %i.eu, %nfs4_pathname_string.exit.i50.i.i ], [ inttoptr (i64 -12 to ptr), %.loopexit.i.i39.i.i ], [ inttoptr (i64 -36 to ptr), %bb.ac ]
  %i.fz = ptrtoint ptr %.0.i9598.i.i.i to i64
  %i.ga = trunc nsw i64 %i.fz to i32
  br label %try_location.exit.thread.i.i

_kmalloc_noprof.exit.i.i.i:                       ; preds = %nfs4_pathname_string.exit.i50.i.i
  %i.gb = getelementptr i8, ptr %.val.i.i.i, i64 464 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  call void @kfree(ptr noundef %i.gc) #8
  store ptr %i.eu, ptr %i.gb, align 8
  %i.gd = load i16, ptr %i.eg, align 2
  %i.ge = zext i16 %i.gd to i32
  %i.gf = add i32 %i.ed, %i.ge
  %i.gg = add i32 %i.gf, 1
  %i.gh = zext i32 %i.gg to i64
  %i.gi = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -9223372036854775807) %i.gh, i32 noundef 3264) #10 ; 4 uses
  %.not83.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not83.i.i.i, label %try_location.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %_kmalloc_noprof.exit.i.i.i
  %i.gj = load ptr, ptr %i.dc, align 8
  call void @kfree(ptr noundef %i.gj) #8
  store ptr %i.gi, ptr %i.dc, align 8
  %i.gk = load i32, ptr %i.de, align 16
  %.not114.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not114.i.i.i, label %try_location.exit.thread.i.i, label %.lr.ph110.i.i.i

.lr.ph110.i.i.i:                                  ; preds = %bb.ae
  %i.gl = getelementptr i8, ptr %.val.i.i.i, i64 448 ; 2 uses
  %i.gm = getelementptr i8, ptr %.val.i.i.i, i64 322
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph110.i.i.i
  %indvars.iv118.i.i.i = phi i64 [ 0, %.lr.ph110.i.i.i ], [ %indvars.iv.next119.i.i.i, %bb.aj ] ; 2 uses
  %.078107.i.i.i = phi i32 [ -2, %.lr.ph110.i.i.i ], [ %.179.ph.i.fr.i.i, %bb.aj ] ; 2 uses
  %i.gn = getelementptr [16 x i8], ptr %i.dl, i64 %indvars.iv118.i.i.i ; 5 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8      ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 16           ; 4 uses
  %i.gq = load i32, ptr %i.gn, align 8
  %i.gr = zext i32 %i.gq to i64                   ; 4 uses
  %i.gs = call ptr @memchr(ptr noundef %i.gp, i32 noundef 37, i64 noundef %i.gr) #8
  %.not84.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not84.i.i.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.gu = call i64 @rpc_pton(ptr noundef %i.gt, ptr noundef %i.gp, i64 noundef %i.gr, ptr noundef %i.ea, i64 noundef 128) #8 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.ah, label %nfs_parse_server_name.exit.thread.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gw = call i64 @rpc_uaddr2sockaddr(ptr noundef %i.gt, ptr noundef %i.gp, i64 noundef %i.gr, ptr noundef %i.ea, i64 noundef 128) #8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %nfs_parse_server_name.exit.i.i.i, label %nfs_parse_server_name.exit.thread.i.i.i

nfs_parse_server_name.exit.thread.i.i.i:          ; preds = %bb.ah, %bb.ag
  %.0.i96.ph.i.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gw, %bb.ah ]
  store i64 %.0.i96.ph.i.i.i, ptr %i.gl, align 8
  br label %bb.ai

nfs_parse_server_name.exit.i.i.i:                 ; preds = %bb.ah
  %i.gy = call i64 @nfs_dns_resolve_name(ptr noundef %i.gt, ptr noundef %i.gp, i64 noundef %i.gr, ptr noundef %i.ea, i64 noundef 128) #8 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gy, i64 0)
  store i64 %spec.store.select.i.i.i.i, ptr %i.gl, align 8
  %i.gz = icmp slt i64 %i.gy, 1
  br i1 %i.gz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %nfs_parse_server_name.exit.i.i.i, %nfs_parse_server_name.exit.thread.i.i.i
  %i.ha = load i16, ptr %i.ea, align 8
  switch i16 %i.ha, label %rpc_set_port.exit.i.i.i [
    i16 2, label %.sink.split.i.i.i.i
    i16 10, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.ai, %bb.ai
  store i16 264, ptr %i.gm, align 2
  br label %rpc_set_port.exit.i.i.i

rpc_set_port.exit.i.i.i:                          ; preds = %.sink.split.i.i.i.i, %bb.ai
  %i.hb = load ptr, ptr %i.eb, align 8
  %i.hc = load ptr, ptr %i.go, align 16
  %i.hd = load i32, ptr %i.gn, align 8
  %i.he = zext i32 %i.hd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hb, ptr align 1 %i.hc, i64 %i.he, i1 false)
  %i.hf = load ptr, ptr %i.eb, align 8
  %i.hg = load i32, ptr %i.gn, align 8
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr i8, ptr %i.hf, i64 %i.hh
  store i8 0, ptr %i.hi, align 1
  %i.hj = load ptr, ptr %i.go, align 16
  %i.hk = load i32, ptr %i.gn, align 8
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr align 1 %i.hj, i64 %i.hl, i1 false)
  %i.hm = getelementptr i8, ptr %i.gi, i64 %i.hl  ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 1      ; 2 uses
  store i8 58, ptr %i.hm, align 1
  %i.ho = load ptr, ptr %i.gb, align 8
  %i.hp = load i16, ptr %i.eg, align 2
  %i.hq = zext i16 %i.hp to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr align 1 %i.ho, i64 %i.hq, i1 false)
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hq
  store i8 0, ptr %i.hr, align 1
  %i.hs = call i32 @nfs4_get_referral_tree(ptr noundef %0) #8 ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %nfs_follow_referral.exit.i, label %bb.aj

bb.aj:                                            ; preds = %rpc_set_port.exit.i.i.i, %nfs_parse_server_name.exit.i.i.i, %bb.af
  %.179.ph.i.i.i = phi i32 [ %i.hs, %rpc_set_port.exit.i.i.i ], [ %.078107.i.i.i, %bb.af ], [ %.078107.i.i.i, %nfs_parse_server_name.exit.i.i.i ]
  %.179.ph.i.fr.i.i = freeze i32 %.179.ph.i.i.i   ; 3 uses
  %indvars.iv.next119.i.i.i = add nuw nsw i64 %indvars.iv118.i.i.i, 1 ; 2 uses
  %i.hu = load i32, ptr %i.de, align 16
  %i.hv = zext i32 %i.hu to i64
  %i.hw = icmp samesign ult i64 %indvars.iv.next119.i.i.i, %i.hv
  br i1 %i.hw, label %bb.af, label %try_location.exit.i.i, !llvm.loop !17

try_location.exit.i.i:                            ; preds = %bb.aj
  %i.hx = icmp eq i32 %.179.ph.i.fr.i.i, 0
  br i1 %i.hx, label %nfs_follow_referral.exit.i, label %try_location.exit.thread.i.i

try_location.exit.thread.i.i:                     ; preds = %try_location.exit.i.i, %bb.ae, %_kmalloc_noprof.exit.i.i.i, %nfs4_pathname_string.exit.thread.i37.i.i, %._crit_edge.i.i.i, %bb.x, %bb.w, %bb.v
  %.123.ph.i.i = phi i32 [ %.179.ph.i.fr.i.i, %try_location.exit.i.i ], [ %.02274.i.i, %bb.v ], [ %.02274.i.i, %bb.x ], [ %.02274.i.i, %bb.w ], [ -2, %bb.ae ], [ -12, %_kmalloc_noprof.exit.i.i.i ], [ -12, %._crit_edge.i.i.i ], [ %i.ga, %nfs4_pathname_string.exit.thread.i37.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hy = load i32, ptr %i.af, align 8
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next.i.i, %i.hz
  br i1 %i.ia, label %bb.v, label %nfs_follow_referral.exit.i, !llvm.loop !18

nfs_follow_referral.exit.i:                       ; preds = %try_location.exit.thread.i.i, %try_location.exit.i.i, %rpc_set_port.exit.i.i.i, %.preheader.i.i, %nfs4_validate_fspath.exit.i.i, %bb.u, %nfs4_pathname_string.exit.thread.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  %.032.i = phi i32 [ %i.ae, %bb.g ], [ -2, %bb.h ], [ -2, %bb.i ], [ %i.cx, %nfs4_validate_fspath.exit.i.i ], [ 0, %rpc_set_port.exit.i.i.i ], [ %3, %nfs4_pathname_string.exit.thread.i.i.i ], [ -2, %bb.u ], [ -2, %.preheader.i.i ], [ -12, %bb.j ], [ %.123.ph.i.i, %try_location.exit.thread.i.i ], [ 0, %try_location.exit.i.i ]
  %i.ib = load ptr, ptr %i.x, align 4096
  call void @kfree(ptr noundef %i.ib) #8
  br label %bb.ak

bb.ak:                                            ; preds = %nfs_follow_referral.exit.i, %bb.f
  %.1.i = phi i32 [ %.032.i, %nfs_follow_referral.exit.i ], [ -12, %bb.f ]
  call void @kfree(ptr noundef nonnull %i.x) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.e
  %.2.i = phi i32 [ %.1.i, %bb.ak ], [ -12, %bb.e ]
  call void @__free_pages(ptr noundef nonnull %i.w, i32 noundef 0) #8
  br label %nfs_do_refmount.exit

bb.am:                                            ; preds = %bb.c
  %i.ic = tail call i32 @nfs_do_submount(ptr noundef %0) #8
  br label %nfs_do_refmount.exit

nfs_do_refmount.exit:                             ; preds = %bb.al, %bb.d, %bb.am
  %.0 = phi i32 [ %i.ic, %bb.am ], [ %.2.i, %bb.al ], [ -12, %bb.d ]
  call void @rpc_shutdown_client(ptr noundef %i.k) #8
  br label %bb.an

bb.an:                                            ; preds = %nfs_do_refmount.exit, %bb.b
  %.019 = phi i32 [ %i.n, %bb.b ], [ %.0, %nfs_do_refmount.exit ]
  ret i32 %.019
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nfs4_proc_lookup_mountpoint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nfs_do_submount(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nfs4_replace_transport(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8216       ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8224
  %i.f = getelementptr i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %nfs4_try_replacing_one_location.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nfs4_try_replacing_one_location.exit.thread ] ; 2 uses
  %.01435 = phi i32 [ -2, %.lr.ph ], [ %.1.ph, %nfs4_try_replacing_one_location.exit.thread ] ; 3 uses
  %i.g = getelementptr [8368 x i8], ptr %i.e, i64 %indvars.iv ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %nfs4_try_replacing_one_location.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %nfs4_try_replacing_one_location.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.g, i64 168
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %nfs4_try_replacing_one_location.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = tail call ptr @rpc_net_ns(ptr noundef %i.n) #8 ; 4 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.q = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.p, i32 noundef 3264, i64 noundef 128) #11 ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %nfs4_try_replacing_one_location.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.s = load i32, ptr %i.g, align 8
  %.not57.i = icmp eq i32 %i.s, 0
  br i1 %.not57.i, label %nfs4_try_replacing_one_location.exit.thread24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.t = getelementptr i8, ptr %i.g, i64 8
  %i.u = getelementptr i8, ptr %i.q, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.03952.i = phi i32 [ -2, %.lr.ph.i ], [ %.1.ph.i.fr, %bb.m ] ; 4 uses
  %i.v = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext i32 %i.w to i64                     ; 4 uses
  %i.z = icmp ugt i32 %i.w, 4096
  br i1 %i.z, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = tail call ptr @memchr(ptr noundef %i.ab, i32 noundef 37, i64 noundef %i.y) #8
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i64 @rpc_pton(ptr noundef %i.o, ptr noundef %i.ab, i64 noundef %i.y, ptr noundef nonnull %i.q, i64 noundef 128) #8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %nfs_parse_server_name.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i64 @rpc_uaddr2sockaddr(ptr noundef %i.o, ptr noundef %i.ab, i64 noundef %i.y, ptr noundef nonnull %i.q, i64 noundef 128) #8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %nfs_parse_server_name.exit.i, label %nfs_parse_server_name.exit.thread.i

nfs_parse_server_name.exit.i:                     ; preds = %bb.k
  %i.ah = tail call i64 @nfs_dns_resolve_name(ptr noundef %i.o, ptr noundef %i.ab, i64 noundef %i.y, ptr noundef nonnull %i.q, i64 noundef 128) #8 ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %nfs_parse_server_name.exit.thread.i

nfs_parse_server_name.exit.thread.i:              ; preds = %nfs_parse_server_name.exit.i, %bb.k, %bb.j
  %.0.i48.i = phi i64 [ %i.ah, %nfs_parse_server_name.exit.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ]
  %i.aj = load i16, ptr %i.q, align 8
  switch i16 %i.aj, label %rpc_set_port.exit.i [
    i16 2, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %nfs_parse_server_name.exit.thread.i, %nfs_parse_server_name.exit.thread.i
  store i16 264, ptr %i.u, align 2
  br label %rpc_set_port.exit.i

rpc_set_port.exit.i:                              ; preds = %.sink.split.i.i, %nfs_parse_server_name.exit.thread.i
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = load i32, ptr %i.v, align 8
  %i.am = zext i32 %i.al to i64
  %i.an = tail call ptr @kmemdup_nul(ptr noundef %i.ak, i64 noundef %i.am, i32 noundef 3264) #8 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %nfs4_try_replacing_one_location.exit.thread24, label %bb.l

bb.l:                                             ; preds = %rpc_set_port.exit.i
  %i.ap = tail call i32 @nfs4_update_server(ptr noundef %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.q, i64 noundef %.0.i48.i, ptr noundef %i.o) #8 ; 2 uses
  tail call void @kfree(ptr noundef nonnull %i.an) #8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %nfs4_try_replacing_one_location.exit.thread27, label %bb.m

nfs4_try_replacing_one_location.exit.thread27:    ; preds = %bb.l
  tail call void @kfree(ptr noundef nonnull %i.q) #8
  br label %.loopexit

bb.m:                                             ; preds = %bb.l, %nfs_parse_server_name.exit.i, %bb.i, %bb.h, %bb.g
  %.1.ph.i = phi i32 [ %.03952.i, %bb.h ], [ %i.ap, %bb.l ], [ %.03952.i, %nfs_parse_server_name.exit.i ], [ %.03952.i, %bb.i ], [ %.03952.i, %bb.g ]
  %.1.ph.i.fr = freeze i32 %.1.ph.i               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr %i.g, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.g, label %nfs4_try_replacing_one_location.exit, !llvm.loop !21

nfs4_try_replacing_one_location.exit.thread24:    ; preds = %rpc_set_port.exit.i, %.preheader.i
  %.2.i.ph = phi i32 [ -2, %.preheader.i ], [ -12, %rpc_set_port.exit.i ]
  tail call void @kfree(ptr noundef nonnull %i.q) #8
  br label %nfs4_try_replacing_one_location.exit.thread

nfs4_try_replacing_one_location.exit:             ; preds = %bb.m
  tail call void @kfree(ptr noundef nonnull %i.q) #8
  %i.au = icmp eq i32 %.1.ph.i.fr, 0
  br i1 %i.au, label %.loopexit, label %nfs4_try_replacing_one_location.exit.thread

nfs4_try_replacing_one_location.exit.thread:      ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %nfs4_try_replacing_one_location.exit.thread24, %nfs4_try_replacing_one_location.exit
  %.1.ph = phi i32 [ %.01435, %bb.c ], [ %.1.ph.i.fr, %nfs4_try_replacing_one_location.exit ], [ %.2.i.ph, %nfs4_try_replacing_one_location.exit.thread24 ], [ %.01435, %bb.e ], [ %.01435, %bb.d ], [ -12, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.b, align 8
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %nfs4_try_replacing_one_location.exit.thread, %nfs4_try_replacing_one_location.exit, %nfs4_try_replacing_one_location.exit.thread27, %bb.a, %bb.b
  %.2 = phi i32 [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %nfs4_try_replacing_one_location.exit.thread27 ], [ %.1.ph, %nfs4_try_replacing_one_location.exit.thread ], [ 0, %nfs4_try_replacing_one_location.exit ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rpcauth_get_pseudoflavor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0
