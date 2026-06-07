inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_log:bb.a
bb.e:                                             ; preds = %bb.d
  %i.q = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %2), !inline_history !395
  br label %renderLogMsg.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !282
  br label %renderLogMsg.exit

renderLogMsg.exit:                                ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void %i.g(ptr noundef %i.h, i32 noundef %0, ptr noundef %.0.i.i) #59, !inline_history !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %renderLogMsg.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_randomness(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %sqlite3_mutex_leave.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit.thread, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !194
  %i.d = tail call ptr %i.c(i32 noundef 5) #59, !inline_history !195 ; 5 uses
  %.not.i25 = icmp eq ptr %i.d, null
  br i1 %.not.i25, label %sqlite3_mutex_enter.exit, label %sqlite3_mutex_enter.exit.thread95

sqlite3_mutex_enter.exit:                         ; preds = %sqlite3MutexAlloc.exit
  %i.e = icmp slt i32 %0, 1
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.e

sqlite3_mutex_enter.exit.thread95:                ; preds = %sqlite3MutexAlloc.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.g(ptr noundef nonnull %i.d) #59, !inline_history !17
  %i.h = icmp slt i32 %0, 1
  %i.i = icmp eq ptr %1, null
  %or.cond96 = or i1 %i.h, %i.i
  br i1 %or.cond96, label %bb.d, label %bb.e

sqlite3_mutex_enter.exit.thread:                  ; preds = %bb.b
  %i.j = icmp slt i32 %0, 1
  %i.k = icmp eq ptr %1, null
  %or.cond39 = or i1 %i.j, %i.k
  br i1 %or.cond39, label %.thread, label %bb.e

.thread:                                          ; preds = %sqlite3_mutex_enter.exit.thread
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !5
  br label %sqlite3_mutex_leave.exit

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !5
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.thread95
  store i32 0, ptr @sqlite3Prng, align 4, !tbaa !5
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.l(ptr noundef nonnull %i.d) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.thread95, %sqlite3_mutex_enter.exit.thread, %sqlite3_mutex_enter.exit
  %.0.i3543 = phi ptr [ null, %sqlite3_mutex_enter.exit.thread ], [ %i.d, %sqlite3_mutex_enter.exit ], [ %i.d, %sqlite3_mutex_enter.exit.thread95 ]
  %.not.i253641 = phi i1 [ true, %sqlite3_mutex_enter.exit.thread ], [ true, %sqlite3_mutex_enter.exit ], [ false, %sqlite3_mutex_enter.exit.thread95 ]
  %i.m = load i32, ptr @sqlite3Prng, align 4, !tbaa !5
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.e
  %.pr.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @sqlite3_initialize(), !inline_history !404
  %.not.i27 = icmp eq i32 %i.o, 0
  br i1 %.not.i27, label %bb.g, label %sqlite3_vfs_find.exit.thread

sqlite3_vfs_find.exit.thread:                     ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @sqlite3Prng, ptr noundef nonnull align 16 dereferenceable(16) @sqlite3_randomness.chacha20_init, i64 16, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i.thread, label %sqlite3MutexAlloc.exit.i

sqlite3MutexAlloc.exit.i:                         ; preds = %bb.g
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !194
  %i.r = tail call ptr %i.q(i32 noundef 2) #59, !inline_history !405 ; 3 uses
  %.not.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i12.i, label %sqlite3_mutex_enter.exit.i.thread, label %bb.h

sqlite3_mutex_enter.exit.i.thread:                ; preds = %sqlite3MutexAlloc.exit.i, %bb.g
  %.01018.i48 = load ptr, ptr @vfsList, align 8, !tbaa !196
  br label %sqlite3_vfs_find.exit

bb.h:                                             ; preds = %sqlite3MutexAlloc.exit.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.s(ptr noundef nonnull %i.r) #59, !inline_history !406
  %.01018.i = load ptr, ptr @vfsList, align 8, !tbaa !196
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.t(ptr noundef nonnull %i.r) #59, !inline_history !407
  br label %sqlite3_vfs_find.exit

sqlite3_vfs_find.exit:                            ; preds = %sqlite3_mutex_enter.exit.i.thread, %bb.h
  %.0.i28 = phi ptr [ %.01018.i, %bb.h ], [ %.01018.i48, %sqlite3_mutex_enter.exit.i.thread ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @sqlite3Prng, ptr noundef nonnull align 16 dereferenceable(16) @sqlite3_randomness.chacha20_init, i64 16, i1 false)
  %i.u = icmp eq ptr %.0.i28, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sqlite3_vfs_find.exit.thread, %sqlite3_vfs_find.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 16), i8 0, i64 44, i1 false)
  br label %sqlite3OsRandomness.exit

bb.j:                                             ; preds = %sqlite3_vfs_find.exit
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 432), align 8, !tbaa !408 ; 2 uses
  %.not.i29 = icmp eq i32 %i.v, 0
  br i1 %.not.i29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 20), i8 0, i64 40, i1 false)
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 16), align 4
  br label %sqlite3OsRandomness.exit

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i28, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !409
  %i.y = tail call i32 %i.x(ptr noundef nonnull %.0.i28, i32 noundef 44, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 16)) #59, !inline_history !410 ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 48), align 4, !tbaa !5
  br label %sqlite3OsRandomness.exit

sqlite3OsRandomness.exit:                         ; preds = %bb.l, %bb.k, %bb.i
  %i.z = phi i32 [ %.pre, %bb.l ], [ 0, %bb.k ], [ 0, %bb.i ]
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 60), align 4, !tbaa !5
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 48), align 4, !tbaa !5
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge86, %sqlite3OsRandomness.exit
  %.pr = phi i8 [ %.pr.pre, %._crit_edge86 ], [ 0, %sqlite3OsRandomness.exit ] ; 2 uses
  %i.aa = zext i8 %.pr to i32                     ; 2 uses
  %.not2366 = icmp samesign ugt i32 %0, %i.aa
  br i1 %.not2366, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %chacha_block.exit, %bb.m
  %.016.lcssa = phi ptr [ %1, %bb.m ], [ %.117, %chacha_block.exit ]
  %.0.lcssa = phi i32 [ %0, %bb.m ], [ %.1, %chacha_block.exit ] ; 3 uses
  %.lcssa65 = phi i32 [ %i.aa, %bb.m ], [ 64, %chacha_block.exit ]
  %i.ab = sub nsw i32 %.lcssa65, %.0.lcssa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 64), i64 %i.ac
  %i.ae = sext i32 %.0.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.016.lcssa, ptr nonnull align 1 %i.ad, i64 %i.ae, i1 false)
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402
  %i.ag = trunc i32 %.0.lcssa to i8
  %i.ah = sub i8 %i.af, %i.ag
  store i8 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402
  br i1 %.not.i253641, label %sqlite3_mutex_leave.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ai(ptr noundef nonnull %.0.i3543) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

.lr.ph:                                           ; preds = %bb.m, %chacha_block.exit
  %.068 = phi i32 [ %.1, %chacha_block.exit ], [ %0, %bb.m ] ; 2 uses
  %.01667 = phi ptr [ %.117, %chacha_block.exit ], [ %1, %bb.m ] ; 3 uses
  %i.aj = phi i8 [ 64, %chacha_block.exit ], [ %.pr, %bb.m ] ; 2 uses
  %.not24 = icmp eq i8 %i.aj, 0
  br i1 %.not24, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ak = zext i8 %i.aj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01667, ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 64), i64 %i.ak, i1 false)
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402 ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 %.068, %i.am
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.01667, i64 %i.ao
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %.117 = phi ptr [ %i.ap, %bb.o ], [ %.01667, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.an, %bb.o ], [ %.068, %.lr.ph ] ; 3 uses
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 48), align 4, !tbaa !5
  %i.ar = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 48), align 4, !tbaa !5
  %.sroa.0.0.copyload.i = load i32, ptr @sqlite3Prng, align 4 ; 2 uses
  %.sroa.6.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 4), align 4 ; 2 uses
  %.sroa.9.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 8), align 4 ; 2 uses
  %.sroa.12.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 12), align 4 ; 2 uses
  %.sroa.15.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 16), align 4 ; 2 uses
  %.sroa.18.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 20), align 4 ; 2 uses
  %.sroa.21.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 24), align 4 ; 2 uses
  %.sroa.24.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 28), align 4 ; 2 uses
  %.sroa.27.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 32), align 4 ; 2 uses
  %.sroa.30.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 36), align 4 ; 2 uses
  %.sroa.33.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 40), align 4 ; 2 uses
  %.sroa.36.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 44), align 4 ; 2 uses
  %.sroa.42.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 52), align 4 ; 2 uses
  %.sroa.45.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 56), align 4 ; 2 uses
  %.sroa.48.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 60), align 4 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.031.i = phi i32 [ 0, %bb.p ], [ %i.fa, %bb.q ]
  %i.as = phi i32 [ %.sroa.15.0.copyload.i, %bb.p ], [ %i.ez, %bb.q ] ; 2 uses
  %i.at = phi i32 [ %.sroa.0.0.copyload.i, %bb.p ], [ %i.dk, %bb.q ]
  %i.au = phi i32 [ %i.ar, %bb.p ], [ %i.dy, %bb.q ]
  %i.av = phi i32 [ %.sroa.27.0.copyload.i, %bb.p ], [ %i.el, %bb.q ]
  %i.aw = phi i32 [ %.sroa.18.0.copyload.i, %bb.p ], [ %i.dp, %bb.q ] ; 2 uses
  %i.ax = phi i32 [ %.sroa.6.0.copyload.i, %bb.p ], [ %i.dw, %bb.q ]
  %i.ay = phi i32 [ %.sroa.42.0.copyload.i, %bb.p ], [ %i.ek, %bb.q ]
  %i.az = phi i32 [ %.sroa.30.0.copyload.i, %bb.p ], [ %i.ex, %bb.q ]
  %i.ba = phi i32 [ %.sroa.21.0.copyload.i, %bb.p ], [ %i.eb, %bb.q ] ; 2 uses
  %i.bb = phi i32 [ %.sroa.9.0.copyload.i, %bb.p ], [ %i.ei, %bb.q ]
  %i.bc = phi i32 [ %.sroa.45.0.copyload.i, %bb.p ], [ %i.ew, %bb.q ]
  %i.bd = phi i32 [ %.sroa.33.0.copyload.i, %bb.p ], [ %i.dn, %bb.q ]
  %i.be = phi i32 [ %.sroa.24.0.copyload.i, %bb.p ], [ %i.en, %bb.q ] ; 2 uses
  %i.bf = phi i32 [ %.sroa.12.0.copyload.i, %bb.p ], [ %i.eu, %bb.q ]
  %i.bg = phi i32 [ %.sroa.48.0.copyload.i, %bb.p ], [ %i.dm, %bb.q ]
  %i.bh = phi i32 [ %.sroa.36.0.copyload.i, %bb.p ], [ %i.dz, %bb.q ]
  %i.bi = add i32 %i.at, %i.as                    ; 2 uses
  %i.bj = xor i32 %i.au, %i.bi                    ; 2 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 16) ; 2 uses
  %i.bl = add i32 %i.bk, %i.av                    ; 2 uses
  %i.bm = xor i32 %i.bl, %i.as                    ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 12) ; 2 uses
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  %i.bp = xor i32 %i.bo, %i.bk                    ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 8) ; 2 uses
  %i.br = add i32 %i.bq, %i.bl                    ; 2 uses
  %i.bs = xor i32 %i.br, %i.bn                    ; 2 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 7) ; 2 uses
  %i.bu = add i32 %i.ax, %i.aw                    ; 2 uses
  %i.bv = xor i32 %i.ay, %i.bu                    ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 16) ; 2 uses
  %i.bx = add i32 %i.bw, %i.az                    ; 2 uses
  %i.by = xor i32 %i.bx, %i.aw                    ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 12) ; 2 uses
  %i.ca = add i32 %i.bz, %i.bu                    ; 2 uses
  %i.cb = xor i32 %i.ca, %i.bw                    ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 8) ; 2 uses
  %i.cd = add i32 %i.cc, %i.bx                    ; 2 uses
  %i.ce = xor i32 %i.cd, %i.bz                    ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 7) ; 2 uses
  %i.cg = add i32 %i.bb, %i.ba                    ; 2 uses
  %i.ch = xor i32 %i.bc, %i.cg                    ; 2 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 16) ; 2 uses
  %i.cj = add i32 %i.ci, %i.bd                    ; 2 uses
  %i.ck = xor i32 %i.cj, %i.ba                    ; 2 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 12) ; 2 uses
  %i.cm = add i32 %i.cl, %i.cg                    ; 2 uses
  %i.cn = xor i32 %i.cm, %i.ci                    ; 2 uses
  %i.co = tail call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 8) ; 2 uses
  %i.cp = add i32 %i.co, %i.cj                    ; 2 uses
  %i.cq = xor i32 %i.cp, %i.cl                    ; 2 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 7) ; 2 uses
  %i.cs = add i32 %i.bf, %i.be                    ; 2 uses
  %i.ct = xor i32 %i.bg, %i.cs                    ; 2 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 16) ; 2 uses
  %i.cv = add i32 %i.cu, %i.bh                    ; 2 uses
  %i.cw = xor i32 %i.cv, %i.be                    ; 2 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 12) ; 2 uses
  %i.cy = add i32 %i.cx, %i.cs                    ; 2 uses
  %i.cz = xor i32 %i.cy, %i.cu                    ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 8) ; 2 uses
  %i.db = add i32 %i.da, %i.cv                    ; 2 uses
  %i.dc = xor i32 %i.db, %i.cx                    ; 2 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 7) ; 2 uses
  %i.de = add i32 %i.cf, %i.bo                    ; 2 uses
  %i.df = xor i32 %i.da, %i.de                    ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 16) ; 2 uses
  %i.dh = add i32 %i.dg, %i.cp                    ; 2 uses
  %i.di = xor i32 %i.dh, %i.cf                    ; 2 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 12) ; 2 uses
  %i.dk = add i32 %i.dj, %i.de                    ; 3 uses
  %i.dl = xor i32 %i.dk, %i.dg                    ; 2 uses
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %i.dl, i32 %i.dl, i32 8) ; 3 uses
  %i.dn = add i32 %i.dm, %i.dh                    ; 3 uses
  %i.do = xor i32 %i.dn, %i.dj                    ; 2 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 7) ; 2 uses
  %i.dq = add i32 %i.cr, %i.ca                    ; 2 uses
  %i.dr = xor i32 %i.dq, %i.bq                    ; 2 uses
  %i.ds = tail call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 16) ; 2 uses
  %i.dt = add i32 %i.ds, %i.db                    ; 2 uses
  %i.du = xor i32 %i.dt, %i.cr                    ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 12) ; 2 uses
  %i.dw = add i32 %i.dv, %i.dq                    ; 3 uses
  %i.dx = xor i32 %i.dw, %i.ds                    ; 2 uses
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 8) ; 3 uses
  %i.dz = add i32 %i.dy, %i.dt                    ; 3 uses
  %i.ea = xor i32 %i.dz, %i.dv                    ; 2 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 7) ; 2 uses
  %i.ec = add i32 %i.dd, %i.cm                    ; 2 uses
  %i.ed = xor i32 %i.ec, %i.cc                    ; 2 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 16) ; 2 uses
  %i.ef = add i32 %i.ee, %i.br                    ; 2 uses
  %i.eg = xor i32 %i.ef, %i.dd                    ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 12) ; 2 uses
  %i.ei = add i32 %i.eh, %i.ec                    ; 3 uses
  %i.ej = xor i32 %i.ei, %i.ee                    ; 2 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 8) ; 3 uses
  %i.el = add i32 %i.ek, %i.ef                    ; 3 uses
  %i.em = xor i32 %i.el, %i.eh                    ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 7) ; 2 uses
  %i.eo = add i32 %i.cy, %i.bt                    ; 2 uses
  %i.ep = xor i32 %i.eo, %i.co                    ; 2 uses
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 16) ; 2 uses
  %i.er = add i32 %i.eq, %i.cd                    ; 2 uses
  %i.es = xor i32 %i.er, %i.bt                    ; 2 uses
  %i.et = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 12) ; 2 uses
  %i.eu = add i32 %i.et, %i.eo                    ; 3 uses
  %i.ev = xor i32 %i.eu, %i.eq                    ; 2 uses
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 8) ; 3 uses
  %i.ex = add i32 %i.ew, %i.er                    ; 3 uses
  %i.ey = xor i32 %i.ex, %i.et                    ; 2 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 7) ; 2 uses
  %i.fa = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fa, 10
  br i1 %exitcond.not.i, label %chacha_block.exit, label %bb.q, !llvm.loop !411

chacha_block.exit:                                ; preds = %bb.q
  %i.fb = add i32 %i.dk, %.sroa.0.0.copyload.i
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 64), align 4, !tbaa !5
  %2 = add i32 %i.dw, %.sroa.6.0.copyload.i
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 68), align 4, !tbaa !5
  %3 = add i32 %i.ei, %.sroa.9.0.copyload.i
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 72), align 4, !tbaa !5
  %4 = add i32 %i.eu, %.sroa.12.0.copyload.i
  store i32 %4, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 76), align 4, !tbaa !5
  %5 = add i32 %i.ez, %.sroa.15.0.copyload.i
  store i32 %5, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 80), align 4, !tbaa !5
  %6 = add i32 %i.dp, %.sroa.18.0.copyload.i
  store i32 %6, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 84), align 4, !tbaa !5
  %7 = add i32 %i.eb, %.sroa.21.0.copyload.i
  store i32 %7, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 88), align 4, !tbaa !5
  %8 = add i32 %i.en, %.sroa.24.0.copyload.i
  store i32 %8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 92), align 4, !tbaa !5
  %i.fc = add i32 %i.el, %.sroa.27.0.copyload.i
  store i32 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 96), align 4, !tbaa !5
  %i.fd = add i32 %i.ex, %.sroa.30.0.copyload.i
  store i32 %i.fd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 100), align 4, !tbaa !5
  %i.fe = add i32 %i.dn, %.sroa.33.0.copyload.i
  store i32 %i.fe, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 104), align 4, !tbaa !5
  %i.ff = add i32 %i.dz, %.sroa.36.0.copyload.i
  store i32 %i.ff, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 108), align 4, !tbaa !5
  %i.fg = add i32 %i.dy, %i.ar
  store i32 %i.fg, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 112), align 4, !tbaa !5
  %9 = add i32 %i.ek, %.sroa.42.0.copyload.i
  store i32 %9, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 116), align 4, !tbaa !5
  %10 = add i32 %i.ew, %.sroa.45.0.copyload.i
  store i32 %10, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 120), align 4, !tbaa !5
  %i.fh = add i32 %i.dm, %.sroa.48.0.copyload.i
  store i32 %i.fh, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 124), align 4, !tbaa !5
  store i8 64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Prng, i64 128), align 4, !tbaa !402
  %.not23 = icmp sgt i32 %.1, 64
  br i1 %.not23, label %.lr.ph, label %._crit_edge

sqlite3_mutex_leave.exit:                         ; preds = %bb.c, %bb.n, %._crit_edge, %bb.d, %.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 -255, 256) i32 @sqlite3_stricmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %1, null
  %i.b = sext i1 %.not to i32
  br label %sqlite3StrICmp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %sqlite3StrICmp.exit, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.f
  %.013.i = phi ptr [ %i.r, %bb.f ], [ %1, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.q, %bb.f ], [ %0, %bb.c ]  ; 2 uses
  %i.d = load i8, ptr %.0.i, align 1, !tbaa !227  ; 3 uses
  %i.e = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %sqlite3StrICmp.exit, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !227
  %i.k = zext i8 %i.j to i32
  %i.l = zext i8 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !227
  %i.o = zext i8 %i.n to i32
  %i.p = sub nsw i32 %i.k, %i.o                   ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %sqlite3StrICmp.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %.preheader

sqlite3StrICmp.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.c ], [ %i.p, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 -255, 256) i32 @sqlite3_strnicmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ne ptr %1, null
  %i.b = sext i1 %.not19 to i32
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.in = phi i32 [ %i.e, %bb.e ], [ %2, %.preheader ] ; 2 uses
  %.023 = phi ptr [ %i.p, %bb.e ], [ %1, %.preheader ] ; 3 uses
  %.01422 = phi ptr [ %i.o, %bb.e ], [ %0, %.preheader ] ; 2 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = load i8, ptr %.01422, align 1, !tbaa !227 ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !227   ; 2 uses
  %i.j = load i8, ptr %.023, align 1, !tbaa !227
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !227
  %i.n = icmp eq i8 %i.i, %i.m
  br i1 %i.n, label %bb.e, label %split

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.01422, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.q = icmp samesign ugt i32 %.in, 1
  br i1 %i.q, label %.lr.ph, label %.critedge, !llvm.loop !412

split:                                            ; preds = %bb.d
  %i.r = zext i8 %i.i to i32
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %split
  %i.s = phi i32 [ %i.r, %split ], [ 0, %.lr.ph ]
  %i.t = load i8, ptr %.023, align 1, !tbaa !227
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !227
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.s, %i.x
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.preheader, %.lr.ph._crit_edge, %bb.c, %bb.b
  %.016 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.c ], [ %i.y, %.lr.ph._crit_edge ], [ 0, %.preheader ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @sqlite3_os_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !413
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %sqlite3_vfs_register.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %sqlite3MutexAlloc.exit.i

sqlite3MutexAlloc.exit.i:                         ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !194
  %i.d = tail call ptr %i.c(i32 noundef 2) #59, !inline_history !414 ; 3 uses
  %.not.i13.i = icmp eq ptr %i.d, null
  br i1 %.not.i13.i, label %sqlite3_mutex_enter.exit.i, label %bb.c

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.e(ptr noundef nonnull %i.d) #59, !inline_history !415
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.c, %sqlite3MutexAlloc.exit.i, %bb.b
  %.not.i1320.i = phi i1 [ false, %bb.c ], [ true, %sqlite3MutexAlloc.exit.i ], [ true, %bb.b ]
  %.0.i19.i = phi ptr [ %i.d, %bb.c ], [ null, %sqlite3MutexAlloc.exit.i ], [ null, %bb.b ]
  %.pre.i = load ptr, ptr @vfsList, align 8       ; 5 uses
  %i.f = icmp eq ptr %.pre.i, @sqlite3_os_init.aVfs
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3_os_init.aVfs, i64 16), align 16, !tbaa !245
  br label %bb.g

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %.not.i14.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i14.i, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i15.i = phi ptr [ %i.i, %.preheader.i.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245  ; 3 uses
  %.not14.i.i = icmp eq ptr %i.i, null
  %.not15.i.i = icmp eq ptr %i.i, @sqlite3_os_init.aVfs ; 2 uses
  %or.cond.i.i = or i1 %.not14.i.i, %.not15.i.i
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !246

.critedge.i.i:                                    ; preds = %.preheader.i.i
  br i1 %.not15.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 16
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3_os_init.aVfs, i64 16), align 16, !tbaa !245
  store ptr %i.k, ptr %i.j, align 8, !tbaa !245
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.critedge.i.i, %bb.d
  %i.l = phi ptr [ null, %bb.e ], [ %.pre.i, %.critedge.i.i ], [ %i.g, %bb.d ], [ %.pre.i, %bb.f ]
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @sqlite3_os_init.aVfs, i64 16), align 16, !tbaa !245
  store ptr @sqlite3_os_init.aVfs, ptr @vfsList, align 8, !tbaa !196
  br i1 %.not.i1320.i, label %sqlite3_vfs_register.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.m(ptr noundef nonnull %.0.i19.i) #59, !inline_history !416
  br label %sqlite3_vfs_register.exit

sqlite3_vfs_register.exit:                        ; preds = %bb.a, %bb.g, %bb.h
  %i.n = tail call i32 @sqlite3_initialize(), !inline_history !413
  %.not.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.1, label %bb.i, label %sqlite3_vfs_register.exit.1

bb.i:                                             ; preds = %sqlite3_vfs_register.exit
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  br i1 %i.ajh, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aji = icmp slt i64 %.0.i4195, 0
  %i.ajj = icmp ne i8 %.03140, 105
  %.not3837 = and i1 %i.aji, %i.ajj
  %i.ajk = sext i1 %.not3837 to i64
  br label %bb.gv

bb.gr:                                            ; preds = %bb.gp
  %i.ajl = icmp eq i8 %.03140, 105
  br i1 %i.ajl, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ajm = shl i64 %.0.i4195, %.03139
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gr
  %i.ajn = lshr i64 %.0.i4195, %.03139            ; 2 uses
  %i.ajo = icmp slt i64 %.0.i4195, 0
  br i1 %i.ajo, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.ajp = sub nuw nsw i64 64, %.03139
  %i.ajq = shl nsw i64 -1, %i.ajp
  %i.ajr = or disjoint i64 %i.ajq, %i.ajn
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gs, %bb.gu, %bb.gt, %bb.gn, %bb.gq, %bb.go, %bb.gm
  %.03137 = phi i64 [ %i.aja, %bb.gm ], [ %i.ajb, %bb.gn ], [ %i.ajk, %bb.gq ], [ %.0.i4195, %bb.go ], [ %i.ajm, %bb.gs ], [ %i.ajr, %bb.gu ], [ %i.ajn, %bb.gt ]
  store i64 %.03137, ptr %i.ahq, align 8, !tbaa !227
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 20 ; 2 uses
  %i.ajt = load i16, ptr %i.ajs, align 4, !tbaa !162
  %i.aju = and i16 %i.ajt, -3520
  %i.ajv = or disjoint i16 %i.aju, 4
  store i16 %i.ajv, ptr %i.ajs, align 4, !tbaa !162
  br label %.critedge

bb.gw:                                            ; preds = %bb.h
  %i.ajw = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !584
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.ajy ; 7 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 20 ; 3 uses
  %i.akb = load i16, ptr %i.aka, align 4, !tbaa !162 ; 7 uses
  %i.akc = zext i16 %i.akb to i32                 ; 3 uses
  %i.akd = and i32 %i.akc, 36
  %.not.i.i4203 = icmp eq i32 %i.akd, 0
  br i1 %.not.i.i4203, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ake = load i64, ptr %i.ajz, align 8, !tbaa !227
  br label %sqlite3VdbeMemIntegerify.exit

bb.gy:                                            ; preds = %bb.gw
  %i.akf = and i32 %i.akc, 8
  %.not8.i.i = icmp eq i32 %i.akf, 0
  br i1 %.not8.i.i, label %bb.hc, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.akg = load double, ptr %i.ajz, align 8, !tbaa !227 ; 3 uses
  %i.akh = fcmp olt double %i.akg, f0xC3DFFFFFFFFFFFFF
  br i1 %i.akh, label %sqlite3VdbeMemIntegerify.exit, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aki = fcmp ogt double %i.akg, f0x43DFFFFFFFFFFFFF
  br i1 %i.aki, label %sqlite3VdbeMemIntegerify.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akj = fptosi double %i.akg to i64
  br label %sqlite3VdbeMemIntegerify.exit

bb.hc:                                            ; preds = %bb.gy
  %i.akk = and i32 %i.akc, 18
  %.not9.i.i = icmp eq i32 %i.akk, 0
  br i1 %.not9.i.i, label %sqlite3VdbeMemIntegerify.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !289
  %.not10.i.i = icmp eq ptr %i.akm, null
  br i1 %.not10.i.i, label %sqlite3VdbeMemIntegerify.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.akn = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.ajz)
  %.pre.i4205 = load i16, ptr %i.aka, align 4, !tbaa !162
  br label %sqlite3VdbeMemIntegerify.exit

sqlite3VdbeMemIntegerify.exit:                    ; preds = %bb.gx, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he
  %i.ako = phi i16 [ %i.akb, %bb.gx ], [ %i.akb, %bb.hc ], [ %.pre.i4205, %bb.he ], [ %i.akb, %bb.hd ], [ %i.akb, %bb.hb ], [ %i.akb, %bb.gz ], [ %i.akb, %bb.ha ]
  %.0.i.i4204 = phi i64 [ %i.ake, %bb.gx ], [ 0, %bb.hc ], [ %i.akn, %bb.he ], [ 0, %bb.hd ], [ %i.akj, %bb.hb ], [ -9223372036854775808, %bb.gz ], [ 9223372036854775807, %bb.ha ] ; 2 uses
  store i64 %.0.i.i4204, ptr %i.ajz, align 8, !tbaa !227
  %i.akp = and i16 %i.ako, -3520
  %i.akq = or disjoint i16 %i.akp, 4
  store i16 %i.akq, ptr %i.aka, align 4, !tbaa !162
  %i.akr = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.aks = load i32, ptr %i.akr, align 8, !tbaa !585
  %i.akt = sext i32 %i.aks to i64
  %i.aku = add i64 %.0.i.i4204, %i.akt
  store i64 %i.aku, ptr %i.ajz, align 8, !tbaa !227
  br label %.critedge

bb.hf:                                            ; preds = %bb.h
  %i.akv = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !584
  %i.akx = sext i32 %i.akw to i64
  %i.aky = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.akx ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 20 ; 3 uses
  %i.ala = load i16, ptr %i.akz, align 4, !tbaa !162 ; 2 uses
  %i.alb = and i16 %i.ala, 4
  %i.alc = icmp eq i16 %i.alb, 0
  br i1 %i.alc, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  call fastcc void @applyAffinity(ptr noundef nonnull %i.aky, i8 noundef signext 67, i8 noundef zeroext %i.ap)
  %i.ald = load i16, ptr %i.akz, align 4, !tbaa !162 ; 2 uses
  %i.ale = and i16 %i.ald, 4
  %i.alf = icmp eq i16 %i.ale, 0
  br i1 %i.alf, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.alg = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.alh = load i32, ptr %i.alg, align 8, !tbaa !585
  %i.ali = icmp eq i32 %i.alh, 0
  br i1 %i.ali, label %sqlite3VdbeSorterRowkey.exit.loopexit12638, label %.thread4778

bb.hi:                                            ; preds = %bb.hg, %bb.hf
  %i.alj = phi i16 [ %i.ald, %bb.hg ], [ %i.ala, %bb.hf ]
  %i.alk = and i16 %i.alj, -3520
  %i.all = or disjoint i16 %i.alk, 4
  store i16 %i.all, ptr %i.akz, align 4, !tbaa !162
  br label %.critedge

bb.hj:                                            ; preds = %bb.h
  %i.alm = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !584
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.alo ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 20
  %i.alr = load i16, ptr %i.alq, align 4, !tbaa !162
  %i.als = and i16 %i.alr, 36
  %.not3832 = icmp eq i16 %i.als, 0
  br i1 %.not3832, label %.critedge, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call fastcc void @sqlite3VdbeMemRealify(ptr noundef nonnull %i.alp)
  br label %.critedge

bb.hl:                                            ; preds = %bb.h
  %i.alt = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !584
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.alv ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 20
  %i.aly = load i16, ptr %i.alx, align 4, !tbaa !162
  %i.alz = and i16 %i.aly, 1024
  %.not3829 = icmp eq i16 %i.alz, 0
  br i1 %.not3829, label %.thread4755, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ama = call fastcc i32 @sqlite3VdbeMemExpandBlob(ptr noundef nonnull %i.alw) ; 2 uses
  %.not3830 = icmp eq i32 %i.ama, 0
  br i1 %.not3830, label %.thread4755, label %sqlite3VdbeSorterRowkey.exit.loopexit12638

.thread4755:                                      ; preds = %bb.hl, %bb.hm
  %i.amb = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.amc = load i32, ptr %i.amb, align 8, !tbaa !585
  %i.amd = trunc i32 %i.amc to i8
  %i.ame = call fastcc i32 @sqlite3VdbeMemCast(ptr noundef nonnull %i.alw, i8 noundef zeroext %i.amd, i8 noundef zeroext %i.ap) ; 2 uses
  %.not3831 = icmp eq i32 %i.ame, 0
  br i1 %.not3831, label %.critedge, label %sqlite3VdbeSorterRowkey.exit.loopexit12638

bb.hn:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.amf = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !584 ; 2 uses
  %i.amh = sext i32 %i.amg to i64
  %i.ami = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.amh ; 5 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !586 ; 2 uses
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.aml ; 5 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 20 ; 4 uses
  %i.amo = load i16, ptr %i.amn, align 4, !tbaa !162 ; 12 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 20 ; 6 uses
  %i.amq = load i16, ptr %i.amp, align 4, !tbaa !162 ; 10 uses
  %i.amr = zext i16 %i.amo to i32                 ; 5 uses
  %i.ams = zext i16 %i.amq to i32                 ; 6 uses
  %i.amt = and i32 %i.ams, %i.amr                 ; 2 uses
  %i.amu = and i32 %i.amt, 4
  %.not3813 = icmp eq i32 %i.amu, 0
  br i1 %.not3813, label %bb.ht, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.amv = load i64, ptr %i.amm, align 8, !tbaa !227 ; 2 uses
  %i.amw = load i64, ptr %i.ami, align 8, !tbaa !227 ; 2 uses
  %i.amx = icmp sgt i64 %i.amv, %i.amw
  br i1 %i.amx, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.amy = zext nneg i8 %i.ho to i64
  %i.amz = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 215), i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !227
  %.not3828 = icmp eq i8 %i.ana, 0
  br i1 %.not3828, label %.critedge, label %.thread4778

bb.hq:                                            ; preds = %bb.ho
  %i.anb = icmp slt i64 %i.amv, %i.amw
  %i.anc = zext nneg i8 %i.ho to i64              ; 2 uses
  br i1 %i.anb, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.and = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 203), i64 %i.anc
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !227
  %.not3827 = icmp eq i8 %i.ane, 0
  br i1 %.not3827, label %.critedge, label %.thread4778

bb.hs:                                            ; preds = %bb.hq
  %i.anf = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 209), i64 %i.anc
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !227
  %.not3826 = icmp eq i8 %i.ang, 0
  br i1 %.not3826, label %.critedge, label %.thread4778

bb.ht:                                            ; preds = %bb.hn
  %i.anh = or i32 %i.ams, %i.amr                  ; 3 uses
  %i.ani = and i32 %i.anh, 1
  %.not3814 = icmp eq i32 %i.ani, 0
  %i.anj = getelementptr inbounds nuw i8, ptr %.02963, i64 2
  %i.ank = load i16, ptr %i.anj, align 2, !tbaa !587 ; 2 uses
  br i1 %.not3814, label %bb.hy, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.anl = zext i16 %i.ank to i32                 ; 2 uses
  %i.anm = and i32 %i.anl, 128
  %.not3821 = icmp eq i32 %i.anm, 0
  br i1 %.not3821, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %.not3823 = trunc i32 %i.amt to i1
  %i.ann = and i32 %i.ams, 256
  %i.ano = icmp eq i32 %i.ann, 0
  %or.cond3900 = and i1 %i.ano, %.not3823
  br i1 %or.cond3900, label %.thread4768, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.anp = and i32 %i.ams, 1
  %.not3824 = icmp eq i32 %i.anp, 0
  br i1 %.not3824, label %.thread4758.thread5410, label %.thread4768

bb.hx:                                            ; preds = %bb.hu
  %i.anq = and i32 %i.anl, 16
  %.not3822 = icmp eq i32 %i.anq, 0
  br i1 %.not3822, label %.critedge, label %.thread4778

bb.hy:                                            ; preds = %bb.ht
  %i.anr = and i16 %i.ank, 71                     ; 2 uses
  %i.ans = icmp samesign ugt i16 %i.anr, 66
  br i1 %i.ans, label %bb.hz, label %bb.ie

bb.hz:                                            ; preds = %bb.hy
  %i.ant = and i32 %i.anh, 2
  %.not3820 = icmp eq i32 %i.ant, 0
  br i1 %.not3820, label %bb.in, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.anu = and i32 %i.amr, 46
  %i.anv = icmp eq i32 %i.anu, 2
  br i1 %i.anv, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.ami, i32 noundef 0)
  %i.anw = load i16, ptr %i.amp, align 4, !tbaa !162
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.03146 = phi i16 [ %i.anw, %bb.ib ], [ %i.amq, %bb.ia ] ; 3 uses
  %i.anx = and i16 %.03146, 46
  %i.any = icmp eq i16 %i.anx, 2
  br i1 %i.any, label %bb.id, label %bb.in

bb.id:                                            ; preds = %bb.ic
  call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.amm, i32 noundef 0)
  br label %bb.in

bb.ie:                                            ; preds = %bb.hy
  %i.anz = icmp ne i16 %i.anr, 66
  %i.aoa = and i32 %i.anh, 2
  %.not3815 = icmp eq i32 %i.aoa, 0
  %or.cond3901 = or i1 %.not3815, %i.anz
  br i1 %or.cond3901, label %bb.in, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aob = and i32 %i.amr, 2
  %.not3816 = icmp eq i32 %i.aob, 0
  br i1 %.not3816, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aoc = and i16 %i.amo, -45
  store i16 %i.aoc, ptr %i.amn, align 4, !tbaa !162
  br label %bb.ij

bb.ih:                                            ; preds = %bb.if
  %i.aod = and i32 %i.amr, 44
  %.not3817 = icmp eq i32 %i.aod, 0
  br i1 %.not3817, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aoe = call fastcc i32 @sqlite3VdbeMemStringify(ptr noundef nonnull %i.ami, i8 noundef zeroext %i.ap, i8 noundef zeroext 1) ; 0 uses
  %i.aof = load i16, ptr %i.amn, align 4, !tbaa !162
  %i.aog = and i16 %i.aof, -3520
  %i.aoh = and i16 %i.amo, 3517
  %i.aoi = or disjoint i16 %i.aog, %i.aoh         ; 2 uses
  %i.aoj = icmp eq i32 %i.amg, %i.amk
  %i.aok = or disjoint i16 %i.aoi, 2
  %spec.select3902 = select i1 %i.aoj, i16 %i.aok, i16 %i.amq ; 2 uses
  %.pre7305 = zext i16 %spec.select3902 to i32
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig
  %.pre-phi7306 = phi i32 [ %.pre7305, %bb.ii ], [ %i.ams, %bb.ih ], [ %i.ams, %bb.ig ] ; 2 uses
  %.13147 = phi i16 [ %spec.select3902, %bb.ii ], [ %i.amq, %bb.ih ], [ %i.amq, %bb.ig ] ; 3 uses
  %.03143 = phi i16 [ %i.aoi, %bb.ii ], [ %i.amo, %bb.ih ], [ %i.amo, %bb.ig ] ; 3 uses
  %i.aol = and i32 %.pre-phi7306, 2
  %.not3818 = icmp eq i32 %i.aol, 0
  br i1 %.not3818, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aom = load i16, ptr %i.amp, align 4, !tbaa !162
  %i.aon = and i16 %i.aom, -45
  store i16 %i.aon, ptr %i.amp, align 4, !tbaa !162
  br label %bb.in

bb.il:                                            ; preds = %bb.ij
  %i.aoo = and i32 %.pre-phi7306, 44
  %.not3819 = icmp eq i32 %i.aoo, 0
  br i1 %.not3819, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aop = call fastcc i32 @sqlite3VdbeMemStringify(ptr noundef nonnull %i.amm, i8 noundef zeroext %i.ap, i8 noundef zeroext 1) ; 0 uses
  %i.aoq = load i16, ptr %i.amp, align 4, !tbaa !162
  %i.aor = and i16 %i.aoq, -3520
  %i.aos = and i16 %.13147, 3517
  %i.aot = or disjoint i16 %i.aor, %i.aos
  br label %bb.in

bb.in:                                            ; preds = %bb.ic, %bb.id, %bb.hz, %bb.ik, %bb.im, %bb.il, %bb.ie
  %.23148 = phi i16 [ %.03146, %bb.id ], [ %.03146, %bb.ic ], [ %i.amq, %bb.hz ], [ %.13147, %bb.ik ], [ %i.aot, %bb.im ], [ %.13147, %bb.il ], [ %i.amq, %bb.ie ] ; 3 uses
  %.13144 = phi i16 [ %i.amo, %bb.id ], [ %i.amo, %bb.ic ], [ %i.amo, %bb.hz ], [ %.03143, %bb.ik ], [ %.03143, %bb.im ], [ %.03143, %bb.il ], [ %i.amo, %bb.ie ] ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !227
  %i.aow = call fastcc i32 @sqlite3MemCompare(ptr noundef nonnull %i.amm, ptr noundef nonnull %i.ami, ptr noundef %i.aov) ; 4 uses
  %i.aox = icmp slt i32 %i.aow, 0
  %.pre7292 = load i8, ptr %.02963, align 8, !tbaa !563 ; 3 uses
  br i1 %i.aox, label %.thread4768, label %.thread4758

.thread4758:                                      ; preds = %bb.in
  %i.aoy = icmp eq i32 %i.aow, 0
  br i1 %i.aoy, label %.thread4768, label %.thread4758.thread5410

.thread4758.thread5410:                           ; preds = %.thread4758, %bb.hw
  %i.aoz = phi i8 [ %i.ho, %bb.hw ], [ %.pre7292, %.thread4758 ]
  %.3314947635416 = phi i16 [ %i.amq, %bb.hw ], [ %.23148, %.thread4758 ]
  %.2314547655415 = phi i16 [ %i.amo, %bb.hw ], [ %.13144, %.thread4758 ]
  %.0314147665414 = phi i32 [ 1, %bb.hw ], [ %i.aow, %.thread4758 ]
  br label %.thread4768

.thread4768:                                      ; preds = %.thread4758, %bb.hv, %bb.in, %bb.hw, %.thread4758.thread5410
  %.sink8640 = phi i8 [ %i.ho, %bb.hw ], [ %i.aoz, %.thread4758.thread5410 ], [ %.pre7292, %bb.in ], [ %.pre7292, %.thread4758 ], [ %i.ho, %bb.hv ]
  %.sink8638 = phi ptr [ getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 203), %bb.hw ], [ getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 215), %.thread4758.thread5410 ], [ getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 203), %bb.in ], [ getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 209), %.thread4758 ], [ getelementptr inbounds nuw (i8, ptr @sqlite3UpperToLower, i64 209), %bb.hv ]
  %.031414767 = phi i32 [ -1, %bb.hw ], [ %.0314147665414, %.thread4758.thread5410 ], [ %i.aow, %bb.in ], [ 0, %.thread4758 ], [ 0, %bb.hv ] ; 2 uses
  %.231454764 = phi i16 [ %i.amo, %bb.hw ], [ %.2314547655415, %.thread4758.thread5410 ], [ %.13144, %bb.in ], [ %.13144, %.thread4758 ], [ %i.amo, %bb.hv ]
  %.331494762 = phi i16 [ %i.amq, %bb.hw ], [ %.3314947635416, %.thread4758.thread5410 ], [ %.23148, %bb.in ], [ %.23148, %.thread4758 ], [ %i.amq, %bb.hv ]
  %i.apa = zext i8 %.sink8640 to i64
  %i.apb = getelementptr inbounds nuw i8, ptr %.sink8638, i64 %i.apa
  %.03142.in = load i8, ptr %i.apb, align 1, !tbaa !227
  store i16 %.331494762, ptr %i.amp, align 4, !tbaa !162
  store i16 %.231454764, ptr %i.amn, align 4, !tbaa !162
  %.not3825 = icmp eq i8 %.03142.in, 0
  br i1 %.not3825, label %.critedge, label %.thread4778

bb.io:                                            ; preds = %bb.h
  %i.apc = icmp eq i32 %.02996, 0
  br i1 %i.apc, label %.thread4778, label %.critedge

bb.ip:                                            ; preds = %bb.h
  %i.apd = getelementptr inbounds nuw i8, ptr %.02963, i64 2
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !587
  %i.apf = and i16 %i.ape, 1
  %i.apg = icmp eq i16 %i.apf, 0
  br i1 %i.apg, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aph = getelementptr inbounds i8, ptr %.02963, i64 -8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !227
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 4
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %.03151 = phi ptr [ %i.apj, %bb.iq ], [ null, %bb.ip ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !586 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !584
  %i.apo = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.app = load i32, ptr %i.apo, align 8, !tbaa !585
  %i.apq = icmp sgt i32 %i.apl, 0
  br i1 %i.apq, label %.lr.ph6355, label %.critedge

.lr.ph6355:                                       ; preds = %bb.ir
  %i.apr = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !227 ; 2 uses
  %.not3801 = icmp eq ptr %.03151, null
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 32
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 24 ; 2 uses
  %wide.trip.count7230 = zext nneg i32 %i.apl to i64
  br label %bb.it

bb.is:                                            ; preds = %bb.iv
  %indvars.iv.next7228 = add nuw nsw i64 %indvars.iv7227, 1 ; 2 uses
  %exitcond7231.not = icmp eq i64 %indvars.iv.next7228, %wide.trip.count7230
  br i1 %exitcond7231.not, label %.critedge, label %bb.it, !llvm.loop !2672

bb.it:                                            ; preds = %.lr.ph6355, %bb.is
  %indvars.iv7227 = phi i64 [ 0, %.lr.ph6355 ], [ %indvars.iv.next7228, %bb.is ] ; 6 uses
  %i.apv = trunc nuw nsw i64 %indvars.iv7227 to i32
  br i1 %.not3801, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.03151, i64 %indvars.iv7227
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !5
  br label %bb.iv

bb.iv:                                            ; preds = %bb.it, %bb.iu
  %i.apy = phi i32 [ %i.apx, %bb.iu ], [ %i.apv, %bb.it ] ; 2 uses
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %indvars.iv7227
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !568
  %i.aqb = load ptr, ptr %i.apu, align 8, !tbaa !251
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 %indvars.iv7227
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !227
  %i.aqe = add i32 %i.apy, %i.apn
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [56 x i8], ptr %.03021, i64 %i.aqf ; 2 uses
  %i.aqh = add i32 %i.apy, %i.app
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [56 x i8], ptr %.03021, i64 %i.aqi ; 2 uses
  %i.aqk = call fastcc i32 @sqlite3MemCompare(ptr noundef %i.aqg, ptr noundef %i.aqj, ptr noundef %i.aqa) ; 4 uses
  %.not3802 = icmp eq i32 %i.aqk, 0
  br i1 %.not3802, label %bb.is, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aql = and i8 %i.aqd, 1
  %i.aqm = load ptr, ptr %i.apu, align 8, !tbaa !251
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %indvars.iv7227
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !227
  %i.aqp = and i8 %i.aqo, 2
  %.not3803 = icmp eq i8 %i.aqp, 0
  br i1 %.not3803, label %bb.ja, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqg, i64 20
  %i.aqr = load i16, ptr %i.aqq, align 4, !tbaa !162
  %i.aqs = and i16 %i.aqr, 1
  %.not3804 = icmp eq i16 %i.aqs, 0
  br i1 %.not3804, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqj, i64 20
  %i.aqu = load i16, ptr %i.aqt, align 4, !tbaa !162
  %i.aqv = and i16 %i.aqu, 1
  %.not3805 = icmp eq i16 %i.aqv, 0
  br i1 %.not3805, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.aqw = sub nsw i32 0, %i.aqk
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %bb.iw
  %.53001 = phi i32 [ %i.aqw, %bb.iz ], [ %i.aqk, %bb.iy ], [ %i.aqk, %bb.iw ] ; 2 uses
  %.not3806 = icmp eq i8 %i.aql, 0
  %i.aqx = sub nsw i32 0, %.53001
  %spec.select3905 = select i1 %.not3806, i32 %.53001, i32 %i.aqx
  br label %.critedge

bb.jb:                                            ; preds = %bb.h
  %i.aqy = icmp slt i32 %.02996, 0
  br i1 %i.aqy, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.aqz = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !584
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr [24 x i8], ptr %.02962, i64 %i.arb
  %i.ard = getelementptr i8, ptr %i.arc, i64 -24
  br label %.critedge

bb.jd:                                            ; preds = %bb.jb
  %i.are = icmp eq i32 %.02996, 0
  br i1 %i.are, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.arf = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !585
  %i.arh = sext i32 %i.arg to i64
  %i.ari = getelementptr [24 x i8], ptr %.02962, i64 %i.arh
  %i.arj = getelementptr i8, ptr %i.ari, i64 -24
  br label %.critedge

bb.jf:                                            ; preds = %bb.jd
  %i.ark = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !586
  %i.arm = sext i32 %i.arl to i64
  %i.arn = getelementptr [24 x i8], ptr %.02962, i64 %i.arm
  %i.aro = getelementptr i8, ptr %i.arn, i64 -24
  br label %.critedge

bb.jg:                                            ; preds = %bb.h, %bb.h
  %i.arp = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !584
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.arr ; 4 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 20
  %i.aru = load i16, ptr %i.art, align 4, !tbaa !162
  %i.arv = zext i16 %i.aru to i32                 ; 4 uses
  %i.arw = and i32 %i.arv, 36
  %.not.i4206 = icmp eq i32 %i.arw, 0
  br i1 %.not.i4206, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.arx = load i64, ptr %i.ars, align 8, !tbaa !227
  %i.ary = icmp ne i64 %i.arx, 0
  %i.arz = zext i1 %i.ary to i64
  br label %sqlite3VdbeBooleanValue.exit

bb.ji:                                            ; preds = %bb.jg
  %i.asa = and i32 %i.arv, 1
  %.not5.i = icmp eq i32 %i.asa, 0
  br i1 %.not5.i, label %bb.jj, label %sqlite3VdbeBooleanValue.exit

bb.jj:                                            ; preds = %bb.ji
  %i.asb = and i32 %i.arv, 8
  %.not.i.i4208 = icmp eq i32 %i.asb, 0
  br i1 %.not.i.i4208, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.asc = load double, ptr %i.ars, align 8, !tbaa !227
  br label %sqlite3VdbeRealValue.exit.i

bb.jl:                                            ; preds = %bb.jj
  %i.asd = and i32 %i.arv, 18
  %.not8.i.i4210 = icmp eq i32 %i.asd, 0
  br i1 %.not8.i.i4210, label %sqlite3VdbeRealValue.exit.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ase = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.ars, ptr noundef null), !inline_history !806
  br label %sqlite3VdbeRealValue.exit.i

sqlite3VdbeRealValue.exit.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %.0.i.i4209 = phi double [ %i.asc, %bb.jk ], [ 0.000000e+00, %bb.jl ], [ %i.ase, %bb.jm ]
  %i.asf = fcmp une double %.0.i.i4209, 0.000000e+00
  %i.asg = zext i1 %i.asf to i64
  br label %sqlite3VdbeBooleanValue.exit

sqlite3VdbeBooleanValue.exit:                     ; preds = %bb.jh, %bb.ji, %sqlite3VdbeRealValue.exit.i
  %.0.i4207 = phi i64 [ %i.arz, %bb.jh ], [ %i.asg, %sqlite3VdbeRealValue.exit.i ], [ 2, %bb.ji ]
  %i.ash = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !585
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.asj ; 4 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 20
end_hunk_1
