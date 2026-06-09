inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@rb_thread_shield_destroy:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_frame_last_func() #17
  %i.b = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 0, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.exec_recursive_params, align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %8 = alloca %struct.exec_recursive_params, align 8
  %.not = icmp eq i64 %5, 0
  %. = select i1 %.not, i64 154, i64 %5
  %i.h = tail call i64 @rb_id2sym(i64 noundef %.) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.j, ptr %i.d, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.m = getelementptr i8, ptr %.val.i, i64 80
  %.val.val.i = load i64, ptr %i.m, align 8, !tbaa !346 ; 8 uses
  %i.n = icmp eq i64 %.val.val.i, 4
  br i1 %i.n, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %.val.val.i, 0
  %i.p = and i64 %.val.val.i, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit14.i

rbimpl_RB_TYPE_P_fastpath.exit14.i:               ; preds = %bb.b
  %i.s = inttoptr i64 %.val.val.i to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 8
  br i1 %i.v, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14.i, %bb.b, %bb.a
  %i.w = tail call i64 @rb_ident_hash_new() #17   ; 2 uses
  %.val15.i = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.x = getelementptr i8, ptr %.val15.i, i64 80
  store i64 %i.w, ptr %i.x, align 8, !tbaa !346
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14.i
  %i.y = tail call i64 @rb_hash_aref(i64 noundef %.val.val.i, i64 noundef %i.h) #17 ; 5 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = and i64 %i.y, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.ae = inttoptr i64 %i.y to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 8
  br i1 %i.ah, label %recursive_list_access.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d, %bb.c, %.thread.i
  %.01219.i = phi i64 [ %i.w, %.thread.i ], [ %.val.val.i, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.val.val.i, %bb.c ], [ %.val.val.i, %bb.d ]
  %i.ai = tail call i64 @rb_ident_hash_new() #17  ; 2 uses
  %i.aj = tail call i64 @rb_hash_aset(i64 noundef %.01219.i, i64 noundef %i.h, i64 noundef %i.ai) #17 ; 0 uses
  br label %recursive_list_access.exit

recursive_list_access.exit:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ak = phi i64 [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !392
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %1, ptr %i.am, align 8, !tbaa !394
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i64 %2, ptr %i.an, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.ao, align 8, !tbaa !396
  %.not38 = icmp eq i32 %4, 0
  br i1 %.not38, label %bb.e, label %recursive_check.exit

recursive_check.exit:                             ; preds = %recursive_list_access.exit
  %i.ap = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.aq = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %i.ap, i64 noundef 36) #17
  %.not91 = icmp eq i64 %i.aq, 36                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %recursive_check.exit, %recursive_list_access.exit
  %or.cond = phi i1 [ true, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.ar = phi i1 [ false, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.as = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %1, i64 noundef 36) #17 ; 6 uses
  %i.at = icmp eq i64 %i.as, 36
  br i1 %i.at, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %recursive_check.exit50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i64 %i.as, 0
  %i.av = and i64 %i.as, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, label %rbimpl_RB_TYPE_P_fastpath.exit.i47

rbimpl_RB_TYPE_P_fastpath.exit.i47:               ; preds = %bb.g
  %i.ay = inttoptr i64 %i.as to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 8
  br i1 %i.bb, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48

rbimpl_RB_TYPE_P_fastpath.exit.thread.i48:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47, %bb.g
  %i.bc = icmp eq i64 %2, %i.as
  br i1 %i.bc, label %recursive_check.exit50, label %bb.k

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47
  %i.bd = tail call i64 @rb_hash_lookup(i64 noundef %i.as, i64 noundef %2) #17
  %i.be = icmp eq i64 %i.bd, 4
  br i1 %i.be, label %bb.k, label %recursive_check.exit50

recursive_check.exit50:                           ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.f
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %recursive_check.exit50
  tail call void @rb_throw_obj(i64 noundef %i.ak, i64 noundef %i.ak) #41
  unreachable

bb.j:                                             ; preds = %recursive_check.exit50
  %i.bf = tail call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.ak

bb.k:                                             ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr %0, ptr %6, align 8, !tbaa !397
  br i1 %i.ar, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.bh = tail call i64 @rb_hash_aset(i64 noundef %i.ak, i64 noundef %i.bg, i64 noundef 20) #17 ; 0 uses
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  %i.bi = ptrtoint ptr %6 to i64
  %i.bj = call i64 @rb_catch_protect(i64 noundef %i.ak, ptr noundef nonnull @exec_recursive_i, i64 noundef %i.bi, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !392 ; 2 uses
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !394 ; 2 uses
  %i.bm = load i64, ptr %i.an, align 8, !tbaa !395 ; 2 uses
  %.not.i51 = icmp eq i64 %i.bm, 0
  br i1 %.not.i51, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call i64 @rb_hash_lookup2(i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef 36) #17 ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 36
  br i1 %i.bo, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = and i64 %i.bn, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %rbimpl_RB_TYPE_P_fastpath.exit.i52

rbimpl_RB_TYPE_P_fastpath.exit.i52:               ; preds = %bb.n
  %i.bt = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bv = and i64 %i.bu, 31
  %i.bw = icmp eq i64 %i.bv, 8
  br i1 %i.bw, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i52
  %i.bx = call i64 @rb_hash_delete_entry(i64 noundef %i.bn, i64 noundef %i.bm) #17 ; 0 uses
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bz = and i64 %i.by, 32768
  %.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = lshr i64 %i.by, 16
  %i.cb = and i64 %i.ca, 15
  br label %RHASH_EMPTY_P.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cc = add i64 %i.bn, 24
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.cb, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.cg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.r

rbimpl_RB_TYPE_P_fastpath.exit.thread.i53:        ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i52, %bb.n, %bb.l
  %i.ch = call i64 @rb_hash_delete_entry(i64 noundef %i.bk, i64 noundef %i.bl) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53
  %i.ci = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cj = call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.ck = call i64 @rb_hash_delete_entry(i64 noundef %i.ci, i64 noundef %i.cj) #17 ; 0 uses
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  %.not44 = icmp eq i32 %i.cl, 0
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.cm, ptr %i.c, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %.val46 = load ptr, ptr %i.cn, align 8, !tbaa !234 ; 2 uses
  %i.co = getelementptr i8, ptr %.val46, i64 64
  store i32 %i.cl, ptr %i.co, align 8, !tbaa !231
  %i.cp = getelementptr i8, ptr %.val46, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cp)
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cr = icmp eq i64 %i.bj, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.cs = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.ai

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i64 36, ptr %i.f, align 8, !tbaa !144
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.ct, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..i59 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.0..0..0..0..0..0..i59, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.cu, align 8, !tbaa !231
  store i64 36, ptr %7, align 8, !tbaa !233
  %i.cv = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 24 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !234
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !235
  %i.cy = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 48
  %.0.2.val = load ptr, ptr %i.cy, align 8, !tbaa !11, !nonnull !103, !noundef !103 ; 2 uses
  %i.cz = getelementptr i8, ptr %.0.2.val, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57 ; 2 uses
  %i.db = getelementptr i8, ptr %.0.2.val, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56
  %i.dd = getelementptr i8, ptr %i.da, i64 88
  %.val5.i = load ptr, ptr %i.dd, align 8, !tbaa !123
  %i.de = icmp eq ptr %.val5.i, %i.dc
  br i1 %i.de, label %bb.w, label %rb_ec_vm_lock_rec.exit

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr i8, ptr %i.da, i64 96
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.v, %bb.w
  %.0.i60 = phi i32 [ %i.dg, %bb.w ], [ 0, %bb.v ]
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %.0.i60, ptr %i.dh, align 4, !tbaa !236
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dj = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.dj, ptr %i.di, align 8
  %i.dk = tail call ptr @llvm.stacksave.p0()
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.di)
  %.not39 = icmp eq i32 %i.dm, 0
  br i1 %.not39, label %bb.y, label %bb.x, !prof !49

bb.x:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !147
  %i.dn = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  br label %bb.z

bb.y:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %7, ptr %i.cv, align 8, !tbaa !234
  %i.do = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 0) #17
  store volatile i64 %i.do, ptr %i.f, align 8, !tbaa !144
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.dp = phi i32 [ %i.dn, %bb.x ], [ 0, %bb.y ]  ; 2 uses
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !235
  store ptr %i.dq, ptr %i.cv, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not.i61 = icmp eq i64 %2, 0
  br i1 %.not.i61, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %1, i64 noundef 36) #17 ; 6 uses
  %i.ds = icmp eq i64 %i.dr, 36
  br i1 %i.ds, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = and i64 %i.dr, 7
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = or i1 %i.dt, %i.dv
  br i1 %i.dw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %rbimpl_RB_TYPE_P_fastpath.exit.i62

rbimpl_RB_TYPE_P_fastpath.exit.i62:               ; preds = %bb.ab
  %i.dx = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 8
  br i1 %i.ea, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63

bb.ac:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i62
  %i.eb = call i64 @rb_hash_delete_entry(i64 noundef %i.dr, i64 noundef %2) #17 ; 0 uses
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.ed = and i64 %i.ec, 32768
  %.not.i.i.i.i66 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i66, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = lshr i64 %i.ec, 16
  %i.ef = and i64 %i.ee, 15
  br label %RHASH_EMPTY_P.exit.i67

bb.ae:                                            ; preds = %bb.ac
  %i.eg = add i64 %i.dr, 24
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i67

RHASH_EMPTY_P.exit.i67:                           ; preds = %bb.ae, %bb.ad
  %.0.i.i.i68 = phi i64 [ %i.ef, %bb.ad ], [ %i.ej, %bb.ae ]
  %i.ek = icmp eq i64 %.0.i.i.i68, 0
  br i1 %i.ek, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.af

rbimpl_RB_TYPE_P_fastpath.exit.thread.i63:        ; preds = %RHASH_EMPTY_P.exit.i67, %rbimpl_RB_TYPE_P_fastpath.exit.i62, %bb.ab, %bb.z
  %i.el = call i64 @rb_hash_delete_entry(i64 noundef %i.ak, i64 noundef %1) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, %RHASH_EMPTY_P.exit.i67
  %.not41 = icmp eq i32 %i.dp, 0
  br i1 %.not41, label %recursive_pop.exit69, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.em, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i70 = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = getelementptr i8, ptr %.0..0..0..0..0..0..i70, i64 24
  %.val = load ptr, ptr %i.en, align 8, !tbaa !234 ; 2 uses
  %i.eo = getelementptr i8, ptr %.val, i64 64
  store i32 %i.dp, ptr %i.eo, align 8, !tbaa !231
  %i.ep = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ep)
  unreachable

recursive_pop.exit69:                             ; preds = %bb.af
  %.0..0..0..0.6 = load volatile i64, ptr %i.f, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.u, %bb.t, %recursive_pop.exit69
  %.2.ph = phi i64 [ %.0..0..0..0.6, %recursive_pop.exit69 ], [ %i.cs, %bb.u ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %6, i64 40, i1 true), !tbaa.struct !402
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.eq = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  %i.er = call i64 @rb_thread_current()
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eq, ptr noundef nonnull @.str.232, i64 noundef %i.h, i64 noundef %i.er) #41
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.j
  %.033 = phi i64 [ %i.bf, %bb.j ], [ %.2.ph, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i64 %.033
}

declare i64 @rb_frame_last_func() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 0, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_memory_id(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_frame_last_func() #17
  %i.b = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_exec_recursive_outer_mid(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 1, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Thread_Mutex() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 1168
  %i.h = tail call i32 @pthread_mutex_init(ptr noundef %i.g, ptr noundef null) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %rb_native_mutex_initialize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.h) #41
  unreachable

rb_native_mutex_initialize.exit:                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val.i, i64 296
  %i.j = tail call i32 @pthread_mutex_init(ptr noundef %i.i, ptr noundef null) #17 ; 2 uses
  %.not.i2 = icmp eq i32 %i.j, 0
  br i1 %.not.i2, label %rb_native_mutex_initialize.exit3, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_initialize.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.j) #41
  unreachable

rb_native_mutex_initialize.exit3:                 ; preds = %rb_native_mutex_initialize.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Thread() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 5) #17
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #17
  store i64 %i.f, ptr @sym_never, align 8, !tbaa !144
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.58, i64 noundef 9) #17
  %i.h = tail call i64 @rb_id2sym(i64 noundef %i.g) #17
  store i64 %i.h, ptr @sym_immediate, align 8, !tbaa !144
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.59, i64 noundef 11) #17
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #17
  store i64 %i.j, ptr @sym_on_blocking, align 8, !tbaa !144
  %i.k = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.k, ptr noundef nonnull @.str.60, ptr noundef nonnull @thread_s_new, i32 noundef -1) #17
  %i.l = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.61, ptr noundef nonnull @thread_start, i32 noundef -2) #17
  %i.m = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.m, ptr noundef nonnull @.str.62, ptr noundef nonnull @thread_start, i32 noundef -2) #17
  %i.n = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.n, ptr noundef nonnull @.str.63, ptr noundef nonnull @rb_thread_s_main, i32 noundef 0) #17
  %i.o = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.64, ptr noundef nonnull @thread_s_current, i32 noundef 0) #17
  %i.p = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.p, ptr noundef nonnull @.str.65, ptr noundef nonnull @thread_stop, i32 noundef 0) #17
  %i.q = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.66, ptr noundef nonnull @rb_thread_s_kill, i32 noundef 1) #17
  %i.r = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.r, ptr noundef nonnull @.str.50, ptr noundef nonnull @rb_thread_exit, i32 noundef 0) #17
  %i.s = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.s, ptr noundef nonnull @.str.67, ptr noundef nonnull @thread_s_pass, i32 noundef 0) #17
  %i.t = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.t, ptr noundef nonnull @.str.68, ptr noundef nonnull @thread_list, i32 noundef 0) #17
  %i.u = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.u, ptr noundef nonnull @.str.69, ptr noundef nonnull @rb_thread_s_abort_exc, i32 noundef 0) #17
  %i.v = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.v, ptr noundef nonnull @.str.70, ptr noundef nonnull @rb_thread_s_abort_exc_set, i32 noundef 1) #17
  %i.w = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.w, ptr noundef nonnull @.str.71, ptr noundef nonnull @rb_thread_s_report_exc, i32 noundef 0) #17
  %i.x = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.x, ptr noundef nonnull @.str.72, ptr noundef nonnull @rb_thread_s_report_exc_set, i32 noundef 1) #17
  %i.y = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.y, ptr noundef nonnull @.str.73, ptr noundef nonnull @rb_thread_s_ignore_deadlock, i32 noundef 0) #17
  %i.z = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.z, ptr noundef nonnull @.str.74, ptr noundef nonnull @rb_thread_s_ignore_deadlock_set, i32 noundef 1) #17
  %i.aa = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.75, ptr noundef nonnull @rb_thread_s_handle_interrupt, i32 noundef 1) #17
  %i.ab = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.ab, ptr noundef nonnull @.str.76, ptr noundef nonnull @rb_thread_s_pending_interrupt_p, i32 noundef -1) #17
  %i.ac = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.76, ptr noundef nonnull @rb_thread_pending_interrupt_p, i32 noundef -1) #17
  %i.ad = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.77, ptr noundef nonnull @thread_initialize, i32 noundef -2) #17
  %i.ae = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.78, ptr noundef nonnull @thread_raise_m, i32 noundef -1) #17
  %i.af = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.79, ptr noundef nonnull @thread_join_m, i32 noundef -1) #17
  %i.ag = load i64, ptr @rb_cThread, align 8, !tbaa !144
end_hunk_0
