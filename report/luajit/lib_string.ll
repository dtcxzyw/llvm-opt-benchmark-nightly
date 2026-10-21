Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lib_string?download=true
inline.NumInlined: 25
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_cf_string_gsub:bb.a
  store ptr %i.cr, ptr %2, align 8, !tbaa !61
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %add_value.exit, %bb.ah
  %.152 = phi i32 [ %.153, %bb.ah ], [ %i.x, %add_value.exit ] ; 2 uses
  %.142 = phi ptr [ %i.cp, %bb.ah ], [ %i.w, %add_value.exit ] ; 2 uses
  br i1 %.not47, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.ai, %add_value.exit.thread, %bb.d
  %.3 = phi ptr [ %.041, %bb.d ], [ %.041, %add_value.exit.thread ], [ %.142, %bb.ai ] ; 2 uses
  %.2 = phi i32 [ %.039, %bb.d ], [ %.153, %add_value.exit.thread ], [ %.152, %bb.ai ]
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.3 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @luaL_addlstring(ptr noundef nonnull %2, ptr noundef %.3, i64 noundef %i.cv) #8
  call void @luaL_pushresult(ptr noundef nonnull %2) #8
  %i.cw = sext i32 %.2 to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.cw) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_string_format(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !17
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i64 %i.b, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  store ptr %i.h, ptr %i.e, align 8, !tbaa !28
  %i.i = sub nsw i32 0, %.0
  %i.j = tail call i32 @lj_strfmt_putarg(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef %i.i) #8 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !62

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = and i64 %i.t, 4294967295
  %i.v = tail call ptr @lj_str_new(ptr noundef nonnull %0, ptr noundef %i.p, i64 noundef %i.u) #8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = or i64 %i.w, -703687441776640
  store i64 %i.x, ptr %i.o, align 8, !tbaa !19
  %i.y = load i64, ptr %i.a, align 8, !tbaa !17
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37
  %.not = icmp ult i64 %i.ab, %i.ad
  br i1 %.not, label %bb.e, label %bb.d, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call i32 @lj_gc_step(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 1
}

declare hidden ptr @lj_lib_checkstr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_lib_optint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @lj_err_caller(ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @lj_state_growstack(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @lj_buf_tmp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_lib_checkint(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @lj_err_arg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden ptr @lj_str_new(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @lj_lib_optstr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @lj_buf_cat2str(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_buf_putstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_buf_putstr_rep(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_gc_step(ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_lib_checkLproto(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_bcwrite(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @writer_buf(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = tail call ptr @lj_buf_putmem(ptr noundef %3, ptr noundef %1, i32 noundef %i.a) #8 ; 0 uses
  ret i32 0
}

declare hidden ptr @lj_buf_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.MatchState, align 8         ; 13 uses
  %i.a = tail call ptr @lj_lib_checkstr(ptr noundef %0, i32 noundef 1) #8 ; 5 uses
  %i.b = tail call ptr @lj_lib_checkstr(ptr noundef %0, i32 noundef 2) #8 ; 5 uses
  %i.c = tail call i32 @lj_lib_optint(ptr noundef %0, i32 noundef 3, i32 noundef 1) #8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 4 uses
  %.inv = icmp sgt i32 %i.c, -1
  %. = select i1 %.inv, i32 -1, i32 %i.e
  %.064 = add nsw i32 %., %i.c
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.064, i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 %i.e) ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !19
  %i.n = icmp ult i64 %i.m, -281474976710656
  br i1 %i.n, label %._crit_edge100, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call i32 @lj_str_haspattern(ptr noundef %i.b) #8
  %.not74 = icmp eq i32 %i.o, 0
  %.pre102 = load i32, ptr %i.f, align 4, !tbaa !21 ; 2 uses
  br i1 %.not74, label %._crit_edge100, label %bb.f

._crit_edge100:                                   ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre102, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.r = zext nneg i32 %spec.select to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = sub i32 %i.p, %spec.select
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = tail call ptr @lj_str_find(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, i32 noundef %i.u, i32 noundef %i.w) #8 ; 2 uses
  %.not78 = icmp eq ptr %i.x, null
  br i1 %.not78, label %.critedge80, label %bb.e

bb.e:                                             ; preds = %._crit_edge100
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = sitofp i32 %i.ae to double
  store double %i.af, ptr %i.z, align 8, !tbaa !19
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = load i32, ptr %i.v, align 4, !tbaa !21
  %i.aj = add nsw i32 %i.ai, %i.ad
  %i.ak = sitofp i32 %i.aj to double
  store double %i.ak, ptr %i.ah, align 8, !tbaa !19
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.al = phi i32 [ %.pre102, %bb.d ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.ao = zext nneg i32 %spec.select to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 5 uses
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !19
  %.fr = freeze i8 %i.aq
  %.not77 = icmp eq i8 %.fr, 94
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %0, ptr %i.ar, align 8, !tbaa !41
  store ptr %i.an, ptr %2, align 8, !tbaa !42
  %i.as = zext i32 %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  br i1 %.not77, label %.split.us, label %.split, !llvm.loop !63

.split.us:                                        ; preds = %bb.f
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i32 0, ptr %i.av, align 4, !tbaa !44
  store i32 0, ptr %i.aw, align 8, !tbaa !45
  %i.ax = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.ap, ptr noundef nonnull %3) ; 2 uses
  %.not75.us = icmp eq ptr %i.ax, null
  br i1 %.not75.us, label %.critedge, label %.split94.us

.split:                                           ; preds = %bb.f
  store i32 0, ptr %i.av, align 4, !tbaa !44
  store i32 0, ptr %i.aw, align 8, !tbaa !45
  %i.ay = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.am) ; 2 uses
  %.not7596 = icmp eq ptr %i.ay, null
  br i1 %.not7596, label %push_captures.exit86, label %.split94.us

.split94.us:                                      ; preds = %bb.i, %.split, %.split.us
  %.us-phi = phi ptr [ %i.ap, %.split.us ], [ %i.ap, %.split ], [ %i.ca, %bb.i ] ; 2 uses
  %.us-phi95 = phi ptr [ %i.ax, %.split.us ], [ %i.ay, %.split ], [ %i.cb, %bb.i ] ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split94.us
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.bd = ptrtoint ptr %.us-phi to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = sitofp i32 %i.bg to double
  store double %i.bh, ptr %i.ba, align 8, !tbaa !19
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !18
  %i.bk = ptrtoint ptr %.us-phi95 to i64
  %i.bl = ptrtoint ptr %i.an to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = sitofp i32 %i.bn to double
  store double %i.bo, ptr %i.bi, align 8, !tbaa !19
  %i.bp = load i32, ptr %i.aw, align 8, !tbaa !45 ; 4 uses
  %i.bq = load ptr, ptr %i.ar, align 8, !tbaa !41
  call void @luaL_checkstack(ptr noundef %i.bq, i32 noundef %i.bp, ptr noundef nonnull @.str.3) #8
  %i.br = icmp sgt i32 %i.bp, 0
  br i1 %i.br, label %.lr.ph.i, label %push_captures.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i32 [ %i.bs, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %2, i32 noundef %.014.i, ptr noundef null, ptr noundef null)
  %i.bs = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, %i.bp
  br i1 %exitcond.not.i, label %push_captures.exit, label %.lr.ph.i, !llvm.loop !0

push_captures.exit:                               ; preds = %.lr.ph.i, %bb.g
  %i.bt = add nsw i32 %i.bp, 2
  br label %.critedge82

bb.h:                                             ; preds = %.split94.us
  %i.bu = load i32, ptr %i.aw, align 8, !tbaa !45 ; 2 uses
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.bu, i32 1) ; 4 uses
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !41
  call void @luaL_checkstack(ptr noundef %i.bv, i32 noundef %spec.select.i, ptr noundef nonnull @.str.3) #8
  %i.bw = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bw, label %.lr.ph.i83, label %.critedge82

.lr.ph.i83:                                       ; preds = %bb.h, %.lr.ph.i83
  %.014.i84 = phi i32 [ %i.bx, %.lr.ph.i83 ], [ 0, %bb.h ] ; 2 uses
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %2, i32 noundef %.014.i84, ptr noundef nonnull %.us-phi, ptr noundef nonnull %.us-phi95)
  %i.bx = add nuw nsw i32 %.014.i84, 1            ; 2 uses
  %exitcond.not.i85 = icmp eq i32 %i.bx, %spec.select.i
  br i1 %exitcond.not.i85, label %.critedge82, label %.lr.ph.i83, !llvm.loop !0

push_captures.exit86:                             ; preds = %.split, %bb.i
  %.06097 = phi ptr [ %i.ca, %bb.i ], [ %i.ap, %.split ] ; 2 uses
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !43
  %i.bz = icmp ult ptr %.06097, %i.by
  br i1 %i.bz, label %bb.i, label %.critedge

bb.i:                                             ; preds = %push_captures.exit86
  %i.ca = getelementptr inbounds nuw i8, ptr %.06097, i64 1 ; 3 uses
  store i32 0, ptr %i.av, align 4, !tbaa !44
  store i32 0, ptr %i.aw, align 8, !tbaa !45
  %i.cb = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.am) ; 2 uses
  %.not75 = icmp eq ptr %i.cb, null
  br i1 %.not75, label %push_captures.exit86, label %.split94.us

.critedge:                                        ; preds = %push_captures.exit86, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.critedge80

.critedge80:                                      ; preds = %.critedge, %._crit_edge100
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  store i64 -1, ptr %i.ce, align 8, !tbaa !19
  br label %bb.j

.critedge82:                                      ; preds = %.lr.ph.i83, %bb.h, %push_captures.exit
  %.267.ph = phi i32 [ %i.bt, %push_captures.exit ], [ %i.bu, %bb.h ], [ %spec.select.i, %.lr.ph.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %.critedge82, %.critedge80
  %.3 = phi i32 [ 1, %.critedge80 ], [ 2, %bb.e ], [ %.267.ph, %.critedge82 ]
  ret i32 %.3
}

declare hidden i32 @lj_str_haspattern(ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_str_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !44
  %i.d = icmp sgt i32 %i.b, 199
  br i1 %i.d, label %bb.b, label %.preheader187

.preheader187:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %.outer.outer

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  tail call void @lj_err_caller(ptr noundef %i.i, i32 noundef 1849) #9
  unreachable

bb.c:                                             ; preds = %.outer, %matchbracketclass.exit122
  %.077 = phi ptr [ %i.cu, %matchbracketclass.exit122 ], [ %.077.ph, %.outer ] ; 20 uses
  %i.j = load i8, ptr %.077, align 1, !tbaa !19   ; 2 uses
  switch i8 %i.j, label %bb.bm [
    i8 40, label %bb.d
    i8 41, label %bb.m
    i8 37, label %bb.q
    i8 0, label %start_capture.exit
    i8 36, label %bb.bk
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, 41
  %i.n = load i32, ptr %i.f, align 8, !tbaa !45   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 31                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  tail call void @lj_err_caller(ptr noundef %i.q, i32 noundef 1891) #9, !inline_history !64
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.s ; 2 uses
  store ptr %.080.ph.ph, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 -2, ptr %i.u, align 8, !tbaa !47
  %i.v = add nsw i32 %i.n, 1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !45
  %i.w = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.080.ph.ph, ptr noundef nonnull %i.r), !inline_history !64 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %start_capture.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.f, align 8, !tbaa !45
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.f, align 8, !tbaa !45
  br label %start_capture.exit

bb.i:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  tail call void @lj_err_caller(ptr noundef %i.ab, i32 noundef 1891) #9, !inline_history !64
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = sext i32 %i.n to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.ac ; 2 uses
  store ptr %.080.ph.ph, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 -1, ptr %i.ae, align 8, !tbaa !47
  %i.af = add nsw i32 %i.n, 1
  store i32 %i.af, ptr %i.f, align 8, !tbaa !45
  %i.ag = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.080.ph.ph, ptr noundef nonnull %i.k), !inline_history !64 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %start_capture.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !45
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !45
  br label %start_capture.exit

bb.m:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.al = load i32, ptr %i.f, align 8, !tbaa !45  ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph513, label %._crit_edge

.lr.ph513:                                        ; preds = %bb.m
  %i.an = zext nneg i32 %i.al to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.ao = trunc nuw i64 %i.aq to i32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %._crit_edge, !llvm.loop !65

bb.o:                                             ; preds = %.lr.ph513, %bb.n
  %indvars.iv.i512 = phi i64 [ %i.an, %.lr.ph513 ], [ %i.aq, %bb.n ]
  %i.aq = add nsw i64 %indvars.iv.i512, -1        ; 4 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !47
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %capture_to_close.exit, label %bb.n, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  tail call void @lj_err_caller(ptr noundef %i.aw, i32 noundef 1740) #9
  unreachable

capture_to_close.exit:                            ; preds = %bb.o
  %i.ax = and i64 %i.aq, 4294967295
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.ba = ptrtoint ptr %.080.ph.ph to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !47
  %i.be = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.080.ph.ph, ptr noundef nonnull %i.ak), !inline_history !66 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %start_capture.exit

bb.p:                                             ; preds = %capture_to_close.exit
  store i64 -1, ptr %i.bd, align 8, !tbaa !47
  br label %start_capture.exit

bb.q:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19  ; 5 uses
  switch i8 %i.bh, label %bb.bd [
    i8 98, label %bb.r
    i8 102, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19  ; 3 uses
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.077, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  tail call void @lj_err_caller(ptr noundef %i.bp, i32 noundef 1830) #9
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bq = load i8, ptr %.080.ph.ph, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.bq, %i.bj
end_hunk_0
