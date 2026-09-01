Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regex_list?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_ac_data = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i32], ptr, i32 }
%struct.regex_list = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [47 x i8] c"regex_list_match: matcher must be initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"regex_list_match: real_url must be initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"regex_list_match: display_url must be initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"regex_list_match: matcher->list_built must be initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"regex_list_match: Unable to allocate memory for buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Looking up in regex_list: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Lookup result: not in regex list\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Lookup result: in regex list\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"init_regex_list: matcher must be initialized\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"init_regex_list: matcher->mempool must be initialized\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"load_regex_matcher: matcher must be initialized\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Unable to load regex list (null file)\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Loading regex_list\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Regex list failed to initialize!\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"phishing\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"load_regex_matcher: skipping %s due to callback\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Malformed regex list line %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Overlong regex line %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Error loading at line: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Error loading line: %d, %c\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Regex list not loaded!\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Building regex list\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"regex_list_done: matcher must be initialized\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"is_regex_ok: matcher must be initialized\0A\00", align 1
@__const.regex_list_add_pattern.remove_end = private unnamed_addr constant [11 x i8] c"([/?].*)?/\00", align 1
@__const.regex_list_add_pattern.remove_end2 = private unnamed_addr constant [10 x i8] c"([/?].*)/\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Got a match: %s with %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Before inserting .: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"No dot here:%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"After inserting .: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"Ignoring false match: %s with %s, mismatched character: %c\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"calc_pos_with_skip: skip:%llu, %llu - %llu \22%s\22,\22%s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"calc_pos_with_skip:%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"regex list line %s not loaded (required f-level: %u)\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"add_hash: Invalid pattern '%s' in database\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Skipping hash %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"add_hash: Unable to allocate memory for path->virname\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"add_hash: failed to add BM pattern\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"add_static_pattern: Cannot allocate memory for regex.pattern\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"new_preg: Unable to reallocate memory\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"new_preg: Unable to allocate memory\0A\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"add_pattern_suffix: matcher must be initialized\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"add_pattern_suffix: suffix must be initialized\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"add_pattern_suffix: iregex must be initialized\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"add_pattern_suffix: Unable to allocate memory for regex\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"add_pattern_suffix: unable to strdup iregex->pattern\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"add_pattern_suffix: el-> data too large\00", align 1
@.str.46 = private unnamed_addr constant [77 x i8] c"add_pattern_suffix: Unable to reallocate memory for matcher->suffix_regexes\0A\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"add_newsuffix: Unable to allocate memory for new\0A\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"add_newsuffix: Unable to allocate memory for new->pattern\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"add_newsuffix: Unable to add filter\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @regex_list_match(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %struct.cli_ac_data, align 8        ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str) #14
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1) #14
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2) #14
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %5, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132448
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %.mask = and i8 %i.g, 3
  %.not = icmp eq i8 %.mask, 1
  br i1 %.not, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  %i.h = and i8 %i.g, 48
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3) #14
  br label %bb.an

bb.j:                                             ; preds = %bb.h
  %i.j = load i8, ptr %1, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 46
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %spec.select = select i1 %i.k, ptr %i.l, ptr %1 ; 3 uses
  %i.m = load i8, ptr %2, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, 46
  %.079.idx = zext i1 %i.n to i64
  %.079 = getelementptr inbounds nuw i8, ptr %2, i64 %.079.idx ; 2 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #15 ; 6 uses
  %i.p = icmp eq i32 %4, 0
  %i.q = icmp ne i32 %6, 0
  %or.cond = or i1 %i.p, %i.q                     ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = add i64 %i.o, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.079) #15
  %i.t = add i64 %i.o, 2
  %i.u = add i64 %i.t, %i.s
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = phi i64 [ %i.r, %bb.k ], [ %i.u, %bb.l ] ; 10 uses
  %i.w = icmp ult i64 %i.v, 3
  br i1 %i.w, label %bb.an, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = add i64 %i.v, 1                          ; 2 uses
  %i.y = tail call ptr @cli_max_malloc(i64 noundef %i.x) #14 ; 14 uses
  %.not91 = icmp eq ptr %i.y, null
  br i1 %.not91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #14
  br label %bb.an

bb.p:                                             ; preds = %bb.n
  %i.z = tail call ptr @strncpy(ptr noundef nonnull %i.y, ptr noundef nonnull %spec.select, i64 noundef %i.v) #14 ; 0 uses
  %8 = icmp ne i32 %4, 0
  %not. = icmp eq i32 %6, 0
  %9 = and i1 %8, %not.
  %i.aa = select i1 %9, i8 47, i8 58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !13
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = sub i64 %i.v, %i.o
  %i.ae = tail call ptr @strncpy(ptr noundef nonnull %i.ac, ptr noundef nonnull %.079, i64 noundef %i.ad) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.af = getelementptr i8, ptr %i.y, i64 %i.v    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  store i8 47, ptr %i.ag, align 1, !tbaa !13
  store i8 0, ptr %i.af, align 1, !tbaa !13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.y) #14
  %i.ah = call i32 @cli_ac_initdata(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 8) #14 ; 2 uses
  %.not94 = icmp eq i32 %i.ah, 0
  br i1 %.not94, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  %i.ai = call ptr @cli_safer_strdup(ptr noundef nonnull %i.y) #14 ; 6 uses
  %.not95 = icmp eq ptr %i.ai, null
  br i1 %.not95, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @reverse_string(ptr noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ak = call i64 @filter_search(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ai, i64 noundef %i.v) #14
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 4294967295
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.y) #14
  call void @free(ptr noundef nonnull %i.ai) #14
  br label %bb.an

bb.v:                                             ; preds = %bb.t
  %i.an = trunc i64 %i.v to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = call i32 @cli_ac_scanbuff(ptr noundef nonnull %i.ai, i32 noundef %i.an, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ao, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef null) #14 ; 0 uses
  call void @free(ptr noundef nonnull %i.ai) #14
  call void @cli_ac_freedata(ptr noundef nonnull %7) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.au = icmp ne ptr %i.at, null                 ; 2 uses
  %i.av = icmp ne i32 %i.as, 0
  %i.aw = select i1 %i.au, i1 true, i1 %i.av
  br i1 %i.aw, label %.lr.ph117, label %._crit_edge118.thread

._crit_edge118.thread:                            ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.y) #14
  br label %bb.al

.lr.ph117:                                        ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr i8, ptr %spec.select, i64 %i.o
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph117, %bb.ak
  %i.az = phi ptr [ %i.at, %.lr.ph117 ], [ %i.ci, %bb.ak ] ; 2 uses
  %i.ba = phi i1 [ %i.au, %.lr.ph117 ], [ %i.cj, %bb.ak ]
  %.0115 = phi i32 [ %i.as, %.lr.ph117 ], [ %.1, %bb.ak ] ; 2 uses
  %.075114 = phi i32 [ 0, %.lr.ph117 ], [ %.176.lcssa, %bb.ak ] ; 2 uses
  br i1 %i.ba, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.bc = sext i32 %.0115 to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bc
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge.in = phi ptr [ %i.bd, %bb.x ], [ %i.be, %bb.y ]
  %.1 = phi i32 [ 0, %bb.x ], [ %.0115, %bb.y ]   ; 2 uses
  %storemerge97111 = load ptr, ptr %storemerge.in, align 8, !tbaa !41 ; 3 uses
  store ptr %storemerge97111, ptr %i.a, align 8, !tbaa !42
  %.not98112 = icmp eq i32 %.075114, 0
  %i.bf = icmp ne ptr %storemerge97111, null
  %i.bg = select i1 %.not98112, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %validate_subdomain.exit.thread108
  %storemerge97113 = phi ptr [ %storemerge97, %validate_subdomain.exit.thread108 ], [ %storemerge97111, %bb.z ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge97113, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44 ; 2 uses
  %.not100 = icmp eq ptr %i.bi, null
  br i1 %.not100, label %bb.aa, label %validate_subdomain.exit

bb.aa:                                            ; preds = %.lr.ph
  %i.bj = load ptr, ptr %storemerge97113, align 8, !tbaa !46 ; 2 uses
  %.not62.i = icmp eq ptr %i.bj, null
  br i1 %.not62.i, label %validate_subdomain.exit.thread108, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #15 ; 4 uses
  %i.bl = call fastcc signext i8 @get_char_at_pos_with_skip(ptr noundef readonly %3, ptr noundef nonnull %i.y, i64 noundef %i.x) ; 3 uses
  switch i8 %i.bl, label %bb.ai [
    i8 63, label %bb.ac
    i8 47, label %bb.ac
    i8 32, label %bb.ac
    i8 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.bm = icmp eq i64 %i.bk, %i.v
  br i1 %i.bm, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = icmp ult i64 %i.bk, %i.v
  br i1 %i.bn, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.bo = sub nuw i64 %i.v, %i.bk
  %i.bp = call fastcc signext i8 @get_char_at_pos_with_skip(ptr noundef readonly %3, ptr noundef nonnull %i.y, i64 noundef %i.bo) ; 2 uses
  switch i8 %i.bp, label %bb.ai [
    i8 46, label %bb.af
    i8 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ac
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 1) ; 2 uses
  %i.bq = load ptr, ptr %storemerge97113, align 8, !tbaa !46
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.y, ptr noundef %i.bq) #14
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #14
  %.not64.not.i = icmp ugt i64 %i.o, %spec.select.i
  br i1 %.not64.not.i, label %bb.ag, label %validate_subdomain.exit.thread108.thread

bb.ag:                                            ; preds = %bb.af
  %i.br = xor i64 %spec.select.i, -1              ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 %i.br  ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %.not65.i = icmp eq i8 %i.bt, 46
  br i1 %.not65.i, label %validate_subdomain.exit.thread108.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.bs) #14
  %i.bv = add i64 %i.bu, %i.br                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.l, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  store i8 46, ptr %i.bw, align 1, !tbaa !13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #14
  br label %validate_subdomain.exit.thread108.thread

bb.ai:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.056.i = phi i8 [ %i.bp, %bb.ae ], [ %i.bl, %bb.ad ], [ %i.bl, %bb.ab ]
  %i.bx = load ptr, ptr %storemerge97113, align 8, !tbaa !46
  %i.by = sext i8 %.056.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.y, ptr noundef %i.bx, i32 noundef %i.by) #14
  br label %validate_subdomain.exit.thread108

validate_subdomain.exit:                          ; preds = %.lr.ph
  %i.bz = call i32 @cli_regexec(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.y, i64 noundef 0, ptr noundef null, i32 noundef 0) #14
  %.not101.not = icmp eq i32 %i.bz, 0
  br i1 %.not101.not, label %validate_subdomain.exit.thread108.thread, label %validate_subdomain.exit.thread108

validate_subdomain.exit.thread108.thread:         ; preds = %validate_subdomain.exit, %bb.af, %bb.ag, %bb.ah
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !46
  store ptr %i.cb, ptr %5, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %storemerge97133 = load ptr, ptr %i.cc, align 8, !tbaa !41
  store ptr %storemerge97133, ptr %i.a, align 8, !tbaa !42
  br label %._crit_edge.loopexit

validate_subdomain.exit.thread108:                ; preds = %bb.ai, %bb.aa, %validate_subdomain.exit
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %storemerge97 = load ptr, ptr %i.ce, align 8, !tbaa !41 ; 3 uses
  store ptr %storemerge97, ptr %i.a, align 8, !tbaa !42
  %.not138 = icmp eq ptr %storemerge97, null
  br i1 %.not138, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %validate_subdomain.exit.thread108, %validate_subdomain.exit.thread108.thread
  %.2106134 = phi i32 [ 1, %validate_subdomain.exit.thread108.thread ], [ 0, %validate_subdomain.exit.thread108 ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %i.cf = phi ptr [ %i.az, %bb.z ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.176.lcssa = phi i32 [ %.075114, %bb.z ], [ %.2106134, %._crit_edge.loopexit ] ; 2 uses
  %.not99 = icmp eq ptr %i.cf, null
  br i1 %.not99, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !8
  call void @free(ptr noundef nonnull %i.cf) #14
  %.pre120 = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %bb.ak

end_hunk_0
