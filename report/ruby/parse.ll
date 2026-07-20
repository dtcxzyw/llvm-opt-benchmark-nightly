inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@parser_set_shareable_constant_value:bb.a
  %i.ai = getelementptr i8, ptr %0, i64 196
  %.val = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.aj = getelementptr i8, ptr %0, i64 200
  %.val25 = load ptr, ptr %i.aj, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %.val25, i32 noundef %.val, ptr noundef nonnull @.str.833, ptr noundef %1, ptr noundef nonnull %2) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_set_token_info(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @parser_get_bool(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = shl nuw nsw i32 %i.a, 8
  %i.f = and i32 %i.e, 256
  %i.g = and i32 %i.d, -257
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_set_encode(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = load i8, ptr %1, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.b, -69             ; 3 uses
  %i.c = icmp ult i8 %switch.tableidx, 40
  br i1 %i.c, label %switch.hole_check, label %.critedge

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 631360192659, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %switch.hole_check
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.parser_set_encode, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull %switch.load) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge

.critedge:                                        ; preds = %switch.hole_check, %bb.a, %switch.lookup
  %i.g = tail call i32 @rb_enc_find_index(ptr noundef nonnull %1) #31 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %.critedge, %rb_enc_asciicompat.exit.thread
  %.val.sink = phi ptr [ %.val, %rb_enc_asciicompat.exit.thread ], [ %1, %.critedge ], [ %1, %switch.lookup ]
  %.str.825.sink = phi ptr [ @.str.825, %rb_enc_asciicompat.exit.thread ], [ @.str.823, %.critedge ], [ @.str.823, %switch.lookup ]
  %i.i = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull %.str.825.sink, ptr noundef %.val.sink) #31
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !11
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  store i64 %i.k, ptr %i.a, align 16, !tbaa !11
  %i.l = tail call i64 @rb_make_backtrace() #31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.m, align 16, !tbaa !11
  %i.n = getelementptr i8, ptr %0, i64 208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !427
  %i.p = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.824, i64 noundef %i.o, i32 noundef %i.q) #31
  %i.s = tail call i64 @rb_ary_unshift(i64 noundef %i.l, i64 noundef %i.r) #31 ; 0 uses
  %i.t = call i64 @rb_make_exception(i32 noundef 3, ptr noundef nonnull %i.a) #31 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !29   ; 3 uses
  store i32 %i.u, ptr %2, align 4, !tbaa !520
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = getelementptr i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.v, align 4, !tbaa !521
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.u, ptr %i.ae, align 4, !tbaa !520
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = getelementptr i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !188
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ab
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !521
  %i.al = getelementptr i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !189
  call void @ruby_show_error_line(ptr poison, i64 noundef %i.t, ptr noundef nonnull %2, i32 noundef %i.u, ptr noundef %i.am)
  %i.an = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !129
  call void @rb_ast_free(ptr noundef %i.ao) #31
  store ptr null, ptr %i.an, align 8, !tbaa !129
  call void @rb_exc_raise(i64 noundef %i.t) #36
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.ap = tail call ptr @rb_enc_from_index(i32 noundef %i.g) #31 ; 10 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %.val.i = load i32, ptr %i.aq, align 4, !tbaa !540
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.c
  %i.ar = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ap) #35
  %.not3.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i, label %bb.d, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.c, %rb_enc_asciicompat.exit
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.val = load ptr, ptr %i.as, align 8, !tbaa !559
  br label %bb.b

bb.d:                                             ; preds = %rb_enc_asciicompat.exit
  %i.at = getelementptr i8, ptr %0, i64 216
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !176
  %i.au = getelementptr i8, ptr %0, i64 376
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !515 ; 3 uses
  %.not36 = icmp eq ptr %i.av, null
  br i1 %.not36, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !352 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !350 ; 3 uses
  %xtraiter = and i64 %i.ax, 1
  %i.bb = icmp eq i64 %i.ax, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ax, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %rb_parser_enc_associate.exit.1, %.lr.ph.new
  %.039 = phi i64 [ 0, %.lr.ph.new ], [ %i.bn, %rb_parser_enc_associate.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %rb_parser_enc_associate.exit.1 ]
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %.039
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !353 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  %.val.i37 = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bf = icmp eq ptr %.val.i37, %i.ap
  br i1 %i.bf, label %rb_parser_enc_associate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val9.i = load i32, ptr %i.bd, align 8, !tbaa !24
  %i.bg = icmp eq i32 %.val9.i, 1
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.bd, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.ap, ptr %i.be, align 8, !tbaa !25
  br label %rb_parser_enc_associate.exit

rb_parser_enc_associate.exit:                     ; preds = %bb.e, %bb.h
  %i.bh = getelementptr [8 x i8], ptr %i.ba, i64 %.039
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !353 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8      ; 2 uses
  %.val.i37.1 = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bl = icmp eq ptr %.val.i37.1, %i.ap
  br i1 %i.bl, label %rb_parser_enc_associate.exit.1, label %bb.i

bb.i:                                             ; preds = %rb_parser_enc_associate.exit
  %.val9.i.1 = load i32, ptr %i.bj, align 8, !tbaa !24
  %i.bm = icmp eq i32 %.val9.i.1, 1
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bj, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ap, ptr %i.bk, align 8, !tbaa !25
  br label %rb_parser_enc_associate.exit.1

rb_parser_enc_associate.exit.1:                   ; preds = %bb.k, %rb_parser_enc_associate.exit
  %i.bn = add nuw nsw i64 %.039, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !629

.loopexit.loopexit.unr-lcssa:                     ; preds = %rb_parser_enc_associate.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.039.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.bo = getelementptr [8 x i8], ptr %i.ba, i64 %.039.epil.init
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !353 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.val.i37.epil = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.br = icmp eq ptr %.val.i37.epil, %i.ap
  br i1 %i.br, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %.val9.i.epil = load i32, ptr %i.bp, align 8, !tbaa !24
  %i.bs = icmp eq i32 %.val9.i.epil, 1
  br i1 %i.bs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bp, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %.epil.preheader, %.preheader, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #22

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #2

declare i64 @rb_make_backtrace() local_unnamed_addr #2

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_make_exception(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #20

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #2

declare i32 @rb_memcicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @parser_get_bool(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !15
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -70                    ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %bb.d [
    i32 23, label %bb.b
    i32 7, label %bb.b
    i32 16, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.831) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.832) #35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 196
  %.val = load i32, ptr %i.i, align 4, !tbaa !29
  %i.j = getelementptr i8, ptr %0, i64 200
  %.val6 = load ptr, ptr %i.j, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %.val6, i32 noundef %.val, ptr noundef nonnull @.str.833, ptr noundef %1, ptr noundef nonnull %2) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 314, 318) i32 @no_digits(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 80         ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !188
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.q, align 4, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.847)
  %i.s = load i32, ptr %i.a, align 4, !tbaa !29
  %i.t = icmp eq i32 %i.b, %i.s
  br i1 %i.t, label %bb.b, label %parser_yyerror0.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !189
  %i.w = getelementptr i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.x, ptr noundef nonnull readonly %1, i32 noundef %i.b, ptr noundef %i.v)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !188  ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !426
  %.not = icmp ult ptr %i.y, %i.aa
  br i1 %.not, label %bb.c, label %nextc0.exit

bb.c:                                             ; preds = %parser_yyerror0.exit
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !15
  %i.ac = icmp eq i8 %i.ab, 95
  br i1 %i.ac, label %bb.d, label %nextc0.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 360
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 8
  %.not13.i = icmp eq i32 %i.af, 0
  br i1 %.not13.i, label %bb.e, label %.critedge.i, !prof !527

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !528
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %.critedge.i, label %bb.f, !prof !205

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.aj = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.aj, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !188
  br label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge.i, %bb.e
  %i.ak = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 1      ; 3 uses
  store ptr %i.al, ptr %i.k, align 8, !tbaa !188
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.an = icmp eq i8 %i.am, 13
  br i1 %i.an, label %bb.g, label %nextc0.exit, !prof !205

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !426
  %.not.i.i = icmp ult ptr %i.al, %i.ao
  br i1 %.not.i.i, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !15
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %bb.i, label %nextc0.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ak, i64 2
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !188
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.critedge.i, %bb.c, %parser_yyerror0.exit
  %i.as = call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef 0, i32 noundef 10, i32 noundef 0)
  ret i32 %i.as
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
begin_hunk_1_@literal_cmp:bb.a
  br i1 %.not12.i39, label %bb.t, label %node_integer_cmp.exit

bb.t:                                             ; preds = %bb.s
  %bcmp.i = tail call i32 @bcmp(ptr %i.cg, ptr %i.ck, i64 %i.ci)
  %i.cr = icmp ne i32 %bcmp.i, 0
  %i.cs = zext i1 %i.cr to i32
  br label %node_integer_cmp.exit

bb.u:                                             ; preds = %bb.c
  %i.ct = getelementptr i8, ptr %i.b, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !345 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.c, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !345 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !18
  %i.cz = getelementptr i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !23 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18
  %i.dd = getelementptr i8, ptr %i.cw, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !23
  %.not.i40 = icmp eq i64 %i.da, %i.de
  br i1 %.not.i40, label %bb.v, label %node_integer_cmp.exit

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.cw, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25
  %i.dh = getelementptr i8, ptr %i.cu, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25
  %.not12.i41 = icmp eq ptr %i.di, %i.dg
  br i1 %.not12.i41, label %bb.w, label %node_integer_cmp.exit

bb.w:                                             ; preds = %bb.v
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.cy, ptr %i.dc, i64 %i.da)
  %i.dj = icmp ne i32 %bcmp.i42, 0
  %i.dk = zext i1 %i.dj to i32
  br label %node_integer_cmp.exit

bb.x:                                             ; preds = %bb.c
  %i.dl = getelementptr i8, ptr %i.b, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !468
  %i.dn = getelementptr i8, ptr %i.c, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !468
  %.not.i44 = icmp eq i32 %i.dm, %i.do
  br i1 %.not.i44, label %bb.y, label %node_integer_cmp.exit

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr i8, ptr %i.b, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !466 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.c, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !466 ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dq, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18
  %i.dv = getelementptr i8, ptr %i.dq, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !23 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !18
  %i.dz = getelementptr i8, ptr %i.ds, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !23
  %.not.i.i = icmp eq i64 %i.dw, %i.ea
  br i1 %.not.i.i, label %bb.z, label %node_integer_cmp.exit

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr i8, ptr %i.ds, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !25
  %i.ed = getelementptr i8, ptr %i.dq, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !25
  %.not12.i.i = icmp eq ptr %i.ee, %i.ec
  br i1 %.not12.i.i, label %bb.aa, label %node_integer_cmp.exit

bb.aa:                                            ; preds = %bb.z
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.du, ptr %i.dy, i64 %i.dw)
  %i.ef = icmp ne i32 %bcmp.i.i, 0
  %i.eg = zext i1 %i.ef to i32
  br label %node_integer_cmp.exit

bb.ab:                                            ; preds = %bb.c
  %i.eh = getelementptr i8, ptr %i.b, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !228
  %i.ej = getelementptr i8, ptr %i.c, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !228
  %i.el = icmp ne i32 %i.ei, %i.ek
  %i.em = zext i1 %i.el to i32
  br label %node_integer_cmp.exit

bb.ac:                                            ; preds = %bb.c
  %i.en = getelementptr i8, ptr %i.b, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !451 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.c, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !451 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !18
  %i.et = getelementptr i8, ptr %i.eo, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !23 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eq, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !18
  %i.ex = getelementptr i8, ptr %i.eq, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !23
  %.not.i45 = icmp eq i64 %i.eu, %i.ey
  br i1 %.not.i45, label %bb.ad, label %node_integer_cmp.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr i8, ptr %i.eq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !25
  %i.fb = getelementptr i8, ptr %i.eo, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25
  %.not12.i46 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not12.i46, label %bb.ae, label %node_integer_cmp.exit

bb.ae:                                            ; preds = %bb.ad
  %bcmp.i47 = tail call i32 @bcmp(ptr %i.es, ptr %i.ew, i64 %i.eu)
  %i.fd = icmp ne i32 %bcmp.i47, 0
  %i.fe = zext i1 %i.fd to i32
  br label %node_integer_cmp.exit

bb.af:                                            ; preds = %bb.c
  %i.ff = getelementptr i8, ptr %i.b, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !453
  %i.fh = getelementptr i8, ptr %i.c, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !453
  %i.fj = icmp ne ptr %i.fg, %i.fi
  %i.fk = zext i1 %i.fj to i32
  br label %node_integer_cmp.exit

bb.ag:                                            ; preds = %bb.c
  %i.fl = tail call ptr @ruby_node_name(i32 noundef %i.g) #31
  %i.fm = tail call ptr @ruby_node_name(i32 noundef %i.g) #31
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.884, ptr noundef %i.fl, ptr noundef %i.fm) #32
  unreachable

node_integer_cmp.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.ab, %bb.af, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.fk, %bb.af ], [ -1, %bb.b ], [ %i.z, %bb.f ], [ %i.ak, %bb.h ], [ %i.bd, %bb.l ], [ %i.ca, %bb.q ], [ %i.cs, %bb.t ], [ %i.dk, %bb.w ], [ %i.em, %bb.ab ], [ %i.eg, %bb.aa ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.x ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ %i.fe, %bb.ae ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @literal_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127                        ; 2 uses
  switch i32 %i.e, label %bb.l [
    i32 59, label %bb.b
    i32 60, label %bb.c
    i32 61, label %bb.d
    i32 62, label %bb.e
    i32 63, label %bb.f
    i32 101, label %bb.g
    i32 68, label %bb.h
    i32 109, label %bb.i
    i32 110, label %bb.j
    i32 111, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !631  ; 6 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #35 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter187 = and i64 %i.h, 3                  ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter192 = and i64 %i.h, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i ] ; 5 uses
  %.078.i.i.i = phi i64 [ 5381, %.lr.ph.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i ]
  %niter193 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter193.next.3, %.lr.ph.i.i.i ]
  %i.j = mul i64 %.078.i.i.i, 33
  %i.k = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, 33
  %i.p = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s
  %i.u = mul i64 %i.t, 33
  %i.v = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i64
  %i.z = add i64 %i.u, %i.y
  %i.aa = mul i64 %i.z, 33
  %i.ab = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = zext i8 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae                    ; 3 uses
  %i.ag = add nuw i64 %.09.i.i.i, 4               ; 2 uses
  %niter193.next.3 = add nuw i64 %niter193, 4     ; 2 uses
  %niter193.ncmp.3 = icmp eq i64 %niter193.next.3, %unroll_iter192
  br i1 %niter193.ncmp.3, label %rb_char_p_hash.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !654

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !635 ; 6 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ai) #35 ; 4 uses
  %.not.i.i.i21 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i21, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %bb.c
  %xtraiter180 = and i64 %i.aj, 3                 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 4
  br i1 %i.ak, label %.lr.ph.i.i.i22.epil.preheader, label %.lr.ph.i.i.i22.preheader.new

.lr.ph.i.i.i22.preheader.new:                     ; preds = %.lr.ph.i.i.i22.preheader
  %unroll_iter185 = and i64 %i.aj, -4
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22, %.lr.ph.i.i.i22.preheader.new
  %.09.i.i.i23 = phi i64 [ 0, %.lr.ph.i.i.i22.preheader.new ], [ %i.bi, %.lr.ph.i.i.i22 ] ; 5 uses
  %.078.i.i.i24 = phi i64 [ 5381, %.lr.ph.i.i.i22.preheader.new ], [ %i.bh, %.lr.ph.i.i.i22 ]
  %niter186 = phi i64 [ 0, %.lr.ph.i.i.i22.preheader.new ], [ %niter186.next.3, %.lr.ph.i.i.i22 ]
  %i.al = mul i64 %.078.i.i.i24, 33
  %i.am = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %i.al, %i.ao
  %i.aq = mul i64 %i.ap, 33
  %i.ar = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i64
  %i.av = add i64 %i.aq, %i.au
  %i.aw = mul i64 %i.av, 33
  %i.ax = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.ay = getelementptr i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = zext i8 %i.az to i64
  %i.bb = add i64 %i.aw, %i.ba
  %i.bc = mul i64 %i.bb, 33
  %i.bd = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.be = getelementptr i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 3 uses
  %i.bi = add nuw i64 %.09.i.i.i23, 4             ; 2 uses
  %niter186.next.3 = add nuw i64 %niter186, 4     ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %rb_char_p_hash.exit.loopexit129.unr-lcssa, label %.lr.ph.i.i.i22, !llvm.loop !654

bb.d:                                             ; preds = %bb.a
  %i.bj = getelementptr i8, ptr %i.a, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !638 ; 6 uses
  %i.bl = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bk) #35 ; 4 uses
  %.not.i.i.i28 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i28, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %bb.d
  %xtraiter173 = and i64 %i.bl, 3                 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %.lr.ph.i.i.i29.epil.preheader, label %.lr.ph.i.i.i29.preheader.new

.lr.ph.i.i.i29.preheader.new:                     ; preds = %.lr.ph.i.i.i29.preheader
  %unroll_iter178 = and i64 %i.bl, -4
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29, %.lr.ph.i.i.i29.preheader.new
  %.09.i.i.i30 = phi i64 [ 0, %.lr.ph.i.i.i29.preheader.new ], [ %i.ck, %.lr.ph.i.i.i29 ] ; 5 uses
  %.078.i.i.i31 = phi i64 [ 5381, %.lr.ph.i.i.i29.preheader.new ], [ %i.cj, %.lr.ph.i.i.i29 ]
  %niter179 = phi i64 [ 0, %.lr.ph.i.i.i29.preheader.new ], [ %niter179.next.3, %.lr.ph.i.i.i29 ]
  %i.bn = mul i64 %.078.i.i.i31, 33
  %i.bo = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bn, %i.bq
  %i.bs = mul i64 %i.br, 33
  %i.bt = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %i.bs, %i.bw
  %i.by = mul i64 %i.bx, 33
  %i.bz = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add i64 %i.by, %i.cc
  %i.ce = mul i64 %i.cd, 33
  %i.cf = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.cg = getelementptr i8, ptr %i.cf, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = zext i8 %i.ch to i64
  %i.cj = add i64 %i.ce, %i.ci                    ; 3 uses
  %i.ck = add nuw i64 %.09.i.i.i30, 4             ; 2 uses
  %niter179.next.3 = add nuw i64 %niter179, 4     ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %rb_char_p_hash.exit.loopexit131.unr-lcssa, label %.lr.ph.i.i.i29, !llvm.loop !654

bb.e:                                             ; preds = %bb.a
  %i.cl = getelementptr i8, ptr %i.a, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !643 ; 6 uses
  %i.cn = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cm) #35 ; 4 uses
  %.not.i.i.i35 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i35, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.preheader

.lr.ph.i.i.i36.preheader:                         ; preds = %bb.e
  %xtraiter166 = and i64 %i.cn, 3                 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 4
  br i1 %i.co, label %.lr.ph.i.i.i36.epil.preheader, label %.lr.ph.i.i.i36.preheader.new

.lr.ph.i.i.i36.preheader.new:                     ; preds = %.lr.ph.i.i.i36.preheader
  %unroll_iter171 = and i64 %i.cn, -4
  br label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %.lr.ph.i.i.i36, %.lr.ph.i.i.i36.preheader.new
  %.09.i.i.i37 = phi i64 [ 0, %.lr.ph.i.i.i36.preheader.new ], [ %i.dm, %.lr.ph.i.i.i36 ] ; 5 uses
  %.078.i.i.i38 = phi i64 [ 5381, %.lr.ph.i.i.i36.preheader.new ], [ %i.dl, %.lr.ph.i.i.i36 ]
  %niter172 = phi i64 [ 0, %.lr.ph.i.i.i36.preheader.new ], [ %niter172.next.3, %.lr.ph.i.i.i36 ]
  %i.cp = mul i64 %.078.i.i.i38, 33
  %i.cq = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, 33
  %i.cv = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = mul i64 %i.cz, 33
  %i.db = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.dc = getelementptr i8, ptr %i.db, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = zext i8 %i.dd to i64
  %i.df = add i64 %i.da, %i.de
  %i.dg = mul i64 %i.df, 33
  %i.dh = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add nuw i64 %.09.i.i.i37, 4             ; 2 uses
  %niter172.next.3 = add nuw i64 %niter172, 4     ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %rb_char_p_hash.exit.loopexit133.unr-lcssa, label %.lr.ph.i.i.i36, !llvm.loop !654

bb.f:                                             ; preds = %bb.a
  %i.dn = getelementptr i8, ptr %i.a, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !445 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val19 = load i64, ptr %i.dp, align 8, !tbaa !23 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 24
  %.val20 = load ptr, ptr %i.dq, align 8, !tbaa !18 ; 5 uses
  %.not.i.i.i42 = icmp eq i64 %.val19, 0
  br i1 %.not.i.i.i42, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.preheader

.lr.ph.i.i.i43.preheader:                         ; preds = %bb.f
  %xtraiter159 = and i64 %.val19, 3               ; 3 uses
  %i.dr = icmp ult i64 %.val19, 4
  br i1 %i.dr, label %.lr.ph.i.i.i43.epil.preheader, label %.lr.ph.i.i.i43.preheader.new

.lr.ph.i.i.i43.preheader.new:                     ; preds = %.lr.ph.i.i.i43.preheader
  %unroll_iter164 = and i64 %.val19, -4
  br label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %.lr.ph.i.i.i43, %.lr.ph.i.i.i43.preheader.new
  %.09.i.i.i44 = phi i64 [ 0, %.lr.ph.i.i.i43.preheader.new ], [ %i.ep, %.lr.ph.i.i.i43 ] ; 5 uses
  %.078.i.i.i45 = phi i64 [ 5381, %.lr.ph.i.i.i43.preheader.new ], [ %i.eo, %.lr.ph.i.i.i43 ]
  %niter165 = phi i64 [ 0, %.lr.ph.i.i.i43.preheader.new ], [ %niter165.next.3, %.lr.ph.i.i.i43 ]
  %i.ds = mul i64 %.078.i.i.i45, 33
  %i.dt = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = zext i8 %i.du to i64
  %i.dw = add i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 33
  %i.dy = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add i64 %i.dx, %i.eb
  %i.ed = mul i64 %i.ec, 33
  %i.ee = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.ef = getelementptr i8, ptr %i.ee, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !15
  %i.eh = zext i8 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = mul i64 %i.ei, 33
  %i.ek = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.el = getelementptr i8, ptr %i.ek, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %i.ej, %i.en                    ; 3 uses
  %i.ep = add nuw i64 %.09.i.i.i44, 4             ; 2 uses
  %niter165.next.3 = add nuw i64 %niter165, 4     ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %rb_char_p_hash.exit.loopexit135.unr-lcssa, label %.lr.ph.i.i.i43, !llvm.loop !654

bb.g:                                             ; preds = %bb.a
  %i.eq = getelementptr i8, ptr %i.a, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !345 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %.val17 = load i64, ptr %i.es, align 8, !tbaa !23 ; 4 uses
  %i.et = getelementptr i8, ptr %i.er, i64 24
  %.val18 = load ptr, ptr %i.et, align 8, !tbaa !18 ; 5 uses
  %.not.i.i.i48 = icmp eq i64 %.val17, 0
  br i1 %.not.i.i.i48, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.preheader

.lr.ph.i.i.i49.preheader:                         ; preds = %bb.g
  %xtraiter152 = and i64 %.val17, 3               ; 3 uses
  %i.eu = icmp ult i64 %.val17, 4
  br i1 %i.eu, label %.lr.ph.i.i.i49.epil.preheader, label %.lr.ph.i.i.i49.preheader.new

.lr.ph.i.i.i49.preheader.new:                     ; preds = %.lr.ph.i.i.i49.preheader
  %unroll_iter157 = and i64 %.val17, -4
  br label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %.lr.ph.i.i.i49, %.lr.ph.i.i.i49.preheader.new
  %.09.i.i.i50 = phi i64 [ 0, %.lr.ph.i.i.i49.preheader.new ], [ %i.fs, %.lr.ph.i.i.i49 ] ; 5 uses
  %.078.i.i.i51 = phi i64 [ 5381, %.lr.ph.i.i.i49.preheader.new ], [ %i.fr, %.lr.ph.i.i.i49 ]
  %niter158 = phi i64 [ 0, %.lr.ph.i.i.i49.preheader.new ], [ %niter158.next.3, %.lr.ph.i.i.i49 ]
  %i.ev = mul i64 %.078.i.i.i51, 33
  %i.ew = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = zext i8 %i.ex to i64
  %i.ez = add i64 %i.ev, %i.ey
  %i.fa = mul i64 %i.ez, 33
  %i.fb = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fc = getelementptr i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add i64 %i.fa, %i.fe
  %i.fg = mul i64 %i.ff, 33
  %i.fh = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fi = getelementptr i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i64
  %i.fl = add i64 %i.fg, %i.fk
  %i.fm = mul i64 %i.fl, 33
  %i.fn = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fo = getelementptr i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = zext i8 %i.fp to i64
  %i.fr = add i64 %i.fm, %i.fq                    ; 3 uses
  %i.fs = add nuw i64 %.09.i.i.i50, 4             ; 2 uses
  %niter158.next.3 = add nuw i64 %niter158, 4     ; 2 uses
  %niter158.ncmp.3 = icmp eq i64 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %rb_char_p_hash.exit.loopexit137.unr-lcssa, label %.lr.ph.i.i.i49, !llvm.loop !654

bb.h:                                             ; preds = %bb.a
  %i.ft = getelementptr i8, ptr %i.a, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !466 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %.val15 = load i64, ptr %i.fv, align 8, !tbaa !23 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 24
  %.val16 = load ptr, ptr %i.fw, align 8, !tbaa !18 ; 5 uses
  %.not.i.i.i55 = icmp eq i64 %.val15, 0
  br i1 %.not.i.i.i55, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %bb.h
  %xtraiter145 = and i64 %.val15, 3               ; 3 uses
  %i.fx = icmp ult i64 %.val15, 4
  br i1 %i.fx, label %.lr.ph.i.i.i56.epil.preheader, label %.lr.ph.i.i.i56.preheader.new

.lr.ph.i.i.i56.preheader.new:                     ; preds = %.lr.ph.i.i.i56.preheader
  %unroll_iter150 = and i64 %.val15, -4
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56, %.lr.ph.i.i.i56.preheader.new
  %.09.i.i.i57 = phi i64 [ 0, %.lr.ph.i.i.i56.preheader.new ], [ %i.gv, %.lr.ph.i.i.i56 ] ; 5 uses
  %.078.i.i.i58 = phi i64 [ 5381, %.lr.ph.i.i.i56.preheader.new ], [ %i.gu, %.lr.ph.i.i.i56 ]
  %niter151 = phi i64 [ 0, %.lr.ph.i.i.i56.preheader.new ], [ %niter151.next.3, %.lr.ph.i.i.i56 ]
  %i.fy = mul i64 %.078.i.i.i58, 33
  %i.fz = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = zext i8 %i.ga to i64
  %i.gc = add i64 %i.fy, %i.gb
  %i.gd = mul i64 %i.gc, 33
  %i.ge = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gh = zext i8 %i.gg to i64
  %i.gi = add i64 %i.gd, %i.gh
  %i.gj = mul i64 %i.gi, 33
  %i.gk = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gl = getelementptr i8, ptr %i.gk, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = zext i8 %i.gm to i64
  %i.go = add i64 %i.gj, %i.gn
  %i.gp = mul i64 %i.go, 33
  %i.gq = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gr = getelementptr i8, ptr %i.gq, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i64
  %i.gu = add i64 %i.gp, %i.gt                    ; 3 uses
  %i.gv = add nuw i64 %.09.i.i.i57, 4             ; 2 uses
  %niter151.next.3 = add nuw i64 %niter151, 4     ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %rb_char_p_hash.exit.loopexit139.unr-lcssa, label %.lr.ph.i.i.i56, !llvm.loop !654

bb.i:                                             ; preds = %bb.a
  %i.gw = getelementptr i8, ptr %i.a, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !228
  %i.gy = sext i32 %i.gx to i64
  br label %rb_char_p_hash.exit

bb.j:                                             ; preds = %bb.a
  %i.gz = getelementptr i8, ptr %i.a, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !451 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %.val = load i64, ptr %i.hb, align 8, !tbaa !23 ; 4 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 24
  %.val14 = load ptr, ptr %i.hc, align 8, !tbaa !18 ; 5 uses
  %.not.i.i.i62 = icmp eq i64 %.val, 0
  br i1 %.not.i.i.i62, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.preheader

.lr.ph.i.i.i63.preheader:                         ; preds = %bb.j
  %xtraiter = and i64 %.val, 3                    ; 3 uses
  %i.hd = icmp ult i64 %.val, 4
  br i1 %i.hd, label %.lr.ph.i.i.i63.epil.preheader, label %.lr.ph.i.i.i63.preheader.new

.lr.ph.i.i.i63.preheader.new:                     ; preds = %.lr.ph.i.i.i63.preheader
  %unroll_iter = and i64 %.val, -4
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63, %.lr.ph.i.i.i63.preheader.new
  %.09.i.i.i64 = phi i64 [ 0, %.lr.ph.i.i.i63.preheader.new ], [ %i.ib, %.lr.ph.i.i.i63 ] ; 5 uses
  %.078.i.i.i65 = phi i64 [ 5381, %.lr.ph.i.i.i63.preheader.new ], [ %i.ia, %.lr.ph.i.i.i63 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i63.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i63 ]
  %i.he = mul i64 %.078.i.i.i65, 33
  %i.hf = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !15
  %i.hh = zext i8 %i.hg to i64
  %i.hi = add i64 %i.he, %i.hh
  %i.hj = mul i64 %i.hi, 33
  %i.hk = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hl = getelementptr i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !15
  %i.hn = zext i8 %i.hm to i64
  %i.ho = add i64 %i.hj, %i.hn
  %i.hp = mul i64 %i.ho, 33
  %i.hq = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hr = getelementptr i8, ptr %i.hq, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = zext i8 %i.hs to i64
  %i.hu = add i64 %i.hp, %i.ht
  %i.hv = mul i64 %i.hu, 33
  %i.hw = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hx = getelementptr i8, ptr %i.hw, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !15
  %i.hz = zext i8 %i.hy to i64
  %i.ia = add i64 %i.hv, %i.hz                    ; 3 uses
  %i.ib = add nuw i64 %.09.i.i.i64, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rb_char_p_hash.exit.loopexit141.unr-lcssa, label %.lr.ph.i.i.i63, !llvm.loop !654

bb.k:                                             ; preds = %bb.a
  %i.ic = getelementptr i8, ptr %i.a, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !453
  %i.ie = ptrtoint ptr %i.id to i64
  br label %rb_char_p_hash.exit

bb.l:                                             ; preds = %bb.a
  %i.if = tail call ptr @ruby_node_name(i32 noundef %i.e) #31
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.885, ptr noundef %i.if) #32
  unreachable

rb_char_p_hash.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i
  %lcmp.mod189.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod189.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %rb_char_p_hash.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ag, %rb_char_p_hash.exit.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i.preheader ], [ %i.af, %rb_char_p_hash.exit.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter187, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.il, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.ik, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter188 = phi i64 [ %epil.iter188.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ig = mul i64 %.078.i.i.i.epil, 33
  %i.ih = getelementptr i8, ptr %i.g, i64 %.09.i.i.i.epil
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !15
  %i.ij = zext i8 %i.ii to i64
  %i.ik = add i64 %i.ig, %i.ij                    ; 2 uses
  %i.il = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter188.next = add i64 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i64 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !655

rb_char_p_hash.exit.loopexit129.unr-lcssa:        ; preds = %.lr.ph.i.i.i22
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.epil.preheader

.lr.ph.i.i.i22.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit129.unr-lcssa, %.lr.ph.i.i.i22.preheader
  %.09.i.i.i23.epil.init = phi i64 [ 0, %.lr.ph.i.i.i22.preheader ], [ %i.bi, %rb_char_p_hash.exit.loopexit129.unr-lcssa ]
  %.078.i.i.i24.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i22.preheader ], [ %i.bh, %rb_char_p_hash.exit.loopexit129.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i.i.i22.epil

.lr.ph.i.i.i22.epil:                              ; preds = %.lr.ph.i.i.i22.epil, %.lr.ph.i.i.i22.epil.preheader
  %.09.i.i.i23.epil = phi i64 [ %i.ir, %.lr.ph.i.i.i22.epil ], [ %.09.i.i.i23.epil.init, %.lr.ph.i.i.i22.epil.preheader ] ; 2 uses
  %.078.i.i.i24.epil = phi i64 [ %i.iq, %.lr.ph.i.i.i22.epil ], [ %.078.i.i.i24.epil.init, %.lr.ph.i.i.i22.epil.preheader ]
  %epil.iter181 = phi i64 [ %epil.iter181.next, %.lr.ph.i.i.i22.epil ], [ 0, %.lr.ph.i.i.i22.epil.preheader ]
  %i.im = mul i64 %.078.i.i.i24.epil, 33
  %i.in = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23.epil
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i64
  %i.iq = add i64 %i.im, %i.ip                    ; 2 uses
  %i.ir = add nuw i64 %.09.i.i.i23.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.epil, !llvm.loop !656

rb_char_p_hash.exit.loopexit131.unr-lcssa:        ; preds = %.lr.ph.i.i.i29
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.epil.preheader

.lr.ph.i.i.i29.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit131.unr-lcssa, %.lr.ph.i.i.i29.preheader
  %.09.i.i.i30.epil.init = phi i64 [ 0, %.lr.ph.i.i.i29.preheader ], [ %i.ck, %rb_char_p_hash.exit.loopexit131.unr-lcssa ]
  %.078.i.i.i31.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i29.preheader ], [ %i.cj, %rb_char_p_hash.exit.loopexit131.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i29.epil

.lr.ph.i.i.i29.epil:                              ; preds = %.lr.ph.i.i.i29.epil, %.lr.ph.i.i.i29.epil.preheader
  %.09.i.i.i30.epil = phi i64 [ %i.ix, %.lr.ph.i.i.i29.epil ], [ %.09.i.i.i30.epil.init, %.lr.ph.i.i.i29.epil.preheader ] ; 2 uses
  %.078.i.i.i31.epil = phi i64 [ %i.iw, %.lr.ph.i.i.i29.epil ], [ %.078.i.i.i31.epil.init, %.lr.ph.i.i.i29.epil.preheader ]
  %epil.iter174 = phi i64 [ %epil.iter174.next, %.lr.ph.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i29.epil.preheader ]
  %i.is = mul i64 %.078.i.i.i31.epil, 33
  %i.it = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30.epil
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = zext i8 %i.iu to i64
  %i.iw = add i64 %i.is, %i.iv                    ; 2 uses
  %i.ix = add nuw i64 %.09.i.i.i30.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.epil, !llvm.loop !657

rb_char_p_hash.exit.loopexit133.unr-lcssa:        ; preds = %.lr.ph.i.i.i36
  %lcmp.mod168.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod168.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.epil.preheader

.lr.ph.i.i.i36.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit133.unr-lcssa, %.lr.ph.i.i.i36.preheader
  %.09.i.i.i37.epil.init = phi i64 [ 0, %.lr.ph.i.i.i36.preheader ], [ %i.dm, %rb_char_p_hash.exit.loopexit133.unr-lcssa ]
  %.078.i.i.i38.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i36.preheader ], [ %i.dl, %rb_char_p_hash.exit.loopexit133.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter166, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.i.i36.epil

.lr.ph.i.i.i36.epil:                              ; preds = %.lr.ph.i.i.i36.epil, %.lr.ph.i.i.i36.epil.preheader
  %.09.i.i.i37.epil = phi i64 [ %i.jd, %.lr.ph.i.i.i36.epil ], [ %.09.i.i.i37.epil.init, %.lr.ph.i.i.i36.epil.preheader ] ; 2 uses
  %.078.i.i.i38.epil = phi i64 [ %i.jc, %.lr.ph.i.i.i36.epil ], [ %.078.i.i.i38.epil.init, %.lr.ph.i.i.i36.epil.preheader ]
  %epil.iter167 = phi i64 [ %epil.iter167.next, %.lr.ph.i.i.i36.epil ], [ 0, %.lr.ph.i.i.i36.epil.preheader ]
  %i.iy = mul i64 %.078.i.i.i38.epil, 33
  %i.iz = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37.epil
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !15
  %i.jb = zext i8 %i.ja to i64
  %i.jc = add i64 %i.iy, %i.jb                    ; 2 uses
  %i.jd = add nuw i64 %.09.i.i.i37.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.epil, !llvm.loop !658

rb_char_p_hash.exit.loopexit135.unr-lcssa:        ; preds = %.lr.ph.i.i.i43
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.epil.preheader

.lr.ph.i.i.i43.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit135.unr-lcssa, %.lr.ph.i.i.i43.preheader
  %.09.i.i.i44.epil.init = phi i64 [ 0, %.lr.ph.i.i.i43.preheader ], [ %i.ep, %rb_char_p_hash.exit.loopexit135.unr-lcssa ]
  %.078.i.i.i45.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i43.preheader ], [ %i.eo, %rb_char_p_hash.exit.loopexit135.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.i.i43.epil

.lr.ph.i.i.i43.epil:                              ; preds = %.lr.ph.i.i.i43.epil, %.lr.ph.i.i.i43.epil.preheader
  %.09.i.i.i44.epil = phi i64 [ %i.jj, %.lr.ph.i.i.i43.epil ], [ %.09.i.i.i44.epil.init, %.lr.ph.i.i.i43.epil.preheader ] ; 2 uses
  %.078.i.i.i45.epil = phi i64 [ %i.ji, %.lr.ph.i.i.i43.epil ], [ %.078.i.i.i45.epil.init, %.lr.ph.i.i.i43.epil.preheader ]
  %epil.iter160 = phi i64 [ %epil.iter160.next, %.lr.ph.i.i.i43.epil ], [ 0, %.lr.ph.i.i.i43.epil.preheader ]
  %i.je = mul i64 %.078.i.i.i45.epil, 33
  %i.jf = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44.epil
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !15
  %i.jh = zext i8 %i.jg to i64
  %i.ji = add i64 %i.je, %i.jh                    ; 2 uses
  %i.jj = add nuw i64 %.09.i.i.i44.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.epil, !llvm.loop !659

rb_char_p_hash.exit.loopexit137.unr-lcssa:        ; preds = %.lr.ph.i.i.i49
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil.preheader

.lr.ph.i.i.i49.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit137.unr-lcssa, %.lr.ph.i.i.i49.preheader
  %.09.i.i.i50.epil.init = phi i64 [ 0, %.lr.ph.i.i.i49.preheader ], [ %i.fs, %rb_char_p_hash.exit.loopexit137.unr-lcssa ]
  %.078.i.i.i51.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i49.preheader ], [ %i.fr, %rb_char_p_hash.exit.loopexit137.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.i.i49.epil

.lr.ph.i.i.i49.epil:                              ; preds = %.lr.ph.i.i.i49.epil, %.lr.ph.i.i.i49.epil.preheader
  %.09.i.i.i50.epil = phi i64 [ %i.jp, %.lr.ph.i.i.i49.epil ], [ %.09.i.i.i50.epil.init, %.lr.ph.i.i.i49.epil.preheader ] ; 2 uses
  %.078.i.i.i51.epil = phi i64 [ %i.jo, %.lr.ph.i.i.i49.epil ], [ %.078.i.i.i51.epil.init, %.lr.ph.i.i.i49.epil.preheader ]
  %epil.iter153 = phi i64 [ %epil.iter153.next, %.lr.ph.i.i.i49.epil ], [ 0, %.lr.ph.i.i.i49.epil.preheader ]
  %i.jk = mul i64 %.078.i.i.i51.epil, 33
  %i.jl = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50.epil
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !15
  %i.jn = zext i8 %i.jm to i64
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = add nuw i64 %.09.i.i.i50.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil, !llvm.loop !660

rb_char_p_hash.exit.loopexit139.unr-lcssa:        ; preds = %.lr.ph.i.i.i56
  %lcmp.mod147.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil.preheader

.lr.ph.i.i.i56.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.preheader
  %.09.i.i.i57.epil.init = phi i64 [ 0, %.lr.ph.i.i.i56.preheader ], [ %i.gv, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %.078.i.i.i58.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i56.preheader ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter145, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.i.i56.epil

.lr.ph.i.i.i56.epil:                              ; preds = %.lr.ph.i.i.i56.epil, %.lr.ph.i.i.i56.epil.preheader
  %.09.i.i.i57.epil = phi i64 [ %i.jv, %.lr.ph.i.i.i56.epil ], [ %.09.i.i.i57.epil.init, %.lr.ph.i.i.i56.epil.preheader ] ; 2 uses
  %.078.i.i.i58.epil = phi i64 [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %.078.i.i.i58.epil.init, %.lr.ph.i.i.i56.epil.preheader ]
  %epil.iter146 = phi i64 [ %epil.iter146.next, %.lr.ph.i.i.i56.epil ], [ 0, %.lr.ph.i.i.i56.epil.preheader ]
  %i.jq = mul i64 %.078.i.i.i58.epil, 33
  %i.jr = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i64
  %i.ju = add i64 %i.jq, %i.jt                    ; 2 uses
  %i.jv = add nuw i64 %.09.i.i.i57.epil, 1
  %epil.iter146.next = add i64 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i64 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil, !llvm.loop !661

rb_char_p_hash.exit.loopexit141.unr-lcssa:        ; preds = %.lr.ph.i.i.i63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil.preheader

.lr.ph.i.i.i63.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.preheader
  %.09.i.i.i64.epil.init = phi i64 [ 0, %.lr.ph.i.i.i63.preheader ], [ %i.ib, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %.078.i.i.i65.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i63.preheader ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.i.i63.epil

end_hunk_1
