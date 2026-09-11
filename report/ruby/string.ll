Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/string?download=true
inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@smart_chomp:bb.a

declare void @rb_warn_deprecated(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @onigenc_step_back(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @str_compat_and_valid(i64 noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !48
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !48 ; 5 uses
  %i.b = icmp eq i64 %.0..0..0., 0
  %i.c = and i64 %.0..0..0., 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %.0..0..0. to ptr           ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.j = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.j, ptr %i.a, align 8, !tbaa !48
  %.phi.trans.insert = inttoptr i64 %i.j to ptr   ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.f, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.phi.trans.insert, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 5 uses
  %i.k = phi i64 [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  %.0.i = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 4 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = and i32 %i.l, 3145728                    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %rb_enc_str_coderange.exit

bb.b:                                             ; preds = %rb_string_value.exit
  %i.o = lshr i32 %i.l, 22
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i32 %i.p, 127
  br i1 %i.q, label %bb.c, label %get_encoding.exit.i

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @rb_enc_get_index(i64 noundef %.0.i) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.r, %bb.c ], [ %i.p, %bb.b ]
  %i.s = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.t = load i64, ptr %.pre-phi, align 8, !tbaa !36
  %i.u = and i64 %i.t, 8192
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %.pre-phi, i64 24  ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.d, %get_encoding.exit.i
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.v, %get_encoding.exit.i ]
  %i.y = getelementptr i8, ptr %.pre-phi, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.x, i64 noundef %i.z, ptr noundef %i.s) ; 2 uses
  %i.ab = load i64, ptr %.pre-phi, align 8, !tbaa !36
  %i.ac = and i64 %i.ab, -3145729
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = or i64 %i.ac, %i.ad                     ; 2 uses
  store i64 %i.ae, ptr %.pre-phi, align 8, !tbaa !36
  br label %rb_enc_str_coderange.exit

rb_enc_str_coderange.exit:                        ; preds = %rb_string_value.exit, %enc_coderange_scan.exit.i
  %i.af = phi i64 [ %i.ae, %enc_coderange_scan.exit.i ], [ %i.k, %rb_string_value.exit ]
  %.0.i7 = phi i32 [ %i.aa, %enc_coderange_scan.exit.i ], [ %i.m, %rb_string_value.exit ] ; 2 uses
  %i.ag = icmp eq i32 %.0.i7, 3145728
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_enc_str_coderange.exit
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !48
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.215, i64 noundef %.0.i) #30
  unreachable

bb.f:                                             ; preds = %rb_enc_str_coderange.exit
  %i.ai = trunc i64 %i.af to i32
  %i.aj = lshr i32 %i.ai, 22
  %i.ak = and i32 %i.aj, 127                      ; 2 uses
  %i.al = icmp eq i32 %i.ak, 127
  br i1 %i.al, label %bb.g, label %get_encoding.exit

bb.g:                                             ; preds = %bb.f
  %i.am = tail call i32 @rb_enc_get_index(i64 noundef %.0.i) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.am, %bb.g ], [ %i.ak, %bb.f ]
  %i.an = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.ao = icmp eq i32 %.0.i7, 1048576
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %get_encoding.exit
  %i.ap = getelementptr i8, ptr %1, i64 20
  %.val = load i32, ptr %i.ap, align 4, !tbaa !42
  %.not6 = icmp eq i32 %.val, 1
  br i1 %.not6, label %bb.k, label %bb.j

bb.i:                                             ; preds = %get_encoding.exit
  %.not = icmp eq ptr %1, %i.an
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !48
  %i.ar = tail call ptr @rb_enc_inspect_name(ptr noundef %1) #28
  %i.as = tail call ptr @rb_enc_inspect_name(ptr noundef %i.an) #28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.200, ptr noundef %i.ar, ptr noundef %i.as) #30
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  ret i64 %.0.i
}

declare i64 @rb_num2ll(i64 noundef) local_unnamed_addr #3

declare i64 @rb_class_new_instance_pass_kw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_id_encoding() local_unnamed_addr #3

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #3

declare i64 @rb_invcmp(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -1, 5) i64 @str_casecmp(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call ptr @rb_enc_compatible(i64 noundef %0, i64 noundef %1) #28 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ] ; 7 uses
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k     ; 7 uses
  %i.m = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %i.o = and i64 %i.n, 8192
  %.not.i96 = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i96, label %RSTRING_END.exit99, label %bb.d

bb.d:                                             ; preds = %RSTRING_END.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  br label %RSTRING_END.exit99

RSTRING_END.exit99:                               ; preds = %RSTRING_END.exit, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %RSTRING_END.exit ] ; 7 uses
  %i.s = getelementptr i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t     ; 7 uses
  %i.v = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %RSTRING_END.exit99
  %i.w = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %1)
  br i1 %i.w, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.e
  %i.x = icmp ult ptr %i.i, %i.l
  %i.y = icmp ult ptr %i.r, %i.u
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph133, label %.loopexit

.lr.ph133:                                        ; preds = %.preheader, %.thread
  %.066132 = phi ptr [ %i.al, %.thread ], [ %i.r, %.preheader ] ; 2 uses
  %.069131 = phi ptr [ %i.ak, %.thread ], [ %i.i, %.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.069131, align 1, !tbaa !43 ; 3 uses
  %i.ab = load i8, ptr %.066132, align 1, !tbaa !43 ; 3 uses
  %.not92 = icmp eq i8 %i.aa, %i.ab
  br i1 %.not92, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph133
  %i.ac = zext i8 %i.ab to i32
  %i.ad = zext i8 %i.aa to i32
  %i.ae = add i8 %i.aa, -65
  %i.af = icmp ult i8 %i.ae, 26
  %2 = select i1 %i.af, i32 32, i32 0
  %3 = or i32 %2, %i.ad                           ; 2 uses
  %i.ag = add i8 %i.ab, -65
  %i.ah = icmp ult i8 %i.ag, 26
  %4 = select i1 %i.ah, i32 32, i32 0
  %5 = or i32 %4, %i.ac                           ; 2 uses
  %.not93 = icmp eq i32 %3, %5
  br i1 %.not93, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp samesign ult i32 %3, %5
  %i.aj = select i1 %i.ai, i64 -1, i64 3
  br label %bb.p

.thread:                                          ; preds = %bb.f, %.lr.ph133
  %i.ak = getelementptr i8, ptr %.069131, i64 1   ; 3 uses
  %i.al = getelementptr i8, ptr %.066132, i64 1   ; 3 uses
  %i.am = icmp ult ptr %i.ak, %i.l
  %i.an = icmp ult ptr %i.al, %i.u
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph133, label %.loopexit, !llvm.loop !246

bb.h:                                             ; preds = %bb.e, %RSTRING_END.exit99
  %i.ap = icmp ult ptr %i.i, %i.l
  %i.aq = icmp ult ptr %i.r, %i.u
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %bb.o
  %.167129 = phi ptr [ %i.bq, %bb.o ], [ %i.r, %bb.h ] ; 4 uses
  %.170128 = phi ptr [ %i.bo, %bb.o ], [ %i.i, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.as = call i32 @rb_enc_ascget(ptr noundef %.170128, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.at = call i32 @rb_enc_ascget(ptr noundef %.167129, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 3 uses
  %i.au = icmp sgt i32 %i.as, -1
  %i.av = icmp sgt i32 %i.at, -1
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.aw = add nsw i32 %i.as, -65
  %i.ax = icmp ult i32 %i.aw, 26
  %6 = select i1 %i.ax, i32 32, i32 0
  %7 = or i32 %6, %i.as                           ; 2 uses
  %i.ay = add nsw i32 %i.at, -65
  %i.az = icmp ult i32 %i.ay, 26
  %8 = select i1 %i.az, i32 32, i32 0
  %9 = or i32 %8, %i.at                           ; 2 uses
  %.not91 = icmp eq i32 %7, %9
  br i1 %.not91, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %i.a, align 4, !tbaa !33
  %.pre150 = load i32, ptr %i.b, align 4, !tbaa !33
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp samesign ult i32 %7, %9
  %i.bb = select i1 %i.ba, i64 -1, i64 3
  br label %.thread105

bb.k:                                             ; preds = %.lr.ph
  %i.bc = call i32 @rb_enc_mbclen(ptr noundef %.170128, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #28
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !33
  %i.bd = call i32 @rb_enc_mbclen(ptr noundef %.167129, ptr noundef nonnull %i.u, ptr noundef nonnull %i.c) #28 ; 5 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !33  ; 3 uses
  %i.bf = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd)
  %i.bg = sext i32 %i.bf to i64
  %i.bh = call i32 @memcmp(ptr noundef %.170128, ptr noundef %.167129, i64 noundef %i.bg) #32 ; 2 uses
  %.not89 = icmp eq i32 %i.bh, 0
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.inv = icmp sgt i32 %i.bh, -1
  %i.bi = select i1 %.inv, i64 3, i64 -1
  br label %.thread105

bb.m:                                             ; preds = %bb.k
  %.not90 = icmp eq i32 %i.be, %i.bd
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp slt i32 %i.be, %i.bd
  %i.bk = select i1 %i.bj, i64 -1, i64 3
  br label %.thread105

.thread105:                                       ; preds = %bb.j, %bb.l, %bb.n
  %.6.ph = phi i64 [ %i.bb, %bb.j ], [ %i.bk, %bb.n ], [ %i.bi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge, %bb.m
  %i.bl = phi i32 [ %.pre150, %._crit_edge ], [ %i.bd, %bb.m ]
  %i.bm = phi i32 [ %.pre, %._crit_edge ], [ %i.bd, %bb.m ]
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %.170128, i64 %i.bn ; 3 uses
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr i8, ptr %.167129, i64 %i.bp ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.br = icmp ult ptr %i.bo, %i.l
  %i.bs = icmp ult ptr %i.bq, %i.u
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph, label %.loopexit, !llvm.loop !247

.loopexit:                                        ; preds = %bb.o, %.thread, %bb.h, %.preheader
  %.372 = phi ptr [ %i.ak, %.thread ], [ %i.i, %.preheader ], [ %i.i, %bb.h ], [ %i.bo, %bb.o ]
  %.3 = phi ptr [ %i.al, %.thread ], [ %i.r, %.preheader ], [ %i.r, %bb.h ], [ %i.bq, %bb.o ]
  %i.bu = icmp eq ptr %.372, %i.l
  %i.bv = icmp eq ptr %.3, %i.u
  %. = select i1 %i.bv, i64 1, i64 -1
  %spec.select = select i1 %i.bu, i64 %., i64 3
  br label %bb.p

bb.p:                                             ; preds = %.thread105, %bb.g, %.loopexit, %bb.a
  %.7 = phi i64 [ %i.aj, %bb.g ], [ 4, %bb.a ], [ %.6.ph, %.thread105 ], [ %spec.select, %.loopexit ]
  ret i64 %.7
}

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, 21) i64 @str_casecmp_p(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i64, ptr @sym_fold, align 8, !tbaa !48
  store i64 %i.b, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call ptr @rb_enc_compatible(i64 noundef %0, i64 noundef %1) #28
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %rb_str_eql.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @rb_str_downcase(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0) ; 3 uses
  %i.e = call i64 @rb_str_downcase(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %1) ; 5 uses
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %rb_str_eql.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  %i.h = and i64 %i.e, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rb_str_eql.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.k = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 5
  br i1 %i.n, label %bb.d, label %rb_str_eql.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  %i.r = getelementptr i8, ptr %i.k, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %.not.i.i = icmp eq i64 %i.q, %i.s
  br i1 %.not.i.i, label %bb.e, label %rb_str_eql.exit

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @rb_str_comparable(i64 noundef %i.d, i64 noundef %i.e)
  %.not13.i.i = icmp eq i32 %i.t, 0
  br i1 %.not13.i.i, label %rb_str_eql.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.o, align 8, !tbaa !36
  %i.v = and i64 %i.u, 8192
  %.not.i.i.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.x, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !36
  %i.aa = and i64 %i.z, 8192
  %.not.i14.i.i = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.k, i64 24      ; 2 uses
  br i1 %.not.i14.i.i, label %RSTRING_PTR.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  br label %RSTRING_PTR.exit15.i.i

RSTRING_PTR.exit15.i.i:                           ; preds = %bb.h, %RSTRING_PTR.exit.i.i
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ %i.ab, %RSTRING_PTR.exit.i.i ] ; 2 uses
  %i.ae = icmp eq ptr %i.y, %i.ad
  br i1 %i.ae, label %rb_str_eql.exit, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit15.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.ad, i64 %i.q)
  %i.af = icmp eq i32 %bcmp.i.i, 0
  %..i.i = select i1 %i.af, i64 20, i64 0
  br label %rb_str_eql.exit

rb_str_eql.exit:                                  ; preds = %bb.i, %RSTRING_PTR.exit15.i.i, %bb.e, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ 20, %bb.b ], [ 20, %RSTRING_PTR.exit15.i.i ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ %..i.i, %bb.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #3

declare i32 @rb_reg_backref_number(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_reg_nth_match(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_range_beg_len(i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_str_subpat_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !48
  %i.b = tail call i64 @rb_reg_search(i64 noundef %1, i64 noundef %0, i64 noundef 0, i32 noundef 0) #28
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIndexError, align 8, !tbaa !48
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.220) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_backref_get() #28      ; 2 uses
  %i.f = tail call i32 @rb_reg_backref_number(i64 noundef %i.e, i64 noundef %2) #28 ; 5 uses
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !81   ; 3 uses
  %.not = icmp slt i32 %i.f, %i.i
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, -1                    ; 2 uses
  %i.k = sub i32 0, %i.f
  %.not30 = icmp sgt i32 %i.i, %i.k
  %or.cond = or i1 %i.j, %.not30
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr @rb_eIndexError, align 8, !tbaa !48
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.221, i32 noundef %i.f) #30
end_hunk_0
