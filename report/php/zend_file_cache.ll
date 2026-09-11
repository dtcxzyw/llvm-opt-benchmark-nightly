Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_file_cache?download=true
inline.NumInlined: 51
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_file_cache_script_load_ex:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.fi, ptr align 64 %i.ch, i64 %i.bk, i1 false)
  %i.fj = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !305
  call void @zend_map_ptr_extend(i64 noundef %i.fl) #15
  br label %bb.av

.sink.split179.sink.split:                        ; preds = %bb.at, %bb.as
  %.sink = phi i32 [ 1, %bb.as ], [ 0, %bb.at ]
  call void @zend_accel_schedule_restart_if_necessary(i32 noundef %.sink) #15
  br label %.sink.split179

.sink.split179:                                   ; preds = %.sink.split179.sink.split, %bb.aw
  call void @zend_shared_alloc_unlock() #15
  br label %bb.av

bb.av:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.sink.split179, %bb.au
  %.087 = phi ptr [ %i.fi, %bb.au ], [ %i.ch, %.sink.split179 ], [ %i.ch, %bb.aj ], [ %i.ch, %bb.ak ], [ %i.ch, %bb.al ], [ %i.ch, %bb.am ], [ %i.ch, %bb.an ] ; 2 uses
  %.086 = phi i1 [ true, %bb.au ], [ false, %.sink.split179 ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.an ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bk
  store ptr %i.fm, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !61
  %i.fp = getelementptr inbounds nuw i8, ptr %.087, i64 %i.fo ; 8 uses
  %i.fq = xor i1 %.086, true
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 400 ; 2 uses
  %i.fs = zext i1 %i.fq to i8
  store i8 %i.fs, ptr %i.fr, align 8, !tbaa !54
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %3, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.fu = call i32 @__sigsetjmp(ptr noundef nonnull %3, i32 noundef 0) #19
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.fx = icmp eq ptr %i.fw, %3
  call void @llvm.assume(i1 %i.fx)
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.086, label %.sink.split179, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !288 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !286
  %i.gb = icmp ule ptr %i.bi, %i.ga
  %.not.i110141 = icmp ugt ptr %i.bi, %i.fy
  %or.cond.i111142 = and i1 %.not.i110141, %i.gb
  br i1 %or.cond.i111142, label %zend_arena_release.exit113, label %.critedge.i112, !prof !289

.critedge.i112:                                   ; preds = %bb.ax, %.critedge.i112
  %.0.i109143 = phi ptr [ %i.gd, %.critedge.i112 ], [ %i.fy, %bb.ax ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i109143, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !287 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i109143) #15
  store ptr %i.gd, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !288
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !286
  %i.gg = icmp ule ptr %i.bi, %i.gf
  %.not.i110 = icmp ugt ptr %i.bi, %i.gd
  %or.cond.i111 = and i1 %.not.i110, %i.gg
  br i1 %or.cond.i111, label %zend_arena_release.exit113, label %.critedge.i112, !prof !290, !llvm.loop !268

zend_arena_release.exit113:                       ; preds = %.critedge.i112, %bb.ax
  %.0.i109.lcssa = phi ptr [ %i.fy, %bb.ax ], [ %i.gd, %.critedge.i112 ]
  store ptr %i.bi, ptr %.0.i109.lcssa, align 8, !tbaa !285
  br label %.sink.split

bb.ay:                                            ; preds = %bb.av
  call fastcc void @zend_file_cache_unserialize(ptr noundef nonnull %i.fp, ptr noundef nonnull %.087)
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.gi = icmp eq ptr %i.gh, %3
  call void @llvm.assume(i1 %i.gi)
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  store i8 0, ptr %i.fr, align 8, !tbaa !54
  br i1 %.086, label %bb.az, label %.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.gj = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !306
  %i.gk = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !305
  %i.gm = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 288), align 8, !tbaa !307
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fp, i64 448
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !308
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gp = load ptr, ptr %i.fp, align 8, !tbaa !41
  %i.gq = call ptr @zend_accel_hash_update(ptr noundef nonnull %i.go, ptr noundef %i.gp, i1 noundef zeroext false, ptr noundef nonnull %i.fp) #15 ; 0 uses
  call void @zend_shared_alloc_unlock() #15
  %i.gr = load ptr, ptr %i.fp, align 8, !tbaa !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  call void (i32, ptr, ...) @zend_accel_error(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.gs) #15
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !288 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !286
  %i.gw = icmp ule ptr %i.bi, %i.gv
  %.not.i108145 = icmp ugt ptr %i.bi, %i.gt
  %or.cond.i146 = and i1 %.not.i108145, %i.gw
  br i1 %or.cond.i146, label %zend_arena_release.exit, label %.critedge.i, !prof !289

.critedge.i:                                      ; preds = %bb.az, %.critedge.i
  %.0.i107147 = phi ptr [ %i.gy, %.critedge.i ], [ %i.gt, %bb.az ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i107147, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !287 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i107147) #15
  store ptr %i.gy, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !288
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !286
  %i.hb = icmp ule ptr %i.bi, %i.ha
  %.not.i108 = icmp ugt ptr %i.bi, %i.gy
  %or.cond.i = and i1 %.not.i108, %i.hb
  br i1 %or.cond.i, label %zend_arena_release.exit, label %.critedge.i, !prof !290, !llvm.loop !268

zend_arena_release.exit:                          ; preds = %.critedge.i, %bb.az
  %.0.i107.lcssa = phi ptr [ %i.gt, %bb.az ], [ %i.gy, %.critedge.i ]
  store ptr %i.bi, ptr %.0.i107.lcssa, align 8, !tbaa !285
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ay, %zend_arena_release.exit, %bb.q, %bb.r, %bb.k, %bb.l, %bb.h, %bb.i, %bb.e, %bb.f, %zend_file_cache_get_bin_file_path.exit, %bb.c, %bb.v, %zend_arena_release.exit128, %zend_arena_release.exit123, %zend_arena_release.exit118, %zend_arena_release.exit113
  %.088.ph = phi ptr [ %i.ek, %zend_arena_release.exit118 ], [ null, %zend_arena_release.exit113 ], [ null, %bb.q ], [ null, %zend_arena_release.exit123 ], [ null, %zend_arena_release.exit128 ], [ @file_cache_validate_success_script, %bb.v ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.e ], [ null, %zend_file_cache_get_bin_file_path.exit ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.r ], [ %i.fp, %zend_arena_release.exit ], [ %i.fp, %bb.ay ]
  call void @_efree(ptr noundef %i.i) #15
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.a
  %.088 = phi ptr [ null, %bb.a ], [ %.088.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %.088
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare i64 @zend_get_file_handle_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @accelerator_shm_read_lock() local_unnamed_addr #3

declare void @zend_shared_alloc_lock() local_unnamed_addr #3

declare ptr @zend_accel_hash_find_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_shared_alloc_unlock() local_unnamed_addr #3

declare void @zend_accel_schedule_restart_if_necessary(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @zend_map_ptr_extend(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize(ptr noundef initializes((432, 440)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %1, ptr %i.a, align 8, !tbaa !60
  %i.b = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = and i64 %i.c, 1
  %.not30 = icmp eq i64 %i.d, 0
  br i1 %.not30, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = load i8, ptr %i.e, align 8, !tbaa !54, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.i = and i64 %i.c, -2
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 5 uses
  br i1 %i.g, label %zend_file_cache_unserialize_interned.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @accel_new_interned_string(ptr noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %bb.e, label %zend_file_cache_unserialize_interned.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = add i64 %i.n, 25                         ; 2 uses
  %i.p = tail call ptr @zend_shared_alloc(i64 noundef %i.o) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.q, i32 noundef -1) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.j, i64 %i.o, i1 false)
  store i32 1, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 470, ptr %i.r, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.c, %bb.d, %bb.g
  %.015.i = phi ptr [ %i.j, %bb.c ], [ %i.p, %bb.g ], [ %i.k, %bb.d ]
  store ptr %.015.i, ptr %0, align 8, !tbaa !41
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = icmp ule ptr %i.b, %i.u
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.y = load i8, ptr %i.x, align 8, !tbaa !54, !range !17, !noundef !18
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !48 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.ac = or i32 %i.ab, 320
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = or i32 %i.ab, 64
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !48
  %i.ae = load ptr, ptr %0, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48
  %i.ah = and i32 %i.ag, -257
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.al = and i32 %i.ak, -33
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %zend_file_cache_unserialize_interned.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.am, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @zend_file_cache_unserialize_class, ptr noundef nonnull @destroy_zend_class)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.an, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @zend_file_cache_unserialize_func, ptr noundef nonnull @zend_function_dtor)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %i.ao, ptr noundef nonnull %0, ptr noundef %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 10 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 3 uses
  %.not.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i31, label %zend_file_cache_unserialize_warnings.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp ule ptr %i.aq, %i.at
  tail call void @llvm.assume(i1 %i.au)
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !74
  %.not84.i = icmp eq i32 %i.ay, 0
  br i1 %.not84.i, label %zend_file_cache_unserialize_warnings.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 9 uses
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76, !nonnull !18, !noundef !18 ; 2 uses
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = icmp ule ptr %i.bc, %i.be
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 3 uses
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !78 ; 3 uses
  %.not76.i = icmp eq ptr %i.bj, null
  br i1 %.not76.i, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bl = and i64 %i.bk, 1
  %.not77.i = icmp eq i64 %i.bl, 0
  br i1 %.not77.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i8, ptr %i.az, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.bp = and i64 %i.bk, -2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 5 uses
  br i1 %i.bn, label %zend_file_cache_unserialize_interned.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = tail call ptr @accel_new_interned_string(ptr noundef %i.bq) #15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bq
  br i1 %i.bs, label %bb.r, label %zend_file_cache_unserialize_interned.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !47
  %i.bv = add i64 %i.bu, 25                       ; 2 uses
  %i.bw = tail call ptr @zend_shared_alloc(i64 noundef %i.bv) #15 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.bx, i32 noundef -1) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.bq, i64 %i.bv, i1 false)
  store i32 1, ptr %i.bw, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 470, ptr %i.by, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit.i

zend_file_cache_unserialize_interned.exit.i:      ; preds = %bb.t, %bb.q, %bb.p
  %.015.i.i = phi ptr [ %i.bq, %bb.p ], [ %i.bw, %bb.t ], [ %i.br, %bb.q ]
  %i.bz = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !76 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.015.i.i, ptr %i.cc, align 8, !tbaa !78
  br label %bb.y

bb.u:                                             ; preds = %bb.o
  %i.cd = icmp ule ptr %i.bj, %i.be
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 2 uses
  store ptr %i.ce, ptr %i.bi, align 8, !tbaa !78
  %i.cf = load i8, ptr %i.az, align 8, !tbaa !54, !range !17, !noundef !18
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !48 ; 2 uses
  br i1 %i.cg, label %bb.w, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.cj = or i32 %i.ci, 320
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !48
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ck = or i32 %i.ci, 64
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !48
  %i.cl = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !48
  %i.cs = and i32 %i.cr, -257
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ct = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !48
  %i.da = and i32 %i.cz, -33
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !48
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !73
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %.pre86.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %zend_file_cache_unserialize_interned.exit.i, %bb.n
  %i.db = phi ptr [ %i.bh, %bb.n ], [ %.pre86.i, %bb.x ], [ %i.cb, %zend_file_cache_unserialize_interned.exit.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !79 ; 3 uses
  %.not78.i = icmp eq ptr %i.dd, null
  br i1 %.not78.i, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.df = and i64 %i.de, 1
  %.not79.i = icmp eq i64 %i.df, 0
  br i1 %.not79.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = load i8, ptr %i.az, align 8, !tbaa !54, !range !17, !noundef !18
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.dj = and i64 %i.de, -2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj ; 5 uses
  br i1 %i.dh, label %zend_file_cache_unserialize_interned.exit82.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = tail call ptr @accel_new_interned_string(ptr noundef %i.dk) #15 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %bb.ac, label %zend_file_cache_unserialize_interned.exit82.i

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !47
  %i.dp = add i64 %i.do, 25                       ; 2 uses
  %i.dq = tail call ptr @zend_shared_alloc(i64 noundef %i.dp) #15 ; 5 uses
  %.not.i81.i = icmp eq ptr %i.dq, null
  br i1 %.not.i81.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.dr, i32 noundef -1) #20
  unreachable

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr nonnull align 8 %i.dk, i64 %i.dp, i1 false)
  store i32 1, ptr %i.dq, align 8, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 470, ptr %i.ds, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit82.i

zend_file_cache_unserialize_interned.exit82.i:    ; preds = %bb.ae, %bb.ab, %bb.aa
  %.015.i80.i = phi ptr [ %i.dk, %bb.aa ], [ %i.dq, %bb.ae ], [ %i.dl, %bb.ab ]
  %i.dt = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %.015.i80.i, ptr %i.dw, align 8, !tbaa !79
  br label %bb.aj

bb.af:                                            ; preds = %bb.z
  %i.dx = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = icmp ule ptr %i.dd, %i.dy
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.de ; 2 uses
  store ptr %i.ea, ptr %i.dc, align 8, !tbaa !79
  %i.eb = load i8, ptr %i.az, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ec, label %bb.ah, label %bb.ag, !prof !90

bb.ag:                                            ; preds = %bb.af
  %i.ef = or i32 %i.ee, 320
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !48
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eg = or i32 %i.ee, 64
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !48
  %i.eh = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !48
  %i.eo = and i32 %i.en, -257
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !48
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !79
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !48
  %i.ew = and i32 %i.ev, -33
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !48
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %zend_file_cache_unserialize_interned.exit82.i, %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ex = load i32, ptr %i.ax, align 4, !tbaa !74
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next.i, %i.ey
  br i1 %i.ez, label %bb.n, label %zend_file_cache_unserialize_warnings.exit, !llvm.loop !309

zend_file_cache_unserialize_warnings.exit:        ; preds = %bb.aj, %bb.l, %bb.m
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 14 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 3 uses
  %.not.i32 = icmp eq ptr %i.fb, null
  br i1 %.not.i32, label %zend_file_cache_unserialize_early_bindings.exit, label %bb.ak

bb.ak:                                            ; preds = %zend_file_cache_unserialize_warnings.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = icmp ule ptr %i.fb, %i.fe
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg
  store ptr %i.fh, ptr %i.fa, align 8, !tbaa !80
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !81
  %.not104.i = icmp eq i32 %i.fj, 0
  br i1 %.not104.i, label %zend_file_cache_unserialize_early_bindings.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.bs, %.lr.ph.i33
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i37, %bb.bs ] ; 13 uses
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 2 uses
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %indvars.iv.i34 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !83 ; 3 uses
  %.not91.i = icmp eq ptr %i.fn, null
  br i1 %.not91.i, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = ptrtoint ptr %i.fn to i64               ; 3 uses
  %i.fp = and i64 %i.fo, 1
  %.not92.i = icmp eq i64 %i.fp, 0
  br i1 %.not92.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ft = and i64 %i.fo, -2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft ; 5 uses
  br i1 %i.fr, label %zend_file_cache_unserialize_interned.exit.i35, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fv = tail call ptr @accel_new_interned_string(ptr noundef %i.fu) #15 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fu
  br i1 %i.fw, label %bb.ap, label %zend_file_cache_unserialize_interned.exit.i35

bb.ap:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !47
  %i.fz = add i64 %i.fy, 25                       ; 2 uses
  %i.ga = tail call ptr @zend_shared_alloc(i64 noundef %i.fz) #15 ; 5 uses
  %.not.i.i38 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i38, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.gb, i32 noundef -1) #20
  unreachable

bb.ar:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr nonnull align 8 %i.fu, i64 %i.fz, i1 false)
  store i32 1, ptr %i.ga, align 8, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 470, ptr %i.gc, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit.i35

zend_file_cache_unserialize_interned.exit.i35:    ; preds = %bb.ar, %bb.ao, %bb.an
  %.015.i.i36 = phi ptr [ %i.fu, %bb.an ], [ %i.ga, %bb.ar ], [ %i.fv, %bb.ao ]
  %i.gd = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 2 uses
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %indvars.iv.i34
  store ptr %.015.i.i36, ptr %i.ge, align 8, !tbaa !83
  br label %bb.aw

bb.as:                                            ; preds = %bb.am
  %i.gf = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = icmp ule ptr %i.fn, %i.gg
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.fo ; 2 uses
  store ptr %i.gi, ptr %i.fm, align 8, !tbaa !83
  %i.gj = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !48 ; 2 uses
  br i1 %i.gk, label %bb.au, label %bb.at, !prof !90

bb.at:                                            ; preds = %bb.as
  %i.gn = or i32 %i.gm, 320
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !48
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.go = or i32 %i.gm, 64
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !48
  %i.gp = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv.i34
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !83
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !48
  %i.gu = and i32 %i.gt, -257
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !48
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gv = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.gv, i64 %indvars.iv.i34
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !83
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !48
  %i.ha = and i32 %i.gz, -33
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !48
  %.pre.i39 = load ptr, ptr %i.fa, align 8, !tbaa !80
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %zend_file_cache_unserialize_interned.exit.i35, %bb.al
  %i.hb = phi ptr [ %i.fl, %bb.al ], [ %.pre.i39, %bb.av ], [ %i.gd, %zend_file_cache_unserialize_interned.exit.i35 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %indvars.iv.i34
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !84 ; 3 uses
  %.not93.i = icmp eq ptr %i.he, null
  br i1 %.not93.i, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hf = ptrtoint ptr %i.he to i64               ; 3 uses
  %i.hg = and i64 %i.hf, 1
  %.not94.i = icmp eq i64 %i.hg, 0
  br i1 %.not94.i, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.hi = trunc nuw i8 %i.hh to i1
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.hk = and i64 %i.hf, -2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk ; 5 uses
  br i1 %i.hi, label %zend_file_cache_unserialize_interned.exit99.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hm = tail call ptr @accel_new_interned_string(ptr noundef %i.hl) #15 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hl
  br i1 %i.hn, label %bb.ba, label %zend_file_cache_unserialize_interned.exit99.i

bb.ba:                                            ; preds = %bb.az
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !47
  %i.hq = add i64 %i.hp, 25                       ; 2 uses
  %i.hr = tail call ptr @zend_shared_alloc(i64 noundef %i.hq) #15 ; 5 uses
  %.not.i98.i = icmp eq ptr %i.hr, null
  br i1 %.not.i98.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.hs, i32 noundef -1) #20
  unreachable

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hr, ptr nonnull align 8 %i.hl, i64 %i.hq, i1 false)
  store i32 1, ptr %i.hr, align 8, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 470, ptr %i.ht, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit99.i

zend_file_cache_unserialize_interned.exit99.i:    ; preds = %bb.bc, %bb.az, %bb.ay
  %.015.i97.i = phi ptr [ %i.hl, %bb.ay ], [ %i.hr, %bb.bc ], [ %i.hm, %bb.az ]
  %i.hu = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 2 uses
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %indvars.iv.i34
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %.015.i97.i, ptr %i.hw, align 8, !tbaa !84
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.hx = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = icmp ule ptr %i.he, %i.hy
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hf ; 2 uses
  store ptr %i.ia, ptr %i.hd, align 8, !tbaa !84
  %i.ib = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ic, label %bb.bf, label %bb.be, !prof !90

bb.be:                                            ; preds = %bb.bd
  %i.if = or i32 %i.ie, 320
  store i32 %i.if, ptr %i.id, align 4, !tbaa !48
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ig = or i32 %i.ie, 64
  store i32 %i.ig, ptr %i.id, align 4, !tbaa !48
  %i.ih = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %indvars.iv.i34
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !84
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !48
  %i.in = and i32 %i.im, -257
  store i32 %i.in, ptr %i.il, align 4, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.io = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.io, i64 %indvars.iv.i34
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !84
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !48
  %i.iu = and i32 %i.it, -33
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !48
  %.pre106.i = load ptr, ptr %i.fa, align 8, !tbaa !80
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %zend_file_cache_unserialize_interned.exit99.i, %bb.aw
  %i.iv = phi ptr [ %i.hb, %bb.aw ], [ %.pre106.i, %bb.bg ], [ %i.hu, %zend_file_cache_unserialize_interned.exit99.i ]
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %indvars.iv.i34
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !85 ; 3 uses
  %.not95.i = icmp eq ptr %i.iy, null
  br i1 %.not95.i, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iz = ptrtoint ptr %i.iy to i64               ; 3 uses
  %i.ja = and i64 %i.iz, 1
  %.not96.i = icmp eq i64 %i.ja, 0
  br i1 %.not96.i, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.je = and i64 %i.iz, -2
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.je ; 5 uses
  br i1 %i.jc, label %zend_file_cache_unserialize_interned.exit102.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jg = tail call ptr @accel_new_interned_string(ptr noundef %i.jf) #15 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.jf
  br i1 %i.jh, label %bb.bl, label %zend_file_cache_unserialize_interned.exit102.i

bb.bl:                                            ; preds = %bb.bk
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !47
  %i.jk = add i64 %i.jj, 25                       ; 2 uses
  %i.jl = tail call ptr @zend_shared_alloc(i64 noundef %i.jk) #15 ; 5 uses
  %.not.i101.i = icmp eq ptr %i.jl, null
  br i1 %.not.i101.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.jm, i32 noundef -1) #20
  unreachable

bb.bn:                                            ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jl, ptr nonnull align 8 %i.jf, i64 %i.jk, i1 false)
  store i32 1, ptr %i.jl, align 8, !tbaa !51
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i32 470, ptr %i.jn, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit102.i

zend_file_cache_unserialize_interned.exit102.i:   ; preds = %bb.bn, %bb.bk, %bb.bj
  %.015.i100.i = phi ptr [ %i.jf, %bb.bj ], [ %i.jl, %bb.bn ], [ %i.jg, %bb.bk ]
  %i.jo = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %indvars.iv.i34
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store ptr %.015.i100.i, ptr %i.jq, align 8, !tbaa !85
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bi
  %i.jr = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = icmp ule ptr %i.iy, %i.js
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %i.iz ; 2 uses
  store ptr %i.ju, ptr %i.ix, align 8, !tbaa !85
  %i.jv = load i8, ptr %i.fk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !48 ; 2 uses
  br i1 %i.jw, label %bb.bq, label %bb.bp, !prof !90

bb.bp:                                            ; preds = %bb.bo
  %i.jz = or i32 %i.jy, 320
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !48
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ka = or i32 %i.jy, 64
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !48
  %i.kb = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.kc = getelementptr inbounds nuw [32 x i8], ptr %i.kb, i64 %indvars.iv.i34
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !85
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !48
  %i.kh = and i32 %i.kg, -257
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !48
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ki = load ptr, ptr %i.fa, align 8, !tbaa !80
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.ki, i64 %indvars.iv.i34
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !85
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !48
  %i.ko = and i32 %i.kn, -33
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !48
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %zend_file_cache_unserialize_interned.exit102.i, %bb.bh
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.kp = load i32, ptr %i.fi, align 8, !tbaa !81
  %i.kq = zext i32 %i.kp to i64
  %i.kr = icmp samesign ult i64 %indvars.iv.next.i37, %i.kq
  br i1 %i.kr, label %bb.al, label %zend_file_cache_unserialize_early_bindings.exit, !llvm.loop !310

zend_file_cache_unserialize_early_bindings.exit:  ; preds = %bb.bs, %zend_file_cache_unserialize_warnings.exit, %bb.ak
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare ptr @zend_accel_hash_update(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zend_file_cache_invalidate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 160), align 8, !tbaa !86, !range !17, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %zend_file_cache_get_bin_file_path.exit

zend_file_cache_get_bin_file_path.exit:           ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !45
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = add i64 %i.d, 38
  %i.g = load i64, ptr %i.e, align 8, !tbaa !47
  %i.h = add i64 %i.f, %i.g
  %i.i = tail call noalias ptr @_emalloc(i64 noundef %i.h) #17 ; 4 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.j, i64 %i.d, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d ; 3 uses
  store i8 47, ptr %i.k, align 1, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull align 16 dereferenceable(32) @zend_system_id, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 33 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 8 %i.n, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.q = tail call i32 @unlink(ptr noundef %i.i) #15 ; 0 uses
  tail call void @_efree(ptr noundef %i.i) #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %zend_file_cache_get_bin_file_path.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_file_cache_serialize_interned(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef %0) #15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %i.d = and i64 %i.c, -8
  %i.e = add i64 %i.d, 32                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %i.h = or i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @zend_shared_alloc_register_xlat_entry(ptr noundef %0, ptr noundef nonnull %i.i) #15
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53 ; 8 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.l = add i64 %i.k, %i.e                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.l, 4120
  %i.q = and i64 %i.p, -4096
  %i.r = add i64 %i.q, -25                        ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48
  %i.u = and i32 %i.t, 64
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.d, label %zend_string_alloc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.j, align 8, !tbaa !51
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %zend_string_alloc.exit.i, !prof !58

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %i.r, -32
  %i.y = add i64 %i.x, 32
  %i.z = tail call ptr @_erealloc(ptr noundef nonnull %i.j, i64 noundef %i.y) #21 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.r, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !48
  %i.ae = and i32 %i.ad, -513
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !48
  br label %zend_string_realloc.exit

zend_string_alloc.exit.i:                         ; preds = %bb.c, %bb.d
  %i.af = and i64 %i.r, -32
  %i.ag = add i64 %i.af, 32
  %i.ah = tail call noalias ptr @_emalloc(i64 noundef %i.ag) #17 ; 7 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 22, ptr %i.ai, align 4, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.r, ptr %i.ak, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.an = load i64, ptr %i.m, align 8, !tbaa !47
  %..i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.an)
  %i.ao = add i64 %..i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.s, align 4, !tbaa !48
  %i.aq = and i32 %i.ap, 64
  %.not24.i = icmp eq i32 %i.aq, 0
  br i1 %.not24.i, label %bb.f, label %zend_string_realloc.exit

bb.f:                                             ; preds = %zend_string_alloc.exit.i
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !51  ; 2 uses
  %i.as = icmp ne i32 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i32 %i.ar, -1
  store i32 %i.at, ptr %i.j, align 8, !tbaa !51
  br label %zend_string_realloc.exit

zend_string_realloc.exit:                         ; preds = %bb.e, %zend_string_alloc.exit.i, %bb.f
  %.0.i = phi ptr [ %i.z, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %zend_string_alloc.exit.i ] ; 2 uses
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %.pre = load i64, ptr %i.f, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %zend_string_realloc.exit, %bb.b
  %i.au = phi i64 [ %.pre, %zend_string_realloc.exit ], [ %i.k, %bb.b ]
end_hunk_0
begin_hunk_1_@zend_file_cache_serialize_type:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 3 uses
  %.not59 = icmp ult ptr %i.z, %i.ai
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not60 = icmp ugt ptr %i.z, %i.al
  br i1 %.not60, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = icmp uge ptr %i.z, %i.ac
  tail call void @llvm.assume(i1 %i.am)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = ptrtoint ptr %i.z to i64
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %bb.h
  %.0 = phi ptr [ %i.ag, %bb.k ], [ %i.aq, %bb.o ], [ null, %bb.h ]
  store ptr %.0, ptr %0, align 8, !tbaa !252
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.g, %bb.p
  ret void
}

declare void @zend_vm_set_opcode_handler(ptr noundef) local_unnamed_addr #3

declare void @zend_serialize_opcode_handler(ptr noundef) local_unnamed_addr #3

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @zend_shared_alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_hash(ptr nofree noundef captures(none) initializes((48, 56)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.a, align 8, !tbaa !340
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = and i32 %i.c, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.a
  %i.e = load i8, ptr @file_cache_only, align 1, !tbaa !91, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load ptr, ptr @accel_shared_globals, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %.sink90 = select i1 %i.f, ptr @uninitialized_bucket, ptr %i.h, !prof !90
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !341
  %i.k = sub i32 0, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %.sink90, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !48
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %.not64 = icmp ult ptr %i.q, %i.s
  br i1 %.not64, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %.not65 = icmp ugt ptr %i.q, %i.v
  br i1 %.not65, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  %.not66 = icmp ult ptr %i.q, %i.y
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72
  %i.ab = icmp ult ptr %i.q, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not67 = icmp eq ptr %i.q, null
  br i1 %.not67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = icmp ule ptr %i.q, %i.ae
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ null, %bb.f ], [ %i.ah, %bb.g ] ; 4 uses
  %i.aj = and i32 %i.c, 4
  %.not68 = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !114 ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %.not79 = icmp eq i32 %i.al, 0                  ; 2 uses
  br i1 %.not68, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.05874 = phi ptr [ %i.aq, %bb.k ], [ %i.ai, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05874, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !48
  %.not72 = icmp eq i8 %i.ap, 0
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void %3(ptr noundef nonnull %.05874, ptr noundef %1, ptr noundef %2) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.05874, i64 16 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !338

bb.l:                                             ; preds = %bb.h
  %.idx78 = shl nuw nsw i64 %i.am, 5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx78
  br i1 %.not79, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph76, %bb.z
  %.075 = phi ptr [ %i.ai, %.lr.ph76 ], [ %i.cg, %bb.z ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.075, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !48
  %.not69 = icmp eq i8 %i.aw, 0
  br i1 %.not69, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.075, i64 24 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !116 ; 3 uses
  %.not70 = icmp eq ptr %i.ay, null
  br i1 %.not70, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = and i64 %i.az, 1
  %.not71 = icmp eq i64 %i.ba, 0
  br i1 %.not71, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.be = and i64 %i.az, -2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be ; 5 uses
  br i1 %i.bc, label %zend_file_cache_unserialize_interned.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = tail call ptr @accel_new_interned_string(ptr noundef %i.bf) #15 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %bb.r, label %zend_file_cache_unserialize_interned.exit

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47
  %i.bk = add i64 %i.bj, 25                       ; 2 uses
  %i.bl = tail call ptr @zend_shared_alloc(i64 noundef %i.bk) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.bm, i32 noundef -1) #20
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bf, i64 %i.bk, i1 false)
  store i32 1, ptr %i.bl, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 470, ptr %i.bn, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.p, %bb.q, %bb.t
  %.015.i = phi ptr [ %i.bf, %bb.p ], [ %i.bl, %bb.t ], [ %i.bg, %bb.q ]
  store ptr %.015.i, ptr %i.ax, align 8, !tbaa !116
  br label %bb.y

bb.u:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.au, align 8, !tbaa !50
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = icmp ule ptr %i.ay, %i.bp
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.az ; 2 uses
  store ptr %i.br, ptr %i.ax, align 8, !tbaa !116
  %i.bs = load i8, ptr %i.at, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !48 ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.bw = or i32 %i.bv, 320
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !48
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bx = or i32 %i.bv, 64
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !48
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !48
  %i.cb = and i32 %i.ca, -257
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !48
  %i.cf = and i32 %i.ce, -33
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !48
  br label %bb.y

bb.y:                                             ; preds = %zend_file_cache_unserialize_interned.exit, %bb.x, %bb.n
  tail call void %3(ptr noundef nonnull %.075, ptr noundef %1, ptr noundef %2) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %.075, i64 32 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.as
  br i1 %i.ch, label %bb.m, label %.loopexit, !llvm.loop !339

.loopexit:                                        ; preds = %bb.k, %bb.z, %.loopexit.sink.split, %bb.i, %bb.l, %bb.c, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_file_cache_unserialize_class(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !18, !noundef !18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp ule ptr %i.a, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 43 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 3 uses
  %.not654 = icmp eq ptr %i.i, null
  br i1 %.not654, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = and i64 %i.j, 1
  %.not655 = icmp eq i64 %i.k, 0
  br i1 %.not655, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.m = load i8, ptr %i.l, align 8, !tbaa !54, !range !17, !noundef !18
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.p = and i64 %i.j, -2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 5 uses
  br i1 %i.n, label %zend_file_cache_unserialize_interned.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @accel_new_interned_string(ptr noundef %i.q) #15 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %bb.e, label %zend_file_cache_unserialize_interned.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = add i64 %i.u, 25                         ; 2 uses
  %i.w = tail call ptr @zend_shared_alloc(i64 noundef %i.v) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.x, i32 noundef -1) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.q, i64 %i.v, i1 false)
  store i32 1, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 470, ptr %i.y, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.c, %bb.d, %bb.g
  %.015.i = phi ptr [ %i.q, %bb.c ], [ %i.w, %bb.g ], [ %i.r, %bb.d ]
  store ptr %.015.i, ptr %i.h, align 8, !tbaa !127
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = icmp ule ptr %i.i, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !127
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.aj = or i32 %i.ai, 320
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = or i32 %i.ai, 64
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !48
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !48
  %i.ao = and i32 %i.an, -257
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.as = and i32 %i.ar, -33
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %zend_file_cache_unserialize_interned.exit, %bb.k, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 6 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !128
  %i.av = and i32 %i.au, 4
  %.not656 = icmp eq i32 %i.av, 0
  br i1 %.not656, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !127 ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call i32 @zend_accel_get_class_name_map_ptr(ptr noundef %i.az) #15 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @zend_alloc_ce_cache(ptr noundef %i.az) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48 ; 5 uses
  %.not657 = icmp eq ptr %i.bc, null
  br i1 %.not657, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !128
  %i.be = and i32 %i.bd, 8
  %.not658 = icmp eq i32 %i.be, 0
  br i1 %.not658, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bf = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bg = and i64 %i.bf, 1
  %.not659 = icmp eq i64 %i.bg, 0
  br i1 %.not659, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.bl = and i64 %i.bf, -2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl ; 5 uses
  br i1 %i.bj, label %zend_file_cache_unserialize_interned.exit732, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call ptr @accel_new_interned_string(ptr noundef %i.bm) #15 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %bb.u, label %zend_file_cache_unserialize_interned.exit732

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.br = add i64 %i.bq, 25                       ; 2 uses
  %i.bs = tail call ptr @zend_shared_alloc(i64 noundef %i.br) #15 ; 5 uses
  %.not.i731 = icmp eq ptr %i.bs, null
  br i1 %.not.i731, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.bt, i32 noundef -1) #20
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bm, i64 %i.br, i1 false)
  store i32 1, ptr %i.bs, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 470, ptr %i.bu, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit732

zend_file_cache_unserialize_interned.exit732:     ; preds = %bb.s, %bb.t, %bb.w
  %.015.i730 = phi ptr [ %i.bm, %bb.s ], [ %i.bs, %bb.w ], [ %i.bn, %bb.t ]
  store ptr %.015.i730, ptr %i.bb, align 8, !tbaa !48
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !50
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp ule ptr %i.bc, %i.bx
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf ; 2 uses
  store ptr %i.bz, ptr %i.bb, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !54, !range !17, !noundef !18
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !48 ; 2 uses
  br i1 %i.cc, label %bb.z, label %bb.y, !prof !90

bb.y:                                             ; preds = %bb.x
  %i.cf = or i32 %i.ce, 320
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !48
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cg = or i32 %i.ce, 64
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !48
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !48
  %i.ck = and i32 %i.cj, -257
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.co = and i32 %i.cn, -33
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !48
  br label %bb.ac

bb.ab:                                            ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = icmp ule ptr %i.bc, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = ptrtoint ptr %i.bc to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct
  store ptr %i.cu, ptr %i.bb, align 8, !tbaa !48
  br label %bb.ac

bb.ac:                                            ; preds = %zend_file_cache_unserialize_interned.exit732, %bb.aa, %bb.ab, %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.cv, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_func, ptr noundef nonnull @zend_function_dtor)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !129 ; 3 uses
  %.not660 = icmp eq ptr %i.cx, null
  br i1 %.not660, label %.loopexit773, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !50
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = icmp ule ptr %i.cx, %i.da
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !129
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !130 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %.idx = shl nuw nsw i64 %i.dg, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph, label %.loopexit773

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.0598774 = phi ptr [ %i.dj, %.lr.ph ], [ %i.dd, %bb.ad ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0598774, ptr noundef nonnull %1, ptr noundef %2)
  %i.dj = getelementptr inbounds nuw i8, ptr %.0598774, i64 16 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.dh
  br i1 %i.dk, label %.lr.ph, label %.loopexit773, !llvm.loop !342

.loopexit773:                                     ; preds = %.lr.ph, %bb.ad, %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !131 ; 3 uses
  %.not661 = icmp eq ptr %i.dm, null
  br i1 %.not661, label %.loopexit772, label %bb.ae

bb.ae:                                            ; preds = %.loopexit773
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !50
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = icmp ule ptr %i.dm, %i.dp
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 3 uses
  store ptr %i.ds, ptr %i.dl, align 8, !tbaa !131
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !132 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %.idx795 = shl nuw nsw i64 %i.dv, 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx795
  %i.dx = icmp sgt i32 %i.du, 0
  br i1 %i.dx, label %.lr.ph776, label %.loopexit772

.lr.ph776:                                        ; preds = %bb.ae, %.lr.ph776
  %.0597775 = phi ptr [ %i.dy, %.lr.ph776 ], [ %i.ds, %bb.ae ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0597775, ptr noundef nonnull %1, ptr noundef %2)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0597775, i64 16 ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.dw
  br i1 %i.dz, label %.lr.ph776, label %.loopexit772, !llvm.loop !343

.loopexit772:                                     ; preds = %.lr.ph776, %bb.ae, %.loopexit773
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.ea, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_class_constant, ptr noundef null)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 504 ; 5 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !48 ; 3 uses
  %.not662 = icmp eq ptr %i.ec, null
  br i1 %.not662, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %.loopexit772
  %i.ed = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.ee = and i64 %i.ed, 1
  %.not663 = icmp eq i64 %i.ee, 0
  br i1 %.not663, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !54, !range !17, !noundef !18
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ej = and i64 %i.ed, -2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej ; 5 uses
  br i1 %i.eh, label %zend_file_cache_unserialize_interned.exit735, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = tail call ptr @accel_new_interned_string(ptr noundef %i.ek) #15 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ek
  br i1 %i.em, label %bb.ai, label %zend_file_cache_unserialize_interned.exit735

bb.ai:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = add i64 %i.eo, 25                       ; 2 uses
  %i.eq = tail call ptr @zend_shared_alloc(i64 noundef %i.ep) #15 ; 5 uses
  %.not.i734 = icmp eq ptr %i.eq, null
  br i1 %.not.i734, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.er, i32 noundef -1) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.ek, i64 %i.ep, i1 false)
  store i32 1, ptr %i.eq, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 470, ptr %i.es, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit735

zend_file_cache_unserialize_interned.exit735:     ; preds = %bb.ag, %bb.ah, %bb.ak
  %.015.i733 = phi ptr [ %i.ek, %bb.ag ], [ %i.eq, %bb.ak ], [ %i.el, %bb.ah ]
  store ptr %.015.i733, ptr %i.eb, align 8, !tbaa !48
  br label %bb.ap

bb.al:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !50
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = icmp ule ptr %i.ec, %i.ev
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed ; 2 uses
  store ptr %i.ex, ptr %i.eb, align 8, !tbaa !48
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !54, !range !17, !noundef !18
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !48 ; 2 uses
  br i1 %i.fa, label %bb.an, label %bb.am, !prof !90

bb.am:                                            ; preds = %bb.al
  %i.fd = or i32 %i.fc, 320
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !48
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fe = or i32 %i.fc, 64
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !48
  %i.ff = load ptr, ptr %i.eb, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !48
  %i.fi = and i32 %i.fh, -257
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !48
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fj = load ptr, ptr %i.eb, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !48
  %i.fm = and i32 %i.fl, -33
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit772, %bb.ao, %zend_file_cache_unserialize_interned.exit735
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 496 ; 5 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !133 ; 3 uses
  %.not664 = icmp eq ptr %i.fo, null
  br i1 %.not664, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fq = and i64 %i.fp, 1
  %.not665 = icmp eq i64 %i.fq, 0
  br i1 %.not665, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.fv = and i64 %i.fp, -2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv ; 5 uses
  br i1 %i.ft, label %zend_file_cache_unserialize_interned.exit738, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = tail call ptr @accel_new_interned_string(ptr noundef %i.fw) #15 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fw
  br i1 %i.fy, label %bb.at, label %zend_file_cache_unserialize_interned.exit738

bb.at:                                            ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !47
  %i.gb = add i64 %i.ga, 25                       ; 2 uses
  %i.gc = tail call ptr @zend_shared_alloc(i64 noundef %i.gb) #15 ; 5 uses
  %.not.i737 = icmp eq ptr %i.gc, null
  br i1 %.not.i737, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.gd, i32 noundef -1) #20
  unreachable

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.fw, i64 %i.gb, i1 false)
  store i32 1, ptr %i.gc, align 8, !tbaa !51
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 470, ptr %i.ge, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit738

zend_file_cache_unserialize_interned.exit738:     ; preds = %bb.ar, %bb.as, %bb.av
  %.015.i736 = phi ptr [ %i.fw, %bb.ar ], [ %i.gc, %bb.av ], [ %i.fx, %bb.as ]
  store ptr %.015.i736, ptr %i.fn, align 8, !tbaa !133
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aq
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !50
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = icmp ule ptr %i.fo, %i.gh
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp ; 2 uses
  store ptr %i.gj, ptr %i.fn, align 8, !tbaa !133
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !54, !range !17, !noundef !18
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !48 ; 2 uses
  br i1 %i.gm, label %bb.ay, label %bb.ax, !prof !90

bb.ax:                                            ; preds = %bb.aw
  %i.gp = or i32 %i.go, 320
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !48
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.gq = or i32 %i.go, 64
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !48
  %i.gr = load ptr, ptr %i.fn, align 8, !tbaa !133
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !48
  %i.gu = and i32 %i.gt, -257
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !48
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gv = load ptr, ptr %i.fn, align 8, !tbaa !133
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !48
  %i.gy = and i32 %i.gx, -33
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ap, %bb.az, %zend_file_cache_unserialize_interned.exit738
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 472 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !134 ; 7 uses
  %.not666 = icmp eq ptr %i.ha, null
  br i1 %.not666, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !60 ; 2 uses
  %.not667 = icmp ult ptr %i.ha, %i.hc
  br i1 %.not667, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.he
  %.not668 = icmp ugt ptr %i.ha, %i.hf
  br i1 %.not668, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hg = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 184
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !71
  %.not669 = icmp ult ptr %i.ha, %i.hi
  br i1 %.not669, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 192
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !72
  %i.hl = icmp ult ptr %i.ha, %i.hk
  br i1 %i.hl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !50
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = icmp ule ptr %i.ha, %i.ho
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = ptrtoint ptr %i.ha to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %i.hq ; 2 uses
  store ptr %i.hr, ptr %i.gz, align 8, !tbaa !134
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.hr, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc, %bb.ba
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.hs, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_prop_info, ptr noundef null)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 248 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !135 ; 3 uses
  %.not671 = icmp eq ptr %i.hu, null
  br i1 %.not671, label %.loopexit771, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !50
  %i.hx = inttoptr i64 %i.hw to ptr               ; 2 uses
  %i.hy = icmp ule ptr %i.hu, %i.hx
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 %i.hz ; 6 uses
  store ptr %i.ia, ptr %i.ht, align 8, !tbaa !135
  %i.ib = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !130 ; 3 uses
  %.not796 = icmp eq i32 %i.ic, 0
  br i1 %.not796, label %.loopexit771, label %.lr.ph778.preheader

.lr.ph778.preheader:                              ; preds = %bb.bh
  %wide.trip.count = zext i32 %i.ic to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ic, 4
  br i1 %min.iters.check, label %.lr.ph778.preheader915, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph778.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue914, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue914 ] ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load = load <2 x ptr>, ptr %i.id, align 8, !tbaa !136 ; 2 uses
  %wide.load908 = load <2 x ptr>, ptr %i.ie, align 8, !tbaa !136 ; 2 uses
  %i.if = icmp ne <2 x ptr> %wide.load, splat (ptr null) ; 2 uses
  %i.ig = icmp ne <2 x ptr> %wide.load908, splat (ptr null) ; 2 uses
  %i.ih = ptrtoint <2 x ptr> %wide.load to <2 x i64> ; 2 uses
  %i.ii = ptrtoint <2 x ptr> %wide.load908 to <2 x i64> ; 2 uses
  %i.ij = extractelement <2 x i1> %i.if, i64 0
  br i1 %i.ij, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ik = extractelement <2 x i64> %i.ih, i64 0
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 %i.ik
  store ptr %i.il, ptr %i.id, align 8, !tbaa !136
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.im = extractelement <2 x i1> %i.if, i64 1
  br i1 %i.im, label %pred.store.if909, label %pred.store.continue910

pred.store.if909:                                 ; preds = %pred.store.continue
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = extractelement <2 x i64> %i.ih, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ip
  store ptr %i.iq, ptr %i.io, align 8, !tbaa !136
  br label %pred.store.continue910

pred.store.continue910:                           ; preds = %pred.store.if909, %pred.store.continue
  %i.ir = extractelement <2 x i1> %i.ig, i64 0
  br i1 %i.ir, label %pred.store.if911, label %pred.store.continue912

pred.store.if911:                                 ; preds = %pred.store.continue910
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = extractelement <2 x i64> %i.ii, i64 0
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 %i.iu
  store ptr %i.iv, ptr %i.it, align 8, !tbaa !136
  br label %pred.store.continue912

pred.store.continue912:                           ; preds = %pred.store.if911, %pred.store.continue910
  %i.iw = extractelement <2 x i1> %i.ig, i64 1
  br i1 %i.iw, label %pred.store.if913, label %pred.store.continue914

pred.store.if913:                                 ; preds = %pred.store.continue912
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = extractelement <2 x i64> %i.ii, i64 1
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 %i.iz
  store ptr %i.ja, ptr %i.iy, align 8, !tbaa !136
  br label %pred.store.continue914

pred.store.continue914:                           ; preds = %pred.store.if913, %pred.store.continue912
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %pred.store.continue914
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit771, label %.lr.ph778.preheader915

.lr.ph778.preheader915:                           ; preds = %.lr.ph778.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph778.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph778

.lr.ph778:                                        ; preds = %.lr.ph778.preheader915, %bb.bj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bj ], [ %indvars.iv.ph, %.lr.ph778.preheader915 ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !136 ; 3 uses
  %.not729 = icmp eq ptr %i.jd, null
  br i1 %.not729, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph778
  %i.je = icmp ule ptr %i.jd, %i.hx
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 %i.jf
  store ptr %i.jg, ptr %i.jc, align 8, !tbaa !136
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph778, %bb.bi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit771, label %.lr.ph778, !llvm.loop !345

.loopexit771:                                     ; preds = %bb.bj, %middle.block, %bb.bh, %bb.bg
  %i.jh = getelementptr inbounds nuw i8, ptr %i.g, i64 424 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !139
  %.not672 = icmp eq i32 %i.ji, 0
  br i1 %.not672, label %.loopexit770, label %bb.bk

bb.bk:                                            ; preds = %.loopexit771
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 440 ; 12 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !48 ; 3 uses
  %.not674 = icmp eq ptr %i.jk, null
  br i1 %.not674, label %.lr.ph780, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !50
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = icmp ule ptr %i.jk, %i.jn
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = ptrtoint ptr %i.jk to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jp
  store ptr %i.jq, ptr %i.jj, align 8, !tbaa !48
  br label %.lr.ph780

.lr.ph780:                                        ; preds = %bb.bk, %bb.bl
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph780, %bb.ci
  %indvars.iv801 = phi i64 [ 0, %.lr.ph780 ], [ %indvars.iv.next802, %bb.ci ] ; 11 uses
  %i.jt = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %indvars.iv801 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !141 ; 3 uses
  %.not725 = icmp eq ptr %i.jv, null
  br i1 %.not725, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jw = ptrtoint ptr %i.jv to i64               ; 3 uses
  %i.jx = and i64 %i.jw, 1
  %.not726 = icmp eq i64 %i.jx, 0
  br i1 %.not726, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jy = load i8, ptr %i.jr, align 8, !tbaa !54, !range !17, !noundef !18
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.kb = and i64 %i.jw, -2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb ; 5 uses
  br i1 %i.jz, label %zend_file_cache_unserialize_interned.exit741, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kd = tail call ptr @accel_new_interned_string(ptr noundef %i.kc) #15 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.kc
  br i1 %i.ke, label %bb.bq, label %zend_file_cache_unserialize_interned.exit741

bb.bq:                                            ; preds = %bb.bp
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !47
  %i.kh = add i64 %i.kg, 25                       ; 2 uses
  %i.ki = tail call ptr @zend_shared_alloc(i64 noundef %i.kh) #15 ; 5 uses
  %.not.i740 = icmp eq ptr %i.ki, null
  br i1 %.not.i740, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.kj, i32 noundef -1) #20
  unreachable

bb.bs:                                            ; preds = %bb.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr nonnull align 8 %i.kc, i64 %i.kh, i1 false)
  store i32 1, ptr %i.ki, align 8, !tbaa !51
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 470, ptr %i.kk, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit741

zend_file_cache_unserialize_interned.exit741:     ; preds = %bb.bo, %bb.bp, %bb.bs
  %.015.i739 = phi ptr [ %i.kc, %bb.bo ], [ %i.ki, %bb.bs ], [ %i.kd, %bb.bp ]
  %i.kl = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %indvars.iv801
  store ptr %.015.i739, ptr %i.km, align 8, !tbaa !141
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bn
  %i.kn = load i64, ptr %i.js, align 8, !tbaa !50
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = icmp ule ptr %i.jv, %i.ko
  tail call void @llvm.assume(i1 %i.kp)
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jw
  store ptr %i.kq, ptr %i.ju, align 8, !tbaa !141
  %i.kr = load i8, ptr %i.jr, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %indvars.iv801
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !141
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ks, label %bb.bv, label %bb.bu, !prof !90

bb.bu:                                            ; preds = %bb.bt
  %i.ky = or i32 %i.kx, 320
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !48
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.kz = or i32 %i.kx, 64
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !48
  %i.la = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %indvars.iv801
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !141
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !48
  %i.lf = and i32 %i.le, -257
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !48
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.lg = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %indvars.iv801
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !141
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !48
  %i.ll = and i32 %i.lk, -33
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !48
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bm, %bb.bw, %zend_file_cache_unserialize_interned.exit741
  %i.lm = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv801
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !142 ; 3 uses
  %.not727 = icmp eq ptr %i.lp, null
  br i1 %.not727, label %bb.ci, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lq = ptrtoint ptr %i.lp to i64               ; 3 uses
  %i.lr = and i64 %i.lq, 1
  %.not728 = icmp eq i64 %i.lr, 0
  br i1 %.not728, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ls = load i8, ptr %i.jr, align 8, !tbaa !54, !range !17, !noundef !18
  %i.lt = trunc nuw i8 %i.ls to i1
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.lv = and i64 %i.lq, -2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lv ; 5 uses
  br i1 %i.lt, label %zend_file_cache_unserialize_interned.exit744, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lx = tail call ptr @accel_new_interned_string(ptr noundef %i.lw) #15 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.lw
  br i1 %i.ly, label %bb.cb, label %zend_file_cache_unserialize_interned.exit744

bb.cb:                                            ; preds = %bb.ca
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !47
  %i.mb = add i64 %i.ma, 25                       ; 2 uses
  %i.mc = tail call ptr @zend_shared_alloc(i64 noundef %i.mb) #15 ; 5 uses
  %.not.i743 = icmp eq ptr %i.mc, null
  br i1 %.not.i743, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.md, i32 noundef -1) #20
  unreachable

bb.cd:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mc, ptr nonnull align 8 %i.lw, i64 %i.mb, i1 false)
  store i32 1, ptr %i.mc, align 8, !tbaa !51
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 470, ptr %i.me, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit744

zend_file_cache_unserialize_interned.exit744:     ; preds = %bb.bz, %bb.ca, %bb.cd
  %.015.i742 = phi ptr [ %i.lw, %bb.bz ], [ %i.mc, %bb.cd ], [ %i.lx, %bb.ca ]
  %i.mf = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %indvars.iv801
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %.015.i742, ptr %i.mh, align 8, !tbaa !142
  br label %bb.ci

bb.ce:                                            ; preds = %bb.by
  %i.mi = load i64, ptr %i.js, align 8, !tbaa !50
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = icmp ule ptr %i.lp, %i.mj
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 %i.lq
  store ptr %i.ml, ptr %i.lo, align 8, !tbaa !142
  %i.mm = load i8, ptr %i.jr, align 8, !tbaa !54, !range !17, !noundef !18
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %indvars.iv801
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !142
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !48 ; 2 uses
  br i1 %i.mn, label %bb.cg, label %bb.cf, !prof !90

bb.cf:                                            ; preds = %bb.ce
  %i.mu = or i32 %i.mt, 320
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !48
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.mv = or i32 %i.mt, 64
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !48
  %i.mw = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %indvars.iv801
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !142
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !48
  %i.nc = and i32 %i.nb, -257
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !48
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.nd = load ptr, ptr %i.jj, align 8, !tbaa !48
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %indvars.iv801
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !142
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !48
  %i.nj = and i32 %i.ni, -33
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !48
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bx, %bb.ch, %zend_file_cache_unserialize_interned.exit744
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %i.nk = load i32, ptr %i.jh, align 8, !tbaa !139
  %i.nl = zext i32 %i.nk to i64
  %i.nm = icmp samesign ult i64 %indvars.iv.next802, %i.nl
  br i1 %i.nm, label %bb.bm, label %.loopexit770, !llvm.loop !346

.loopexit770:                                     ; preds = %bb.ci, %.loopexit771
  %i.nn = getelementptr inbounds nuw i8, ptr %i.g, i64 428 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !143
  %.not675 = icmp eq i32 %i.no, 0
  br i1 %.not675, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %.loopexit770
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 448 ; 10 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !144 ; 3 uses
  %.not676 = icmp eq ptr %i.nq, null
  br i1 %.not676, label %.lr.ph782, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !50
  %i.nt = inttoptr i64 %i.ns to ptr
  %i.nu = icmp ule ptr %i.nq, %i.nt
  tail call void @llvm.assume(i1 %i.nu)
  %i.nv = ptrtoint ptr %i.nq to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  store ptr %i.nw, ptr %i.np, align 8, !tbaa !144
  br label %.lr.ph782

.lr.ph782:                                        ; preds = %bb.cj, %bb.ck
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph782, %bb.dh
  %indvars.iv804 = phi i64 [ 0, %.lr.ph782 ], [ %indvars.iv.next805, %bb.dh ] ; 9 uses
  %i.nz = load ptr, ptr %i.np, align 8, !tbaa !144 ; 2 uses
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.nz, i64 %indvars.iv804 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !141 ; 3 uses
  %.not721 = icmp eq ptr %i.ob, null
  br i1 %.not721, label %bb.cw, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oc = ptrtoint ptr %i.ob to i64               ; 3 uses
  %i.od = and i64 %i.oc, 1
  %.not722 = icmp eq i64 %i.od, 0
  br i1 %.not722, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oe = load i8, ptr %i.nx, align 8, !tbaa !54, !range !17, !noundef !18
  %i.of = trunc nuw i8 %i.oe to i1
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.oh = and i64 %i.oc, -2
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oh ; 5 uses
  br i1 %i.of, label %zend_file_cache_unserialize_interned.exit747, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oj = tail call ptr @accel_new_interned_string(ptr noundef %i.oi) #15 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.oi
  br i1 %i.ok, label %bb.cp, label %zend_file_cache_unserialize_interned.exit747

bb.cp:                                            ; preds = %bb.co
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !47
  %i.on = add i64 %i.om, 25                       ; 2 uses
  %i.oo = tail call ptr @zend_shared_alloc(i64 noundef %i.on) #15 ; 5 uses
  %.not.i746 = icmp eq ptr %i.oo, null
  br i1 %.not.i746, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.op = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.op, i32 noundef -1) #20
  unreachable

bb.cr:                                            ; preds = %bb.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.oo, ptr nonnull align 8 %i.oi, i64 %i.on, i1 false)
  store i32 1, ptr %i.oo, align 8, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store i32 470, ptr %i.oq, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit747

zend_file_cache_unserialize_interned.exit747:     ; preds = %bb.cn, %bb.co, %bb.cr
  %.015.i745 = phi ptr [ %i.oi, %bb.cn ], [ %i.oo, %bb.cr ], [ %i.oj, %bb.co ]
  %i.or = load ptr, ptr %i.np, align 8, !tbaa !144 ; 2 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv804
  store ptr %.015.i745, ptr %i.os, align 8, !tbaa !141
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cm
  %i.ot = load i64, ptr %i.ny, align 8, !tbaa !50
  %i.ou = inttoptr i64 %i.ot to ptr
  %i.ov = icmp ule ptr %i.ob, %i.ou
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 %i.oc ; 2 uses
  store ptr %i.ow, ptr %i.oa, align 8, !tbaa !141
  %i.ox = load i8, ptr %i.nx, align 8, !tbaa !54, !range !17, !noundef !18
  %i.oy = trunc nuw i8 %i.ox to i1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 4 ; 3 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !48 ; 2 uses
  br i1 %i.oy, label %bb.cu, label %bb.ct, !prof !90

bb.ct:                                            ; preds = %bb.cs
  %i.pb = or i32 %i.pa, 320
  store i32 %i.pb, ptr %i.oz, align 4, !tbaa !48
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.pc = or i32 %i.pa, 64
  store i32 %i.pc, ptr %i.oz, align 4, !tbaa !48
  %i.pd = load ptr, ptr %i.np, align 8, !tbaa !144
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %indvars.iv804
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !141
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !48
  %i.pi = and i32 %i.ph, -257
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !48
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.pj = load ptr, ptr %i.np, align 8, !tbaa !144
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %indvars.iv804
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !141
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 4 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !48
  %i.po = and i32 %i.pn, -33
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !48
  %.pre = load ptr, ptr %i.np, align 8, !tbaa !144
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cl, %bb.cv, %zend_file_cache_unserialize_interned.exit747
  %i.pp = phi ptr [ %i.nz, %bb.cl ], [ %.pre, %bb.cv ], [ %i.or, %zend_file_cache_unserialize_interned.exit747 ]
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %indvars.iv804
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !142 ; 3 uses
  %.not723 = icmp eq ptr %i.ps, null
  br i1 %.not723, label %bb.dh, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pt = ptrtoint ptr %i.ps to i64               ; 3 uses
  %i.pu = and i64 %i.pt, 1
  %.not724 = icmp eq i64 %i.pu, 0
  br i1 %.not724, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pv = load i8, ptr %i.nx, align 8, !tbaa !54, !range !17, !noundef !18
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.py = and i64 %i.pt, -2
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.py ; 5 uses
  br i1 %i.pw, label %zend_file_cache_unserialize_interned.exit750, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qa = tail call ptr @accel_new_interned_string(ptr noundef %i.pz) #15 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.pz
  br i1 %i.qb, label %bb.da, label %zend_file_cache_unserialize_interned.exit750

bb.da:                                            ; preds = %bb.cz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !47
  %i.qe = add i64 %i.qd, 25                       ; 2 uses
  %i.qf = tail call ptr @zend_shared_alloc(i64 noundef %i.qe) #15 ; 5 uses
  %.not.i749 = icmp eq ptr %i.qf, null
  br i1 %.not.i749, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.qg, i32 noundef -1) #20
  unreachable

bb.dc:                                            ; preds = %bb.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qf, ptr nonnull align 8 %i.pz, i64 %i.qe, i1 false)
  store i32 1, ptr %i.qf, align 8, !tbaa !51
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  store i32 470, ptr %i.qh, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit750

zend_file_cache_unserialize_interned.exit750:     ; preds = %bb.cy, %bb.cz, %bb.dc
  %.015.i748 = phi ptr [ %i.pz, %bb.cy ], [ %i.qf, %bb.dc ], [ %i.qa, %bb.cz ]
  %i.qi = load ptr, ptr %i.np, align 8, !tbaa !144
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %indvars.iv804
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %.015.i748, ptr %i.qk, align 8, !tbaa !142
  br label %bb.dh

bb.dd:                                            ; preds = %bb.cx
  %i.ql = load i64, ptr %i.ny, align 8, !tbaa !50
  %i.qm = inttoptr i64 %i.ql to ptr
  %i.qn = icmp ule ptr %i.ps, %i.qm
  tail call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 %i.pt ; 2 uses
  store ptr %i.qo, ptr %i.pr, align 8, !tbaa !142
  %i.qp = load i8, ptr %i.nx, align 8, !tbaa !54, !range !17, !noundef !18
  %i.qq = trunc nuw i8 %i.qp to i1
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 4 ; 3 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !48 ; 2 uses
  br i1 %i.qq, label %bb.df, label %bb.de, !prof !90

bb.de:                                            ; preds = %bb.dd
  %i.qt = or i32 %i.qs, 320
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !48
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.qu = or i32 %i.qs, 64
  store i32 %i.qu, ptr %i.qr, align 4, !tbaa !48
  %i.qv = load ptr, ptr %i.np, align 8, !tbaa !144
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv804
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !142
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !48
  %i.rb = and i32 %i.ra, -257
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !48
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %i.rc = load ptr, ptr %i.np, align 8, !tbaa !144
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %indvars.iv804
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !142
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !48
  %i.ri = and i32 %i.rh, -33
  store i32 %i.ri, ptr %i.rg, align 4, !tbaa !48
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cw, %bb.dg, %zend_file_cache_unserialize_interned.exit750
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1 ; 2 uses
  %i.rj = load i32, ptr %i.nn, align 4, !tbaa !143
  %i.rk = zext i32 %i.rj to i64
  %i.rl = icmp samesign ult i64 %indvars.iv.next805, %i.rk
  br i1 %i.rl, label %bb.cl, label %._crit_edge, !llvm.loop !347

._crit_edge:                                      ; preds = %bb.dh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.g, i64 456 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !145 ; 3 uses
  %.not677 = icmp eq ptr %i.rn, null
  br i1 %.not677, label %.loopexit769, label %bb.di

bb.di:                                            ; preds = %._crit_edge
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 4 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !50
  %i.rq = inttoptr i64 %i.rp to ptr
  %i.rr = icmp ule ptr %i.rn, %i.rq
  tail call void @llvm.assume(i1 %i.rr)
  %i.rs = ptrtoint ptr %i.rn to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 %i.rs ; 3 uses
  store ptr %i.rt, ptr %i.rm, align 8, !tbaa !145
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !147 ; 2 uses
  %.not678783 = icmp eq ptr %i.ru, null
  br i1 %.not678783, label %.loopexit769, label %.lr.ph786

.lr.ph786:                                        ; preds = %bb.di
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph786, %bb.eq
  %i.rw = phi ptr [ %i.ru, %.lr.ph786 ], [ %i.wb, %bb.eq ] ; 2 uses
  %.0593784 = phi ptr [ %i.rt, %.lr.ph786 ], [ %i.wa, %bb.eq ] ; 2 uses
  %i.rx = load i64, ptr %i.ro, align 8, !tbaa !50
  %i.ry = inttoptr i64 %i.rx to ptr               ; 2 uses
  %i.rz = icmp ule ptr %i.rw, %i.ry
  tail call void @llvm.assume(i1 %i.rz)
  %i.sa = ptrtoint ptr %i.rw to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 %i.sa ; 8 uses
  store ptr %i.sb, ptr %.0593784, align 8, !tbaa !147
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !150 ; 3 uses
  %.not715 = icmp eq ptr %i.sc, null
  br i1 %.not715, label %bb.du, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sd = ptrtoint ptr %i.sc to i64               ; 3 uses
  %i.se = and i64 %i.sd, 1
  %.not716 = icmp eq i64 %i.se, 0
  br i1 %.not716, label %bb.dq, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sf = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.sg = trunc nuw i8 %i.sf to i1
  %i.sh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.si = and i64 %i.sd, -2
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.si ; 5 uses
  br i1 %i.sg, label %zend_file_cache_unserialize_interned.exit753, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sk = tail call ptr @accel_new_interned_string(ptr noundef %i.sj) #15 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.sj
  br i1 %i.sl, label %bb.dn, label %zend_file_cache_unserialize_interned.exit753

bb.dn:                                            ; preds = %bb.dm
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !47
  %i.so = add i64 %i.sn, 25                       ; 2 uses
  %i.sp = tail call ptr @zend_shared_alloc(i64 noundef %i.so) #15 ; 5 uses
  %.not.i752 = icmp eq ptr %i.sp, null
  br i1 %.not.i752, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.sq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.sq, i32 noundef -1) #20
  unreachable

bb.dp:                                            ; preds = %bb.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sp, ptr nonnull align 8 %i.sj, i64 %i.so, i1 false)
  store i32 1, ptr %i.sp, align 8, !tbaa !51
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i32 470, ptr %i.sr, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit753

zend_file_cache_unserialize_interned.exit753:     ; preds = %bb.dl, %bb.dm, %bb.dp
  %.015.i751 = phi ptr [ %i.sj, %bb.dl ], [ %i.sp, %bb.dp ], [ %i.sk, %bb.dm ]
  store ptr %.015.i751, ptr %i.sb, align 8, !tbaa !150
  br label %bb.du

bb.dq:                                            ; preds = %bb.dk
  %i.ss = icmp ule ptr %i.sc, %i.ry
  tail call void @llvm.assume(i1 %i.ss)
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 %i.sd ; 2 uses
  store ptr %i.st, ptr %i.sb, align 8, !tbaa !150
  %i.su = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 4 ; 3 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !48 ; 2 uses
  br i1 %i.sv, label %bb.ds, label %bb.dr, !prof !90

bb.dr:                                            ; preds = %bb.dq
  %i.sy = or i32 %i.sx, 320
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !48
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.sz = or i32 %i.sx, 64
  store i32 %i.sz, ptr %i.sw, align 4, !tbaa !48
  %i.ta = load ptr, ptr %i.sb, align 8, !tbaa !150
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !48
  %i.td = and i32 %i.tc, -257
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !48
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.te = load ptr, ptr %i.sb, align 8, !tbaa !150
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !48
  %i.th = and i32 %i.tg, -33
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !48
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %zend_file_cache_unserialize_interned.exit753, %bb.dj
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sb, i64 8 ; 5 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !151 ; 3 uses
  %.not717 = icmp eq ptr %i.tj, null
  br i1 %.not717, label %bb.ef, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tk = ptrtoint ptr %i.tj to i64               ; 3 uses
  %i.tl = and i64 %i.tk, 1
  %.not718 = icmp eq i64 %i.tl, 0
  br i1 %.not718, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tm = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.tn = trunc nuw i8 %i.tm to i1
  %i.to = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.tp = and i64 %i.tk, -2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tp ; 5 uses
  br i1 %i.tn, label %zend_file_cache_unserialize_interned.exit756, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tr = tail call ptr @accel_new_interned_string(ptr noundef %i.tq) #15 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.tq
  br i1 %i.ts, label %bb.dy, label %zend_file_cache_unserialize_interned.exit756

bb.dy:                                            ; preds = %bb.dx
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !47
  %i.tv = add i64 %i.tu, 25                       ; 2 uses
  %i.tw = tail call ptr @zend_shared_alloc(i64 noundef %i.tv) #15 ; 5 uses
  %.not.i755 = icmp eq ptr %i.tw, null
  br i1 %.not.i755, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.tx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.tx, i32 noundef -1) #20
  unreachable

bb.ea:                                            ; preds = %bb.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr nonnull align 8 %i.tq, i64 %i.tv, i1 false)
  store i32 1, ptr %i.tw, align 8, !tbaa !51
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store i32 470, ptr %i.ty, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit756

zend_file_cache_unserialize_interned.exit756:     ; preds = %bb.dw, %bb.dx, %bb.ea
  %.015.i754 = phi ptr [ %i.tq, %bb.dw ], [ %i.tw, %bb.ea ], [ %i.tr, %bb.dx ]
  store ptr %.015.i754, ptr %i.ti, align 8, !tbaa !151
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dv
  %i.tz = load i64, ptr %i.ro, align 8, !tbaa !50
  %i.ua = inttoptr i64 %i.tz to ptr
  %i.ub = icmp ule ptr %i.tj, %i.ua
  tail call void @llvm.assume(i1 %i.ub)
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 %i.tk ; 2 uses
  store ptr %i.uc, ptr %i.ti, align 8, !tbaa !151
  %i.ud = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ue = trunc nuw i8 %i.ud to i1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 4 ; 3 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ue, label %bb.ed, label %bb.ec, !prof !90

bb.ec:                                            ; preds = %bb.eb
  %i.uh = or i32 %i.ug, 320
  store i32 %i.uh, ptr %i.uf, align 4, !tbaa !48
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.ui = or i32 %i.ug, 64
  store i32 %i.ui, ptr %i.uf, align 4, !tbaa !48
  %i.uj = load ptr, ptr %i.ti, align 8, !tbaa !151
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !48
  %i.um = and i32 %i.ul, -257
  store i32 %i.um, ptr %i.uk, align 4, !tbaa !48
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %i.un = load ptr, ptr %i.ti, align 8, !tbaa !151
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !48
  %i.uq = and i32 %i.up, -33
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !48
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %zend_file_cache_unserialize_interned.exit756, %bb.du
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sb, i64 16 ; 5 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !152 ; 3 uses
  %.not719 = icmp eq ptr %i.us, null
  br i1 %.not719, label %bb.eq, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ut = ptrtoint ptr %i.us to i64               ; 3 uses
  %i.uu = and i64 %i.ut, 1
  %.not720 = icmp eq i64 %i.uu, 0
  br i1 %.not720, label %bb.em, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uv = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.uw = trunc nuw i8 %i.uv to i1
  %i.ux = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.uy = and i64 %i.ut, -2
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uy ; 5 uses
  br i1 %i.uw, label %zend_file_cache_unserialize_interned.exit759, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.va = tail call ptr @accel_new_interned_string(ptr noundef %i.uz) #15 ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.uz
  br i1 %i.vb, label %bb.ej, label %zend_file_cache_unserialize_interned.exit759

bb.ej:                                            ; preds = %bb.ei
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !47
  %i.ve = add i64 %i.vd, 25                       ; 2 uses
  %i.vf = tail call ptr @zend_shared_alloc(i64 noundef %i.ve) #15 ; 5 uses
  %.not.i758 = icmp eq ptr %i.vf, null
  br i1 %.not.i758, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.vg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.vg, i32 noundef -1) #20
  unreachable

bb.el:                                            ; preds = %bb.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vf, ptr nonnull align 8 %i.uz, i64 %i.ve, i1 false)
  store i32 1, ptr %i.vf, align 8, !tbaa !51
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  store i32 470, ptr %i.vh, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit759

zend_file_cache_unserialize_interned.exit759:     ; preds = %bb.eh, %bb.ei, %bb.el
  %.015.i757 = phi ptr [ %i.uz, %bb.eh ], [ %i.vf, %bb.el ], [ %i.va, %bb.ei ]
  store ptr %.015.i757, ptr %i.ur, align 8, !tbaa !152
  br label %bb.eq

bb.em:                                            ; preds = %bb.eg
  %i.vi = load i64, ptr %i.ro, align 8, !tbaa !50
  %i.vj = inttoptr i64 %i.vi to ptr
  %i.vk = icmp ule ptr %i.us, %i.vj
  tail call void @llvm.assume(i1 %i.vk)
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ut ; 2 uses
  store ptr %i.vl, ptr %i.ur, align 8, !tbaa !152
  %i.vm = load i8, ptr %i.rv, align 8, !tbaa !54, !range !17, !noundef !18
  %i.vn = trunc nuw i8 %i.vm to i1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 4 ; 3 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !48 ; 2 uses
  br i1 %i.vn, label %bb.eo, label %bb.en, !prof !90

bb.en:                                            ; preds = %bb.em
  %i.vq = or i32 %i.vp, 320
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !48
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.vr = or i32 %i.vp, 64
  store i32 %i.vr, ptr %i.vo, align 4, !tbaa !48
  %i.vs = load ptr, ptr %i.ur, align 8, !tbaa !152
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4 ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !48
  %i.vv = and i32 %i.vu, -257
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !48
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo
  %i.vw = load ptr, ptr %i.ur, align 8, !tbaa !152
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !48
  %i.vz = and i32 %i.vy, -33
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !48
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %zend_file_cache_unserialize_interned.exit759, %bb.ef
  %i.wa = getelementptr inbounds nuw i8, ptr %.0593784, i64 8 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !147 ; 2 uses
  %.not678 = icmp eq ptr %i.wb, null
  br i1 %.not678, label %.loopexit769, label %bb.dj, !llvm.loop !348

.loopexit769:                                     ; preds = %bb.eq, %bb.di, %._crit_edge
  %i.wc = getelementptr inbounds nuw i8, ptr %i.g, i64 464 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !153 ; 3 uses
  %.not679 = icmp eq ptr %i.wd, null
  br i1 %.not679, label %.loopexit, label %bb.er

bb.er:                                            ; preds = %.loopexit769
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 4 uses
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !50
  %i.wg = inttoptr i64 %i.wf to ptr
  %i.wh = icmp ule ptr %i.wd, %i.wg
  tail call void @llvm.assume(i1 %i.wh)
  %i.wi = ptrtoint ptr %i.wd to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %2, i64 %i.wi ; 3 uses
  store ptr %i.wj, ptr %i.wc, align 8, !tbaa !153
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !155 ; 2 uses
  %.not680791 = icmp eq ptr %i.wk, null
  br i1 %.not680791, label %.loopexit, label %.lr.ph794

.lr.ph794:                                        ; preds = %bb.er
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph794, %._crit_edge790
  %i.wm = phi ptr [ %i.wk, %.lr.ph794 ], [ %i.aax, %._crit_edge790 ] ; 2 uses
  %.0592792 = phi ptr [ %i.wj, %.lr.ph794 ], [ %i.aaw, %._crit_edge790 ] ; 2 uses
  %i.wn = load i64, ptr %i.we, align 8, !tbaa !50
  %i.wo = inttoptr i64 %i.wn to ptr               ; 2 uses
  %i.wp = icmp ule ptr %i.wm, %i.wo
  tail call void @llvm.assume(i1 %i.wp)
  %i.wq = ptrtoint ptr %i.wm to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %2, i64 %i.wq ; 9 uses
  store ptr %i.wr, ptr %.0592792, align 8, !tbaa !155
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !157 ; 3 uses
  %.not709 = icmp eq ptr %i.ws, null
  br i1 %.not709, label %bb.fd, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.wt = ptrtoint ptr %i.ws to i64               ; 3 uses
  %i.wu = and i64 %i.wt, 1
  %.not710 = icmp eq i64 %i.wu, 0
  br i1 %.not710, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wv = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ww = trunc nuw i8 %i.wv to i1
  %i.wx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.wy = and i64 %i.wt, -2
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wy ; 5 uses
  br i1 %i.ww, label %zend_file_cache_unserialize_interned.exit762, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xa = tail call ptr @accel_new_interned_string(ptr noundef %i.wz) #15 ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.wz
  br i1 %i.xb, label %bb.ew, label %zend_file_cache_unserialize_interned.exit762

bb.ew:                                            ; preds = %bb.ev
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !47
  %i.xe = add i64 %i.xd, 25                       ; 2 uses
  %i.xf = tail call ptr @zend_shared_alloc(i64 noundef %i.xe) #15 ; 5 uses
  %.not.i761 = icmp eq ptr %i.xf, null
  br i1 %.not.i761, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.xg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.xg, i32 noundef -1) #20
  unreachable

bb.ey:                                            ; preds = %bb.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.xf, ptr nonnull align 8 %i.wz, i64 %i.xe, i1 false)
  store i32 1, ptr %i.xf, align 8, !tbaa !51
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  store i32 470, ptr %i.xh, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit762

zend_file_cache_unserialize_interned.exit762:     ; preds = %bb.eu, %bb.ev, %bb.ey
  %.015.i760 = phi ptr [ %i.wz, %bb.eu ], [ %i.xf, %bb.ey ], [ %i.xa, %bb.ev ]
  store ptr %.015.i760, ptr %i.wr, align 8, !tbaa !157
  br label %bb.fd

bb.ez:                                            ; preds = %bb.et
  %i.xi = icmp ule ptr %i.ws, %i.wo
  tail call void @llvm.assume(i1 %i.xi)
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 %i.wt ; 2 uses
  store ptr %i.xj, ptr %i.wr, align 8, !tbaa !157
  %i.xk = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.xl = trunc nuw i8 %i.xk to i1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 4 ; 3 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !48 ; 2 uses
  br i1 %i.xl, label %bb.fb, label %bb.fa, !prof !90

bb.fa:                                            ; preds = %bb.ez
  %i.xo = or i32 %i.xn, 320
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !48
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.xp = or i32 %i.xn, 64
  store i32 %i.xp, ptr %i.xm, align 4, !tbaa !48
  %i.xq = load ptr, ptr %i.wr, align 8, !tbaa !157
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 4 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !48
  %i.xt = and i32 %i.xs, -257
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !48
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %i.xu = load ptr, ptr %i.wr, align 8, !tbaa !157
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 4 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !48
  %i.xx = and i32 %i.xw, -33
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !48
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %zend_file_cache_unserialize_interned.exit762, %bb.es
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wr, i64 8 ; 5 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !158 ; 3 uses
  %.not711 = icmp eq ptr %i.xz, null
  br i1 %.not711, label %bb.fo, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ya = ptrtoint ptr %i.xz to i64               ; 3 uses
  %i.yb = and i64 %i.ya, 1
  %.not712 = icmp eq i64 %i.yb, 0
  br i1 %.not712, label %bb.fk, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.yc = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.yf = and i64 %i.ya, -2
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yf ; 5 uses
  br i1 %i.yd, label %zend_file_cache_unserialize_interned.exit765, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yh = tail call ptr @accel_new_interned_string(ptr noundef %i.yg) #15 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.yg
  br i1 %i.yi, label %bb.fh, label %zend_file_cache_unserialize_interned.exit765

bb.fh:                                            ; preds = %bb.fg
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !47
  %i.yl = add i64 %i.yk, 25                       ; 2 uses
  %i.ym = tail call ptr @zend_shared_alloc(i64 noundef %i.yl) #15 ; 5 uses
  %.not.i764 = icmp eq ptr %i.ym, null
  br i1 %.not.i764, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.yn, i32 noundef -1) #20
  unreachable

bb.fj:                                            ; preds = %bb.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ym, ptr nonnull align 8 %i.yg, i64 %i.yl, i1 false)
  store i32 1, ptr %i.ym, align 8, !tbaa !51
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  store i32 470, ptr %i.yo, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit765

zend_file_cache_unserialize_interned.exit765:     ; preds = %bb.ff, %bb.fg, %bb.fj
  %.015.i763 = phi ptr [ %i.yg, %bb.ff ], [ %i.ym, %bb.fj ], [ %i.yh, %bb.fg ]
  store ptr %.015.i763, ptr %i.xy, align 8, !tbaa !158
  br label %bb.fo

bb.fk:                                            ; preds = %bb.fe
  %i.yp = load i64, ptr %i.we, align 8, !tbaa !50
  %i.yq = inttoptr i64 %i.yp to ptr
  %i.yr = icmp ule ptr %i.xz, %i.yq
  tail call void @llvm.assume(i1 %i.yr)
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 %i.ya ; 2 uses
  store ptr %i.ys, ptr %i.xy, align 8, !tbaa !158
  %i.yt = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.yu = trunc nuw i8 %i.yt to i1
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 4 ; 3 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !48 ; 2 uses
  br i1 %i.yu, label %bb.fm, label %bb.fl, !prof !90

bb.fl:                                            ; preds = %bb.fk
  %i.yx = or i32 %i.yw, 320
  store i32 %i.yx, ptr %i.yv, align 4, !tbaa !48
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %i.yy = or i32 %i.yw, 64
  store i32 %i.yy, ptr %i.yv, align 4, !tbaa !48
  %i.yz = load ptr, ptr %i.xy, align 8, !tbaa !158
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !48
  %i.zc = and i32 %i.zb, -257
  store i32 %i.zc, ptr %i.za, align 4, !tbaa !48
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm
  %i.zd = load ptr, ptr %i.xy, align 8, !tbaa !158
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 4 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !48
  %i.zg = and i32 %i.zf, -33
  store i32 %i.zg, ptr %i.ze, align 4, !tbaa !48
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %zend_file_cache_unserialize_interned.exit765, %bb.fd
  %i.zh = getelementptr inbounds nuw i8, ptr %i.wr, i64 16 ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !159
  %.not799 = icmp eq i32 %i.zi, 0
  br i1 %.not799, label %._crit_edge790, label %.lr.ph789

.lr.ph789:                                        ; preds = %bb.fo
  %i.zj = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  br label %bb.fp

bb.fp:                                            ; preds = %.lr.ph789, %bb.ga
  %indvars.iv807 = phi i64 [ 0, %.lr.ph789 ], [ %indvars.iv.next808, %bb.ga ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv807 ; 5 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !160 ; 3 uses
  %.not713 = icmp eq ptr %i.zl, null
  br i1 %.not713, label %bb.ga, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zm = ptrtoint ptr %i.zl to i64               ; 3 uses
  %i.zn = and i64 %i.zm, 1
  %.not714 = icmp eq i64 %i.zn, 0
  br i1 %.not714, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zo = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.zp = trunc nuw i8 %i.zo to i1
  %i.zq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.zr = and i64 %i.zm, -2
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zr ; 5 uses
  br i1 %i.zp, label %zend_file_cache_unserialize_interned.exit768, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.zt = tail call ptr @accel_new_interned_string(ptr noundef %i.zs) #15 ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.zs
  br i1 %i.zu, label %bb.ft, label %zend_file_cache_unserialize_interned.exit768

bb.ft:                                            ; preds = %bb.fs
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !47
  %i.zx = add i64 %i.zw, 25                       ; 2 uses
  %i.zy = tail call ptr @zend_shared_alloc(i64 noundef %i.zx) #15 ; 5 uses
  %.not.i767 = icmp eq ptr %i.zy, null
  br i1 %.not.i767, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.zz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.zz, i32 noundef -1) #20
  unreachable

bb.fv:                                            ; preds = %bb.ft
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zy, ptr nonnull align 8 %i.zs, i64 %i.zx, i1 false)
  store i32 1, ptr %i.zy, align 8, !tbaa !51
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  store i32 470, ptr %i.aaa, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit768

zend_file_cache_unserialize_interned.exit768:     ; preds = %bb.fr, %bb.fs, %bb.fv
  %.015.i766 = phi ptr [ %i.zs, %bb.fr ], [ %i.zy, %bb.fv ], [ %i.zt, %bb.fs ]
  store ptr %.015.i766, ptr %i.zk, align 8, !tbaa !160
  br label %bb.ga

bb.fw:                                            ; preds = %bb.fq
  %i.aab = load i64, ptr %i.we, align 8, !tbaa !50
  %i.aac = inttoptr i64 %i.aab to ptr
  %i.aad = icmp ule ptr %i.zl, %i.aac
  tail call void @llvm.assume(i1 %i.aad)
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 %i.zm ; 2 uses
  store ptr %i.aae, ptr %i.zk, align 8, !tbaa !160
  %i.aaf = load i8, ptr %i.wl, align 8, !tbaa !54, !range !17, !noundef !18
  %i.aag = trunc nuw i8 %i.aaf to i1
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 4 ; 3 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !48 ; 2 uses
  br i1 %i.aag, label %bb.fy, label %bb.fx, !prof !90

bb.fx:                                            ; preds = %bb.fw
  %i.aaj = or i32 %i.aai, 320
  store i32 %i.aaj, ptr %i.aah, align 4, !tbaa !48
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.aak = or i32 %i.aai, 64
  store i32 %i.aak, ptr %i.aah, align 4, !tbaa !48
  %i.aal = load ptr, ptr %i.zk, align 8, !tbaa !160
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 4 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !48
  %i.aao = and i32 %i.aan, -257
  store i32 %i.aao, ptr %i.aam, align 4, !tbaa !48
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %i.aap = load ptr, ptr %i.zk, align 8, !tbaa !160
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 4 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !48
  %i.aas = and i32 %i.aar, -33
  store i32 %i.aas, ptr %i.aaq, align 4, !tbaa !48
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fp, %bb.fz, %zend_file_cache_unserialize_interned.exit768
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %i.aat = load i32, ptr %i.zh, align 8, !tbaa !159
  %i.aau = zext i32 %i.aat to i64
  %i.aav = icmp samesign ult i64 %indvars.iv.next808, %i.aau
  br i1 %i.aav, label %bb.fp, label %._crit_edge790, !llvm.loop !349

._crit_edge790:                                   ; preds = %bb.ga, %bb.fo
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0592792, i64 8 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !155 ; 2 uses
  %.not680 = icmp eq ptr %i.aax, null
  br i1 %.not680, label %.loopexit, label %bb.es, !llvm.loop !350

.loopexit:                                        ; preds = %._crit_edge790, %bb.er, %.loopexit769, %.loopexit770
  %i.aay = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !161 ; 3 uses
  %.not681 = icmp eq ptr %i.aaz, null
  br i1 %.not681, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.loopexit
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !50
  %i.abc = inttoptr i64 %i.abb to ptr
  %i.abd = icmp ule ptr %i.aaz, %i.abc
  tail call void @llvm.assume(i1 %i.abd)
  %i.abe = ptrtoint ptr %i.aaz to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 %i.abe
  store ptr %i.abf, ptr %i.aay, align 8, !tbaa !161
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit, %bb.gb
  %i.abg = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !162 ; 3 uses
  %.not682 = icmp eq ptr %i.abh, null
  br i1 %.not682, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !50
  %i.abk = inttoptr i64 %i.abj to ptr
  %i.abl = icmp ule ptr %i.abh, %i.abk
  tail call void @llvm.assume(i1 %i.abl)
  %i.abm = ptrtoint ptr %i.abh to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %2, i64 %i.abm
  store ptr %i.abn, ptr %i.abg, align 8, !tbaa !162
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  %i.abo = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !163 ; 3 uses
  %.not683 = icmp eq ptr %i.abp, null
  br i1 %.not683, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.abr = load i64, ptr %i.abq, align 8, !tbaa !50
  %i.abs = inttoptr i64 %i.abr to ptr
  %i.abt = icmp ule ptr %i.abp, %i.abs
  tail call void @llvm.assume(i1 %i.abt)
  %i.abu = ptrtoint ptr %i.abp to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 %i.abu
  store ptr %i.abv, ptr %i.abo, align 8, !tbaa !163
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %bb.gf
  %i.abw = getelementptr inbounds nuw i8, ptr %i.g, i64 280 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !164 ; 3 uses
  %.not684 = icmp eq ptr %i.abx, null
  br i1 %.not684, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !50
  %i.aca = inttoptr i64 %i.abz to ptr
  %i.acb = icmp ule ptr %i.abx, %i.aca
  tail call void @llvm.assume(i1 %i.acb)
  %i.acc = ptrtoint ptr %i.abx to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %2, i64 %i.acc
  store ptr %i.acd, ptr %i.abw, align 8, !tbaa !164
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gg, %bb.gh
  %i.ace = getelementptr inbounds nuw i8, ptr %i.g, i64 288 ; 2 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !165 ; 3 uses
  %.not685 = icmp eq ptr %i.acf, null
  br i1 %.not685, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !50
  %i.aci = inttoptr i64 %i.ach to ptr
  %i.acj = icmp ule ptr %i.acf, %i.aci
  tail call void @llvm.assume(i1 %i.acj)
  %i.ack = ptrtoint ptr %i.acf to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ack
  store ptr %i.acl, ptr %i.ace, align 8, !tbaa !165
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %i.acm = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !166 ; 3 uses
  %.not686 = icmp eq ptr %i.acn, null
  br i1 %.not686, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !50
  %i.acq = inttoptr i64 %i.acp to ptr
  %i.acr = icmp ule ptr %i.acn, %i.acq
  tail call void @llvm.assume(i1 %i.acr)
  %i.acs = ptrtoint ptr %i.acn to i64
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 %i.acs
  store ptr %i.act, ptr %i.acm, align 8, !tbaa !166
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gk, %bb.gl
  %i.acu = getelementptr inbounds nuw i8, ptr %i.g, i64 344 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !167 ; 3 uses
  %.not687 = icmp eq ptr %i.acv, null
  br i1 %.not687, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !50
  %i.acy = inttoptr i64 %i.acx to ptr
  %i.acz = icmp ule ptr %i.acv, %i.acy
  tail call void @llvm.assume(i1 %i.acz)
  %i.ada = ptrtoint ptr %i.acv to i64
  %i.adb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ada
  store ptr %i.adb, ptr %i.acu, align 8, !tbaa !167
  br label %bb.go

bb.go:                                            ; preds = %bb.gm, %bb.gn
  %i.adc = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !168 ; 3 uses
  %.not688 = icmp eq ptr %i.add, null
  br i1 %.not688, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !50
  %i.adg = inttoptr i64 %i.adf to ptr
  %i.adh = icmp ule ptr %i.add, %i.adg
  tail call void @llvm.assume(i1 %i.adh)
  %i.adi = ptrtoint ptr %i.add to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %2, i64 %i.adi
  store ptr %i.adj, ptr %i.adc, align 8, !tbaa !168
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %i.adk = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !169 ; 3 uses
  %.not689 = icmp eq ptr %i.adl, null
  br i1 %.not689, label %bb.gs, label %bb.gr

end_hunk_1
begin_hunk_2_@zend_file_cache_unserialize_op_array:bb.a
bb.c:                                             ; preds = %bb.b
  %i.g = or i32 %i.f, 128
  store i32 %i.g, ptr %i.e, align 4, !tbaa !213
  %i.h = tail call ptr @zend_map_ptr_new() #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %i.f, 128
  %.not470 = icmp eq i32 %i.i, 0
  tail call void @llvm.assume(i1 %.not470)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ null, %bb.d ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink, ptr %i.j, align 8, !tbaa !191
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !195
  %.not471 = icmp eq ptr %i.l, null
  br i1 %.not471, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @zend_map_ptr_new() #15
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !213
  %i.p = and i32 %i.o, -129
  store i32 %i.p, ptr %i.n, align 4, !tbaa !213
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.q, align 8, !tbaa !190
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink655 = phi i64 [ 112, %bb.f ], [ 56, %bb.g ]
  %.sink653 = phi ptr [ %i.m, %bb.f ], [ null, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sink655
  store ptr %.sink653, ptr %i.r, align 8, !tbaa !358
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192  ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %.not472 = icmp ult ptr %i.t, %i.v
  br i1 %.not472, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.x = load i64, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %.not473 = icmp ugt ptr %i.t, %i.y
  br i1 %.not473, label %bb.j, label %bb.ft

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  %.not474 = icmp ult ptr %i.t, %i.ab
  br i1 %.not474, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = icmp ult ptr %i.t, %i.ad
  br i1 %i.ae, label %bb.ft, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !194
  %.not475 = icmp eq ptr %i.ag, null
  br i1 %.not475, label %bb.bt, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.af, align 8, !tbaa !194
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195 ; 3 uses
  %.not518 = icmp eq ptr %i.ai, null
  br i1 %.not518, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = icmp ule ptr %i.ai, %i.al
  tail call void @llvm.assume(i1 %i.am)
  %i.an = ptrtoint ptr %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !195
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !196 ; 3 uses
  %.not519 = icmp eq ptr %i.aq, null
  br i1 %.not519, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp ule ptr %i.aq, %i.at
  tail call void @llvm.assume(i1 %i.au)
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !196
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not520 = icmp eq ptr %i.t, null
  br i1 %.not520, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = icmp ule ptr %i.t, %i.az
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = ptrtoint ptr %i.t to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  store ptr %i.bc, ptr %i.s, align 8, !tbaa !192
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !197 ; 3 uses
  %.not521 = icmp eq ptr %i.be, null
  br i1 %.not521, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !50
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = icmp ule ptr %i.be, %i.bh
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !197
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !198 ; 3 uses
  %.not522 = icmp eq ptr %i.bm, null
  br i1 %.not522, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !50
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = icmp ule ptr %i.bm, %i.bp
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.br
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !198
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !199 ; 3 uses
  %.not523 = icmp eq ptr %i.bu, null
  br i1 %.not523, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bw = and i64 %i.bv, 1
  %.not524 = icmp eq i64 %i.bw, 0
  br i1 %.not524, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ca = and i64 %i.bv, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 5 uses
  br i1 %i.by, label %zend_file_cache_unserialize_interned.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = tail call ptr @accel_new_interned_string(ptr noundef %i.cb) #15 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.cb
  br i1 %i.cd, label %bb.aa, label %zend_file_cache_unserialize_interned.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.cg = add i64 %i.cf, 25                       ; 2 uses
  %i.ch = tail call ptr @zend_shared_alloc(i64 noundef %i.cg) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ci, i32 noundef -1) #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.cb, i64 %i.cg, i1 false)
  store i32 1, ptr %i.ch, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 470, ptr %i.cj, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.y, %bb.z, %bb.ac
  %.015.i = phi ptr [ %i.cb, %bb.y ], [ %i.ch, %bb.ac ], [ %i.cc, %bb.z ]
  store ptr %.015.i, ptr %i.bt, align 8, !tbaa !199
  br label %bb.ah

bb.ad:                                            ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = icmp ule ptr %i.bu, %i.cm
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv ; 2 uses
  store ptr %i.co, ptr %i.bt, align 8, !tbaa !199
  %i.cp = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48 ; 2 uses
  br i1 %i.cq, label %bb.af, label %bb.ae, !prof !90

bb.ae:                                            ; preds = %bb.ad
  %i.ct = or i32 %i.cs, 320
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !48
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cu = or i32 %i.cs, 64
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !48
  %i.cv = load ptr, ptr %i.bt, align 8, !tbaa !199
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !48
  %i.cy = and i32 %i.cx, -257
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !48
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !199
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !48
  %i.dc = and i32 %i.db, -33
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %zend_file_cache_unserialize_interned.exit, %bb.ag, %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !200 ; 3 uses
  %.not525 = icmp eq ptr %i.de, null
  br i1 %.not525, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dg = and i64 %i.df, 1
  %.not526 = icmp eq i64 %i.dg, 0
  br i1 %.not526, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.dk = and i64 %i.df, -2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk ; 5 uses
  br i1 %i.di, label %zend_file_cache_unserialize_interned.exit541, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = tail call ptr @accel_new_interned_string(ptr noundef %i.dl) #15 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dl
  br i1 %i.dn, label %bb.al, label %zend_file_cache_unserialize_interned.exit541

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !47
  %i.dq = add i64 %i.dp, 25                       ; 2 uses
  %i.dr = tail call ptr @zend_shared_alloc(i64 noundef %i.dq) #15 ; 5 uses
  %.not.i540 = icmp eq ptr %i.dr, null
  br i1 %.not.i540, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ds, i32 noundef -1) #20
  unreachable

bb.an:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.dl, i64 %i.dq, i1 false)
  store i32 1, ptr %i.dr, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 470, ptr %i.dt, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit541

zend_file_cache_unserialize_interned.exit541:     ; preds = %bb.aj, %bb.ak, %bb.an
  %.015.i539 = phi ptr [ %i.dl, %bb.aj ], [ %i.dr, %bb.an ], [ %i.dm, %bb.ak ]
  store ptr %.015.i539, ptr %i.dd, align 8, !tbaa !200
  br label %bb.as

bb.ao:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !50
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = icmp ule ptr %i.de, %i.dw
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.df ; 2 uses
  store ptr %i.dy, ptr %i.dd, align 8, !tbaa !200
  %i.dz = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ea, label %bb.aq, label %bb.ap, !prof !90

bb.ap:                                            ; preds = %bb.ao
  %i.ed = or i32 %i.ec, 320
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !48
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ee = or i32 %i.ec, 64
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !48
  %i.ef = load ptr, ptr %i.dd, align 8, !tbaa !200
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !48
  %i.ei = and i32 %i.eh, -257
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !48
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ej = load ptr, ptr %i.dd, align 8, !tbaa !200
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !48
  %i.em = and i32 %i.el, -33
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !48
  br label %bb.as

bb.as:                                            ; preds = %zend_file_cache_unserialize_interned.exit541, %bb.ar, %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !201 ; 3 uses
  %.not527 = icmp eq ptr %i.eo, null
  br i1 %.not527, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !50
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = icmp ule ptr %i.eo, %i.er
  tail call void @llvm.assume(i1 %i.es)
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  store ptr %i.eu, ptr %i.en, align 8, !tbaa !201
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !193 ; 3 uses
  %.not528 = icmp eq ptr %i.ew, null
  br i1 %.not528, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !50
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = icmp ule ptr %i.ew, %i.ez
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fb
  store ptr %i.fc, ptr %i.ev, align 8, !tbaa !193
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !202 ; 3 uses
  %.not529 = icmp eq ptr %i.fe, null
  br i1 %.not529, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ff = ptrtoint ptr %i.fe to i64               ; 3 uses
  %i.fg = and i64 %i.ff, 1
  %.not530 = icmp eq i64 %i.fg, 0
  br i1 %.not530, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.fk = and i64 %i.ff, -2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk ; 5 uses
  br i1 %i.fi, label %zend_file_cache_unserialize_interned.exit544, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = tail call ptr @accel_new_interned_string(ptr noundef %i.fl) #15 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fl
  br i1 %i.fn, label %bb.ba, label %zend_file_cache_unserialize_interned.exit544

bb.ba:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !47
  %i.fq = add i64 %i.fp, 25                       ; 2 uses
  %i.fr = tail call ptr @zend_shared_alloc(i64 noundef %i.fq) #15 ; 5 uses
  %.not.i543 = icmp eq ptr %i.fr, null
  br i1 %.not.i543, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.fs, i32 noundef -1) #20
  unreachable

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fl, i64 %i.fq, i1 false)
  store i32 1, ptr %i.fr, align 8, !tbaa !51
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 470, ptr %i.ft, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit544

zend_file_cache_unserialize_interned.exit544:     ; preds = %bb.ay, %bb.az, %bb.bc
  %.015.i542 = phi ptr [ %i.fl, %bb.ay ], [ %i.fr, %bb.bc ], [ %i.fm, %bb.az ]
  store ptr %.015.i542, ptr %i.fd, align 8, !tbaa !202
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !50
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = icmp ule ptr %i.fe, %i.fw
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff ; 2 uses
  store ptr %i.fy, ptr %i.fd, align 8, !tbaa !202
  %i.fz = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ga, label %bb.bf, label %bb.be, !prof !90

bb.be:                                            ; preds = %bb.bd
  %i.gd = or i32 %i.gc, 320
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !48
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ge = or i32 %i.gc, 64
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !48
  %i.gf = load ptr, ptr %i.fd, align 8, !tbaa !202
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !48
  %i.gi = and i32 %i.gh, -257
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.gj = load ptr, ptr %i.fd, align 8, !tbaa !202
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !48
  %i.gm = and i32 %i.gl, -33
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !48
  br label %bb.bh

bb.bh:                                            ; preds = %zend_file_cache_unserialize_interned.exit544, %bb.bg, %bb.aw
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !203 ; 7 uses
  %.not531 = icmp eq ptr %i.go, null
  br i1 %.not531, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not532 = icmp ult ptr %i.go, %i.gp
  br i1 %.not532, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gr
  %.not533 = icmp ugt ptr %i.go, %i.gs
  br i1 %.not533, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gt = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 184
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !71
  %.not534 = icmp ult ptr %i.go, %i.gv
  br i1 %.not534, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 192
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72
  %i.gy = icmp ult ptr %i.go, %i.gx
  br i1 %i.gy, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !50
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = icmp ule ptr %i.go, %i.hb
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = ptrtoint ptr %i.go to i64
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %i.hd ; 2 uses
  store ptr %i.he, ptr %i.gn, align 8, !tbaa !203
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.he, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bh
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !204 ; 3 uses
  %.not536 = icmp eq ptr %i.hg, null
  br i1 %.not536, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !50
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = icmp ule ptr %i.hg, %i.hj
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %i.hl
  store ptr %i.hm, ptr %i.hf, align 8, !tbaa !204
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !205 ; 3 uses
  %.not537 = icmp eq ptr %i.ho, null
  br i1 %.not537, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !50
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = icmp ule ptr %i.ho, %i.hr
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = ptrtoint ptr %i.ho to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ht
  store ptr %i.hu, ptr %i.hn, align 8, !tbaa !205
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !206 ; 3 uses
  %.not538 = icmp eq ptr %i.hw, null
  br i1 %.not538, label %bb.ft, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !50
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = icmp ule ptr %i.hw, %i.hz
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %i.ib
  store ptr %i.ic, ptr %i.hv, align 8, !tbaa !206
  br label %bb.ft

bb.bt:                                            ; preds = %bb.l
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !195 ; 3 uses
  %.not476 = icmp eq ptr %i.ie, null
  br i1 %.not476, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !50
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = icmp ule ptr %i.ie, %i.ih
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = ptrtoint ptr %i.ie to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %i.id, align 8, !tbaa !195
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.ik, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_zval, ptr noundef nonnull @zval_ptr_dtor)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !196 ; 3 uses
  %.not477 = icmp eq ptr %i.im, null
  br i1 %.not477, label %.loopexit563, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.io = load i64, ptr %i.in, align 8, !tbaa !50
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = icmp ule ptr %i.im, %i.ip
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %i.ir ; 3 uses
  store ptr %i.is, ptr %i.il, align 8, !tbaa !196
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !207 ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %.idx = shl nuw nsw i64 %i.iv, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx
  %i.ix = icmp sgt i32 %i.iu, 0
  br i1 %i.ix, label %.lr.ph, label %.loopexit563

.lr.ph:                                           ; preds = %bb.bw, %.lr.ph
  %.0416564 = phi ptr [ %i.iy, %.lr.ph ], [ %i.is, %bb.bw ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0416564, ptr noundef nonnull %1, ptr noundef %2)
  %i.iy = getelementptr inbounds nuw i8, ptr %.0416564, i64 16 ; 2 uses
  %i.iz = icmp ult ptr %i.iy, %i.iw
  br i1 %i.iz, label %.lr.ph, label %.loopexit563, !llvm.loop !353

.loopexit563:                                     ; preds = %.lr.ph, %bb.bw, %bb.bv
  %i.ja = load ptr, ptr %i.s, align 8, !tbaa !192 ; 3 uses
  %.not478 = icmp eq ptr %i.ja, null
  br i1 %.not478, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.loopexit563
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !50
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = icmp ule ptr %i.ja, %i.jd
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = ptrtoint ptr %i.ja to i64
end_hunk_2
begin_hunk_3_@zend_file_cache_unserialize_op_array:bb.a
  %i.jz = getelementptr inbounds nuw i8, ptr %.0415565, i64 30
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !211
  %i.kb = icmp eq i8 %i.ka, 1
  br i1 %i.kb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kc = load ptr, ptr %i.il, align 8, !tbaa !196
  %i.kd = getelementptr inbounds nuw i8, ptr %.0415565, i64 12 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !48
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.kf
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %.0415565 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = trunc i64 %i.kj to i32
  store i32 %i.kk, ptr %i.kd, align 4, !tbaa !48
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kl = getelementptr inbounds nuw i8, ptr %.0415565, i64 28
  %i.km = load i8, ptr %i.kl, align 4, !tbaa !209
  %i.kn = icmp eq i8 %i.km, -119
  br i1 %i.kn, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %i.ko = getelementptr inbounds i8, ptr %.0415565, i64 -4
  %i.kp = load i8, ptr %i.ko, align 4, !tbaa !209
  %i.kq = icmp eq i8 %i.kp, -46
  br i1 %i.kq, label %bb.cf, label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  %i.kr = getelementptr inbounds nuw i8, ptr %.0415565, i64 8
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !48
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %.0415565, i64 %i.kt ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !48 ; 7 uses
  %.not513 = icmp eq ptr %i.kv, null
  br i1 %.not513, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kw = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not514 = icmp ult ptr %i.kv, %i.kw
  br i1 %.not514, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kx = load i64, ptr %i.jm, align 8, !tbaa !50
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kx
  %.not515 = icmp ugt ptr %i.kv, %i.ky
  br i1 %.not515, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kz = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 184
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !71
  %.not516 = icmp ult ptr %i.kv, %i.lb
  br i1 %.not516, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 192
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !72
  %i.le = icmp ult ptr %i.kv, %i.ld
  br i1 %i.le, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lf = load i64, ptr %i.jm, align 8, !tbaa !50
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = icmp ule ptr %i.kv, %i.lg
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = ptrtoint ptr %i.kv to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 %i.li ; 2 uses
  store ptr %i.lj, ptr %i.ku, align 8, !tbaa !48
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.lj, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cf, %bb.ch, %bb.cj, %bb.ck, %bb.ce, %bb.cd
  tail call void @zend_deserialize_opcode_handler(ptr noundef nonnull %.0415565) #15
  %i.lk = getelementptr inbounds nuw i8, ptr %.0415565, i64 32 ; 2 uses
  %i.ll = icmp ult ptr %i.lk, %i.jl
  br i1 %i.ll, label %bb.bz, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.cl, %bb.by
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !193 ; 3 uses
  %.not479 = icmp eq ptr %i.ln, null
  br i1 %.not479, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !50
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = icmp ule ptr %i.ln, %i.lq
  tail call void @llvm.assume(i1 %i.lr)
  %i.ls = ptrtoint ptr %i.ln to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ls
  store ptr %i.lt, ptr %i.lm, align 8, !tbaa !193
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !197 ; 3 uses
  %.not480 = icmp eq ptr %i.lv, null
  br i1 %.not480, label %.loopexit562, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !50
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = icmp ule ptr %i.lv, %i.ly
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = ptrtoint ptr %i.lv to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ma ; 3 uses
  store ptr %i.mb, ptr %i.lu, align 8, !tbaa !197
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !212
  %i.me = zext i32 %i.md to i64
  %.idx578 = shl nuw nsw i64 %i.me, 5
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !213 ; 2 uses
  %i.mh = and i32 %i.mg, 8192
  %.not481 = icmp eq i32 %i.mh, 0
  %.0414.idx = select i1 %.not481, i64 0, i64 -32 ; 2 uses
  %i.mi = lshr i32 %i.mg, 9
  %i.mj = and i32 %i.mi, 32
  %.0413.idx = zext nneg i32 %i.mj to i64
  %i.mk = add nuw nsw i64 %.idx578, %.0413.idx    ; 2 uses
  %.0413 = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mk
  %i.ml = icmp slt i64 %.0414.idx, %i.mk
  br i1 %i.ml, label %.lr.ph569.preheader, label %.loopexit562

.lr.ph569.preheader:                              ; preds = %bb.co
  %.0414 = getelementptr inbounds i8, ptr %i.mb, i64 %.0414.idx
  br label %.lr.ph569

.lr.ph569:                                        ; preds = %.lr.ph569.preheader, %bb.dd
  %.1567 = phi ptr [ %i.oe, %bb.dd ], [ %.0414, %.lr.ph569.preheader ] ; 7 uses
  %i.mm = load ptr, ptr %.1567, align 8, !tbaa !216 ; 8 uses
  %i.mn = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not507 = icmp ult ptr %i.mm, %i.mn
  br i1 %.not507, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph569
  %i.mo = load i64, ptr %i.lw, align 8, !tbaa !50
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  %.not508 = icmp ugt ptr %i.mm, %i.mp
  br i1 %.not508, label %bb.cq, label %bb.dd

bb.cq:                                            ; preds = %bb.cp, %.lr.ph569
  %i.mq = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 184
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !71
  %.not509 = icmp ult ptr %i.mm, %i.ms
  br i1 %.not509, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 192
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !72
  %i.mv = icmp ult ptr %i.mm, %i.mu
  %.not510 = icmp eq ptr %i.mm, null
  %or.cond = or i1 %.not510, %i.mv
  br i1 %or.cond, label %bb.dd, label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %.not510.old = icmp eq ptr %i.mm, null
  br i1 %.not510.old, label %bb.dd, label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.mw = ptrtoint ptr %i.mm to i64               ; 3 uses
  %i.mx = and i64 %i.mw, 1
  %.not511 = icmp eq i64 %i.mx, 0
  br i1 %.not511, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.my = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.nb = and i64 %i.mw, -2
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb ; 5 uses
  br i1 %i.mz, label %zend_file_cache_unserialize_interned.exit547, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nd = tail call ptr @accel_new_interned_string(ptr noundef %i.nc) #15 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.nc
  br i1 %i.ne, label %bb.cw, label %zend_file_cache_unserialize_interned.exit547

bb.cw:                                            ; preds = %bb.cv
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !47
  %i.nh = add i64 %i.ng, 25                       ; 2 uses
  %i.ni = tail call ptr @zend_shared_alloc(i64 noundef %i.nh) #15 ; 5 uses
  %.not.i546 = icmp eq ptr %i.ni, null
  br i1 %.not.i546, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.nj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.nj, i32 noundef -1) #20
  unreachable

bb.cy:                                            ; preds = %bb.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ni, ptr nonnull align 8 %i.nc, i64 %i.nh, i1 false)
  store i32 1, ptr %i.ni, align 8, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store i32 470, ptr %i.nk, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit547

zend_file_cache_unserialize_interned.exit547:     ; preds = %bb.cu, %bb.cv, %bb.cy
  %.015.i545 = phi ptr [ %i.nc, %bb.cu ], [ %i.ni, %bb.cy ], [ %i.nd, %bb.cv ]
  store ptr %.015.i545, ptr %.1567, align 8, !tbaa !216
  br label %bb.dd

bb.cz:                                            ; preds = %bb.ct
  %i.nl = load i64, ptr %i.lw, align 8, !tbaa !50
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = icmp ule ptr %i.mm, %i.nm
  tail call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.mw ; 2 uses
  store ptr %i.no, ptr %.1567, align 8, !tbaa !216
  %i.np = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.nq = trunc nuw i8 %i.np to i1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 3 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !48 ; 2 uses
  br i1 %i.nq, label %bb.db, label %bb.da, !prof !90

bb.da:                                            ; preds = %bb.cz
  %i.nt = or i32 %i.ns, 320
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !48
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.nu = or i32 %i.ns, 64
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !48
  %i.nv = load ptr, ptr %.1567, align 8, !tbaa !216
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !48
  %i.ny = and i32 %i.nx, -257
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !48
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.nz = load ptr, ptr %.1567, align 8, !tbaa !216
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !48
  %i.oc = and i32 %i.ob, -33
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !48
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cs, %bb.dc, %zend_file_cache_unserialize_interned.exit547, %bb.cr, %bb.cp
  %i.od = getelementptr inbounds nuw i8, ptr %.1567, i64 8
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %i.od, ptr noundef nonnull %1, ptr noundef %2)
  %i.oe = getelementptr inbounds nuw i8, ptr %.1567, i64 32 ; 2 uses
  %i.of = icmp ult ptr %i.oe, %.0413
  br i1 %i.of, label %.lr.ph569, label %.loopexit562, !llvm.loop !355

.loopexit562:                                     ; preds = %bb.dd, %bb.co, %bb.cn
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !198 ; 3 uses
  %.not483 = icmp eq ptr %i.oh, null
  br i1 %.not483, label %.loopexit561, label %bb.de

bb.de:                                            ; preds = %.loopexit562
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !50
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = icmp ule ptr %i.oh, %i.ok
  tail call void @llvm.assume(i1 %i.ol)
  %i.om = ptrtoint ptr %i.oh to i64
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.om ; 3 uses
  store ptr %i.on, ptr %i.og, align 8, !tbaa !198
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !217 ; 2 uses
  %i.oq = sext i32 %i.op to i64
  %.idx579 = shl nsw i64 %i.oq, 3
  %i.or = getelementptr inbounds i8, ptr %i.on, i64 %.idx579
  %i.os = icmp sgt i32 %i.op, 0
  br i1 %i.os, label %.lr.ph572, label %.loopexit561

.lr.ph572:                                        ; preds = %bb.de, %bb.dt
  %.0412570 = phi ptr [ %i.qk, %bb.dt ], [ %i.on, %bb.de ] ; 6 uses
  %i.ot = load ptr, ptr %.0412570, align 8, !tbaa !160 ; 8 uses
  %i.ou = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not502 = icmp ult ptr %i.ot, %i.ou
  br i1 %.not502, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph572
  %i.ov = load i64, ptr %i.oi, align 8, !tbaa !50
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ov
  %.not503 = icmp ugt ptr %i.ot, %i.ow
  br i1 %.not503, label %bb.dg, label %bb.dt

bb.dg:                                            ; preds = %bb.df, %.lr.ph572
  %i.ox = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 184
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !71
  %.not504 = icmp ult ptr %i.ot, %i.oz
  br i1 %.not504, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 192
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !72
  %i.pc = icmp ult ptr %i.ot, %i.pb
  %.not505 = icmp eq ptr %i.ot, null
  %or.cond560 = or i1 %.not505, %i.pc
  br i1 %or.cond560, label %bb.dt, label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %.not505.old = icmp eq ptr %i.ot, null
  br i1 %.not505.old, label %bb.dt, label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.pd = ptrtoint ptr %i.ot to i64               ; 3 uses
  %i.pe = and i64 %i.pd, 1
  %.not506 = icmp eq i64 %i.pe, 0
  br i1 %.not506, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pf = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.pg = trunc nuw i8 %i.pf to i1
  %i.ph = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.pi = and i64 %i.pd, -2
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pi ; 5 uses
  br i1 %i.pg, label %zend_file_cache_unserialize_interned.exit550, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pk = tail call ptr @accel_new_interned_string(ptr noundef %i.pj) #15 ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.pj
  br i1 %i.pl, label %bb.dm, label %zend_file_cache_unserialize_interned.exit550

bb.dm:                                            ; preds = %bb.dl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !47
  %i.po = add i64 %i.pn, 25                       ; 2 uses
  %i.pp = tail call ptr @zend_shared_alloc(i64 noundef %i.po) #15 ; 5 uses
  %.not.i549 = icmp eq ptr %i.pp, null
  br i1 %.not.i549, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.pq, i32 noundef -1) #20
  unreachable

bb.do:                                            ; preds = %bb.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.pp, ptr nonnull align 8 %i.pj, i64 %i.po, i1 false)
  store i32 1, ptr %i.pp, align 8, !tbaa !51
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store i32 470, ptr %i.pr, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit550

zend_file_cache_unserialize_interned.exit550:     ; preds = %bb.dk, %bb.dl, %bb.do
  %.015.i548 = phi ptr [ %i.pj, %bb.dk ], [ %i.pp, %bb.do ], [ %i.pk, %bb.dl ]
  store ptr %.015.i548, ptr %.0412570, align 8, !tbaa !160
  br label %bb.dt

bb.dp:                                            ; preds = %bb.dj
  %i.ps = load i64, ptr %i.oi, align 8, !tbaa !50
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = icmp ule ptr %i.ot, %i.pt
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd ; 2 uses
  store ptr %i.pv, ptr %.0412570, align 8, !tbaa !160
  %i.pw = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 4 ; 3 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !48 ; 2 uses
  br i1 %i.px, label %bb.dr, label %bb.dq, !prof !90

bb.dq:                                            ; preds = %bb.dp
  %i.qa = or i32 %i.pz, 320
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !48
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.qb = or i32 %i.pz, 64
  store i32 %i.qb, ptr %i.py, align 4, !tbaa !48
  %i.qc = load ptr, ptr %.0412570, align 8, !tbaa !160
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !48
  %i.qf = and i32 %i.qe, -257
  store i32 %i.qf, ptr %i.qd, align 4, !tbaa !48
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.qg = load ptr, ptr %.0412570, align 8, !tbaa !160
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !48
  %i.qj = and i32 %i.qi, -33
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !48
  br label %bb.dt

bb.dt:                                            ; preds = %bb.di, %bb.ds, %zend_file_cache_unserialize_interned.exit550, %bb.dh, %bb.df
  %i.qk = getelementptr inbounds nuw i8, ptr %.0412570, i64 8 ; 2 uses
  %i.ql = icmp ult ptr %i.qk, %i.or
  br i1 %i.ql, label %.lr.ph572, label %.loopexit561, !llvm.loop !356

.loopexit561:                                     ; preds = %bb.dt, %bb.de, %.loopexit562
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !218
  %.not484 = icmp eq i32 %i.qn, 0
  br i1 %.not484, label %.loopexit, label %bb.du

bb.du:                                            ; preds = %.loopexit561
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !219 ; 3 uses
  %.not485 = icmp eq ptr %i.qp, null
  br i1 %.not485, label %.lr.ph575, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !50
  %i.qs = inttoptr i64 %i.qr to ptr
  %i.qt = icmp ule ptr %i.qp, %i.qs
  tail call void @llvm.assume(i1 %i.qt)
  %i.qu = ptrtoint ptr %i.qp to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 %i.qu
  store ptr %i.qv, ptr %i.qo, align 8, !tbaa !219
  br label %.lr.ph575

.lr.ph575:                                        ; preds = %bb.du, %bb.dv
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph575, %bb.dy
  %indvars.iv = phi i64 [ 0, %.lr.ph575 ], [ %indvars.iv.next, %bb.dy ] ; 2 uses
  %i.qx = load ptr, ptr %i.qo, align 8, !tbaa !219
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !220 ; 3 uses
  %.not501 = icmp eq ptr %i.qz, null
  br i1 %.not501, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ra = load i64, ptr %i.qw, align 8, !tbaa !50
  %i.rb = inttoptr i64 %i.ra to ptr
  %i.rc = icmp ule ptr %i.qz, %i.rb
  tail call void @llvm.assume(i1 %i.rc)
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 %i.rd ; 2 uses
  store ptr %i.re, ptr %i.qy, align 8, !tbaa !220
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.rf = phi ptr [ %i.re, %bb.dx ], [ null, %bb.dw ]
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef %i.rf, ptr noundef %1, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rg = load i32, ptr %i.qm, align 4, !tbaa !218
  %i.rh = zext i32 %i.rg to i64
  %i.ri = icmp samesign ult i64 %indvars.iv.next, %i.rh
  br i1 %i.ri, label %bb.dw, label %.loopexit, !llvm.loop !357

.loopexit:                                        ; preds = %bb.dy, %.loopexit561
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !199 ; 3 uses
  %.not486 = icmp eq ptr %i.rk, null
  br i1 %.not486, label %bb.ej, label %bb.dz

bb.dz:                                            ; preds = %.loopexit
  %i.rl = ptrtoint ptr %i.rk to i64               ; 3 uses
  %i.rm = and i64 %i.rl, 1
  %.not487 = icmp eq i64 %i.rm, 0
  br i1 %.not487, label %bb.ef, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.rn = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ro = trunc nuw i8 %i.rn to i1
  %i.rp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.rq = and i64 %i.rl, -2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rq ; 5 uses
  br i1 %i.ro, label %zend_file_cache_unserialize_interned.exit553, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rs = tail call ptr @accel_new_interned_string(ptr noundef %i.rr) #15 ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.rr
  br i1 %i.rt, label %bb.ec, label %zend_file_cache_unserialize_interned.exit553

bb.ec:                                            ; preds = %bb.eb
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !47
  %i.rw = add i64 %i.rv, 25                       ; 2 uses
  %i.rx = tail call ptr @zend_shared_alloc(i64 noundef %i.rw) #15 ; 5 uses
  %.not.i552 = icmp eq ptr %i.rx, null
  br i1 %.not.i552, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ry, i32 noundef -1) #20
  unreachable

bb.ee:                                            ; preds = %bb.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rx, ptr nonnull align 8 %i.rr, i64 %i.rw, i1 false)
  store i32 1, ptr %i.rx, align 8, !tbaa !51
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store i32 470, ptr %i.rz, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit553

zend_file_cache_unserialize_interned.exit553:     ; preds = %bb.ea, %bb.eb, %bb.ee
  %.015.i551 = phi ptr [ %i.rr, %bb.ea ], [ %i.rx, %bb.ee ], [ %i.rs, %bb.eb ]
  store ptr %.015.i551, ptr %i.rj, align 8, !tbaa !199
  br label %bb.ej

bb.ef:                                            ; preds = %bb.dz
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !50
  %i.sc = inttoptr i64 %i.sb to ptr
  %i.sd = icmp ule ptr %i.rk, %i.sc
  tail call void @llvm.assume(i1 %i.sd)
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 %i.rl ; 2 uses
  store ptr %i.se, ptr %i.rj, align 8, !tbaa !199
  %i.sf = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.sg = trunc nuw i8 %i.sf to i1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 4 ; 3 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !48 ; 2 uses
  br i1 %i.sg, label %bb.eh, label %bb.eg, !prof !90

bb.eg:                                            ; preds = %bb.ef
  %i.sj = or i32 %i.si, 320
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !48
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.sk = or i32 %i.si, 64
  store i32 %i.sk, ptr %i.sh, align 4, !tbaa !48
  %i.sl = load ptr, ptr %i.rj, align 8, !tbaa !199
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !48
  %i.so = and i32 %i.sn, -257
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !48
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.sp = load ptr, ptr %i.rj, align 8, !tbaa !199
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !48
  %i.ss = and i32 %i.sr, -33
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !48
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit, %bb.ei, %zend_file_cache_unserialize_interned.exit553
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !200 ; 3 uses
  %.not488 = icmp eq ptr %i.su, null
  br i1 %.not488, label %bb.eu, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.sv = ptrtoint ptr %i.su to i64               ; 3 uses
  %i.sw = and i64 %i.sv, 1
  %.not489 = icmp eq i64 %i.sw, 0
  br i1 %.not489, label %bb.eq, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sx = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.sy = trunc nuw i8 %i.sx to i1
  %i.sz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ta = and i64 %i.sv, -2
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ta ; 5 uses
  br i1 %i.sy, label %zend_file_cache_unserialize_interned.exit556, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tc = tail call ptr @accel_new_interned_string(ptr noundef %i.tb) #15 ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.tb
  br i1 %i.td, label %bb.en, label %zend_file_cache_unserialize_interned.exit556

bb.en:                                            ; preds = %bb.em
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !47
  %i.tg = add i64 %i.tf, 25                       ; 2 uses
  %i.th = tail call ptr @zend_shared_alloc(i64 noundef %i.tg) #15 ; 5 uses
  %.not.i555 = icmp eq ptr %i.th, null
  br i1 %.not.i555, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ti = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ti, i32 noundef -1) #20
  unreachable

bb.ep:                                            ; preds = %bb.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.th, ptr nonnull align 8 %i.tb, i64 %i.tg, i1 false)
  store i32 1, ptr %i.th, align 8, !tbaa !51
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i32 470, ptr %i.tj, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit556

zend_file_cache_unserialize_interned.exit556:     ; preds = %bb.el, %bb.em, %bb.ep
  %.015.i554 = phi ptr [ %i.tb, %bb.el ], [ %i.th, %bb.ep ], [ %i.tc, %bb.em ]
  store ptr %.015.i554, ptr %i.st, align 8, !tbaa !200
  br label %bb.eu

bb.eq:                                            ; preds = %bb.ek
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !50
  %i.tm = inttoptr i64 %i.tl to ptr
  %i.tn = icmp ule ptr %i.su, %i.tm
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 %i.sv ; 2 uses
  store ptr %i.to, ptr %i.st, align 8, !tbaa !200
  %i.tp = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.tq = trunc nuw i8 %i.tp to i1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 4 ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !48 ; 2 uses
  br i1 %i.tq, label %bb.es, label %bb.er, !prof !90

bb.er:                                            ; preds = %bb.eq
  %i.tt = or i32 %i.ts, 320
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !48
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.tu = or i32 %i.ts, 64
  store i32 %i.tu, ptr %i.tr, align 4, !tbaa !48
  %i.tv = load ptr, ptr %i.st, align 8, !tbaa !200
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 4 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !48
  %i.ty = and i32 %i.tx, -257
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !48
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.tz = load ptr, ptr %i.st, align 8, !tbaa !200
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 4 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !48
  %i.uc = and i32 %i.ub, -33
  store i32 %i.uc, ptr %i.ua, align 4, !tbaa !48
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ej, %bb.et, %zend_file_cache_unserialize_interned.exit556
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !201 ; 3 uses
  %.not490 = icmp eq ptr %i.ue, null
  br i1 %.not490, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !50
  %i.uh = inttoptr i64 %i.ug to ptr
  %i.ui = icmp ule ptr %i.ue, %i.uh
  tail call void @llvm.assume(i1 %i.ui)
  %i.uj = ptrtoint ptr %i.ue to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 %i.uj
  store ptr %i.uk, ptr %i.ud, align 8, !tbaa !201
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !202 ; 3 uses
  %.not491 = icmp eq ptr %i.um, null
  br i1 %.not491, label %bb.fh, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.un = ptrtoint ptr %i.um to i64               ; 3 uses
  %i.uo = and i64 %i.un, 1
  %.not492 = icmp eq i64 %i.uo, 0
  br i1 %.not492, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.up = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.uq = trunc nuw i8 %i.up to i1
  %i.ur = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.us = and i64 %i.un, -2
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.us ; 5 uses
  br i1 %i.uq, label %zend_file_cache_unserialize_interned.exit559, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.uu = tail call ptr @accel_new_interned_string(ptr noundef %i.ut) #15 ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.ut
  br i1 %i.uv, label %bb.fa, label %zend_file_cache_unserialize_interned.exit559

bb.fa:                                            ; preds = %bb.ez
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !47
  %i.uy = add i64 %i.ux, 25                       ; 2 uses
  %i.uz = tail call ptr @zend_shared_alloc(i64 noundef %i.uy) #15 ; 5 uses
  %.not.i558 = icmp eq ptr %i.uz, null
  br i1 %.not.i558, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.va = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.va, i32 noundef -1) #20
  unreachable

bb.fc:                                            ; preds = %bb.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uz, ptr nonnull align 8 %i.ut, i64 %i.uy, i1 false)
  store i32 1, ptr %i.uz, align 8, !tbaa !51
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store i32 470, ptr %i.vb, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit559

zend_file_cache_unserialize_interned.exit559:     ; preds = %bb.ey, %bb.ez, %bb.fc
  %.015.i557 = phi ptr [ %i.ut, %bb.ey ], [ %i.uz, %bb.fc ], [ %i.uu, %bb.ez ]
  store ptr %.015.i557, ptr %i.ul, align 8, !tbaa !202
  br label %bb.fh

bb.fd:                                            ; preds = %bb.ex
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !50
  %i.ve = inttoptr i64 %i.vd to ptr
  %i.vf = icmp ule ptr %i.um, %i.ve
  tail call void @llvm.assume(i1 %i.vf)
  %i.vg = getelementptr inbounds nuw i8, ptr %2, i64 %i.un ; 2 uses
  store ptr %i.vg, ptr %i.ul, align 8, !tbaa !202
  %i.vh = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.vi = trunc nuw i8 %i.vh to i1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 3 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !48 ; 2 uses
  br i1 %i.vi, label %bb.ff, label %bb.fe, !prof !90

bb.fe:                                            ; preds = %bb.fd
  %i.vl = or i32 %i.vk, 320
  store i32 %i.vl, ptr %i.vj, align 4, !tbaa !48
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.vm = or i32 %i.vk, 64
  store i32 %i.vm, ptr %i.vj, align 4, !tbaa !48
  %i.vn = load ptr, ptr %i.ul, align 8, !tbaa !202
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 4 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !48
  %i.vq = and i32 %i.vp, -257
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !48
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %i.vr = load ptr, ptr %i.ul, align 8, !tbaa !202
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 4 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !48
  %i.vu = and i32 %i.vt, -33
  store i32 %i.vu, ptr %i.vs, align 4, !tbaa !48
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ew, %bb.fg, %zend_file_cache_unserialize_interned.exit559
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !203 ; 7 uses
  %.not493 = icmp eq ptr %i.vw, null
  br i1 %.not493, label %bb.fn, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.vx = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not494 = icmp ult ptr %i.vw, %i.vx
  br i1 %.not494, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !50
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vz
  %.not495 = icmp ugt ptr %i.vw, %i.wa
  br i1 %.not495, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.wb = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 184
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !71
  %.not496 = icmp ult ptr %i.vw, %i.wd
  br i1 %.not496, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 192
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !72
  %i.wg = icmp ult ptr %i.vw, %i.wf
  br i1 %i.wg, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !50
  %i.wj = inttoptr i64 %i.wi to ptr
  %i.wk = icmp ule ptr %i.vw, %i.wj
  tail call void @llvm.assume(i1 %i.wk)
  %i.wl = ptrtoint ptr %i.vw to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 %i.wl ; 2 uses
  store ptr %i.wm, ptr %i.vv, align 8, !tbaa !203
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.wm, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fh, %bb.fj, %bb.fl, %bb.fm
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !204 ; 3 uses
  %.not498 = icmp eq ptr %i.wo, null
  br i1 %.not498, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !50
  %i.wr = inttoptr i64 %i.wq to ptr
  %i.ws = icmp ule ptr %i.wo, %i.wr
  tail call void @llvm.assume(i1 %i.ws)
  %i.wt = ptrtoint ptr %i.wo to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 %i.wt
  store ptr %i.wu, ptr %i.wn, align 8, !tbaa !204
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !205 ; 3 uses
  %.not499 = icmp eq ptr %i.ww, null
  br i1 %.not499, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !50
  %i.wz = inttoptr i64 %i.wy to ptr
  %i.xa = icmp ule ptr %i.ww, %i.wz
  tail call void @llvm.assume(i1 %i.xa)
  %i.xb = ptrtoint ptr %i.ww to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %2, i64 %i.xb
  store ptr %i.xc, ptr %i.wv, align 8, !tbaa !205
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !206 ; 3 uses
  %.not500 = icmp eq ptr %i.xe, null
  br i1 %.not500, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !50
  %i.xh = inttoptr i64 %i.xg to ptr
  %i.xi = icmp ule ptr %i.xe, %i.xh
  tail call void @llvm.assume(i1 %i.xi)
  %i.xj = ptrtoint ptr %i.xe to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %2, i64 %i.xj
  store ptr %i.xk, ptr %i.xd, align 8, !tbaa !206
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs, %bb.i, %bb.k, %bb.bs, %bb.br
  ret void
}

declare ptr @accel_new_interned_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @zend_accel_get_class_name_map_ptr(ptr noundef) local_unnamed_addr #3

declare void @zend_alloc_ce_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @zend_file_cache_unserialize_zval(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !48
  switch i8 %i.b, label %bb.aa [
    i8 6, label %bb.b
    i8 7, label %bb.m
    i8 11, label %bb.t
    i8 12, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.not76 = icmp ugt ptr %i.c, %i.f
  %i.g = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.h = and i64 %i.g, 1
  %.not77 = icmp eq i64 %i.h, 0                   ; 2 uses
  %or.cond = and i1 %.not76, %.not77
  %.not78 = icmp eq ptr %i.c, null
  %or.cond81 = or i1 %.not78, %or.cond
  br i1 %or.cond81, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not77, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.j = load i8, ptr %i.i, align 8, !tbaa !54, !range !17, !noundef !18
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.m = and i64 %i.g, -2
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 5 uses
  br i1 %i.k, label %zend_file_cache_unserialize_interned.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @accel_new_interned_string(ptr noundef %i.n) #15 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %bb.f, label %zend_file_cache_unserialize_interned.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = add i64 %i.r, 25                         ; 2 uses
  %i.t = tail call ptr @zend_shared_alloc(i64 noundef %i.s) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.u, i32 noundef -1) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.n, i64 %i.s, i1 false)
  store i32 1, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 470, ptr %i.v, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.d, %bb.e, %bb.h
  %.015.i = phi ptr [ %i.n, %bb.d ], [ %i.t, %bb.h ], [ %i.o, %bb.e ]
  store ptr %.015.i, ptr %0, align 8, !tbaa !48
  br label %bb.aa

bb.i:                                             ; preds = %bb.c
  %i.w = icmp ule ptr %i.c, %i.f
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.z = load i8, ptr %i.y, align 8, !tbaa !54, !range !17, !noundef !18
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48 ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.j, !prof !90

bb.j:                                             ; preds = %bb.i
  %i.ad = or i32 %i.ac, 320
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !48
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = or i32 %i.ac, 64
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !48
  %i.af = load ptr, ptr %0, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !48
  %i.ai = and i32 %i.ah, -257
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.am = and i32 %i.al, -33
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !48
  br label %bb.aa

bb.m:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %0, align 8, !tbaa !48    ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %.not72 = icmp ult ptr %i.an, %i.ap
  br i1 %.not72, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %.not73 = icmp ugt ptr %i.an, %i.as
  br i1 %.not73, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  %.not74 = icmp ult ptr %i.an, %i.av
  br i1 %.not74, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 192
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72
  %i.ay = icmp ult ptr %i.an, %i.ax
  br i1 %i.ay, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not75 = icmp eq ptr %i.an, null
  br i1 %.not75, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = icmp ule ptr %i.an, %i.bb
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = ptrtoint ptr %i.an to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bf = phi ptr [ %i.be, %bb.r ], [ null, %bb.q ]
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef %i.bf, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_zval, ptr noundef nonnull @zval_ptr_dtor)
  br label %bb.aa

bb.t:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !48    ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %.not68 = icmp ult ptr %i.bg, %i.bi
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  %.not69 = icmp ugt ptr %i.bg, %i.bl
  br i1 %.not69, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71
  %.not70 = icmp ult ptr %i.bg, %i.bo
  br i1 %.not70, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = icmp ult ptr %i.bg, %i.bq
  br i1 %i.br, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !50
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = icmp ule ptr %i.bg, %i.bu
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = ptrtoint ptr %i.bg to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw ; 2 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  tail call fastcc void @zend_file_cache_unserialize_ast(ptr noundef nonnull %i.by, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.bz = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = icmp ule ptr %i.bz, %i.cc
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce
  store ptr %i.cf, ptr %0, align 8, !tbaa !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.a, %bb.z, %bb.y, %bb.u, %bb.w, %bb.x, %bb.n, %bb.p, %bb.s, %bb.l, %zend_file_cache_unserialize_interned.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_file_cache_unserialize_class_constant(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not81 = icmp ugt ptr %i.a, %i.f
  br i1 %.not81, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %.not82 = icmp ult ptr %i.a, %i.i
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = icmp ult ptr %i.a, %i.k
  br i1 %i.l, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = icmp ule ptr %i.a, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 6 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !222, !nonnull !18, !noundef !18 ; 6 uses
  %.not84 = icmp ult ptr %i.t, %.pre
  br i1 %.not84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.v
  %.not85 = icmp ugt ptr %i.t, %i.w
  br i1 %.not85, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %.not86 = icmp ult ptr %i.t, %i.z
  br i1 %.not86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = icmp ult ptr %i.t, %i.ab
  br i1 %i.ac, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = icmp ule ptr %i.t, %i.af
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = ptrtoint ptr %i.t to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !222
  tail call void @zend_file_cache_unserialize_zval(ptr noundef nonnull %i.r, ptr noundef nonnull %1, ptr noundef %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !223 ; 3 uses
  %.not88 = icmp eq ptr %i.ak, null
  br i1 %.not88, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.am = and i64 %i.al, 1
  %.not89 = icmp eq i64 %i.am, 0
  br i1 %.not89, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ar = and i64 %i.al, -2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 5 uses
  br i1 %i.ap, label %zend_file_cache_unserialize_interned.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr @accel_new_interned_string(ptr noundef %i.as) #15 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %bb.m, label %zend_file_cache_unserialize_interned.exit

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 25                       ; 2 uses
  %i.ay = tail call ptr @zend_shared_alloc(i64 noundef %i.ax) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.az, i32 noundef -1) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.as, i64 %i.ax, i1 false)
  store i32 1, ptr %i.ay, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 470, ptr %i.ba, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.k, %bb.l, %bb.o
  %.015.i = phi ptr [ %i.as, %bb.k ], [ %i.ay, %bb.o ], [ %i.at, %bb.l ]
  store ptr %.015.i, ptr %i.aj, align 8, !tbaa !223
  br label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = icmp ule ptr %i.ak, %i.bc
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.al ; 2 uses
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !48 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.q, !prof !90

bb.q:                                             ; preds = %bb.p
  %i.bk = or i32 %i.bj, 320
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !48
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = or i32 %i.bj, 64
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !48
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !223
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !48
  %i.bp = and i32 %i.bo, -257
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !223
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !48
  %i.bt = and i32 %i.bs, -33
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %zend_file_cache_unserialize_interned.exit, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !224 ; 7 uses
  %.not90 = icmp eq ptr %i.bv, null
  br i1 %.not90, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %.not91 = icmp ult ptr %i.bv, %i.bw
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %.not92 = icmp ugt ptr %i.bv, %i.by
  br i1 %.not92, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bz = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71
  %.not93 = icmp ult ptr %i.bv, %i.cb
  br i1 %.not93, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72
  %i.ce = icmp ult ptr %i.bv, %i.cd
  br i1 %i.ce, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = icmp ule ptr %i.bv, %i.cg
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = ptrtoint ptr %i.bv to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %i.bu, align 8, !tbaa !224
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.cj, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %i.ck, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %bb.h, %bb.z, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_file_cache_unserialize_attribute(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !18, !noundef !18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp ule ptr %i.a, %i.d
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 10 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226  ; 3 uses
  %.not89 = icmp eq ptr %i.h, null
  br i1 %.not89, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = and i64 %i.i, 1
  %.not90 = icmp eq i64 %i.j, 0
  br i1 %.not90, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.l = load i8, ptr %i.k, align 8, !tbaa !54, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.o = and i64 %i.i, -2
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  br i1 %i.m, label %zend_file_cache_unserialize_interned.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @accel_new_interned_string(ptr noundef %i.p) #15 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %bb.e, label %zend_file_cache_unserialize_interned.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47
  %i.u = add i64 %i.t, 25                         ; 2 uses
  %i.v = tail call ptr @zend_shared_alloc(i64 noundef %i.u) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.w, i32 noundef -1) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.p, i64 %i.u, i1 false)
  store i32 1, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 470, ptr %i.x, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.c, %bb.d, %bb.g
  %.015.i = phi ptr [ %i.p, %bb.c ], [ %i.v, %bb.g ], [ %i.q, %bb.d ]
  store ptr %.015.i, ptr %i.g, align 8, !tbaa !226
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = icmp ule ptr %i.h, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !54, !range !17, !noundef !18
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !48 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.ai = or i32 %i.ah, 320
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = or i32 %i.ah, 64
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !48
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !226
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = and i32 %i.am, -257
  store i32 %i.an, ptr %i.al, align 4, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !226
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !48
  %i.ar = and i32 %i.aq, -33
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %zend_file_cache_unserialize_interned.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !227 ; 3 uses
  %.not91 = icmp eq ptr %i.at, null
  br i1 %.not91, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.av = and i64 %i.au, 1
  %.not92 = icmp eq i64 %i.av, 0
  br i1 %.not92, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ba = and i64 %i.au, -2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba ; 5 uses
  br i1 %i.ay, label %zend_file_cache_unserialize_interned.exit99, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call ptr @accel_new_interned_string(ptr noundef %i.bb) #15 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.bb
  br i1 %i.bd, label %bb.p, label %zend_file_cache_unserialize_interned.exit99

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, 25                       ; 2 uses
  %i.bh = tail call ptr @zend_shared_alloc(i64 noundef %i.bg) #15 ; 5 uses
  %.not.i98 = icmp eq ptr %i.bh, null
  br i1 %.not.i98, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.bi, i32 noundef -1) #20
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bb, i64 %i.bg, i1 false)
  store i32 1, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 470, ptr %i.bj, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit99

zend_file_cache_unserialize_interned.exit99:      ; preds = %bb.n, %bb.o, %bb.r
  %.015.i97 = phi ptr [ %i.bb, %bb.n ], [ %i.bh, %bb.r ], [ %i.bc, %bb.o ]
  store ptr %.015.i97, ptr %i.as, align 8, !tbaa !227
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !50
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = icmp ule ptr %i.at, %i.bm
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.au ; 2 uses
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !54, !range !17, !noundef !18
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !48 ; 2 uses
  br i1 %i.br, label %bb.u, label %bb.t, !prof !90

bb.t:                                             ; preds = %bb.s
  %i.bu = or i32 %i.bt, 320
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !48
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bv = or i32 %i.bt, 64
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !48
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !227
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !48
  %i.bz = and i32 %i.by, -257
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !48
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !227
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !48
  %i.cd = and i32 %i.cc, -33
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %bb.v, %zend_file_cache_unserialize_interned.exit99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !228 ; 3 uses
  %.not93 = icmp eq ptr %i.cf, null
  br i1 %.not93, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ch = and i64 %i.cg, 1
  %.not94 = icmp eq i64 %i.ch, 0
  br i1 %.not94, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.cm = and i64 %i.cg, -2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 5 uses
  br i1 %i.ck, label %zend_file_cache_unserialize_interned.exit102, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = tail call ptr @accel_new_interned_string(ptr noundef %i.cn) #15 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cn
  br i1 %i.cp, label %bb.aa, label %zend_file_cache_unserialize_interned.exit102

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.cs = add i64 %i.cr, 25                       ; 2 uses
  %i.ct = tail call ptr @zend_shared_alloc(i64 noundef %i.cs) #15 ; 5 uses
  %.not.i101 = icmp eq ptr %i.ct, null
  br i1 %.not.i101, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.cu, i32 noundef -1) #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull align 8 %i.cn, i64 %i.cs, i1 false)
  store i32 1, ptr %i.ct, align 8, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 470, ptr %i.cv, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit102

zend_file_cache_unserialize_interned.exit102:     ; preds = %bb.y, %bb.z, %bb.ac
  %.015.i100 = phi ptr [ %i.cn, %bb.y ], [ %i.ct, %bb.ac ], [ %i.co, %bb.z ]
  store ptr %.015.i100, ptr %i.ce, align 8, !tbaa !228
  br label %bb.ah

bb.ad:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !50
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp ule ptr %i.cf, %i.cy
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 2 uses
  store ptr %i.da, ptr %i.ce, align 8, !tbaa !228
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !54, !range !17, !noundef !18
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !48 ; 2 uses
  br i1 %i.dd, label %bb.af, label %bb.ae, !prof !90

bb.ae:                                            ; preds = %bb.ad
  %i.dg = or i32 %i.df, 320
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !48
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dh = or i32 %i.df, 64
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !48
  %i.di = load ptr, ptr %i.ce, align 8, !tbaa !228
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = and i32 %i.dk, -257
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !48
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !228
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !48
  %i.dp = and i32 %i.do, -33
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %zend_file_cache_unserialize_interned.exit102, %bb.ag, %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !229
  %.not107 = icmp eq i32 %i.dr, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv ; 6 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !231 ; 3 uses
  %.not95 = icmp eq ptr %i.dw, null
  br i1 %.not95, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dy = and i64 %i.dx, 1
  %.not96 = icmp eq i64 %i.dy, 0
  br i1 %.not96, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = load i8, ptr %i.dt, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ec = and i64 %i.dx, -2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec ; 5 uses
  br i1 %i.ea, label %zend_file_cache_unserialize_interned.exit105, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = tail call ptr @accel_new_interned_string(ptr noundef %i.ed) #15 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ed
  br i1 %i.ef, label %bb.am, label %zend_file_cache_unserialize_interned.exit105

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !47
  %i.ei = add i64 %i.eh, 25                       ; 2 uses
  %i.ej = tail call ptr @zend_shared_alloc(i64 noundef %i.ei) #15 ; 5 uses
  %.not.i104 = icmp eq ptr %i.ej, null
  br i1 %.not.i104, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ek, i32 noundef -1) #20
  unreachable

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.ed, i64 %i.ei, i1 false)
  store i32 1, ptr %i.ej, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 470, ptr %i.el, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit105

zend_file_cache_unserialize_interned.exit105:     ; preds = %bb.ak, %bb.al, %bb.ao
  %.015.i103 = phi ptr [ %i.ed, %bb.ak ], [ %i.ej, %bb.ao ], [ %i.ee, %bb.al ]
  store ptr %.015.i103, ptr %i.dv, align 8, !tbaa !231
  br label %bb.at

bb.ap:                                            ; preds = %bb.aj
  %i.em = load i64, ptr %i.du, align 8, !tbaa !50
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = icmp ule ptr %i.dw, %i.en
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx ; 2 uses
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !231
  %i.eq = load i8, ptr %i.dt, align 8, !tbaa !54, !range !17, !noundef !18
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !48 ; 2 uses
  br i1 %i.er, label %bb.ar, label %bb.aq, !prof !90

bb.aq:                                            ; preds = %bb.ap
  %i.eu = or i32 %i.et, 320
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !48
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ev = or i32 %i.et, 64
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !48
  %i.ew = load ptr, ptr %i.dv, align 8, !tbaa !231
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !48
  %i.ez = and i32 %i.ey, -257
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !48
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.fa = load ptr, ptr %i.dv, align 8, !tbaa !231
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !48
  %i.fd = and i32 %i.fc, -33
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !48
  br label %bb.at

bb.at:                                            ; preds = %zend_file_cache_unserialize_interned.exit105, %bb.as, %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  tail call void @zend_file_cache_unserialize_zval(ptr noundef nonnull %i.fe, ptr noundef %1, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load i32, ptr %i.dq, align 4, !tbaa !229
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp samesign ult i64 %indvars.iv.next, %i.fg
  br i1 %i.fh, label %bb.ai, label %._crit_edge, !llvm.loop !359

._crit_edge:                                      ; preds = %bb.at, %bb.ah
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_file_cache_unserialize_prop_info(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not129 = icmp ugt ptr %i.a, %i.f
  br i1 %.not129, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %.not130 = icmp ult ptr %i.a, %i.i
  br i1 %.not130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = icmp ult ptr %i.a, %i.k
  br i1 %i.l, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = icmp ule ptr %i.a, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 8 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !234, !nonnull !18, !noundef !18 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not132 = icmp ult ptr %i.t, %.pre
  br i1 %.not132, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w
  %.not133 = icmp ugt ptr %i.t, %i.x
  br i1 %.not133, label %bb.g, label %bb.ar

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %.not134 = icmp ult ptr %i.t, %i.aa
  br i1 %.not134, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.ad = icmp ult ptr %i.t, %i.ac
  br i1 %i.ad, label %bb.ar, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 7 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = icmp ule ptr %i.t, %i.ag
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = ptrtoint ptr %i.t to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !234
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !235 ; 3 uses
  %.not136 = icmp eq ptr %i.ak, null
  br i1 %.not136, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.am = and i64 %i.al, 1
  %.not137 = icmp eq i64 %i.am, 0
  br i1 %.not137, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ar = and i64 %i.al, -2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 5 uses
  br i1 %i.ap, label %zend_file_cache_unserialize_interned.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr @accel_new_interned_string(ptr noundef %i.as) #15 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %bb.m, label %zend_file_cache_unserialize_interned.exit

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 25                       ; 2 uses
  %i.ay = tail call ptr @zend_shared_alloc(i64 noundef %i.ax) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.az, i32 noundef -1) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.as, i64 %i.ax, i1 false)
  store i32 1, ptr %i.ay, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 470, ptr %i.ba, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.k, %bb.l, %bb.o
  %.015.i = phi ptr [ %i.as, %bb.k ], [ %i.ay, %bb.o ], [ %i.at, %bb.l ]
  store ptr %.015.i, ptr %i.u, align 8, !tbaa !235
  br label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.bb = icmp ule ptr %i.ak, %i.ag
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.al ; 2 uses
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !235
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !48 ; 2 uses
  br i1 %i.bf, label %bb.r, label %bb.q, !prof !90

bb.q:                                             ; preds = %bb.p
  %i.bi = or i32 %i.bh, 320
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !48
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bj = or i32 %i.bh, 64
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !48
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !235
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !48
  %i.bn = and i32 %i.bm, -257
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !235
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !48
  %i.br = and i32 %i.bq, -33
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %zend_file_cache_unserialize_interned.exit, %bb.s, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !236 ; 3 uses
  %.not138 = icmp eq ptr %i.bt, null
  br i1 %.not138, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bv = and i64 %i.bu, 1
  %.not139 = icmp eq i64 %i.bv, 0
  br i1 %.not139, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !54, !range !17, !noundef !18
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ca = and i64 %i.bu, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 5 uses
  br i1 %i.by, label %zend_file_cache_unserialize_interned.exit150, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = tail call ptr @accel_new_interned_string(ptr noundef %i.cb) #15 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.cb
  br i1 %i.cd, label %bb.x, label %zend_file_cache_unserialize_interned.exit150

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !47
  %i.cg = add i64 %i.cf, 25                       ; 2 uses
  %i.ch = tail call ptr @zend_shared_alloc(i64 noundef %i.cg) #15 ; 5 uses
  %.not.i149 = icmp eq ptr %i.ch, null
  br i1 %.not.i149, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ci, i32 noundef -1) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.cb, i64 %i.cg, i1 false)
  store i32 1, ptr %i.ch, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 470, ptr %i.cj, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit150

zend_file_cache_unserialize_interned.exit150:     ; preds = %bb.v, %bb.w, %bb.z
  %.015.i148 = phi ptr [ %i.cb, %bb.v ], [ %i.ch, %bb.z ], [ %i.cc, %bb.w ]
  store ptr %.015.i148, ptr %i.bs, align 8, !tbaa !236
  br label %bb.ae

bb.aa:                                            ; preds = %bb.u
  %i.ck = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = icmp ule ptr %i.bt, %i.cl
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bu ; 2 uses
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !236
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !54, !range !17, !noundef !18
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48 ; 2 uses
  br i1 %i.cq, label %bb.ac, label %bb.ab, !prof !90

bb.ab:                                            ; preds = %bb.aa
  %i.ct = or i32 %i.cs, 320
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !48
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cu = or i32 %i.cs, 64
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !48
  %i.cv = load ptr, ptr %i.bs, align 8, !tbaa !236
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !48
  %i.cy = and i32 %i.cx, -257
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !48
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !236
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !48
  %i.dc = and i32 %i.db, -33
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %zend_file_cache_unserialize_interned.exit150, %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !237 ; 7 uses
  %.not140 = icmp eq ptr %i.de, null
  br i1 %.not140, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %.not141 = icmp ult ptr %i.de, %i.df
  br i1 %.not141, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %.not142 = icmp ugt ptr %i.de, %i.dh
  br i1 %.not142, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.di = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 184
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !71
  %.not143 = icmp ult ptr %i.de, %i.dk
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !72
  %i.dn = icmp ult ptr %i.de, %i.dm
  br i1 %i.dn, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.do = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = icmp ule ptr %i.de, %i.dp
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = ptrtoint ptr %i.de to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 2 uses
  store ptr %i.ds, ptr %i.dd, align 8, !tbaa !237
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.ds, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.ag, %bb.ai, %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !238 ; 3 uses
  %.not145 = icmp eq ptr %i.du, null
  br i1 %.not145, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = icmp ule ptr %i.du, %i.dw
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dy
  store ptr %i.dz, ptr %i.dt, align 8, !tbaa !238
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !239 ; 3 uses
  %.not146 = icmp eq ptr %i.eb, null
  br i1 %.not146, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = icmp ule ptr %i.eb, %i.ed
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef ; 4 uses
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !239
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !240 ; 3 uses
  %.not147 = icmp eq ptr %i.eh, null
  br i1 %.not147, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = icmp ule ptr %i.eh, %i.ed
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 2 uses
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !240
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %i.ek, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.pre153 = load ptr, ptr %i.ea, align 8, !tbaa !239
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.el = phi ptr [ %i.eg, %bb.an ], [ %.pre153, %bb.ao ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !240 ; 3 uses
  %.not147.1 = icmp eq ptr %i.en, null
  br i1 %.not147.1, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = icmp ule ptr %i.en, %i.ep
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 2 uses
  store ptr %i.es, ptr %i.em, align 8, !tbaa !240
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %i.es, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.aq, %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %i.et, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.f, %bb.h, %.loopexit, %bb.d, %bb.b
  ret void
}

declare ptr @zend_map_ptr_new() local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_ast(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !243    ; 4 uses
  %i.b = and i16 %i.a, -2
  %switch = icmp eq i16 %i.b, 64
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @zend_file_cache_unserialize_zval(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 128
  %.not97 = icmp eq i16 %i.d, 0
  br i1 %.not97, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.not104 = icmp eq i32 %i.f, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.aa, %bb.j ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246  ; 7 uses
  %.not90 = icmp eq ptr %i.l, null
  br i1 %.not90, label %bb.j, label %bb.e

end_hunk_3
begin_hunk_4_@zend_file_cache_unserialize_ast:bb.a
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !246
  tail call fastcc void @zend_file_cache_unserialize_ast(ptr noundef nonnull %i.z, ptr noundef nonnull %1, ptr noundef %2)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.aa = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %.loopexit, !llvm.loop !360

bb.k:                                             ; preds = %bb.c
  switch i16 %i.a, label %zend_ast_is_decl.exit [
    i16 66, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !248 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %zend_file_cache_unserialize_func.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = icmp ule ptr %i.ae, %i.ah
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  br label %zend_file_cache_unserialize_func.exit

zend_file_cache_unserialize_func.exit:            ; preds = %bb.l, %bb.m
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ %i.ak, %bb.m ] ; 2 uses
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %.sroa.0.0, ptr noundef %1, ptr noundef %2), !inline_history !362
  store ptr %.sroa.0.0, ptr %i.ad, align 8, !tbaa !248
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.al = tail call ptr @zend_map_ptr_new() #15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !250
  br label %.loopexit

zend_ast_is_decl.exit:                            ; preds = %bb.k
  %i.an = lshr i16 %i.a, 8                        ; 2 uses
  %.not105 = icmp eq i16 %i.an, 0
  br i1 %.not105, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %zend_ast_is_decl.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %wide.trip.count = zext nneg i16 %i.an to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph103, %bb.u
  %indvars.iv108 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next109, %bb.u ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv108 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !246 ; 7 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !60 ; 2 uses
  %.not86 = icmp ult ptr %i.as, %i.at
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %.not87 = icmp ugt ptr %i.as, %i.av
  br i1 %.not87, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71
  %.not88 = icmp ult ptr %i.as, %i.ay
  br i1 %.not88, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72
  %i.bb = icmp ult ptr %i.as, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = icmp ule ptr %i.as, %i.bd
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = ptrtoint ptr %i.as to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !246
  tail call fastcc void @zend_file_cache_unserialize_ast(ptr noundef nonnull %i.bg, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.q, %bb.s, %bb.t
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !361

.loopexit:                                        ; preds = %bb.j, %bb.u, %.preheader, %zend_ast_is_decl.exit, %bb.n, %zend_file_cache_unserialize_func.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_type(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !252    ; 3 uses
  %.not48 = icmp eq ptr %i.d, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp ule ptr %i.d, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ] ; 3 uses
  store ptr %.041, ptr %0, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %i.l = load i32, ptr %.041, align 8, !tbaa !254 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not2 = icmp eq i32 %i.l, 0
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0401 = phi ptr [ %i.o, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %.0401, ptr noundef %1, ptr noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %.0401, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.n
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !363

bb.e:                                             ; preds = %bb.a
  %i.q = and i32 %i.b, 16777216
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !252    ; 3 uses
  %.not46 = icmp eq ptr %i.r, null
  br i1 %.not46, label %zend_file_cache_unserialize_interned.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = and i64 %i.s, 1
  %.not47 = icmp eq i64 %i.t, 0
  br i1 %.not47, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.v = load i8, ptr %i.u, align 8, !tbaa !54, !range !17, !noundef !18
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.y = and i64 %i.s, -2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 5 uses
  br i1 %i.w, label %zend_file_cache_unserialize_interned.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @accel_new_interned_string(ptr noundef %i.z) #15 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %bb.j, label %zend_file_cache_unserialize_interned.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = add i64 %i.ad, 25                       ; 2 uses
  %i.af = tail call ptr @zend_shared_alloc(i64 noundef %i.ae) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ag, i32 noundef -1) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false)
  store i32 1, ptr %i.af, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 470, ptr %i.ah, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

bb.m:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = icmp ule ptr %i.r, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !90

bb.n:                                             ; preds = %bb.m
  %i.as = or i32 %i.ar, 320
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.at = and i32 %i.ar, -321
  %i.au = or disjoint i32 %i.at, 64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.av = phi i32 [ %i.as, %bb.n ], [ %i.au, %bb.o ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = and i32 %i.av, -33
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.l, %bb.i, %bb.h, %bb.p, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.am, %bb.p ], [ %i.z, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.i ] ; 3 uses
  store ptr %.0, ptr %0, align 8, !tbaa !252
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %zend_file_cache_unserialize_interned.exit
  %i.bb = tail call i32 @zend_accel_get_class_name_map_ptr(ptr noundef %.0) #15 ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %zend_file_cache_unserialize_interned.exit
  tail call void @zend_alloc_ce_cache(ptr noundef %.0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.q, %bb.r, %bb.e
  ret void
}

declare void @zend_deserialize_opcode_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind returns_twice }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"p1 _ZTS12_zend_string", !13, i64 0}
!20 = !{!"p1 _ZTS17_zend_class_entry", !13, i64 0}
!21 = !{!"p1 _ZTS14_zend_function", !13, i64 0}
!22 = !{!"p1 _ZTS14_zend_arg_info", !13, i64 0}
!23 = !{!"p1 _ZTS11_zend_array", !13, i64 0}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!"p1 _ZTS19_zend_property_info", !13, i64 0}
!26 = !{!"p1 _ZTS8_zend_op", !13, i64 0}
!27 = !{!"p2 _ZTS12_zend_string", !24, i64 0}
!28 = !{!"p1 int", !13, i64 0}
!29 = !{!"p1 _ZTS16_zend_live_range", !13, i64 0}
!30 = !{!"p1 _ZTS23_zend_try_catch_element", !13, i64 0}
!31 = !{!"p1 _ZTS12_zval_struct", !13, i64 0}
!32 = !{!"p2 _ZTS14_zend_op_array", !24, i64 0}
!33 = !{!"_zend_op_array", !8, i64 0, !8, i64 1, !9, i64 4, !19, i64 8, !20, i64 16, !21, i64 24, !9, i64 32, !9, i64 36, !22, i64 40, !23, i64 48, !24, i64 56, !19, i64 64, !9, i64 72, !25, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !26, i64 104, !23, i64 112, !23, i64 120, !27, i64 128, !28, i64 136, !9, i64 144, !9, i64 148, !29, i64 152, !30, i64 160, !19, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !31, i64 192, !32, i64 200, !8, i64 208}
!34 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!35 = !{!"_zend_array", !34, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !13, i64 48}
!36 = !{!"_zend_script", !19, i64 0, !33, i64 8, !35, i64 264, !35, i64 320}
!37 = !{!"p2 _ZTS16_zend_error_info", !24, i64 0}
!38 = !{!"p1 _ZTS19_zend_early_binding", !13, i64 0}
!39 = !{!"zend_persistent_script_dynamic_members", !15, i64 0, !15, i64 8, !9, i64 16, !15, i64 24}
!40 = !{!"_zend_persistent_script", !36, i64 0, !15, i64 376, !9, i64 384, !15, i64 392, !12, i64 400, !12, i64 401, !12, i64 402, !9, i64 404, !9, i64 408, !37, i64 416, !38, i64 424, !13, i64 432, !15, i64 440, !39, i64 448}
!41 = !{!40, !19, i64 0}
!42 = !{!"_zend_accel_directives", !15, i64 0, !15, i64 8, !16, i64 16, !14, i64 24, !15, i64 32, !12, i64 40, !12, i64 41, !12, i64 42, !12, i64 43, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !12, i64 48, !12, i64 49, !12, i64 50, !15, i64 56, !15, i64 64, !14, i64 72, !14, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !12, i64 152, !12, i64 153, !12, i64 154, !12, i64 155, !14, i64 160, !14, i64 168}
!43 = !{!"p1 _ZTS23_zend_persistent_script", !13, i64 0}
!44 = !{!"_zend_accel_globals", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !12, i64 4, !42, i64 8, !19, i64 184, !19, i64 192, !8, i64 200, !8, i64 232, !9, i64 264, !12, i64 268, !9, i64 272, !12, i64 276, !9, i64 280, !15, i64 288, !15, i64 296, !35, i64 304, !15, i64 360, !13, i64 368, !15, i64 376, !12, i64 384, !13, i64 392, !43, i64 400, !26, i64 408, !43, i64 416, !19, i64 424}
!45 = !{!44, !14, i64 152}
!46 = !{!"_zend_string", !34, i64 0, !15, i64 8, !15, i64 16, !8, i64 24}
!47 = !{!46, !15, i64 16}
!48 = !{!8, !8, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!40, !15, i64 440}
!51 = !{!34, !9, i64 0}
!52 = !{!46, !15, i64 8}
!53 = !{!44, !13, i64 392}
!54 = !{!40, !12, i64 400}
!55 = !{!"_zend_file_cache_metainfo", !8, i64 0, !8, i64 8, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !9, i64 72}
!56 = !{!55, !9, i64 72}
!57 = !{!55, !15, i64 48}
!58 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!59 = !{!55, !15, i64 40}
!60 = !{!40, !13, i64 432}
!61 = !{!55, !15, i64 56}
!62 = !{!55, !15, i64 64}
!63 = !{!"p1 _ZTS26_zend_accel_shared_globals", !13, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p2 _ZTS22_zend_accel_hash_entry", !24, i64 0}
!66 = !{!"p1 _ZTS22_zend_accel_hash_entry", !13, i64 0}
!67 = !{!"_zend_accel_hash", !65, i64 0, !66, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!68 = !{!"p2 _ZTS23_zend_persistent_script", !24, i64 0}
!69 = !{!"_zend_string_table", !9, i64 0, !9, i64 4, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!70 = !{!"_zend_accel_shared_globals", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !67, i64 48, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !12, i64 120, !12, i64 121, !9, i64 124, !12, i64 128, !12, i64 129, !12, i64 130, !43, i64 136, !68, i64 144, !8, i64 152, !13, i64 160, !24, i64 168, !69, i64 176}
!71 = !{!70, !19, i64 184}
!72 = !{!70, !19, i64 192}
!73 = !{!40, !37, i64 416}
!74 = !{!40, !9, i64 404}
!75 = !{!"p1 _ZTS16_zend_error_info", !13, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_zend_error_info", !9, i64 0, !9, i64 4, !19, i64 8, !19, i64 16}
!78 = !{!77, !19, i64 8}
!79 = !{!77, !19, i64 16}
!80 = !{!40, !38, i64 424}
!81 = !{!40, !9, i64 408}
!82 = !{!"_zend_early_binding", !19, i64 0, !19, i64 8, !19, i64 16, !9, i64 24}
!83 = !{!82, !19, i64 0}
!84 = !{!82, !19, i64 8}
!85 = !{!82, !19, i64 16}
!86 = !{!44, !12, i64 160}
!87 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16}
!88 = !{!"p1 _ZTS14_zend_op_array", !13, i64 0}
!89 = !{!"p1 _ZTS9_zend_ast", !13, i64 0}
!90 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!91 = !{!12, !12, i64 0}
!92 = !{!"_zval_struct", !8, i64 0, !8, i64 8, !8, i64 12}
!93 = !{!"p2 _ZTS11_zend_array", !24, i64 0}
!94 = !{!"p1 _ZTS13__jmp_buf_tag", !13, i64 0}
!95 = !{!"p1 _ZTS14_zend_vm_stack", !13, i64 0}
!96 = !{!"p1 _ZTS18_zend_execute_data", !13, i64 0}
!97 = !{!"zend_atomic_bool_s", !8, i64 0}
!98 = !{!"p1 _ZTS15_zend_ini_entry", !13, i64 0}
!99 = !{!"p2 _ZTS12_zend_object", !24, i64 0}
!100 = !{!"_zend_objects_store", !99, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!101 = !{!"_zend_lazy_objects_store", !35, i64 0}
!102 = !{!"p1 _ZTS12_zend_object", !13, i64 0}
!103 = !{!"p1 _ZTS18_zend_module_entry", !13, i64 0}
!104 = !{!"p1 _ZTS18_HashTableIterator", !13, i64 0}
!105 = !{!"_zend_op", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31}
!106 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16}
!107 = !{!"p1 _ZTS19_zend_fiber_context", !13, i64 0}
end_hunk_4
