Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wslog?download=true
inline.NumInlined: 60
inline.NumDeleted: 14
begin_hunk_0_@ws_log_parse_args:bb.a
  store ptr %i.t, ptr @domain_filter, align 8
  br label %ws_log_set_domain_filter.exit.backedge

bb.g:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.y = load ptr, ptr @ws_optarg, align 8
  %i.z = call noalias ptr @fopen(ptr noundef %i.y, ptr noundef nonnull @.str.11) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @ws_optarg, align 8
  %i.ac = tail call ptr @__errno_location() #22
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = call ptr @g_strerror(i32 noundef %i.ad) #22
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.12, ptr noundef %i.ab, ptr noundef %i.ae)
  br label %ws_log_set_domain_filter.exit.backedge

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr @custom_log, align 8      ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %ws_log_add_custom_file.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.af) ; 0 uses
  br label %ws_log_add_custom_file.exit

ws_log_add_custom_file.exit:                      ; preds = %bb.i, %bb.j
  store ptr %i.z, ptr @custom_log, align 8
  br label %ws_log_set_domain_filter.exit.backedge

bb.k:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.ah = load ptr, ptr @ws_optarg, align 8
  %i.ai = call fastcc i32 @string_to_log_level(ptr noundef %i.ah) ; 2 uses
  %or.cond.i.i53 = icmp eq i32 %i.ai, 0
  br i1 %or.cond.i.i53, label %ws_log_set_fatal_level_str.exit.thread, label %ws_log_set_fatal_level_str.exit

ws_log_set_fatal_level_str.exit:                  ; preds = %bb.k
  %i.aj = call i32 @llvm.umax.i32(i32 %i.ai, i32 5)
  %spec.store.select2.i.i = call i32 @llvm.umin.i32(i32 %i.aj, i32 7)
  store i32 %spec.store.select2.i.i, ptr @fatal_log_level, align 4
  br label %ws_log_set_domain_filter.exit.backedge

ws_log_set_fatal_level_str.exit.thread:           ; preds = %bb.k
  %i.ak = load ptr, ptr @ws_optarg, align 8
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.13, ptr noundef %i.ak)
  br label %ws_log_set_domain_filter.exit.backedge

bb.l:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.al = load ptr, ptr @ws_optarg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.am = call zeroext i1 @ws_strtou32(ptr noundef %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = icmp ne i32 %i.an, 0
  %narrow.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %narrow.i, label %ws_log_set_fatal_count_str.exit.thread, label %bb.m

ws_log_set_fatal_count_str.exit.thread:           ; preds = %bb.l
  store i32 1, ptr @fatal_log_count, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %ws_log_set_domain_filter.exit.backedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ap = load ptr, ptr @ws_optarg, align 8
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.14, ptr noundef %i.ap)
  br label %ws_log_set_domain_filter.exit.backedge

bb.n:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.aq = load ptr, ptr @ws_optarg, align 8       ; 3 uses
  %i.ar = load ptr, ptr @fatal_filter, align 8    ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %free_log_filter.exit.i55, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.ar, align 8
  call void @g_strfreev(ptr noundef %i.at)
  %i.au = load ptr, ptr @fatal_filter, align 8
  call void @g_free(ptr noundef %i.au)
  store ptr null, ptr @fatal_filter, align 8
  br label %free_log_filter.exit.i55

free_log_filter.exit.i55:                         ; preds = %bb.o, %bb.n
  %i.av = icmp eq ptr %i.aq, null
  br i1 %i.av, label %ws_log_set_domain_filter.exit.backedge, label %bb.p

bb.p:                                             ; preds = %free_log_filter.exit.i55
  %i.aw = load i8, ptr %i.aq, align 1
  %i.ax = icmp ne i8 %i.aw, 33                    ; 2 uses
  %not..i.i56 = xor i1 %i.ax, true
  %spec.select.idx.i.i57 = zext i1 %not..i.i56 to i64
  %spec.select.i.i58 = getelementptr i8, ptr %i.aq, i64 %spec.select.idx.i.i57 ; 2 uses
  %i.ay = load i8, ptr %spec.select.i.i58, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %ws_log_set_domain_filter.exit.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #21 ; 4 uses
  %i.bb = call ptr @g_strsplit_set(ptr noundef %spec.select.i.i58, ptr noundef nonnull @.str.60, i32 noundef -1)
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %i.bd = zext i1 %i.ax to i8
  store i8 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.be, align 4
  store ptr %i.ba, ptr @fatal_filter, align 8
  br label %ws_log_set_domain_filter.exit.backedge

bb.r:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.bf = load ptr, ptr @ws_optarg, align 8       ; 3 uses
  %i.bg = load ptr, ptr @debug_filter, align 8    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %free_log_filter.exit.i59, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.bg, align 8
  call void @g_strfreev(ptr noundef %i.bi)
  %i.bj = load ptr, ptr @debug_filter, align 8
  call void @g_free(ptr noundef %i.bj)
  store ptr null, ptr @debug_filter, align 8
  br label %free_log_filter.exit.i59

free_log_filter.exit.i59:                         ; preds = %bb.s, %bb.r
  %i.bk = icmp eq ptr %i.bf, null
  br i1 %i.bk, label %ws_log_set_domain_filter.exit.backedge, label %bb.t

bb.t:                                             ; preds = %free_log_filter.exit.i59
  %i.bl = load i8, ptr %i.bf, align 1
  %i.bm = icmp ne i8 %i.bl, 33                    ; 2 uses
  %not..i.i60 = xor i1 %i.bm, true
  %spec.select.idx.i.i61 = zext i1 %not..i.i60 to i64
  %spec.select.i.i62 = getelementptr i8, ptr %i.bf, i64 %spec.select.idx.i.i61 ; 2 uses
  %i.bn = load i8, ptr %spec.select.i.i62, align 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %ws_log_set_domain_filter.exit.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #21 ; 4 uses
  %i.bq = call ptr @g_strsplit_set(ptr noundef %spec.select.i.i62, ptr noundef nonnull @.str.60, i32 noundef -1)
  store ptr %i.bq, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %i.bs = zext i1 %i.bm to i8
  store i8 %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bp, i64 12
  store i32 2, ptr %i.bt, align 4
  store ptr %i.bp, ptr @debug_filter, align 8
  br label %ws_log_set_domain_filter.exit.backedge

bb.v:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.bu = load ptr, ptr @ws_optarg, align 8       ; 3 uses
  %i.bv = load ptr, ptr @noisy_filter, align 8    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %free_log_filter.exit.i63, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %i.bv, align 8
  call void @g_strfreev(ptr noundef %i.bx)
  %i.by = load ptr, ptr @noisy_filter, align 8
  call void @g_free(ptr noundef %i.by)
  store ptr null, ptr @noisy_filter, align 8
  br label %free_log_filter.exit.i63

free_log_filter.exit.i63:                         ; preds = %bb.w, %bb.v
  %i.bz = icmp eq ptr %i.bu, null
  br i1 %i.bz, label %ws_log_set_domain_filter.exit.backedge, label %bb.x

bb.x:                                             ; preds = %free_log_filter.exit.i63
  %i.ca = load i8, ptr %i.bu, align 1
  %i.cb = icmp ne i8 %i.ca, 33                    ; 2 uses
  %not..i.i64 = xor i1 %i.cb, true
  %spec.select.idx.i.i65 = zext i1 %not..i.i64 to i64
  %spec.select.i.i66 = getelementptr i8, ptr %i.bu, i64 %spec.select.idx.i.i65 ; 2 uses
  %i.cc = load i8, ptr %spec.select.i.i66, align 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %ws_log_set_domain_filter.exit.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #21 ; 4 uses
  %i.cf = call ptr @g_strsplit_set(ptr noundef %spec.select.i.i66, ptr noundef nonnull @.str.60, i32 noundef -1)
  store ptr %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %i.ch = zext i1 %i.cb to i8
  store i8 %i.ch, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %i.ce, i64 12
  store i32 1, ptr %i.ci, align 4
  store ptr %i.ce, ptr @noisy_filter, align 8
  br label %ws_log_set_domain_filter.exit.backedge

bb.z:                                             ; preds = %ws_log_set_domain_filter.exit
  %i.cj = load ptr, ptr @ws_optarg, align 8       ; 4 uses
  %.not43 = icmp eq ptr %i.cj, null
  br i1 %.not43, label %.split, label %bb.aa, !prof !10

.split:                                           ; preds = %bb.z
  %i.ck = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.15)
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %ws_log_set_domain_filter.exit.backedge, label %bb.ac

ws_log_set_domain_filter.exit.backedge:           ; preds = %.split, %ws_log_set_fatal_level_str.exit, %bb.aa, %bb.y, %bb.x, %free_log_filter.exit.i63, %bb.u, %bb.t, %free_log_filter.exit.i59, %bb.q, %bb.p, %free_log_filter.exit.i55, %ws_log_set_fatal_count_str.exit.thread, %bb.f, %bb.e, %free_log_filter.exit.i, %ws_log_set_level_str.exit, %bb.h, %ws_log_add_custom_file.exit, %ws_log_set_domain_filter.exit, %ws_log_set_level.exit, %bb.ab, %bb.m, %ws_log_set_fatal_level_str.exit.thread, %ws_log_set_level_str.exit.thread
  br label %ws_log_set_domain_filter.exit, !llvm.loop !11

bb.aa:                                            ; preds = %bb.z
  %i.cm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #24
  %i.cn = icmp ugt i64 %i.cm, 17
  br i1 %i.cn, label %bb.ab, label %ws_log_set_domain_filter.exit.backedge

bb.ab:                                            ; preds = %bb.aa
  %i.co = load i128, ptr %i.cj, align 1
  %i.cp = xor i128 %i.co, 134866775697956489172185726412200505187
  %i.cq = getelementptr i8, ptr %i.cj, i64 16
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i128
  %i.ct = xor i128 %i.cs, 14956
  %i.cu = or i128 %i.cp, %i.ct
  %i.cv = icmp ne i128 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not = icmp eq i32 %i.cw, 0
  br i1 %.not, label %bb.ac, label %ws_log_set_domain_filter.exit.backedge

bb.ac:                                            ; preds = %.split, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cx = load ptr, ptr @ws_optarg, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 18     ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.16)
  br label %ws_log_set_level.exit

bb.ae:                                            ; preds = %bb.ac
  %i.db = call zeroext i1 @ws_strtou32(ptr noundef %i.cy, ptr noundef null, ptr noundef nonnull %i.c)
  br i1 %i.db, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.17, ptr noundef %i.cy)
  br label %ws_log_set_level.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dc = load i32, ptr %i.c, align 4             ; 5 uses
  %i.dd = and i32 %i.dc, 128
  %.not45 = icmp eq i32 %i.dd, 0
  br i1 %.not45, label %bb.ah, label %.thread71.thread

bb.ah:                                            ; preds = %bb.ag
  %i.de = and i32 %i.dc, 64
  %.not46 = icmp eq i32 %i.de, 0
  br i1 %.not46, label %bb.ai, label %.thread71.thread

bb.ai:                                            ; preds = %bb.ah
  %i.df = and i32 %i.dc, 32
  %.not47 = icmp eq i32 %i.df, 0
  br i1 %.not47, label %bb.aj, label %.thread71.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dg = and i32 %i.dc, 16
  %.not48 = icmp eq i32 %i.dg, 0
  br i1 %.not48, label %bb.ak, label %.thread71.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dh = and i32 %i.dc, 12
  %or.cond = icmp eq i32 %i.dh, 0
  br i1 %or.cond, label %bb.al, label %.thread71.thread

.thread71.thread:                                 ; preds = %bb.ak, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.07477 = phi i32 [ 5, %bb.aj ], [ 6, %bb.ak ], [ 2, %bb.ag ], [ 3, %bb.ah ], [ 4, %bb.ai ]
  store i32 %.07477, ptr @current_log_level, align 4
  br label %ws_log_set_level.exit

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @print_err(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.18, ptr noundef %i.cy)
  br label %ws_log_set_level.exit

ws_log_set_level.exit:                            ; preds = %.thread71.thread, %bb.al, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %ws_log_set_domain_filter.exit.backedge

bb.am:                                            ; preds = %ws_log_set_domain_filter.exit
  store i32 %i.d, ptr @ws_opterr, align 4
  store i32 1, ptr @ws_optreset, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare i32 @ws_getopt_long_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @print_err(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ...) unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %0(ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = call i32 @__vfprintf_chk(ptr noundef %i.a, i32 noundef 2, ptr noundef %2, ptr noundef nonnull %3) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not6 = icmp eq i32 %1, -1
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @exit(i32 noundef %1) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @ws_log_set_domain_filter(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @domain_filter, align 8    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %free_log_filter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @g_strfreev(ptr noundef %i.c)
  %i.d = load ptr, ptr @domain_filter, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr null, ptr @domain_filter, align 8
  br label %free_log_filter.exit

free_log_filter.exit:                             ; preds = %bb.a, %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %tokenize_filter_str.exit, label %bb.c

bb.c:                                             ; preds = %free_log_filter.exit
  %i.f = load i8, ptr %0, align 1
  %i.g = icmp ne i8 %i.f, 33                      ; 2 uses
  %not..i = xor i1 %i.g, true
  %spec.select.idx.i = zext i1 %not..i to i64
  %spec.select.i = getelementptr i8, ptr %0, i64 %spec.select.idx.i ; 2 uses
  %i.h = load i8, ptr %spec.select.i, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %tokenize_filter_str.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #21 ; 4 uses
  %i.k = tail call ptr @g_strsplit_set(ptr noundef %spec.select.i, ptr noundef nonnull @.str.60, i32 noundef -1)
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = zext i1 %i.g to i8
  store i8 %i.m, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 12
  store i32 0, ptr %i.n, align 4
  store ptr %i.j, ptr @domain_filter, align 8
  br label %tokenize_filter_str.exit

tokenize_filter_str.exit:                         ; preds = %free_log_filter.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define void @ws_log_add_custom_file(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @custom_log, align 8       ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr @custom_log, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 0, 8) i32 @ws_log_set_fatal_level_str(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @string_to_log_level(ptr noundef %0) ; 2 uses
  %or.cond.i = icmp eq i32 %i.a, 0
  br i1 %or.cond.i, label %ws_log_set_fatal_level.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %i.a, i32 5)
  %spec.store.select2.i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 7) ; 2 uses
end_hunk_0
