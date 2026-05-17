inline.NumInlined: 128
inline.NumDeleted: 6
begin_hunk_0_@set_eval_history:bb.a
.lr.ph.i:                                         ; preds = %get_c_long.exit.i, %.lr.ph.i
  %.07.i = phi ptr [ %i.j, %.lr.ph.i ], [ null, %get_c_long.exit.i ]
  %.056.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.h, %get_c_long.exit.i ] ; 2 uses
  %i.j = tail call ptr @cons(ptr noundef null, ptr noundef %.07.i) #24 ; 10 uses
  %i.k = add nsw i64 %.056.i, -1
  %i.l = icmp samesign ugt i64 %.056.i, 1
  br i1 %i.l, label %.lr.ph.i, label %make_list.exit, !llvm.loop !102

make_list.exit:                                   ; preds = %.lr.ph.i
  %.not = icmp eq ptr %1, null
  %i.m = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not, i1 true, i1 %i.m
  br i1 %or.cond, label %nconc.exit, label %bb.c

bb.c:                                             ; preds = %make_list.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = icmp eq i16 %i.o, 1
  br i1 %i.p, label %bb.d, label %.critedge.i.i10

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  br label %bb.e

.critedge.i.i10:                                  ; preds = %bb.c
  %i.s = tail call ptr @err(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.j) #24
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i10, %bb.d
  %i.t = phi ptr [ %i.r, %bb.d ], [ %i.s, %.critedge.i.i10 ] ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %last.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !16
  %i.x = icmp eq i16 %i.w, 1
  br i1 %i.x, label %.lr.ph.i11, label %last.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i11
  %i.y = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !16
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %.lr.ph.i11, label %last.exit.i, !llvm.loop !120

.lr.ph.i11:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.015.i7.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.t, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i7.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.last.exit.loopexit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !120

.last.exit.loopexit_crit_edge.i:                  ; preds = %.lr.ph.i11
  br label %last.exit.i, !llvm.loop !120

last.exit.i:                                      ; preds = %.lr.ph.i.i, %.last.exit.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %bb.e
  %.010.lcssa.i.i = phi ptr [ %i.j, %bb.e ], [ %i.j, %.lr.ph.i.preheader.i ], [ %.015.i7.i, %.last.exit.loopexit_crit_edge.i ], [ %.015.i7.i, %.lr.ph.i.i ]
  %i.ae = tail call ptr @setcdr(ptr noundef nonnull %.010.lcssa.i.i, ptr noundef %i.j) #24 ; 0 uses
  br label %nconc.exit

nconc.exit:                                       ; preds = %get_c_long.exit.i, %bb.a, %last.exit.i, %make_list.exit
  %i.af = phi ptr [ %i.j, %make_list.exit ], [ %i.j, %last.exit.i ], [ null, %bb.a ], [ null, %get_c_long.exit.i ] ; 2 uses
  %i.ag = tail call ptr @cintern(ptr noundef nonnull @.str.120) #24
  %i.ah = tail call ptr @setvar(ptr noundef %i.ag, ptr noundef %i.af, ptr noundef null) #24 ; 0 uses
  %i.ai = tail call ptr @cintern(ptr noundef nonnull @.str.121) #24
  %i.aj = tail call ptr @setvar(ptr noundef %i.ai, ptr noundef %i.af, ptr noundef null) #24 ; 0 uses
  ret ptr %0
}

declare ptr @setvar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_subrs_a() local_unnamed_addr #0 {
bb.a:
  tail call void @init_subr_2(ptr noundef nonnull @.str.122, ptr noundef nonnull @aref1) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.123, ptr noundef nonnull @aset1) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.124, ptr noundef nonnull @string_append) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.125, ptr noundef nonnull @bytes_append) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.126, ptr noundef nonnull @string_length) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.127, ptr noundef nonnull @string_dim) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.128, ptr noundef nonnull @read_from_string) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.129, ptr noundef nonnull @print_to_string) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.130, ptr noundef nonnull @cons_array) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.131, ptr noundef nonnull @sxhash) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.132, ptr noundef nonnull @equal) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.133, ptr noundef nonnull @href) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.134, ptr noundef nonnull @hset) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.135, ptr noundef nonnull @assoc) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.136, ptr noundef nonnull @assv) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.137, ptr noundef nonnull @fast_read) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.138, ptr noundef nonnull @fast_print) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.139, ptr noundef nonnull @make_list) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.140, ptr noundef nonnull @lfread) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.141, ptr noundef nonnull @lfwrite) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.142, ptr noundef nonnull @lfflush) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.143, ptr noundef nonnull @llength) #24
  tail call void @init_subr_4(ptr noundef nonnull @.str.144, ptr noundef nonnull @number2string) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.145, ptr noundef nonnull @string2number) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.146, ptr noundef nonnull @substring) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.147, ptr noundef nonnull @string_search) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.148, ptr noundef nonnull @string_trim) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.149, ptr noundef nonnull @string_trim_left) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.150, ptr noundef nonnull @string_trim_right) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.151, ptr noundef nonnull @string_upcase) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.152, ptr noundef nonnull @string_downcase) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.153, ptr noundef nonnull @lstrcmp) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.154, ptr noundef nonnull @lstrcat) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.155, ptr noundef nonnull @lstrcpy) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.156, ptr noundef nonnull @lstrbreakup) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.157, ptr noundef nonnull @lstrunbreakup) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.158, ptr noundef nonnull @stringp) #24
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_e, ptr noundef nonnull @.str.159) #24
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_f, ptr noundef nonnull @.str.160) #24
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_plists, ptr noundef nonnull @.str.161) #24
  %i.a = load ptr, ptr @sym_plists, align 8, !tbaa !14
  %i.b = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.c = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 100, ptr %i.d, align 8, !tbaa !19
  %i.e = tail call ptr @must_malloc(i64 noundef 800) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.465.i = phi i64 [ 0, %bb.a ], [ %i.u, %.lr.ph.i ] ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.465.i
  store ptr null, ptr %i.h, align 8, !tbaa !14
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.465.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.465.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.465.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.465.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !14
  %i.u = add nuw nsw i64 %.465.i, 5               ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.u, 100
  br i1 %exitcond.not.i.4, label %arcons.exit, label %.lr.ph.i, !llvm.loop !56

arcons.exit:                                      ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 16, ptr %i.v, align 2, !tbaa !16
  %i.w = tail call i64 @no_interrupt(i64 noundef %i.b) #24 ; 0 uses
  %i.x = tail call ptr @setvar(ptr noundef %i.a, ptr noundef nonnull %i.c, ptr noundef null) #24 ; 0 uses
  tail call void @init_subr_3(ptr noundef nonnull @.str.162, ptr noundef nonnull @lref_default) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.163, ptr noundef nonnull @larg_default) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.164, ptr noundef nonnull @lkey_default) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.165, ptr noundef nonnull @llist) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.166, ptr noundef nonnull @writes) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.167, ptr noundef nonnull @lqsort) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.168, ptr noundef nonnull @string_lessp) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.169, ptr noundef nonnull @mapcar) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.170, ptr noundef nonnull @mapcar2) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.171, ptr noundef nonnull @mapcar1) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.172, ptr noundef nonnull @benchmark_funcall1) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.173, ptr noundef nonnull @benchmark_funcall2) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.174, ptr noundef nonnull @benchmark_eval) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.175, ptr noundef nonnull @lfmod) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.176, ptr noundef nonnull @lsubset) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.177, ptr noundef nonnull @base64encode) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.178, ptr noundef nonnull @base64decode) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.179, ptr noundef nonnull @ass) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.180, ptr noundef nonnull @append2) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.181, ptr noundef nonnull @append) #24
  tail call void @init_subr_5(ptr noundef nonnull @.str.182, ptr noundef nonnull @fast_save) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.183, ptr noundef nonnull @fast_load) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.184, ptr noundef nonnull @swrite) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.185, ptr noundef nonnull @lpow) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.186, ptr noundef nonnull @lexp) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.187, ptr noundef nonnull @llog) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.188, ptr noundef nonnull @lsin) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.189, ptr noundef nonnull @lcos) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.190, ptr noundef nonnull @ltan) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.191, ptr noundef nonnull @lasin) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.192, ptr noundef nonnull @lacos) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.193, ptr noundef nonnull @latan) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.194, ptr noundef nonnull @latan2) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.195, ptr noundef nonnull @ltypeof) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.196, ptr noundef nonnull @caaar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.197, ptr noundef nonnull @caadr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.198, ptr noundef nonnull @cadar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.199, ptr noundef nonnull @caddr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.200, ptr noundef nonnull @cdaar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.201, ptr noundef nonnull @cdadr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.202, ptr noundef nonnull @cddar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.203, ptr noundef nonnull @cdddr) #24
  %i.y = tail call ptr @cintern(ptr noundef nonnull @.str.204) #24
  %i.z = tail call ptr @flocons(double noundef f0x400921FB54442D18) #24
  %i.aa = tail call ptr @setvar(ptr noundef %i.y, ptr noundef %i.z, ptr noundef null) #24 ; 0 uses
  %i.ab = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27 ; 16 uses
  store ptr %i.ab, ptr @base64_decode_table, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 -1, i64 256, i1 false)
  %0 = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1, !tbaa !19
  %1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 81
  store <8 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23>, ptr %1, align 1, !tbaa !19
  %2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 89
  store i8 24, ptr %2, align 1, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 90
  store i8 25, ptr %i.ac, align 1, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 97
  store <16 x i8> <i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 113
  store <8 x i8> <i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49>, ptr %i.ae, align 1, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 121
  store i8 50, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 122
  store i8 51, ptr %i.ag, align 1, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 55
  store i8 59, ptr %i.ah, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i8 60, ptr %i.ai, align 1, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 57
  store i8 61, ptr %i.aj, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  store i8 62, ptr %i.ak, align 1, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 47
  store <8 x i8> <i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58>, ptr %i.al, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  store i8 64, ptr %i.am, align 1, !tbaa !19
  tail call void @init_subr_1(ptr noundef nonnull @.str.205, ptr noundef nonnull @hexstr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.206, ptr noundef nonnull @hexstr2bytes) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.179, ptr noundef nonnull @ass) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.207, ptr noundef nonnull @bitand) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.208, ptr noundef nonnull @bitor) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.209, ptr noundef nonnull @bitxor) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.210, ptr noundef nonnull @bitnot) #24
  tail call void @init_msubr(ptr noundef nonnull @.str.211, ptr noundef nonnull @leval_cond) #24
  tail call void @init_fsubr(ptr noundef nonnull @.str.212, ptr noundef nonnull @leval_prog1) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.213, ptr noundef nonnull @lstrspn) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.214, ptr noundef nonnull @lstrcspn) #24
  tail call void @init_subr_4(ptr noundef nonnull @.str.215, ptr noundef nonnull @substring_equal) #24
  tail call void @init_subr_4(ptr noundef nonnull @.str.216, ptr noundef nonnull @substring_equalcase) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.217, ptr noundef nonnull @butlast) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.218, ptr noundef nonnull @ash) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.219, ptr noundef nonnull @getprop) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.220, ptr noundef nonnull @setprop) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.221, ptr noundef nonnull @putprop) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.222, ptr noundef nonnull @last) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.223, ptr noundef nonnull @memq) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.224, ptr noundef nonnull @memv) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.225, ptr noundef nonnull @member) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.226, ptr noundef nonnull @nth) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.227, ptr noundef nonnull @nconc) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.228, ptr noundef nonnull @set_eval_history) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.229, ptr noundef nonnull @parser_fasl) #24
  %i.an = tail call ptr @cintern(ptr noundef nonnull @.str.230) #24
  %i.ao = tail call ptr @a_true_value() #24
  %i.ap = tail call ptr @setvar(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef null) #24 ; 0 uses
  tail call void @init_subr_2(ptr noundef nonnull @.str.231, ptr noundef nonnull @parser_fasl_hook) #24
  %i.aq = tail call ptr @cintern(ptr noundef nonnull @.str.234) #24
  %i.ar = tail call ptr @cintern(ptr noundef nonnull @.str.235) #24
  %i.as = tail call ptr @setvar(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef null) #24 ; 0 uses
  ret void
}

declare void @init_subr_2(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_lsubr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gc_protect_sym(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_5(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_msubr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_fsubr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @parser_fasl(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @flocons(double noundef 1.000000e+02) #24
  %i.b = tail call ptr @cons_array(ptr noundef %i.a, ptr noundef null)
  %i.c = tail call ptr @flocons(double noundef 0.000000e+00) #24
  %i.d = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef null, ptr noundef %i.b, ptr noundef %i.c)
  %i.e = tail call ptr @cintern(ptr noundef nonnull @.str.231) #24
  %i.f = tail call ptr @leval(ptr noundef %i.e, ptr noundef null) #24
  %i.g = tail call ptr @closure(ptr noundef %i.d, ptr noundef %i.f) #24
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @parser_fasl_hook(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @setcar(ptr noundef %0, ptr noundef %1) #24 ; 0 uses
  %i.b = tail call ptr @fast_read(ptr noundef %0) ; 2 uses
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @get_eof_val() #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

declare ptr @closure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_eof_val() local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 56}
!9 = !{!"user_type_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 64}
!12 = !{!9, !10, i64 72}
!13 = !{!9, !10, i64 48}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS3obj", !10, i64 0}
!16 = !{!17, !18, i64 2}
!17 = !{!"obj", !18, i64 0, !18, i64 2, !6, i64 8}
!18 = !{!"short", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !6, i64 0}
!28 = distinct !{!28, !21}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = !{!43, !10, i64 0}
!43 = !{!"gen_readio", !10, i64 0, !10, i64 8, !10, i64 16}
!44 = !{!43, !10, i64 8}
!45 = !{!43, !10, i64 16}
!46 = !{!47, !10, i64 0}
!47 = !{!"gen_printio", !10, i64 0, !10, i64 8, !10, i64 16}
!48 = !{!47, !10, i64 8}
!49 = !{!47, !10, i64 16}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
end_hunk_0
