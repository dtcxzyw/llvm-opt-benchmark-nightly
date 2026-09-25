Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/btl_tcp_proc?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
begin_hunk_0_@mca_btl_tcp_proc_remove:bb.a
.thread:                                          ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #7 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59
  %i.y = trunc nuw i8 %.pre to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !62

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.z, i32 -1 monotonic, align 4
  %i.ab = add i32 %i.aa, -1
  br label %opal_thread_add_fetch_32.exit

bb.j:                                             ; preds = %.thread, %bb.h
  %i.ac = phi ptr [ %i.v, %.thread ], [ %i.z, %bb.h ] ; 3 uses
  %i.ad = load volatile i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = add nsw i32 %i.ad, -1
  store volatile i32 %i.ae, ptr %i.ac, align 4, !tbaa !11
  %i.af = load volatile i32, ptr %i.ac, align 4, !tbaa !11
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ab, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp eq i32 %.0.i, 0
  br i1 %i.ag, label %bb.k, label %bb.n

bb.k:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not6.i = icmp eq ptr %i.ak, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.al = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ak, %bb.k ]
  %.07.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.aj, %bb.k ]
  tail call void %i.al(ptr noundef nonnull %0) #7, !inline_history !1
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !2

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.k
  tail call void @free(ptr noundef nonnull %0) #7
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  %i.ao = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !142

.loopexit:                                        ; preds = %bb.l, %bb.d, %bb.f
  %i.ap = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !61

bb.m:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ar) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %.loopexit, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define ptr @mca_btl_tcp_proc_lookup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !67
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 496)) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i64, ptr %0, align 4
  %i.h = call i32 @opal_proc_table_get_value(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 384), i64 %i.g, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 496)) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.n = load ptr, ptr @opal_proc_for_name, align 8, !tbaa !23
  %i.o = load i64, ptr %0, align 4
  %i.p = call ptr %i.n(i64 %i.o) #7               ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !144
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 284), align 4, !tbaa !52
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %.sink.split

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !94
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 296), align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.u = call i32 @mca_btl_tcp_add_procs(ptr noundef %i.t, i64 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null) #7 ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91  ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.pre14 = phi ptr [ %i.x, %.lr.ph ], [ %i.aa, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_tcp_component, i64 284), align 4, !tbaa !52
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.sink.split, !llvm.loop !143

.sink.split:                                      ; preds = %bb.h, %bb.f, %.preheader.._crit_edge_crit_edge
  %.1.ph = phi ptr [ null, %bb.f ], [ %.pre.pre, %.preheader.._crit_edge_crit_edge ], [ %.pre14, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %.1 = phi ptr [ %i.l, %bb.e ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.1
}

declare i32 @mca_btl_tcp_add_procs(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @mca_btl_tcp_proc_accept(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [16 x i8]], align 16         ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %.not6784.not = icmp eq i64 %i.i, 0
  br i1 %.not6784.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.lr.ph
  %.ph = phi i64 [ %i.bh, %.loopexit ], [ %i.i, %.lr.ph ] ; 4 uses
  %.05787.ph = phi i64 [ %i.bi, %.loopexit ], [ 0, %.lr.ph ] ; 4 uses
  %.05886.ph = phi ptr [ %.05886160, %.loopexit ], [ undef, %.lr.ph ] ; 2 uses
  %.06085.ph = phi i32 [ %.06085156, %.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.o = load i16, ptr %1, align 2, !tbaa !78     ; 2 uses
  %cond1 = icmp eq i16 %i.o, 2
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05787.ph
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !76
  %i.v = zext i8 %i.u to i16
  %.not.peel = icmp eq i16 %i.o, %i.v
  br i1 %.not.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.outer
  br i1 %cond1, label %bb.e, label %.loopexit166

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.s, align 1
  %i.x = load i32, ptr %i.k, align 1
  %i.y = icmp ne i32 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %.not65.peel = icmp eq i32 %i.z, 0
  br i1 %.not65.peel, label %bb.f, label %.loopexit167

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !148
  %.not66.peel = icmp eq i32 %i.ab, 2
  br i1 %.not66.peel, label %.loopexit166, label %.thread.peel

.thread.peel:                                     ; preds = %bb.f
  %i.ac = add nuw i64 %.05787.ph, 1               ; 2 uses
  %.not67109.peel = icmp ult i64 %i.ac, %.ph
  br i1 %.not67109.peel, label %.outer.peel.newph, label %._crit_edge.thread112

.outer.peel.newph:                                ; preds = %.thread.peel, %.thread
  %.05787 = phi i64 [ %i.bj, %.thread ], [ %i.ac, %.thread.peel ] ; 4 uses
  %.05886 = phi ptr [ %i.ae, %.thread ], [ %i.q, %.thread.peel ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05787
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !76
  %.not = icmp eq i8 %i.ai, 2
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.outer.peel.newph
  %i.aj = load i32, ptr %i.ag, align 1
  %i.ak = load i32, ptr %i.k, align 1
  %i.al = icmp ne i32 %i.aj, %i.ak
  %i.am = zext i1 %i.al to i32
  %.not65 = icmp eq i32 %i.am, 0
  br i1 %.not65, label %bb.j, label %.loopexit167

.loopexit167:                                     ; preds = %bb.g, %bb.e
  %.05787.lcssa162 = phi i64 [ %.05787.ph, %bb.e ], [ %.05787, %bb.g ] ; 2 uses
  %.05886.lcssa158 = phi ptr [ %.05886.ph, %bb.e ], [ %.05886, %bb.g ]
  %.06085.lcssa154 = phi i32 [ %.06085.ph, %bb.e ], [ 1, %bb.g ]
  %.lcssa151 = phi ptr [ %i.q, %bb.e ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !89
  %i.ao = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.an) #7
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit167
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa151, i64 56
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_btl_base_framework, i64 76), align 4, !tbaa !89
  %i.ar = load ptr, ptr @opal_process_name_print, align 8, !tbaa !23
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8
  %i.av = call ptr %i.ar(i64 %i.au) #7
  %i.aw = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 16) #7
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !90
  %i.ay = call ptr @inet_ntop(i32 noundef 2, ptr noundef %i.ax, ptr noundef nonnull %i.m, i32 noundef 16) #7
  %i.az = trunc i64 %.05787.lcssa162 to i32
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !92
  %i.bb = trunc i64 %i.ba to i32
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.aq, ptr noundef nonnull @.str.8, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef %i.ay, i32 noundef %i.az, i32 noundef %i.bb) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load i64, ptr %i.h, align 8, !tbaa !92
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !148
  %.not66 = icmp eq i32 %i.bd, 2
  br i1 %.not66, label %.loopexit166, label %.thread

.loopexit166:                                     ; preds = %bb.f, %bb.d, %bb.j
  %.lcssa150 = phi ptr [ %i.ae, %bb.j ], [ %i.q, %bb.d ], [ %i.q, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa150, i64 112
  store i32 0, ptr %i.be, align 8, !tbaa !148
  call void @mca_btl_tcp_endpoint_accept(ptr noundef nonnull %.lcssa150, ptr noundef nonnull %1, i32 noundef %2) #7
  %i.bf = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.thread77.sink.split, label %.thread77, !prof !61

.loopexit:                                        ; preds = %.outer, %.outer.peel.newph, %bb.i
  %.05787164 = phi i64 [ %.05787.lcssa162, %bb.i ], [ %.05787.ph, %.outer ], [ %.05787, %.outer.peel.newph ]
  %.05886160 = phi ptr [ %.05886.lcssa158, %bb.i ], [ %.05886.ph, %.outer ], [ %.05886, %.outer.peel.newph ] ; 2 uses
  %.06085156 = phi i32 [ %.06085.lcssa154, %bb.i ], [ %.06085.ph, %.outer ], [ 1, %.outer.peel.newph ] ; 2 uses
  %i.bh = phi i64 [ %.pre, %bb.i ], [ %.ph, %.outer.peel.newph ], [ %.ph, %.outer ] ; 2 uses
  %i.bi = add nuw i64 %.05787164, 1               ; 2 uses
  %.not67 = icmp ult i64 %i.bi, %i.bh
  br i1 %.not67, label %.outer, label %._crit_edge, !llvm.loop !145

.thread:                                          ; preds = %bb.j
  %i.bj = add nuw i64 %.05787, 1                  ; 2 uses
  %.not67109 = icmp ult i64 %i.bj, %.ph
  br i1 %.not67109, label %.outer.peel.newph, label %._crit_edge.thread112, !llvm.loop !146

._crit_edge:                                      ; preds = %.loopexit
  %i.bk = icmp eq i32 %.06085156, 0
  br i1 %i.bk, label %._crit_edge.thread, label %._crit_edge.thread112

._crit_edge.thread112:                            ; preds = %.thread, %.thread.peel, %._crit_edge
  %.159.ph111115 = phi ptr [ %.05886160, %._crit_edge ], [ %i.ae, %.thread ], [ %i.q, %.thread.peel ]
  call void @mca_btl_tcp_endpoint_accept(ptr noundef %.159.ph111115, ptr noundef nonnull %1, i32 noundef %2) #7
  %i.bl = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.thread77.sink.split, label %.thread77, !prof !61

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.bn = call i32 @shutdown(i32 noundef %2, i32 noundef 2) #7 ; 0 uses
  %i.bo = call i32 @close(i32 noundef %2) #7      ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 127
  store i8 0, ptr %i.bp, align 1, !tbaa !74
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !92  ; 2 uses
  %.not96 = icmp eq i64 %i.bq, 0
  br i1 %.not96, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %._crit_edge.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.k

._crit_edge94:                                    ; preds = %bb.p, %._crit_edge.thread
  %.054.lcssa = phi ptr [ null, %._crit_edge.thread ], [ %.1, %bb.p ] ; 3 uses
  %i.bs = load ptr, ptr @opal_get_proc_hostname, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.bv = call ptr %i.bs(ptr noundef %i.bu) #7
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !150
  %i.bw = load ptr, ptr @opal_show_help, align 8, !tbaa !23
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !73
  %i.by = call i32 @getpid() #7
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.ca = load ptr, ptr @opal_process_name_print, align 8, !tbaa !23
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = call ptr %i.ca(i64 %i.cd) #7
  %i.cf = call ptr @opal_net_get_hostname(ptr noundef %1) #7
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !92
  %i.ch = icmp eq ptr %.054.lcssa, null           ; 2 uses
  %i.ci = select i1 %i.ch, ptr @.str.13, ptr %.054.lcssa
  %i.cj = call i32 (ptr, ptr, i32, ...) %i.bw(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %i.bz, ptr noundef %i.ce, ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull %i.ci) #7 ; 0 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !150
  call void @free(ptr noundef %i.ck) #7
  br i1 %i.ch, label %bb.r, label %bb.q

bb.k:                                             ; preds = %.lr.ph93, %bb.p
  %i.cl = phi i64 [ %i.bq, %.lr.ph93 ], [ %i.db, %bb.p ]
  %.091 = phi i64 [ 0, %.lr.ph93 ], [ %i.dc, %bb.p ] ; 2 uses
  %.05490 = phi ptr [ null, %.lr.ph93 ], [ %.1, %bb.p ] ; 4 uses
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.091
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !90 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !76  ; 2 uses
  %i.ct = load i16, ptr %1, align 2, !tbaa !78
  %i.cu = zext i8 %i.cs to i16
  %.not70 = icmp eq i16 %i.ct, %i.cu
  br i1 %.not70, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cv = zext i8 %i.cs to i32
  %i.cw = call ptr @inet_ntop(i32 noundef %i.cv, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.c, i32 noundef 127) #7 ; 0 uses
  %i.cx = icmp eq ptr %.05490, null
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.c) #7 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cz = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull %.05490, ptr noundef nonnull %i.c) #7 ; 0 uses
  call void @free(ptr noundef nonnull %.05490) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !150
  %.pre98 = load i64, ptr %i.h, align 8, !tbaa !92
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %i.db = phi i64 [ %.pre98, %bb.o ], [ %i.cl, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.da, %bb.o ], [ %.05490, %bb.k ] ; 2 uses
  %i.dc = add nuw i64 %.091, 1                    ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  br i1 %i.dd, label %bb.k, label %._crit_edge94, !llvm.loop !147

bb.q:                                             ; preds = %._crit_edge94
  call void @free(ptr noundef nonnull %.054.lcssa) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.de = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.thread77.sink.split, label %.thread77, !prof !61

.thread77.sink.split:                             ; preds = %bb.r, %._crit_edge.thread112, %.loopexit166
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dg) #7 ; 0 uses
  br label %.thread77

.thread77:                                        ; preds = %.thread77.sink.split, %.loopexit166, %bb.r, %._crit_edge.thread112
  ret void
}

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @mca_btl_tcp_endpoint_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
end_hunk_0
