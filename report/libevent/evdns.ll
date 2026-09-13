Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evdns_base_search_ndots_set:bb.a
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %i.l) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_search_ndots_set(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @current_base, align 8     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #19, !inline_history !32 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread14.i, label %bb.e

.thread14.i:                                      ; preds = %bb.d
  store ptr null, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.j, align 4
  store ptr %i.h, ptr %i.f, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c
  %i.k = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %0, ptr %i.l, align 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %.thread14.i
  %i.m = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  br i1 %.not12.i, label %evdns_base_search_ndots_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.o = tail call i32 %i.n(i32 noundef 0, ptr noundef nonnull %i.m) #19, !inline_history !32 ; 0 uses
  br label %evdns_base_search_ndots_set.exit

evdns_base_search_ndots_set.exit:                 ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evdns_base_set_option(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc i32 @evdns_base_set_option_impl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef 15)
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @evdns_base_set_option_impl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.timeval, align 8            ; 7 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #21 ; 11 uses
  %i.k = add i64 %i.j, -5
  %or.cond.i = icmp ult i64 %i.k, 2
  br i1 %or.cond.i, label %str_matches_option.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.j, 6
  br i1 %i.l, label %str_matches_option.exit, label %str_matches_option.exit135.thread

str_matches_option.exit:                          ; preds = %bb.a, %bb.b
  %.sink20.i = phi i64 [ %i.j, %bb.a ], [ 6, %bb.b ]
  %i.m = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.55, i64 noundef %.sink20.i) #21
  %.not.i.not = icmp eq i32 %i.m, 0
  br i1 %.not.i.not, label %bb.c, label %str_matches_option.exit.thread

bb.c:                                             ; preds = %str_matches_option.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.n = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.h, i32 noundef 10) #19
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load i8, ptr %i.o, align 1
  %.not.i128 = icmp ne i8 %i.p, 0
  %i.q = trunc i64 %i.n to i32                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.r = icmp eq i32 %i.q, -1
  %i.s = select i1 %.not.i128, i1 true, i1 %i.r
  br i1 %i.s, label %.thread173, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %3, 1
  %.not125 = icmp eq i32 %i.t, 0
  br i1 %.not125, label %.thread173, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not126 = icmp eq ptr %i.v, null
  br i1 %.not126, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i129 = icmp eq ptr %i.w, null
  br i1 %.not.i129, label %.thread171, label %bb.g

.thread171:                                       ; preds = %bb.f
  store ptr null, ptr %i.u, align 8
  br label %.thread173

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.y, align 4
  store ptr %i.w, ptr %i.u, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g
  %i.z = phi ptr [ %i.w, %bb.g ], [ %i.v, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.q, ptr %i.aa, align 4
  br label %.thread173

str_matches_option.exit.thread:                   ; preds = %str_matches_option.exit
  %i.ab = add i64 %i.j, -7
  %or.cond.i130 = icmp ult i64 %i.ab, 2
  br i1 %or.cond.i130, label %str_matches_option.exit135, label %bb.h

bb.h:                                             ; preds = %str_matches_option.exit.thread
  %i.ac = icmp ugt i64 %i.j, 8
  br i1 %i.ac, label %str_matches_option.exit135, label %str_matches_option.exit135.thread

str_matches_option.exit135:                       ; preds = %str_matches_option.exit.thread, %bb.h
  %.sink20.i133 = phi i64 [ %i.j, %str_matches_option.exit.thread ], [ 8, %bb.h ]
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.57, i64 noundef %.sink20.i133) #21
  %.not.i134.not = icmp eq i32 %i.ad, 0
  br i1 %.not.i134.not, label %bb.i, label %str_matches_option.exit135.thread

bb.i:                                             ; preds = %str_matches_option.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.ae = call double @strtod(ptr noundef %2, ptr noundef nonnull %i.g) #19 ; 3 uses
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = load i8, ptr %i.af, align 1
  %.not.i136 = icmp ne i8 %i.ag, 0
  %i.ah = fcmp olt double %i.ae, 0.000000e+00
  %or.cond10.i = select i1 %.not.i136, i1 true, i1 %i.ah
  br i1 %or.cond10.i, label %evdns_strtotimeval.exit.thread, label %evdns_strtotimeval.exit

evdns_strtotimeval.exit.thread:                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.thread173

evdns_strtotimeval.exit:                          ; preds = %bb.i
  %i.ai = fptosi double %i.ae to i32              ; 3 uses
  %5 = sext i32 %i.ai to i64
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fsub double %i.ae, %i.aj
  %i.al = fmul double %i.ak, 1.000000e+06
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.ai, 0
  %i.ap = icmp slt i32 %i.am, 1000
  %or.cond.i137 = select i1 %i.ao, i1 %i.ap, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br i1 %or.cond.i137, label %.thread173, label %bb.j

bb.j:                                             ; preds = %evdns_strtotimeval.exit
  %i.aq = and i32 %3, 4
  %.not124 = icmp eq i32 %i.aq, 0
  br i1 %.not124, label %.thread173, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef %2)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %5, ptr %i.ar, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.an, ptr %.sroa.4167.0..sroa_idx, align 8
  br label %.thread173

str_matches_option.exit135.thread:                ; preds = %bb.b, %bb.h, %str_matches_option.exit135
  %i.as = and i64 %i.j, -2                        ; 2 uses
  %or.cond.i139 = icmp eq i64 %i.as, 22
  br i1 %or.cond.i139, label %str_matches_option.exit144, label %bb.l

bb.l:                                             ; preds = %str_matches_option.exit135.thread
  %i.at = icmp ugt i64 %i.j, 23
  br i1 %i.at, label %str_matches_option.exit144, label %str_matches_option.exit144.thread

str_matches_option.exit144:                       ; preds = %str_matches_option.exit135.thread, %bb.l
  %.sink20.i142 = phi i64 [ %i.j, %str_matches_option.exit135.thread ], [ 23, %bb.l ]
  %i.au = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.59, i64 noundef %.sink20.i142) #21
  %.not.i143.not = icmp eq i32 %i.au, 0
  br i1 %.not.i143.not, label %bb.m, label %str_matches_option.exit144.thread

bb.m:                                             ; preds = %str_matches_option.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.av = call double @strtod(ptr noundef %2, ptr noundef nonnull %i.f) #19 ; 3 uses
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i145 = icmp ne i8 %i.ax, 0
  %i.ay = fcmp olt double %i.av, 0.000000e+00
  %or.cond10.i146 = select i1 %.not.i145, i1 true, i1 %i.ay
  br i1 %or.cond10.i146, label %evdns_strtotimeval.exit150.thread, label %evdns_strtotimeval.exit150

evdns_strtotimeval.exit150.thread:                ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.thread173

evdns_strtotimeval.exit150:                       ; preds = %bb.m
  %i.az = fptosi double %i.av to i32              ; 3 uses
  %6 = sext i32 %i.az to i64
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub double %i.av, %i.ba
  %i.bc = fmul double %i.bb, 1.000000e+06
  %i.bd = fptosi double %i.bc to i32              ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.az, 0
  %i.bg = icmp slt i32 %i.bd, 1000
  %or.cond.i147 = select i1 %i.bf, i1 %i.bg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %or.cond.i147, label %.thread173, label %bb.n

bb.n:                                             ; preds = %evdns_strtotimeval.exit150
  %i.bh = and i32 %3, 4
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread173, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %2)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %6, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.thread173

str_matches_option.exit144.thread:                ; preds = %bb.l, %str_matches_option.exit144
  %or.cond.i151 = icmp eq i64 %i.as, 12
  br i1 %or.cond.i151, label %str_matches_option.exit156, label %bb.p

bb.p:                                             ; preds = %str_matches_option.exit144.thread
  %i.bj = icmp ugt i64 %i.j, 13
  br i1 %i.bj, label %str_matches_option.exit156, label %str_matches_option.exit156.thread

str_matches_option.exit156:                       ; preds = %str_matches_option.exit144.thread, %bb.p
  %.sink20.i154 = phi i64 [ %i.j, %str_matches_option.exit144.thread ], [ 13, %bb.p ]
  %i.bk = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.61, i64 noundef %.sink20.i154) #21
  %.not.i155.not = icmp eq i32 %i.bk, 0
  br i1 %.not.i155.not, label %bb.q, label %str_matches_option.exit156.thread

bb.q:                                             ; preds = %str_matches_option.exit156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bl = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.e, i32 noundef 10) #19
  %i.bm = load ptr, ptr %i.e, align 8
  %i.bn = load i8, ptr %i.bm, align 1
  %.not.i.i = icmp ne i8 %i.bn, 0
  %i.bo = trunc i64 %i.bl to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.bp = icmp eq i32 %i.bo, -1
  %i.bq = select i1 %.not.i.i, i1 true, i1 %i.bp
  br i1 %i.bq, label %.thread173, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = and i32 %3, 4
  %.not122 = icmp eq i32 %i.br, 0
  br i1 %.not122, label %.thread173, label %strtoint_clipped.exit

strtoint_clipped.exit:                            ; preds = %bb.r
  %i.bs = call i32 @llvm.smax.i32(i32 %i.bo, i32 1)
  %.0.i157.ph = call i32 @llvm.umin.i32(i32 %i.bs, i32 255) ; 2 uses
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.62, i32 noundef %.0.i157.ph)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.i157.ph, ptr %i.bt, align 8
  br label %.thread173

str_matches_option.exit156.thread:                ; preds = %bb.p, %str_matches_option.exit156
  %i.bu = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.63)
  %.not107 = icmp eq i32 %i.bu, 0
  br i1 %.not107, label %bb.v, label %bb.s

bb.s:                                             ; preds = %str_matches_option.exit156.thread
  %i.bv = tail call fastcc i32 @strtoint_clipped(ptr noundef %2, i32 noundef 65000) ; 3 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.thread173, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = and i32 %3, 4
  %.not121 = icmp eq i32 %i.bx, 0
  br i1 %.not121, label %.thread173, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %i.bv)
  tail call fastcc void @evdns_base_set_max_requests_inflight(ptr noundef %0, i32 noundef %i.bv)
  br label %.thread173

bb.v:                                             ; preds = %str_matches_option.exit156.thread
  %i.by = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.65)
  %.not108 = icmp eq i32 %i.by, 0
  br i1 %.not108, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.bz = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.d, i32 noundef 10) #19
  %i.ca = load ptr, ptr %i.d, align 8
  %i.cb = load i8, ptr %i.ca, align 1
  %.not.i158 = icmp ne i8 %i.cb, 0
  %i.cc = trunc i64 %i.bz to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cd = icmp eq i32 %i.cc, -1
  %i.ce = select i1 %.not.i158, i1 true, i1 %i.cd
  br i1 %i.ce, label %.thread173, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = and i32 %3, 4
  %.not120 = icmp eq i32 %i.cf, 0
  br i1 %.not120, label %.thread173, label %bb.y

bb.y:                                             ; preds = %bb.x
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.cc, i32 255) ; 2 uses
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %spec.store.select)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.store.select, ptr %i.cg, align 4
  br label %.thread173

bb.z:                                             ; preds = %bb.v
  %i.ch = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.67)
  %.not109 = icmp eq i32 %i.ch, 0
  br i1 %.not109, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ci = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef 10) #19
  %i.cj = load ptr, ptr %i.c, align 8
  %i.ck = load i8, ptr %i.cj, align 1
  %.not.i160 = icmp ne i8 %i.ck, 0
  %i.cl = trunc i64 %i.ci to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.cm = icmp eq i32 %i.cl, -1
  %i.cn = select i1 %.not.i160, i1 true, i1 %i.cm
  br i1 %i.cn, label %.thread173, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = and i32 %3, 4
  %.not119 = icmp eq i32 %i.co, 0
  br i1 %.not119, label %.thread173, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.cl, ptr %i.cp, align 4
  br label %.thread173

bb.ad:                                            ; preds = %bb.z
  %i.cq = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.68)
  %.not110 = icmp eq i32 %i.cq, 0
  br i1 %.not110, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 128, ptr %i.i, align 4
  %i.cr = and i32 %3, 2
  %.not117 = icmp eq i32 %i.cr, 0
  br i1 %.not117, label %.thread215, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ct = call i32 @evutil_parse_sockaddr_port(ptr noundef %2, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.i) #19
  %.not118 = icmp eq i32 %i.ct, 0
  br i1 %.not118, label %bb.ag, label %.thread215

.thread215:                                       ; preds = %bb.ae, %bb.af
  %.792.ph = phi i32 [ -1, %bb.af ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.thread173

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i32, ptr %i.i, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.cu, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.thread173

bb.ah:                                            ; preds = %bb.ad
  %i.cw = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.69)
  %.not111 = icmp eq i32 %i.cw, 0
  br i1 %.not111, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cx = call fastcc i32 @evdns_strtotimeval(ptr noundef %2, ptr noundef %4)
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %.thread219, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load i64, ptr %4, align 8
  %spec.store.select230 = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 3600)
  store i64 %spec.store.select230, ptr %4, align 8
  %i.da = and i32 %3, 4
  %.not116 = icmp eq i32 %i.da, 0
  br i1 %.not116, label %.thread219, label %bb.ak

.thread219:                                       ; preds = %bb.ai, %bb.aj
  %.893.ph = phi i32 [ 0, %bb.aj ], [ -1, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.thread173

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef %2)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.thread173

end_hunk_0
begin_hunk_1_@nameserver_probe_callback:bb.a
  store i64 0, ptr %i.ba, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = add nsw i32 %i.ag, 1
  store i32 %i.bb, ptr %i.af, align 4
  %i.bc = call i32 @event_add(ptr noundef nonnull %i.y, ptr noundef nonnull %6) #19
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %nameserver_probe_failed.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %i.be, ptr noundef nonnull %i.a, i64 noundef 128) #19
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %nameserver_probe_failed.exit

nameserver_probe_failed.exit:                     ; preds = %bb.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.r

bb.r:                                             ; preds = %nameserver_up.exit, %nameserver_probe_failed.exit
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 304
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not13 = icmp eq ptr %i.bi, null
  br i1 %.not13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bk = call i32 %i.bj(i32 noundef 0, ptr noundef nonnull %i.bi) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.a
  ret void
}

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #5

declare void @event_deferred_cb_init_(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @event_get_priority(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @reply_run_callback(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i8, ptr %i.b, align 8
  switch i8 %i.c, label %bb.k [
    i8 1, label %bb.b
    i8 12, label %bb.e
    i8 28, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.e = load i8, ptr %i.d, align 1
  %.not36 = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void %i.g(i32 noundef 0, i8 noundef signext 1, i32 noundef %i.k, i32 noundef %i.i, ptr noundef nonnull %i.l, ptr noundef %1) #19
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8
  tail call void %i.g(i32 noundef %i.n, i8 noundef signext 0, i32 noundef 0, i32 noundef %i.i, ptr noundef null, ptr noundef %1) #19
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.p = load i8, ptr %i.o, align 1
  %.not35 = icmp eq i8 %i.p, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.u = load i32, ptr %i.t, align 4
  call void %i.s(i32 noundef 0, i8 noundef signext 2, i32 noundef 1, i32 noundef %i.u, ptr noundef nonnull %i.a, ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aa = load i32, ptr %i.z, align 4
  tail call void %i.w(i32 noundef %i.y, i8 noundef signext 0, i32 noundef 0, i32 noundef %i.aa, ptr noundef null, ptr noundef %1) #19
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ac = load i8, ptr %i.ab, align 1
  %.not = icmp eq i8 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void %i.ae(i32 noundef 0, i8 noundef signext 3, i32 noundef %i.ai, i32 noundef %i.ag, ptr noundef nonnull %i.aj, ptr noundef %1) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load i32, ptr %i.ak, align 8
  tail call void %i.ae(i32 noundef %i.al, i8 noundef signext 0, i32 noundef 0, i32 noundef %i.ag, ptr noundef null, ptr noundef %1) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not37 = icmp eq ptr %i.an, null
  br i1 %.not37, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8
  %.not38 = icmp eq i32 %i.ap, 0
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @event_mm_free_(ptr noundef nonnull %i.an) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @event_mm_free_(ptr noundef nonnull %0) #19
  ret void
}

declare i32 @event_deferred_cb_schedule_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i32 @EVUTIL_ISALPHA_(i8 noundef signext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @str_matches_option(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 4 uses
  %i.c = icmp eq i64 %i.b, %i.a
  %i.d = add i64 %i.a, -1
  %i.e = icmp eq i64 %i.b, %i.d
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.b, %i.a
  br i1 %i.f, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink20 = phi i64 [ %i.b, %bb.a ], [ %i.a, %bb.b ]
  %i.g = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.sink20) #21
  %.not = icmp eq i32 %i.g, 0
  %i.h = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0.shrunk = phi i32 [ 0, %bb.b ], [ %i.h, %.sink.split ]
  ret i32 %.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define internal fastcc range(i32 -1, 1) i32 @evdns_strtotimeval(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #19 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp ne i8 %i.d, 0
  %i.e = fcmp olt double %i.b, 0.000000e+00
  %or.cond10 = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fptosi double %i.b to i32                ; 3 uses
  %2 = sext i32 %i.f to i64
  store i64 %2, ptr %1, align 8
  %i.g = sitofp i32 %i.f to double
  %i.h = fsub double %i.b, %i.g
  %i.i = fmul double %i.h, 1.000000e+06
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = icmp eq i32 %i.f, 0
  %i.n = icmp slt i32 %i.j, 1000
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  %spec.select = sext i1 %or.cond to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 65001) i32 @strtoint_clipped(ptr noundef %0, i32 noundef range(i32 255, 65001) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call i64 @__isoc23_strtol(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #19
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i8, ptr %i.c, align 1
  %.not.i = icmp ne i8 %i.d, 0
  %i.e = trunc i64 %i.b to i32                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.f = icmp eq i32 %i.e, -1
  %i.g = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.e, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = call i32 @llvm.umin.i32(i32 %1, i32 %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @evutil_read_file_(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @resolv_conf_parse_line(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call ptr @strtok_r(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %search_postfix_add.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(11) @.str.79) #21
  %.not31 = icmp ne i32 %i.c, 0
  %i.d = and i32 %2, 2
  %.not32 = icmp eq i32 %i.d, 0
  %or.cond = or i1 %.not32, %.not31
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %search_postfix_add.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @evdns_base_nameserver_ip_add(ptr noundef %0, ptr noundef nonnull %i.e) ; 0 uses
  br label %search_postfix_add.exit

bb.e:                                             ; preds = %bb.b
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.80) #21
  %.not34 = icmp ne i32 %i.g, 0
  %i.h = and i32 %2, 1
  %.not35 = icmp eq i32 %i.h, 0                   ; 2 uses
  %or.cond43 = or i1 %.not35, %.not34
  br i1 %or.cond43, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %search_postfix_add.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %search_state_decref.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8
  %.not10.i.i = icmp eq i32 %i.m, 0
  br i1 %.not10.i.i, label %bb.i, label %search_state_decref.exit.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not1112.i.i = icmp eq ptr %i.o, null
  br i1 %.not1112.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.o, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  call void @event_mm_free_(ptr noundef nonnull %.013.i.i) #19
  %.not11.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  call void @event_mm_free_(ptr noundef nonnull %i.k) #19
  br label %search_state_decref.exit.i

search_state_decref.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h, %bb.g
  %i.r = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i2.i = icmp eq ptr %i.r, null             ; 2 uses
  br i1 %.not.i2.i, label %search_postfix_clear.exit, label %bb.j

bb.j:                                             ; preds = %search_state_decref.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 1, ptr %i.t, align 4
  br label %search_postfix_clear.exit

search_postfix_clear.exit:                        ; preds = %search_state_decref.exit.i, %bb.j
  store ptr %i.r, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %search_postfix_clear.exit
  %.0.i = phi ptr [ %i.i, %search_postfix_clear.exit ], [ %i.w, %bb.k ] ; 4 uses
  %i.u = load i8, ptr %.0.i, align 1
  %i.v = icmp eq i8 %i.u, 46
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.v, label %bb.k, label %bb.l, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #21 ; 3 uses
  br i1 %.not.i2.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.y = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i45 = icmp eq ptr %i.y, null
  br i1 %.not.i.i45, label %.thread24.i, label %bb.n

.thread24.i:                                      ; preds = %bb.m
  store ptr null, ptr %i.j, align 8
  br label %search_postfix_add.exit

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.aa, align 4
  store ptr %i.y, ptr %i.j, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.l
  %i.ab = phi ptr [ %i.y, %bb.n ], [ %i.r, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = add i64 %i.x, 16
  %i.ag = call ptr @event_mm_malloc_(i64 noundef %i.af) #19 ; 5 uses
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %search_postfix_add.exit, label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.0.i, i64 %i.x, i1 false)
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = trunc i64 %i.x to i32
  store i32 %i.am, ptr %i.ag, align 8
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ag, ptr %i.ao, align 8
  br label %search_postfix_add.exit
end_hunk_1
