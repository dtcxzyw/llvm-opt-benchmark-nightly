Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/comm?download=true
inline.NumInlined: 149
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ompi_comm_split_type:bb.a
bb.bg:                                            ; preds = %bb.bf
  %i.fy = load ptr, ptr %4, align 8, !tbaa !38
  %i.fz = getelementptr i8, ptr %i.fy, i64 264
  %.val.5.i = load ptr, ptr %i.fz, align 8, !tbaa !63
  %i.ga = getelementptr i8, ptr %.val.5.i, i64 16
  %.val.val.5.i = load i32, ptr %i.ga, align 8, !tbaa !25
  %i.gb = icmp slt i32 %.val.val.5.i, %.val49.val.i
  br i1 %i.gb, label %bb.ar, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gc = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  %i.gd = call i32 @opal_info_set(ptr noundef %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.34) #22 ; 0 uses
  %i.ge = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %i.di, i32 noundef 5, i32 noundef 5, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %i.dm, ptr noundef nonnull %4) ; 2 uses
  %.not47.6.i = icmp eq i32 %i.ge, 0
  br i1 %.not47.6.i, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.gf = load ptr, ptr %4, align 8, !tbaa !38
  %i.gg = getelementptr i8, ptr %i.gf, i64 264
  %.val.6.i = load ptr, ptr %i.gg, align 8, !tbaa !63
  %i.gh = getelementptr i8, ptr %.val.6.i, i64 16
  %.val.val.6.i = load i32, ptr %i.gh, align 8, !tbaa !25
  %i.gi = icmp slt i32 %.val.val.6.i, %.val49.val.i
  br i1 %i.gi, label %bb.ar, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  %i.gk = call i32 @opal_info_set(ptr noundef %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.35) #22 ; 0 uses
  %i.gl = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %i.di, i32 noundef 4, i32 noundef 4, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %i.dm, ptr noundef nonnull %4) ; 2 uses
  %.not47.7.i = icmp eq i32 %i.gl, 0
  br i1 %.not47.7.i, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.gm = load ptr, ptr %4, align 8, !tbaa !38
  %i.gn = getelementptr i8, ptr %i.gm, i64 264
  %.val.7.i = load ptr, ptr %i.gn, align 8, !tbaa !63
  %i.go = getelementptr i8, ptr %.val.7.i, i64 16
  %.val.val.7.i = load i32, ptr %i.go, align 8, !tbaa !25
  %i.gp = icmp slt i32 %.val.val.7.i, %.val49.val.i
  br i1 %i.gp, label %bb.ar, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gq = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  %i.gr = call i32 @opal_info_set(ptr noundef %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.36) #22 ; 0 uses
  %i.gs = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %i.di, i32 noundef 3, i32 noundef 3, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %i.dm, ptr noundef nonnull %4) ; 2 uses
  %.not47.8.i = icmp eq i32 %i.gs, 0
  br i1 %.not47.8.i, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.gt = load ptr, ptr %4, align 8, !tbaa !38
  %i.gu = getelementptr i8, ptr %i.gt, i64 264
  %.val.8.i = load ptr, ptr %i.gu, align 8, !tbaa !63
  %i.gv = getelementptr i8, ptr %.val.8.i, i64 16
  %.val.val.8.i = load i32, ptr %i.gv, align 8, !tbaa !25
  %i.gw = icmp slt i32 %.val.val.8.i, %.val49.val.i
  br i1 %i.gw, label %bb.ar, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gx = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  %i.gy = call i32 @opal_info_set(ptr noundef %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37) #22 ; 0 uses
  %i.gz = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %i.di, i32 noundef 2, i32 noundef 2, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %i.dm, ptr noundef nonnull %4) ; 2 uses
  %.not47.9.i = icmp eq i32 %i.gz, 0
  br i1 %.not47.9.i, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.ha = load ptr, ptr %4, align 8, !tbaa !38
  %i.hb = getelementptr i8, ptr %i.ha, i64 264
  %.val.9.i = load ptr, ptr %i.hb, align 8, !tbaa !63
  %i.hc = getelementptr i8, ptr %.val.9.i, i64 16
  %.val.val.9.i = load i32, ptr %i.hc, align 8, !tbaa !25
  %i.hd = icmp slt i32 %.val.val.9.i, %.val49.val.i
  br i1 %i.hd, label %bb.ar, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.he = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  %i.hf = call i32 @opal_info_set(ptr noundef %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.38) #22 ; 0 uses
  %i.hg = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %i.di, i32 noundef 1, i32 noundef 1, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %i.dm, ptr noundef nonnull %4) ; 2 uses
  %.not47.10.i = icmp eq i32 %i.hg, 0
  br i1 %.not47.10.i, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.hh = load ptr, ptr %4, align 8, !tbaa !38
  %i.hi = getelementptr i8, ptr %i.hh, i64 264
  %.val.10.i = load ptr, ptr %i.hi, align 8, !tbaa !63
  %i.hj = getelementptr i8, ptr %.val.10.i, i64 16
  %.val.val.10.i = load i32, ptr %i.hj, align 8, !tbaa !25
  %i.hk = icmp slt i32 %.val.val.10.i, %.val49.val.i
  br i1 %i.hk, label %bb.ar, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hl = call i32 @ompi_comm_free(ptr noundef nonnull %4) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %opal_obj_new.exit.i
  %.1.i = phi i32 [ %i.dw, %opal_obj_new.exit.i ], [ 0, %bb.br ], [ %i.ev, %bb.ax ], [ %i.hg, %bb.bp ], [ %i.fc, %bb.az ], [ %i.ge, %bb.bh ], [ %i.fj, %bb.bb ], [ %i.gz, %bb.bn ], [ %i.fq, %bb.bd ], [ %i.gl, %bb.bj ], [ %i.fx, %bb.bf ], [ %i.gs, %bb.bl ]
  %i.hm = call i32 @ompi_comm_free(ptr noundef nonnull %i.a) ; 0 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.ho = load i8, ptr @opal_uses_threads, align 1, !tbaa !65, !range !66, !noundef !67
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bt, label %bb.bu, !prof !61

bb.bt:                                            ; preds = %bb.bs
  %i.hq = atomicrmw volatile add ptr %i.hn, i32 -1 monotonic, align 4
  %i.hr = add i32 %i.hq, -1
  br label %opal_thread_add_fetch_32.exit53.i

bb.bu:                                            ; preds = %bb.bs
  %i.hs = load volatile i32, ptr %i.hn, align 4, !tbaa !30
  %i.ht = add nsw i32 %i.hs, -1
  store volatile i32 %i.ht, ptr %i.hn, align 4, !tbaa !30
  %i.hu = load volatile i32, ptr %i.hn, align 4, !tbaa !30
  br label %opal_thread_add_fetch_32.exit53.i

opal_thread_add_fetch_32.exit53.i:                ; preds = %bb.bu, %bb.bt
  %.0.i52.i = phi i32 [ %i.hr, %bb.bt ], [ %i.hu, %bb.bu ]
  %i.hv = icmp eq i32 %.0.i52.i, 0
  br i1 %i.hv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %opal_thread_add_fetch_32.exit53.i
  %i.hw = load ptr, ptr %i.dm, align 8, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !92 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !35 ; 2 uses
  %.not6.i54.i = icmp eq ptr %i.hz, null
  br i1 %.not6.i54.i, label %opal_obj_run_destructors.exit58.i, label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %bb.bv, %.lr.ph.i55.i
  %i.ia = phi ptr [ %i.ic, %.lr.ph.i55.i ], [ %i.hz, %bb.bv ]
  %.07.i56.i = phi ptr [ %i.ib, %.lr.ph.i55.i ], [ %i.hy, %bb.bv ]
  call void %i.ia(ptr noundef nonnull %i.dm) #22, !inline_history !164
  %i.ib = getelementptr inbounds nuw i8, ptr %.07.i56.i, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !35 ; 2 uses
  %.not.i57.i = icmp eq ptr %i.ic, null
  br i1 %.not.i57.i, label %opal_obj_run_destructors.exit58.i, label %.lr.ph.i55.i, !llvm.loop !4

opal_obj_run_destructors.exit58.i:                ; preds = %.lr.ph.i55.i, %bb.bv
  call void @free(ptr noundef nonnull %i.dm) #22
  br label %bb.bw

bb.bw:                                            ; preds = %opal_obj_run_destructors.exit58.i, %opal_thread_add_fetch_32.exit53.i
  store ptr @ompi_mpi_comm_null, ptr %4, align 8, !tbaa !38
  br label %ompi_comm_split_unguided.exit

ompi_comm_split_unguided.exit:                    ; preds = %bb.ah, %bb.aj, %bb.al, %opal_thread_add_fetch_32.exit.i, %opal_obj_run_destructors.exit.i, %bb.bw
  %.039.i = phi i32 [ 0, %bb.ah ], [ %i.dg, %bb.aj ], [ 0, %bb.al ], [ %.1.i, %bb.bw ], [ 0, %opal_obj_run_destructors.exit.i ], [ 0, %opal_thread_add_fetch_32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.by

bb.bx:                                            ; preds = %bb.ae
  %i.id = call fastcc i32 @ompi_comm_split_type_core(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %.1, i32 noundef %2, i1 noundef zeroext %.068, i1 noundef zeroext %.067, i1 noundef zeroext %.066, ptr noundef %3, ptr noundef %4)
  br label %bb.by

bb.by:                                            ; preds = %bb.y, %bb.ab, %bb.w, %bb.u, %bb.r, %bb.a, %bb.bx, %ompi_comm_split_unguided.exit, %bb.af, %bb.q, %bb.d
  %.069 = phi i32 [ 0, %bb.d ], [ 0, %bb.q ], [ -5, %bb.a ], [ %i.bc, %bb.r ], [ %i.by, %bb.u ], [ %i.ce, %bb.w ], [ 0, %bb.af ], [ %.039.i, %ompi_comm_split_unguided.exit ], [ %i.id, %bb.bx ], [ -5, %bb.ab ], [ -5, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.069
}

declare i32 @opal_info_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @ompi_comm_split_type_to_str(i32 noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp ult i32 %0, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp14 = icmp eq i32 %0, 12
  %switch.select15 = select i1 %switch.selectcmp14, ptr @.str.41, ptr @.str.42
  %switch.selectcmp1116 = icmp eq i32 %0, 13
  %switch.select1217 = select i1 %switch.selectcmp1116, ptr @.str.40, ptr %switch.select15
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ompi_comm_split_type_to_str, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = load ptr, ptr %switch.load, align 16, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.d = phi ptr [ %switch.select1217, %bb.b ], [ %i.c, %switch.lookup ]
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ompi_comm_split_type_core(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr @ompi_mpi_comm_null, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = call fastcc i32 @ompi_comm_split_type_get_part(ptr noundef %i.k, i32 noundef %1, ptr noundef %i.b, ptr noundef %i.e) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.ag, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.i, 1
  %.not46 = icmp eq i32 %i.m, 0                   ; 2 uses
  br i1 %.not46, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.p = call fastcc i32 @ompi_comm_split_type_get_part(ptr noundef %i.o, i32 noundef %1, ptr noundef %i.c, ptr noundef %i.f) ; 2 uses
  %.not47 = icmp eq i32 %i.p, 0
  br i1 %.not47, label %._crit_edge, label %bb.d, !prof !64

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.f, align 4, !tbaa !30
  %.pre93 = load ptr, ptr %i.c, align 8, !tbaa !111
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !111
  tail call void @free(ptr noundef %i.q) #22
  br label %bb.ag

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.r = phi ptr [ %.pre93, %._crit_edge ], [ null, %bb.b ] ; 2 uses
  %i.s = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.b ]
  %i.t = phi i32 [ 64, %._crit_edge ], [ 32, %bb.b ] ; 2 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !30
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.y = call i32 @ompi_comm_set_nb(ptr noundef nonnull %i.d, ptr noundef nonnull %0, i32 noundef %i.u, ptr noundef %i.v, i32 noundef %i.s, ptr noundef %i.r, ptr noundef null, ptr noundef %i.x, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.f, label %ompi_comm_set.exit.thread84

ompi_comm_set.exit.thread84:                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !15
  %.not16.i = icmp eq ptr %i.z, null
  br i1 %.not16.i, label %ompi_comm_set.exit.thread, label %ompi_comm_set.exit

ompi_comm_set.exit.thread:                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

ompi_comm_set.exit:                               ; preds = %bb.f
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !17
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.a, ptr noundef null) #22, !inline_history !103 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %bb.g, label %bb.ad, !prof !93

bb.g:                                             ; preds = %ompi_comm_set.exit.thread, %ompi_comm_set.exit
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.ad = call i32 @ompi_comm_nextcid(ptr noundef %i.ac, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i32 noundef %i.t) #22 ; 2 uses
  %.not49 = icmp eq i32 %i.ad, 0
  br i1 %.not49, label %bb.h, label %bb.ad, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !38
  call void @ompi_comm_assert_subscribe(ptr noundef %i.ae, i32 noundef 16) #22
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !38
  call void @ompi_comm_assert_subscribe(ptr noundef %i.af, i32 noundef 32) #22
  %.not50 = icmp eq ptr %7, null
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.ah = call i32 @opal_infosubscribe_change_info(ptr noundef %i.ag, ptr noundef nonnull %7) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = call i32 @ompi_comm_activate(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i32 noundef %i.t) #22 ; 2 uses
  %.not51 = icmp eq i32 %i.ai, 0
  br i1 %.not51, label %bb.k, label %bb.ad, !prof !64

bb.k:                                             ; preds = %bb.j
  %or.cond = and i1 %5, %6
  %.pre95.pre97 = load ptr, ptr %i.d, align 8, !tbaa !38 ; 7 uses
  br i1 %or.cond, label %ompi_comm_split_verify.exit70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %.pre95.pre97, i64 220
  %.val35.i = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.ak = getelementptr i8, ptr %.pre95.pre97, i64 264
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.al = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i32, ptr %i.al, align 8, !tbaa !25 ; 4 uses
  br i1 %4, label %ompi_comm_split_verify.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = sext i32 %.val.val.i to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = call noalias ptr @malloc(i64 noundef %i.an) #23 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ompi_comm_split_verify.exit, label %bb.n, !prof !61

bb.n:                                             ; preds = %bb.m
  %i.aq = shl nsw i32 %.val35.i, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar ; 2 uses
  store i32 %2, ptr %i.as, align 4, !tbaa !30
  %i.at = getelementptr i8, ptr %i.as, i64 4
  store i32 %3, ptr %i.at, align 4, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.pre95.pre97, i64 344
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !100
  %i.az = call i32 %i.aw(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.ao, i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %.pre95.pre97, ptr noundef %i.ay) #22, !inline_history !171 ; 2 uses
  %.not.i52 = icmp eq i32 %i.az, 0
  br i1 %.not.i52, label %.preheader.i, label %.sink.split.i

.preheader.i:                                     ; preds = %bb.n
  %i.ba = icmp sgt i32 %.val.val.i, 0
  br i1 %i.ba, label %.lr.ph.preheader.i, label %.sink.split.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.val.val.i to i64
  %i.bb = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.bc = icmp eq i32 %i.bb, -32766
  br i1 %i.bc, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i
  %exitcond.peel.not.i = icmp eq i32 %.val.val.i, 1
  br i1 %exitcond.peel.not.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %bb.o ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.bf = icmp eq i32 %i.be, -32766
  br i1 %i.bf, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !30
  %i.bi = getelementptr i8, ptr %i.bd, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.sink.split.i, label %.lr.ph.i, !llvm.loop !172

.sink.split.i:                                    ; preds = %.lr.ph.i, %bb.p, %bb.q, %.lr.ph.preheader.i, %bb.o, %.preheader.i, %bb.n
  %.181 = phi i8 [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %.lr.ph.preheader.i ], [ 0, %.preheader.i ], [ 1, %.lr.ph.i ], [ 1, %bb.p ], [ 0, %bb.q ]
  %.031.ph.i = phi i32 [ %i.az, %bb.n ], [ 0, %bb.o ], [ 0, %.lr.ph.preheader.i ], [ 0, %.preheader.i ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %.lr.ph.i ]
  call void @free(ptr noundef nonnull %i.ao) #22
  %.pre95.pre96.pre = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %ompi_comm_split_verify.exit

ompi_comm_split_verify.exit:                      ; preds = %bb.l, %bb.m, %.sink.split.i
  %.pre95.pre96 = phi ptr [ %.pre95.pre97, %bb.l ], [ %.pre95.pre97, %bb.m ], [ %.pre95.pre96.pre, %.sink.split.i ] ; 4 uses
  %.2 = phi i8 [ 1, %bb.l ], [ 0, %bb.m ], [ %.181, %.sink.split.i ] ; 2 uses
  %.031.i = phi i32 [ 0, %bb.l ], [ -2, %bb.m ], [ %.031.ph.i, %.sink.split.i ]
  br i1 %.not46, label %ompi_comm_split_verify.exit70, label %bb.r

bb.r:                                             ; preds = %ompi_comm_split_verify.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre95.pre96, i64 280
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72 ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 220
  %.val35.i53 = load i32, ptr %i.bn, align 4, !tbaa !69
  %i.bo = getelementptr i8, ptr %i.bm, i64 264
  %.val.i54 = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bp = getelementptr i8, ptr %.val.i54, i64 16
  %.val.val.i55 = load i32, ptr %i.bp, align 8, !tbaa !25 ; 4 uses
  %i.bq = trunc nuw i8 %.2 to i1
  br i1 %i.bq, label %ompi_comm_split_verify.exit70.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = sext i32 %.val.val.i55 to i64
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = call noalias ptr @malloc(i64 noundef %i.bs) #23 ; 6 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %ompi_comm_split_verify.exit70.thread89, label %bb.t, !prof !61

bb.t:                                             ; preds = %bb.s
  %i.bv = shl nsw i32 %.val35.i53, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw ; 2 uses
  store i32 %2, ptr %i.bx, align 4, !tbaa !30
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  store i32 %3, ptr %i.by, align 4, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 344
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !95 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.ce = call i32 %i.cb(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.bt, i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.bm, ptr noundef %i.cd) #22, !inline_history !171 ; 2 uses
  %.not.i56 = icmp eq i32 %i.ce, 0
  br i1 %.not.i56, label %.preheader.i60, label %.sink.split.i57

.preheader.i60:                                   ; preds = %bb.t
  %i.cf = icmp sgt i32 %.val.val.i55, 0
  br i1 %i.cf, label %.lr.ph.preheader.i61, label %.sink.split.i57

.lr.ph.preheader.i61:                             ; preds = %.preheader.i60
  %wide.trip.count.i62 = zext nneg i32 %.val.val.i55 to i64
  %i.cg = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.ch = icmp eq i32 %i.cg, -32766
  br i1 %i.ch, label %.sink.split.i57, label %bb.u

bb.u:                                             ; preds = %.lr.ph.preheader.i61
  %exitcond.peel.not.i63 = icmp eq i32 %.val.val.i55, 1
  br i1 %exitcond.peel.not.i63, label %.sink.split.i57, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.u, %bb.w
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i67, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %.idx.i66 = shl nuw nsw i64 %indvars.iv.i65, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i66 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !30
  %i.ck = icmp eq i32 %i.cj, -32766
  br i1 %i.ck, label %.sink.split.i57, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.ci, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !30
  %i.cp = icmp slt i32 %i.cm, %i.co
  br i1 %i.cp, label %.sink.split.i57, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i62
  br i1 %exitcond.not.i68, label %.sink.split.i57, label %.lr.ph.i64, !llvm.loop !172

.sink.split.i57:                                  ; preds = %.lr.ph.i64, %bb.v, %bb.w, %.lr.ph.preheader.i61, %bb.u, %.preheader.i60, %bb.t
  %.3 = phi i8 [ 0, %bb.t ], [ 0, %bb.u ], [ 1, %.lr.ph.preheader.i61 ], [ 0, %.preheader.i60 ], [ 1, %.lr.ph.i64 ], [ 1, %bb.v ], [ 0, %bb.w ]
  %.031.ph.i58 = phi i32 [ %i.ce, %bb.t ], [ 0, %bb.u ], [ 0, %.lr.ph.preheader.i61 ], [ 0, %.preheader.i60 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %.lr.ph.i64 ]
  call void @free(ptr noundef nonnull %i.bt) #22
  %.pre95.pre = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %ompi_comm_split_verify.exit70

ompi_comm_split_verify.exit70:                    ; preds = %.sink.split.i57, %ompi_comm_split_verify.exit, %bb.k
  %.pre95 = phi ptr [ %.pre95.pre97, %bb.k ], [ %.pre95.pre96, %ompi_comm_split_verify.exit ], [ %.pre95.pre, %.sink.split.i57 ] ; 2 uses
  %.080 = phi i8 [ %i.g, %bb.k ], [ %.2, %ompi_comm_split_verify.exit ], [ %.3, %.sink.split.i57 ]
  %.0 = phi i32 [ 0, %bb.k ], [ %.031.i, %ompi_comm_split_verify.exit ], [ %.031.ph.i58, %.sink.split.i57 ]
  %i.cq = trunc nuw i8 %.080 to i1
  br i1 %i.cq, label %ompi_comm_split_verify.exit70.thread, label %ompi_comm_split_verify.exit70.thread89

ompi_comm_split_verify.exit70.thread89:           ; preds = %ompi_comm_split_verify.exit70, %bb.s
  %i.cr = phi ptr [ %.pre95.pre96, %bb.s ], [ %.pre95, %ompi_comm_split_verify.exit70 ] ; 6 uses
  %.092 = phi i32 [ -2, %bb.s ], [ %.0, %ompi_comm_split_verify.exit70 ]
  store ptr %i.cr, ptr %8, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.cu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @ompi_comm_print_cid.cid_buffer_index) ; 5 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30 ; 2 uses
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 176), align 8, !tbaa !105
  %i.cx = and i32 %i.cw, 2
  %.not7.i = icmp eq i32 %i.cx, 0
  br i1 %.not7.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %ompi_comm_split_verify.exit70.thread89
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 224
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !71
  %i.da = and i32 %i.cz, 65536
  %.not.i71 = icmp eq i32 %i.da, 0
  br i1 %.not.i71, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @ompi_comm_print_cid.cid_buffer) ; 2 uses
  %i.dc = sext i32 %i.cv to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [20 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  %i.df = load i64, ptr %i.de, align 8, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 176
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !59
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dd, i64 noundef 20, ptr noundef nonnull @.str.24, i64 noundef %i.df, i64 noundef %i.dh) #22 ; 0 uses
  br label %ompi_comm_print_cid.exit

bb.z:                                             ; preds = %bb.x, %ompi_comm_split_verify.exit70.thread89
  %i.dj = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @ompi_comm_print_cid.cid_buffer) ; 2 uses
  %i.dk = sext i32 %i.cv to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !91
  %i.do = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dl, i64 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %i.dn) #22 ; 0 uses
  br label %ompi_comm_print_cid.exit

ompi_comm_print_cid.exit:                         ; preds = %bb.y, %bb.z
  %.pre-phi8.i = phi i64 [ %i.dk, %bb.z ], [ %i.dc, %bb.y ]
  %.pre-phi.i = phi ptr [ %i.dj, %bb.z ], [ %i.db, %bb.y ]
  %i.dp = load i32, ptr %i.cu, align 4, !tbaa !30
  %.not6.i = icmp eq i32 %i.dp, 0                 ; 3 uses
  %i.dq = zext i1 %.not6.i to i32
  store i32 %i.dq, ptr %i.cu, align 4, !tbaa !30
  %i.dr = getelementptr inbounds [20 x i8], ptr %.pre-phi.i, i64 %.pre-phi8.i
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 176), align 8, !tbaa !105
  %i.dt = and i32 %i.ds, 2
  %.not7.i72 = icmp eq i32 %i.dt, 0
  br i1 %.not7.i72, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %ompi_comm_print_cid.exit
  %i.du = load i32, ptr %i.h, align 8, !tbaa !71
  %i.dv = and i32 %i.du, 65536
  %.not.i73 = icmp eq i32 %i.dv, 0
  br i1 %.not.i73, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @ompi_comm_print_cid.cid_buffer) ; 2 uses
  %i.dx = zext i1 %.not6.i to i64                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [20 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !106
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !59
  %i.ed = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dy, i64 noundef 20, ptr noundef nonnull @.str.24, i64 noundef %i.ea, i64 noundef %i.ec) #22 ; 0 uses
  br label %ompi_comm_print_cid.exit77

bb.ac:                                            ; preds = %bb.aa, %ompi_comm_print_cid.exit
  %i.ee = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @ompi_comm_print_cid.cid_buffer) ; 2 uses
  %i.ef = zext i1 %.not6.i to i64                 ; 2 uses
  %i.eg = getelementptr inbounds nuw [20 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !91
  %i.ej = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eg, i64 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %i.ei) #22 ; 0 uses
  br label %ompi_comm_print_cid.exit77

ompi_comm_print_cid.exit77:                       ; preds = %bb.ab, %bb.ac
  %.pre-phi8.i74 = phi i64 [ %i.ef, %bb.ac ], [ %i.dx, %bb.ab ]
  %.pre-phi.i75 = phi ptr [ %i.ee, %bb.ac ], [ %i.dw, %bb.ab ]
  %i.ek = load i32, ptr %i.cu, align 4, !tbaa !30
  %.not6.i76 = icmp eq i32 %i.ek, 0
  %i.el = zext i1 %.not6.i76 to i32
  store i32 %i.el, ptr %i.cu, align 4, !tbaa !30
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %.pre-phi.i75, i64 %.pre-phi8.i74
  %i.en = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ct, i64 noundef 64, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.em) #22 ; 0 uses
  br label %bb.ad

ompi_comm_split_verify.exit70.thread:             ; preds = %bb.r, %ompi_comm_split_verify.exit70
  %i.eo = phi ptr [ %.pre95.pre96, %bb.r ], [ %.pre95, %ompi_comm_split_verify.exit70 ]
  %i.ep = call i32 @ompi_comm_split_with_info(ptr noundef %i.eo, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef nonnull %8, i1 noundef zeroext false)
  %i.eq = call i32 @ompi_comm_free(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %ompi_comm_set.exit.thread84, %bb.j, %bb.g, %ompi_comm_set.exit, %ompi_comm_split_verify.exit70.thread, %ompi_comm_print_cid.exit77
  %.1 = phi i32 [ %i.ab, %ompi_comm_set.exit ], [ %i.ad, %bb.g ], [ %i.ai, %bb.j ], [ %i.ep, %ompi_comm_split_verify.exit70.thread ], [ %.092, %ompi_comm_print_cid.exit77 ], [ %i.y, %ompi_comm_set.exit.thread84 ] ; 2 uses
  %i.er = icmp ne i32 %.1, 0
  %i.es = load ptr, ptr %i.d, align 8
  %i.et = icmp ne ptr %i.es, @ompi_mpi_comm_null
  %i.eu = select i1 %i.er, i1 %i.et, i1 false
  br i1 %i.eu, label %bb.ae, label %bb.af, !prof !61

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
