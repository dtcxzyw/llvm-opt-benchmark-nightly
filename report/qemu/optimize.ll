Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/optimize?download=true
inline.NumInlined: 534
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_constant_folding_cond1:bb.a
bb.an:                                            ; preds = %.loopexit.i
  %switch.tableidx = add i32 %.0, -10             ; 2 uses
  %i.ca = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ca, label %switch.lookup, label %do_constant_folding_cond.exit

do_constant_folding_cond.exit:                    ; preds = %bb.an, %args_are_copies.exit.i, %args_are_copies.exit.i, %.loopexit.i, %bb.f
  %i.cb = and i32 %.0, -2
  %i.cc = icmp eq i32 %i.cb, 12
  br i1 %i.cc, label %bb.ao, label %do_constant_folding_cond.exit.thread

bb.ao:                                            ; preds = %do_constant_folding_cond.exit
  %i.cd = icmp eq i64 %i.ac, %i.ab
  br i1 %i.cd, label %args_are_copies.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i33, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not15.i.i = icmp eq ptr %i.cf, %.pre-phi
  %.phi.trans.insert11 = getelementptr i8, ptr %.pre-phi14, i64 48
  %.val.i37.pre = load ptr, ptr %.phi.trans.insert11, align 8 ; 3 uses
  br i1 %.not15.i.i, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i37.pre, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %.not16.i.i = icmp eq ptr %i.ch, %.pre-phi14
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.ar
  %.020.i.i = phi ptr [ %.0.i.i35, %bb.ar ], [ %i.cf, %bb.aq ] ; 2 uses
  %i.ci = icmp eq ptr %.020.i.i, %.pre-phi14
  br i1 %i.ci, label %args_are_copies.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.cj = getelementptr i8, ptr %.020.i.i, i64 48
  %.0.val.i.i = load ptr, ptr %i.cj, align 8
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 8
  %.0.i.i35 = load ptr, ptr %.0.in.i.i, align 8   ; 2 uses
  %.not.i.i36 = icmp eq ptr %.0.i.i35, %.pre-phi
  br i1 %.not.i.i36, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !5

.loopexit:                                        ; preds = %bb.ar, %bb.ap, %bb.aq
  %i.ck = getelementptr i8, ptr %.val.i37.pre, i64 32
  %.val.val.i = load i64, ptr %i.ck, align 8      ; 3 uses
  %i.cl = getelementptr i8, ptr %.val.i37.pre, i64 40
  %.val.val1.i = load i64, ptr %i.cl, align 8
  %i.cm = icmp eq i64 %.val.val.i, %.val.val1.i
  br i1 %i.cm, label %bb.as, label %do_constant_folding_cond.exit.thread

bb.as:                                            ; preds = %.loopexit
  %i.cn = xor i64 %.val.val.i, -1
  %i.co = and i64 %.val.val.i.i, %i.cn
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %args_are_copies.exit, label %bb.at

args_are_copies.exit:                             ; preds = %.lr.ph.i.i, %bb.ao, %bb.as
  %i.cq = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef 0)
  store i64 %i.cq, ptr %3, align 8
  %i.cr = add nsw i32 %.0, -4
  %i.cs = zext nneg i32 %i.cr to i64
  store i64 %i.cs, ptr %4, align 8
  br label %do_constant_folding_cond.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i33, i64 48
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = xor i64 %i.cu, -1
  %i.cw = and i64 %.val.val.i, %i.cv
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.au, label %do_constant_folding_cond.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.cy = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef 0)
  store i64 %i.cy, ptr %3, align 8
  %i.cz = xor i32 %.0, 15
  %i.da = zext nneg i32 %i.cz to i64
  store i64 %i.da, ptr %4, align 8
  br label %do_constant_folding_cond.exit.thread

switch.lookup:                                    ; preds = %bb.an
  %i.db = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.do_constant_folding_cond1, i64 %i.db
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %do_constant_folding_cond.exit.thread

do_constant_folding_cond.exit.thread:             ; preds = %switch.lookup, %bb.al, %do_constant_folding_cond_32.exit.i, %do_constant_folding_cond_64.exit.i, %args_are_copies.exit.i, %args_are_copies.exit.i, %args_are_copies.exit.i, %args_are_copies.exit.i, %args_are_copies.exit.i, %.loopexit, %bb.at, %do_constant_folding_cond.exit, %bb.au, %args_are_copies.exit
  %.031 = phi i32 [ -1, %.loopexit ], [ -1, %args_are_copies.exit ], [ -1, %bb.au ], [ -1, %do_constant_folding_cond.exit ], [ -1, %bb.at ], [ 0, %args_are_copies.exit.i ], [ 0, %args_are_copies.exit.i ], [ 0, %args_are_copies.exit.i ], [ 1, %bb.al ], [ %switch.ext, %switch.lookup ], [ %i.ba, %do_constant_folding_cond_32.exit.i ], [ %i.bp, %do_constant_folding_cond_64.exit.i ], [ 0, %args_are_copies.exit.i ], [ 0, %args_are_copies.exit.i ]
  ret i32 %.031
}

declare zeroext i1 @tcg_op_imm_match(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @arg_new_temp(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call ptr @tcg_temp_new_internal(i32 noundef %i.b, i32 noundef 0) #9 ; 6 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = lshr i64 %i.j, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.j, 63
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = and i64 %i.p, %i.n
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.b, label %init_ts_info.exit

bb.b:                                             ; preds = %bb.a
  %i.r = or i64 %i.p, %i.n
  store i64 %i.r, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = add i64 %i.w, 56                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.v, i32 noundef 56) #9
  br label %tcg_malloc.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 %i.x, ptr %i.v, align 8
  %i.ac = inttoptr i64 %i.w to ptr
  br label %tcg_malloc.exit.i

tcg_malloc.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  store ptr %.0.i.i, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %tcg_malloc.exit.i, %bb.b
  %.0.i = phi ptr [ %.0.i.i, %tcg_malloc.exit.i ], [ %i.t, %bb.b ] ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  store ptr %i.c, ptr %.0.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load i64, ptr %i.c, align 8
  %i.ah = and i64 %i.ag, 30064771072
  %i.ai = icmp eq i64 %i.ah, 17179869184
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %i.ak, ptr %i.am, align 8
  %i.an = load i64, ptr %i.aj, align 8            ; 2 uses
  %.lobit.i.i = ashr i64 %i.an, 63
  %i.ao = xor i64 %.lobit.i.i, %i.an
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 false)
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = ashr exact i64 -9223372036854775808, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store i64 %i.ar, ptr %i.as, align 8
  br label %init_ts_info.exit

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 -1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %init_ts_info.exit

init_ts_info.exit:                                ; preds = %bb.a, %bb.g, %bb.h
  ret i64 %i.g
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @tcg_temp_new_internal(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @dup_const(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @record_mem_copy(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %tcg_malloc.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.a, ptr %i.f, align 8
  br label %tcg_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = add i64 %i.i, 72                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.h, i32 noundef 72) #9
  br label %tcg_malloc.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %i.h, align 8
  %i.o = inttoptr i64 %i.i to ptr
  br label %tcg_malloc.exit

tcg_malloc.exit:                                  ; preds = %bb.b, %bb.c, %bb.f, %bb.e
  %.0 = phi ptr [ %i.o, %bb.f ], [ %i.n, %bb.e ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.0, i8 noundef 0, i64 noundef 72, i1 noundef false) #9
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i64 %3, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 %4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store i32 %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @interval_tree_insert(ptr noundef nonnull %.0, ptr noundef nonnull %i.s) #9
  %.val13.i = load i64, ptr %2, align 8           ; 2 uses
  %i.t = and i64 %.val13.i, 30064771072
  %i.u = icmp samesign ugt i64 %i.t, 8589934592
  br i1 %i.u, label %find_better_copy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %tcg_malloc.exit
  %.pn.in15.i = getelementptr i8, ptr %2, i64 48
  %.pn16.i = load ptr, ptr %.pn.in15.i, align 8
  %.011.in17.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 8
  %.01118.i = load ptr, ptr %.011.in17.i, align 8 ; 2 uses
  %.not19.i = icmp eq ptr %.01118.i, %2
  br i1 %.not19.i, label %find_better_copy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.v = phi i64 [ %i.af, %.lr.ph.i ], [ %.val13.i, %.preheader.i ] ; 2 uses
  %.01121.i = phi ptr [ %.011.i, %.lr.ph.i ], [ %.01118.i, %.preheader.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %2, %.preheader.i ]
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = and i32 %i.x, 7
  %i.z = load i64, ptr %.01121.i, align 8         ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 7
  %i.ad = icmp samesign ult i32 %i.y, %i.ac       ; 2 uses
  %i.ae = select i1 %i.ad, ptr %.01121.i, ptr %.020.i ; 2 uses
  %.pn.in.i = getelementptr i8, ptr %.01121.i, i64 48
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %.011.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 2 uses
  %.not.i = icmp eq ptr %.011.i, %2
  %i.af = select i1 %i.ad, i64 %i.z, i64 %i.v
  br i1 %.not.i, label %find_better_copy.exit, label %.lr.ph.i, !llvm.loop !0

find_better_copy.exit:                            ; preds = %.lr.ph.i, %tcg_malloc.exit, %.preheader.i
  %.012.i = phi ptr [ %2, %tcg_malloc.exit ], [ %2, %.preheader.i ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.012.i, i64 48
  %.val = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 56
  store ptr %.012.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 2 uses
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %.0, ptr %i.ak, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  ret void
}

declare ptr @interval_tree_iter_next(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @fold_setcond_zmask(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %.val.i = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load i64, ptr %i.f, align 8       ; 3 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 40
  %.val.val1.i = load i64, ptr %i.g, align 8
  %i.h = icmp eq i64 %.val.val.i, %.val.val1.i
  br i1 %i.h, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 48
  %.val.i49 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i49, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = and i64 %i.n, 4294967295
  %i.v = and i64 %.val.val.i, 4294967295
  %.045 = select i1 %i.t, i64 %i.u, i64 %i.n      ; 2 uses
  %.044 = select i1 %i.t, i64 %i.v, i64 %.val.val.i ; 3 uses
  %i.w = icmp ult i64 %.045, %.044
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %i.q, -8             ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -49, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond59 = select i1 %i.x, i1 %switch.lobit, i1 false
  br i1 %or.cond59, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.y = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.fold_setcond_zmask, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.z = load i64, ptr %i.a, align 8
  %i.aa = sub nsw i64 0, %switch.ext
  %i.ab = select i1 %2, i64 %i.aa, i64 %switch.ext
  %i.ac = tail call fastcc i64 @arg_new_constant(ptr noundef nonnull %0, i64 noundef %i.ab)
  tail call fastcc void @tcg_opt_gen_mov(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.z, i64 noundef %i.ac)
  br label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = icmp ult i64 %.045, 2
  br i1 %i.ad, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  switch i32 %i.q, label %.thread [
    i32 8, label %bb.f
    i32 9, label %bb.h
    i32 10, label %bb.g
    i32 12, label %bb.g
    i32 11, label %.split
    i32 13, label %.split
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  br label %.split

.split:                                           ; preds = %bb.g, %bb.e, %bb.e
  %.1 = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.e ]
  %i.ae = icmp eq i64 %.044, 1
  br i1 %i.ae, label %bb.i, label %.thread

bb.h:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  %i.af = icmp eq i64 %.044, 0
  br i1 %i.af, label %bb.i, label %.thread

bb.i:                                             ; preds = %.split, %bb.h
  %.255 = phi i1 [ %.1, %.split ], [ %.0, %bb.h ] ; 2 uses
  %or.cond = or i1 %2, %.255
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %i.a, align 8
  tail call fastcc void @tcg_opt_gen_mov(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.ag, i64 noundef %i.j)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %1, align 8
  %i.ai = and i32 %i.ah, -256                     ; 3 uses
  br i1 %.255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = or disjoint i32 %i.ai, 38
  store i32 %i.aj, ptr %1, align 8
  br label %.thread

bb.m:                                             ; preds = %bb.k
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = or disjoint i32 %i.ai, 7
  store i32 %i.ak, ptr %1, align 8
  %i.al = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef -1)
  store i64 %i.al, ptr %i.b, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.am = or disjoint i32 %i.ai, 58
  store i32 %i.am, ptr %1, align 8
  %i.an = tail call fastcc i64 @arg_new_constant(ptr noundef %0, i64 noundef 1)
  store i64 %i.an, ptr %i.b, align 8
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.j, %bb.l, %bb.e, %bb.d, %.split, %bb.h, %switch.lookup, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %switch.lookup ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %.split ], [ -1, %bb.o ], [ -1, %bb.n ], [ 1, %bb.j ], [ -1, %bb.l ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fold_setcond_tst_pow2(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = and i32 %i.d, -2
end_hunk_0
