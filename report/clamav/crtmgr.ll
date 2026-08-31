Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crtmgr?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@crtmgr_add:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bq, ptr noundef nonnull align 8 dereferenceable(20) %i.br, i64 20, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bs, ptr noundef nonnull align 8 dereferenceable(20) %i.bt, i64 20, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 220
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bu, ptr noundef nonnull align 4 dereferenceable(20) %i.bv, i64 20, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 264
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i64 64, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 260
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 352
  %i.cd = load <2 x i64>, ptr %i.cb, align 8, !tbaa !27
  store <2 x i64> %i.cd, ptr %i.cc, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 368
  %i.cg = load <4 x i32>, ptr %i.ce, align 8, !tbaa !28
  store <4 x i32> %i.cg, ptr %i.cf, align 8, !tbaa !28
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 384
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !18
  %i.cj = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 400
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 392
  store ptr null, ptr %i.cl, align 8, !tbaa !32
  %.not71 = icmp eq ptr %i.cj, null
  br i1 %.not71, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 392
  store ptr %i.ar, ptr %i.cm, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.ar, ptr %0, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !33
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !33
  br label %bb.v

bb.u:                                             ; preds = %cli_crt_init_fps.exit.thread, %bb.p, %bb.n, %bb.m, %cli_crt_init_fps.exit
  %i.cq = phi ptr [ null, %cli_crt_init_fps.exit.thread ], [ %i.ax, %bb.p ], [ %i.ax, %bb.n ], [ %i.ax, %bb.m ], [ %i.ax, %cli_crt_init_fps.exit ]
  %i.cr = phi ptr [ null, %cli_crt_init_fps.exit.thread ], [ %i.av, %bb.p ], [ %i.av, %bb.n ], [ %i.av, %bb.m ], [ %i.av, %cli_crt_init_fps.exit ]
  %i.cs = phi ptr [ null, %cli_crt_init_fps.exit.thread ], [ %i.at, %bb.p ], [ %i.at, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %cli_crt_init_fps.exit ]
  tail call void @BN_free(ptr noundef %i.cs) #10
  tail call void @BN_free(ptr noundef %i.cr) #10
  tail call void @BN_free(ptr noundef %i.cq) #10
  tail call void @free(ptr noundef nonnull %i.ar) #10
  br label %bb.v

bb.v:                                             ; preds = %crtmgr_block_list_lookup.exit, %bb.j, %bb.t, %crtmgr_block_list_lookup.exit.thread, %bb.u
  %.06082 = phi i1 [ true, %bb.u ], [ false, %crtmgr_block_list_lookup.exit ], [ true, %crtmgr_block_list_lookup.exit.thread ], [ false, %bb.j ], [ false, %bb.t ]
  ret i1 %.06082
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @crtmgr_init(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) local_unnamed_addr #7 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define void @crtmgr_del(ptr nofree noundef captures(none) %0, ptr noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.026 = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not27 = icmp eq ptr %.026, null
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.028 = phi ptr [ %.0, %bb.j ], [ %.026, %bb.a ] ; 4 uses
  %i.a = icmp eq ptr %.028, %1
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.028, i64 392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not22 = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 400
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.e, ptr %i.f, align 8, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  store ptr %i.c, ptr %i.g, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  tail call void @BN_free(ptr noundef %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  tail call void @BN_free(ptr noundef %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  tail call void @BN_free(ptr noundef %i.m) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %.not24 = icmp eq ptr %i.n, null
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.n) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %1) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !33
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.028, i64 400
  %.0 = load ptr, ptr %i.r, align 8, !tbaa !17    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @crtmgr_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @crtmgr_del(ptr noundef nonnull %0, ptr noundef %i.c)
  %i.d = load i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @crtmgr_verify_crt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.03958 = load ptr, ptr %0, align 8, !tbaa !17  ; 2 uses
  %.not59 = icmp eq ptr %.03958, null
  br i1 %.not59, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 380
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.03963 = phi ptr [ %.03958, %.lr.ph ], [ %.039, %bb.g ] ; 9 uses
  %.03162 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.g ] ; 5 uses
  %.03261 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.g ] ; 6 uses
  %.03560 = phi ptr [ null, %.lr.ph ], [ %.338, %bb.g ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03963, i64 372
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.03963, i64 384
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18
  %.not46 = icmp eq i32 %i.j, 0
  br i1 %.not46, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.03963, i64 200 ; 2 uses
  %i.l = load i128, ptr %i.k, align 1
  %i.m = load i128, ptr %i.a, align 1
  %i.n = xor i128 %i.l, %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 16
  %i.p = getelementptr i8, ptr %i.a, i64 16
  %i.q = load i32, ptr %i.o, align 1
  %i.r = load i32, ptr %i.p, align 1
  %i.s = zext i32 %i.q to i128
  %i.t = zext i32 %i.r to i128
  %i.u = xor i128 %i.s, %i.t
  %i.v = or i128 %i.n, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not47 = icmp eq i32 %i.x, 0
  br i1 %.not47, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.z = load i32, ptr %i.c, align 8, !tbaa !19
  %i.aa = tail call fastcc i32 @crtmgr_rsa_verify(ptr noundef %.03963, ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %i.d)
  %.not48 = icmp eq i32 %i.aa, 0
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03963, i64 376
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !24
  %i.ae = and i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = icmp eq i32 %i.ae, %i.ab
  %.pre = load i32, ptr %i.f, align 4, !tbaa !25  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03963, i64 380
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !25
  %i.ai = and i32 %i.ah, %.pre                    ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %.pre
  %or.cond = select i1 %i.af, i1 %i.aj, i1 false
  br i1 %or.cond, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ak = add i32 %.03162, 1
  %i.al = add nsw i32 %i.ai, %i.ae                ; 2 uses
  %i.am = icmp sgt i32 %i.al, %.03261
  %spec.select = select i1 %i.am, ptr %.03963, ptr %.03560
  %spec.select49 = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %.03261)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.b, %bb.c, %bb.d, %bb.e
  %.338 = phi ptr [ %.03560, %bb.c ], [ %.03560, %bb.d ], [ %.03560, %bb.e ], [ %spec.select, %.thread ], [ %.03560, %bb.b ] ; 3 uses
  %.3 = phi i32 [ %.03261, %bb.c ], [ %.03261, %bb.d ], [ %.03261, %bb.e ], [ %spec.select49, %.thread ], [ %.03261, %bb.b ]
  %.2 = phi i32 [ %.03162, %bb.c ], [ %.03162, %bb.d ], [ %.03162, %bb.e ], [ %i.ak, %.thread ], [ %.03162, %bb.b ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03963, i64 400
  %.039 = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %.not = icmp eq ptr %.039, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.g
  %i.ao = icmp ugt i32 %.2, 1
  br i1 %i.ao, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.2) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.a, %._crit_edge, %bb.h
  %.343 = phi ptr [ %.338, %._crit_edge ], [ %.338, %bb.h ], [ null, %bb.a ], [ %.03963, %bb.f ]
  ret ptr %.343
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @crtmgr_rsa_verify(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call i32 @BN_num_bits(ptr noundef %i.b) #10
  %i.d = tail call i32 @BN_num_bits(ptr noundef %1) #10
  %switch.tableidx = add i32 %2, -1               ; 3 uses
  %i.e = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 115, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %2) #10
  br label %bb.bc

switch.lookup:                                    ; preds = %bb.a
  %i.f = add nsw i32 %i.d, 7
  %.neg = sdiv i32 %i.f, -8
  %i.g = add nsw i32 %i.c, 7
  %i.h = sdiv i32 %i.g, 8
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.crtmgr_rsa_verify, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %sub = add nsw i32 %i.h, -2
  %i.j = add nsw i32 %sub, %.neg
  %i.k = icmp ult i32 %i.j, -3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #10
  br label %bb.bc

bb.d:                                             ; preds = %switch.lookup
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.m = tail call i32 @BN_num_bits(ptr noundef %i.l) #10
  %i.n = add nsw i32 %i.m, 7
  %i.o = sdiv i32 %i.n, 8                         ; 5 uses
  %i.p = tail call ptr @BN_CTX_new() #10          ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %crtmgr_get_recov_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @BN_new() #10              ; 8 uses
  %.not35.i = icmp eq ptr %i.q, null
  br i1 %.not35.i, label %crtmgr_get_recov_data.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.o to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #11 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %crtmgr_get_recov_data.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.x = tail call i32 @BN_mod_exp(ptr noundef nonnull %i.q, ptr noundef %1, ptr noundef %i.v, ptr noundef %i.w, ptr noundef nonnull %i.p) #10
  %.not36.i = icmp eq i32 %i.x, 0
  br i1 %.not36.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.22) #10
  br label %crtmgr_get_recov_data.exit

bb.i:                                             ; preds = %bb.g
  %i.y = tail call i32 @BN_bn2bin(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s) #10 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #10
  br label %crtmgr_get_recov_data.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp ult i32 %i.o, 11
  br i1 %i.aa, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i32 %i.o, %i.y
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = load i8, ptr %i.s, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ae = add nsw i32 %i.o, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.029.i.i = phi i32 [ %i.ae, %bb.n ], [ %i.y, %bb.l ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ad, %bb.n ], [ %i.s, %bb.l ] ; 2 uses
  %i.af = add i32 %.029.i.i, 1
  %.not35.i.i.a = icmp eq i32 %i.o, %i.af
  br i1 %.not35.i.i.a, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %.0.i.i, align 1, !tbaa !34
  %.not36.i.i = icmp eq i8 %i.ag, 1
  br i1 %.not36.i.i, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %.029.i.i, -1               ; 3 uses
  %i.ai = icmp sgt i32 %.029.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit.thread61.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.0.pn47.i.i = phi ptr [ %.148.i.i, %bb.r ], [ %.0.i.i, %bb.q ] ; 2 uses
  %.02746.i.i = phi i32 [ %i.ak, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.148.i.i = getelementptr inbounds nuw i8, ptr %.0.pn47.i.i, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.148.i.i, align 1, !tbaa !34
  switch i8 %i.aj, label %.sink.split.i [
    i8 -1, label %bb.r
    i8 0, label %.loopexit.i.i
  ]

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i32 %.02746.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ak, %i.ah
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = icmp samesign ult i32 %.02746.i.i, 8
  br i1 %i.al, label %.thread.i.i, label %bb.t

.loopexit.thread61.i.i:                           ; preds = %bb.q
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %.sink.split.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.thread61.i.i, %.loopexit.i.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %.lr.ph.i.i, %.thread.i.i, %.loopexit.thread61.i.i, %bb.p, %bb.o, %bb.m
  %.str.27.sink.i = phi ptr [ @.str.26, %bb.o ], [ @.str.25, %.thread.i.i ], [ @.str.25, %bb.m ], [ @.str.27, %.loopexit.thread61.i.i ], [ @.str.26, %bb.p ], [ @.str.27, %.lr.ph.i.i ], [ @.str.27, %bb.r ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.27.sink.i, ptr noundef nonnull @__func__._padding_check_PKCS1_type_1) #10
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #10
  br label %crtmgr_get_recov_data.exit

bb.t:                                             ; preds = %.loopexit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.pn47.i.i, i64 2
  %.neg.i.i = xor i32 %.02746.i.i, -1
  %i.ao = add i32 %i.ah, %.neg.i.i
  br label %crtmgr_get_recov_data.exit

crtmgr_get_recov_data.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.j, %bb.s, %bb.t
  %.087 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.s ], [ %i.an, %bb.t ] ; 10 uses
  %.086 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.s ], [ %i.s, %bb.t ] ; 2 uses
  %.085 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.s ], [ %i.ao, %bb.t ] ; 3 uses
  %.028.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %i.s, %bb.h ], [ %i.s, %bb.j ], [ %i.s, %bb.s ], [ null, %bb.t ]
  %.027.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.h ], [ %i.q, %bb.j ], [ %i.q, %bb.s ], [ %i.q, %bb.t ]
  %.not = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.s ], [ true, %bb.t ]
  tail call void @BN_CTX_free(ptr noundef %i.p) #10
  tail call void @BN_free(ptr noundef %.027.i) #10
  tail call void @free(ptr noundef %.028.i) #10
  br i1 %.not, label %bb.u, label %bb.bc

bb.u:                                             ; preds = %crtmgr_get_recov_data.exit
  %.not57 = icmp sgt i32 %.085, %switch.ext
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #10
  br label %bb.bb

bb.w:                                             ; preds = %bb.u
  %i.ap = load i8, ptr %.087, align 1, !tbaa !34
  %.not58 = icmp eq i8 %i.ap, 48
  br i1 %.not58, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %.087, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %.085, -2
  %.not59 = icmp eq i32 %i.at, %i.as
  br i1 %.not59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #10
  br label %bb.bb

bb.z:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %.087, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !34
  %.not60 = icmp eq i8 %i.av, 48
  br i1 %.not60, label %bb.ab, label %bb.aa

end_hunk_0
