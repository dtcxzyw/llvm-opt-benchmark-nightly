Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/client?download=true
begin_hunk_0_@onas_setup_client:bb.a
  store i32 %i.ak, ptr %i.am, align 1, !tbaa !36
  %i.an = load i32, ptr %i.a, align 4, !tbaa !22
  %.not52 = icmp eq i32 %i.an, 0
  br i1 %.not52, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.42) #9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27
  %i.ar = or i32 %i.aq, %i.ak
  %i.as = load ptr, ptr @action, align 8, !tbaa !25
  %.not53 = icmp eq ptr %i.as, null
  br i1 %.not53, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.at = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.43) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !27
  %.not54 = icmp eq i32 %i.av, 0
  br i1 %.not54, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.44) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !27
  %.not55 = icmp eq i32 %i.ay, 0
  br i1 %.not55, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.az = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.45) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !27
  %.not63 = icmp eq i32 %i.bb, 0
  br i1 %.not63, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.46) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %i.bf = icmp ne i32 %i.be, 0
  br label %bb.k

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.bg = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.47) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !27
  %.not56 = icmp eq i32 %i.bi, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.bj = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.48) #9 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.thread
  %i.bk = phi i1 [ true, %bb.j ], [ true, %.thread ], [ %i.bf, %bb.i ]
  %i.bl = phi i1 [ true, %bb.j ], [ true, %.thread ], [ false, %bb.i ]
  %.not64 = icmp eq i32 %i.ar, 0
  br i1 %.not64, label %bb.l, label %.thread61

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %0, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 1, !tbaa !15
  %i.bp = tail call ptr @optget(ptr noundef %i.bo, ptr noundef nonnull @.str.2) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !27
  %i.bs = icmp ne i32 %i.br, 0
  %or.cond = select i1 %i.bs, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %0, align 8, !tbaa !11
  %i.bu = tail call i32 @onas_set_sock_only_once(ptr noundef %i.bt, i1 noundef zeroext true) #9
  %i.bv = icmp eq i32 %i.bu, 14
  br i1 %i.bv, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.49) #9 ; 0 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 59
  store i32 3, ptr %i.by, align 1, !tbaa !37
  %i.bz = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.50) #9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !27
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  br i1 %i.bl, label %.thread61, label %bb.p

.thread61:                                        ; preds = %bb.k, %bb.o
  %i.cc = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.51) #9 ; 0 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 59
  store i32 2, ptr %i.ce, align 1, !tbaa !37
  %i.cf = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.50) #9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !27
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ci = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.50) #9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27
  %.not57 = icmp eq i32 %i.ck, 0
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.52) #9 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cm = tail call ptr @optget(ptr noundef %i.d, ptr noundef nonnull @.str.47) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !27
  %.not58 = icmp eq i32 %i.co, 0
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.53) #9 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cq = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.54) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread61, %bb.s, %bb.t, %bb.q, %bb.n
  %.sink70 = phi i64 [ 67, %.thread61 ], [ 59, %bb.s ], [ 59, %bb.t ], [ 59, %bb.q ], [ 67, %bb.n ]
  %.sink67 = phi i32 [ %i.ch, %.thread61 ], [ 4, %bb.s ], [ 0, %bb.t ], [ 1, %bb.q ], [ %i.cb, %bb.n ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink70
  store i32 %.sink67, ptr %i.cs, align 1, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 1, !tbaa !15
  %i.cv = tail call ptr @optget(ptr noundef %i.cu, ptr noundef nonnull @.str.55) #9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = load ptr, ptr %0, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  store i32 %i.cy, ptr %i.da, align 1, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.d, %bb.c, %bb.u
  %.0 = phi i32 [ 3, %bb.d ], [ 3, %bb.c ], [ 0, %bb.u ], [ 14, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @actsetup(ptr noundef) local_unnamed_addr #2

declare i32 @onas_set_sock_only_once(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @onas_recvlninit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @onas_recvln(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @onas_client_scan(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef readonly byval(%struct.stat) align 8 captures(none) %7, ptr nofree noundef captures(none) initializes((0, 4)) %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %struct.action_source, align 8     ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 1, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768                  ; 2 uses
  call void @action_source_init(ptr noundef nonnull %11) #9
  store i32 0, ptr %8, align 4, !tbaa !22
  %.not = icmp eq ptr %9, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %9, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not75 = icmp eq ptr %10, null                 ; 3 uses
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %10, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %spec.select = select i1 %i.g, i32 %2, i32 2
  %i.h = load ptr, ptr @action, align 8, !tbaa !25
  %i.i = icmp ne ptr %i.h, null
  %i.j = icmp ne ptr %4, null
  %or.cond = and i1 %i.j, %i.i
  %or.cond3 = select i1 %or.cond, i1 %i.g, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.k = icmp sgt i32 %5, -1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @action_source_from_fd(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %11) #9
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = call i32 @cli_realpath(ptr noundef nonnull %4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.p = call i32 @action_source_open_path(ptr noundef nonnull %4, ptr noundef %i.o, ptr noundef nonnull %11) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.055 = phi i32 [ %i.l, %bb.g ], [ %i.p, %bb.i ] ; 2 uses
  %.not76 = icmp eq i32 %.055, 0
  br i1 %.not76, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j
  %.05585 = phi i32 [ %.055, %bb.j ], [ %i.m, %bb.h ] ; 2 uses
  %i.q = call ptr @cl_strerror(i32 noundef %.05585) #9
  %i.r = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull %4, ptr noundef %i.q) #9 ; 0 uses
  br label %select.unfold

bb.k:                                             ; preds = %bb.j
  %spec.store.select = call i32 @llvm.smax.i32(i32 %2, i32 2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.159 = phi i32 [ %spec.store.select, %bb.k ], [ %spec.select, %bb.e ]
  %.0 = phi i8 [ 1, %bb.k ], [ 0, %bb.e ]         ; 4 uses
  %i.s = call i32 @onas_curl_init(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, i64 noundef %6) ; 2 uses
  %.not77 = icmp eq i32 %i.s, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = call ptr @curl_easy_strerror(i32 noundef %i.s) #9
  %i.u = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.60, ptr noundef %i.t) #9 ; 0 uses
  br label %.thread86.sink.split

bb.n:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.w = call i32 @curl_easy_perform(ptr noundef %i.v) #9 ; 2 uses
  %.not78 = icmp eq i32 %i.w, 0
  %.b = load i1, ptr @onas_client_scan.disconnected, align 1 ; 2 uses
  br i1 %.not78, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.b, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = call ptr @curl_easy_strerror(i32 noundef %i.w) #9
  %i.y = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.61, ptr noundef %i.x) #9 ; 0 uses
  store i1 true, ptr @onas_client_scan.disconnected, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @curl_easy_cleanup(ptr noundef %i.v) #9
  br label %.thread86.sink.split

bb.r:                                             ; preds = %bb.n
  br i1 %.b, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.z = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.62) #9 ; 0 uses
  store i1 false, ptr @onas_client_scan.disconnected, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %12 = trunc nuw i8 %.0 to i1
  %. = select i1 %12, ptr %11, ptr null
  %i.aa = call i32 @onas_dsresult(ptr noundef %i.v, i32 noundef %.159, i64 noundef %3, ptr noundef %4, ptr noundef %., i32 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef %10) #9 ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.aa, ptr %8, align 4, !tbaa !22
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  br i1 %.not75, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = load i32, ptr %10, align 4, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ad = phi i32 [ %i.ac, %bb.w ], [ %i.aa, %bb.v ]
  %i.ae = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %i.ad) #9 ; 0 uses
  %.pr = load i32, ptr %8, align 4, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.af = phi i32 [ %.pr, %bb.x ], [ %i.aa, %bb.u ]
  %i.ag = phi i32 [ 9, %bb.x ], [ 0, %bb.u ]
  %.not79 = icmp eq i32 %i.af, 0
  br i1 %.not79, label %select.unfold, label %.thread94

select.unfold:                                    ; preds = %bb.y, %.thread
  %i.ah = phi ptr [ null, %.thread ], [ %i.v, %bb.y ] ; 2 uses
  %.156 = phi i32 [ %.05585, %.thread ], [ %i.ag, %bb.y ] ; 3 uses
  %.1 = phi i8 [ 0, %.thread ], [ %.0, %bb.y ]    ; 2 uses
  %or.cond5 = icmp ugt i32 %.156, 1
  br i1 %or.cond5, label %.thread86, label %.thread94

.thread86.sink.split:                             ; preds = %bb.m, %bb.q
  store ptr null, ptr %i.a, align 8, !tbaa !25
  br label %.thread86

.thread86:                                        ; preds = %.thread86.sink.split, %select.unfold
  %i.ai = phi ptr [ %i.ah, %select.unfold ], [ null, %.thread86.sink.split ] ; 3 uses
  %.193 = phi i8 [ %.1, %select.unfold ], [ %.0, %.thread86.sink.split ] ; 3 uses
  %.15691 = phi i32 [ %.156, %select.unfold ], [ 9, %.thread86.sink.split ] ; 4 uses
  br i1 %.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.thread86
  %i.aj = load i32, ptr %9, align 4, !tbaa !22
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %9, align 4, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.thread86
  br i1 %.not75, label %.thread94, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.al = load i32, ptr %10, align 4, !tbaa !22
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.ad, label %.thread94

bb.ad:                                            ; preds = %bb.ac
  store i32 %.15691, ptr %10, align 4, !tbaa !22
  br label %.thread94

.thread94:                                        ; preds = %bb.y, %bb.ab, %bb.ac, %bb.ad, %select.unfold
  %i.an = phi ptr [ %i.ai, %bb.ab ], [ %i.ai, %bb.ac ], [ %i.ai, %bb.ad ], [ %i.ah, %select.unfold ], [ %i.v, %bb.y ] ; 2 uses
  %.192 = phi i8 [ %.193, %bb.ab ], [ %.193, %bb.ac ], [ %.193, %bb.ad ], [ %.1, %select.unfold ], [ %.0, %bb.y ]
  %.15690 = phi i32 [ %.15691, %bb.ab ], [ %.15691, %bb.ac ], [ %.15691, %bb.ad ], [ %.156, %select.unfold ], [ 1, %bb.y ]
  %.not81 = icmp eq ptr %i.an, null
  br i1 %.not81, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread94
  call void @curl_easy_cleanup(ptr noundef nonnull %i.an) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread94
  %13 = trunc nuw i8 %.192 to i1
  br i1 %13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @action_source_close(ptr noundef nonnull %11) #9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %.not82 = icmp eq ptr %i.ao, null
  br i1 %.not82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.ao) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.15690
}

declare void @action_source_init(ptr noundef) local_unnamed_addr #2

declare i32 @action_source_from_fd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_realpath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @action_source_open_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #2

declare i32 @onas_dsresult(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @action_source_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS12onas_context", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS9optstruct", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"onas_context", !12, i64 0, !12, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !5, i64 40, !5, i64 41, !5, i64 42, !13, i64 43, !13, i64 51, !6, i64 59, !6, i64 63, !6, i64 67, !6, i64 71, !13, i64 75, !6, i64 83}
!15 = !{!14, !12, i64 8}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"long long", !5, i64 0}
!18 = !{!"any p2 pointer", !9, i64 0}
!19 = !{!"p2 omnipotent char", !18, i64 0}
!20 = !{!"optstruct", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !12, i64 56, !19, i64 64}
!21 = !{!20, !17, i64 24}
!22 = !{!6, !6, i64 0}
!23 = !{!20, !16, i64 16}
!24 = !{!14, !13, i64 75}
!25 = !{!9, !9, i64 0}
!26 = !{!16, !16, i64 0}
!27 = !{!20, !6, i64 32}
!28 = !{!14, !12, i64 0}
!29 = !{!20, !12, i64 48}
!30 = !{!5, !5, i64 0}
!31 = !{!14, !6, i64 16}
!32 = !{!14, !6, i64 71}
!33 = !{!14, !5, i64 41}
!34 = !{!14, !5, i64 40}
!35 = !{!14, !5, i64 42}
!36 = !{!14, !6, i64 63}
!37 = !{!14, !6, i64 59}
!38 = !{!14, !6, i64 20}
!39 = !{!"timespec", !13, i64 0, !13, i64 8}
!40 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !39, i64 72, !39, i64 88, !39, i64 104, !5, i64 120}
!41 = !{!40, !6, i64 24}
end_hunk_0
