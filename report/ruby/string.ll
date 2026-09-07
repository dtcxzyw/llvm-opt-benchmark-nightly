Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/string?download=true
inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_delete_bang:bb.a
tr_find.exit.thread:                              ; preds = %bb.r, %bb.s, %tr_find.exit, %bb.w
  %.259 = phi ptr [ %i.bn, %bb.w ], [ %.05791, %tr_find.exit ], [ %.05791, %bb.s ], [ %.05791, %bb.r ]
  %.256 = phi i32 [ %.05492, %bb.w ], [ 1, %tr_find.exit ], [ 1, %bb.s ], [ 1, %bb.r ]
  %.1 = phi i32 [ %spec.store.select, %bb.w ], [ %.093, %tr_find.exit ], [ %.093, %bb.s ], [ %.093, %bb.r ]
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !33
  %i.bq = sext i32 %i.bp to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.k, %tr_find.exit.thread
  %.sink = phi i64 [ %i.bq, %tr_find.exit.thread ], [ 1, %bb.k ], [ 1, %bb.n ]
  %.360 = phi ptr [ %.259, %tr_find.exit.thread ], [ %.05791, %bb.k ], [ %i.at, %bb.n ] ; 2 uses
  %.3 = phi i32 [ %.256, %tr_find.exit.thread ], [ 1, %bb.k ], [ %.05492, %bb.n ] ; 2 uses
  %.2 = phi i32 [ %.1, %tr_find.exit.thread ], [ %.093, %bb.k ], [ %.093, %bb.n ] ; 2 uses
  %i.br = getelementptr i8, ptr %.06190, i64 %.sink ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.bs = icmp ult ptr %i.br, %i.ak
  br i1 %i.bs, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !233

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i64, ptr %i.f, align 8, !tbaa !36
  %i.bt = icmp eq i32 %.3, 0
  %i.bu = select i1 %i.bt, i64 4, i64 %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_END.exit
  %i.bv = phi i64 [ %i.af, %RSTRING_END.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.057.lcssa = phi ptr [ %i.ai, %RSTRING_END.exit ], [ %.360, %._crit_edge.loopexit ] ; 4 uses
  %.054.lcssa = phi i64 [ 4, %RSTRING_END.exit ], [ %i.bu, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.al, %RSTRING_END.exit ], [ %.2, %._crit_edge.loopexit ]
  %i.bw = and i64 %i.bv, 532676608
  %switch.i.i = icmp samesign ult i64 %i.bw, 12582912
  br i1 %switch.i.i, label %.thread, label %bb.y

.thread:                                          ; preds = %._crit_edge
  store i8 0, ptr %.057.lcssa, align 1, !tbaa !43
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  %i.bx = trunc i64 %i.bv to i32
  %i.by = lshr i32 %i.bx, 22
  %i.bz = and i32 %i.by, 127                      ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 127
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i79 = phi i32 [ %i.cb, %bb.z ], [ %i.bz, %bb.y ]
  %i.cc = call ptr @rb_enc_from_index(i32 noundef %.0.i79) #28
  %i.cd = getelementptr i8, ptr %i.cc, i64 20
  %.val = load i32, ptr %i.cd, align 4, !tbaa !42 ; 2 uses
  store i8 0, ptr %.057.lcssa, align 1, !tbaa !43
  %i.ce = icmp sgt i32 %.val, 1
  br i1 %i.ce, label %bb.ab, label %bb.ac, !prof !44

bb.ab:                                            ; preds = %bb.aa
  %i.cf = zext nneg i32 %.val to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.057.lcssa, i8 noundef 0, i64 noundef %i.cf, i1 noundef false) #28
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab, %bb.aa
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.ch = and i64 %i.cg, 8192
  %.not.i80 = icmp eq i64 %i.ch, 0
  br i1 %.not.i80, label %RSTRING_PTR.exit81, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !43
  br label %RSTRING_PTR.exit81

RSTRING_PTR.exit81:                               ; preds = %bb.ac, %bb.ad
  %i.cj = phi ptr [ %i.ci, %bb.ad ], [ %i.l, %bb.ac ]
  %i.ck = ptrtoint ptr %.057.lcssa to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.g, align 8, !tbaa !38
  %i.cn = and i64 %i.cg, -3145729
  %i.co = zext i32 %.0.lcssa to i64
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.f, align 8, !tbaa !36
  br label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit81, %bb.a, %RSTRING_PTR.exit
  %.064 = phi i64 [ 4, %bb.a ], [ %.054.lcssa, %RSTRING_PTR.exit81 ], [ 4, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.064
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_squeeze_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !48
  %i.f = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  %i.g = zext i1 %i.f to i32                      ; 3 uses
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %bb.b, label %.preheader130

.preheader130:                                    ; preds = %bb.a
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit131

.lr.ph.preheader:                                 ; preds = %.preheader130
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %2 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 22
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 127
  br i1 %i.o, label %bb.c, label %get_encoding.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ %i.n, %bb.b ]
  %i.q = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  br label %.loopexit131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.069133 = phi i32 [ %i.g, %.lr.ph.preheader ], [ %.170, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48
  store i64 %i.s, ptr %i.d, align 8, !tbaa !48
  %.0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !48 ; 5 uses
  %i.t = icmp eq i64 %.0..0..0., 0
  %i.u = and i64 %.0..0..0., 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.lr.ph
  %i.x = inttoptr i64 %.0..0..0. to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 5
  br i1 %i.aa, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %.lr.ph
  %i.ab = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.ab, ptr %i.d, align 8, !tbaa !48
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.113 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.ac = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.113) #28 ; 2 uses
  %.not = icmp eq i32 %.069133, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_string_value.exit
  %i.ad = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %.0..0.113)
  %spec.select = zext i1 %i.ad to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_string_value.exit
  %.170 = phi i32 [ %spec.select, %bb.d ], [ 0, %rb_string_value.exit ] ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv, 0
  %i.af = zext i1 %i.ae to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.113, ptr noundef %i.a, i32 noundef %i.af, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit131, label %.lr.ph, !llvm.loop !234

.loopexit131:                                     ; preds = %bb.e, %.preheader130, %get_encoding.exit
  %.184 = phi ptr [ %i.q, %get_encoding.exit ], [ null, %.preheader130 ], [ %i.ac, %bb.e ] ; 5 uses
  %.271 = phi i32 [ %i.g, %get_encoding.exit ], [ %i.g, %.preheader130 ], [ %.170, %bb.e ]
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.ag = inttoptr i64 %2 to ptr                  ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = and i64 %i.ah, 8192
  %.not.i = icmp eq i64 %i.ai, 0                  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 24     ; 6 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit131
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %.loopexit131, %bb.f
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.aj, %.loopexit131 ] ; 15 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %.not93 = icmp eq ptr %i.al, null
  br i1 %.not93, label %bb.av, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.an = getelementptr i8, ptr %i.ag, i64 16     ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !38 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.av, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !43
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.h, %bb.i
  %i.ar = phi ptr [ %i.aq, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.ao  ; 3 uses
  %i.au = getelementptr i8, ptr %.184, i64 20
  %.val.i = load i32, ptr %i.au, align 4, !tbaa !42
  %.not.i105 = icmp eq i32 %.val.i, 1
  br i1 %.not.i105, label %bb.j, label %rb_enc_asciicompat.exit

bb.j:                                             ; preds = %RSTRING_END.exit
  %i.av = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.184) #32
  %.not3.i = icmp eq i32 %i.av, 0
  br label %rb_enc_asciicompat.exit

rb_enc_asciicompat.exit:                          ; preds = %RSTRING_END.exit, %bb.j
  %.0.i106 = phi i1 [ false, %RSTRING_END.exit ], [ %.not3.i, %bb.j ]
  %.not94 = icmp eq i32 %.271, 0
  %i.aw = icmp ult ptr %i.al, %i.at               ; 2 uses
  br i1 %.not94, label %.preheader, label %.preheader128

.preheader128:                                    ; preds = %rb_enc_asciicompat.exit
  br i1 %i.aw, label %.lr.ph138, label %.loopexit

.lr.ph138:                                        ; preds = %.preheader128
  %i.ax = icmp sgt i32 %0, 0
  %i.ay = add i64 %i.ao, %i.as
  %i.az = sub i64 %i.ay, %i.am                    ; 7 uses
  br i1 %i.ax, label %.lr.ph138.split.us.preheader, label %.lr.ph138.split.preheader

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.ba = add i64 %i.az, -1
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %3 = icmp ult i64 %i.ba, 3
  br i1 %3, label %.lr.ph138.split.epil.preheader, label %.lr.ph138.split.preheader.new

.lr.ph138.split.preheader.new:                    ; preds = %.lr.ph138.split.preheader
  %unroll_iter = and i64 %i.az, -4
  br label %.lr.ph138.split

.lr.ph138.split.us.preheader:                     ; preds = %.lr.ph138
  %xtraiter175 = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.az, 1
  br i1 %i.bb, label %.lr.ph138.split.us.epil.preheader, label %.lr.ph138.split.us.preheader.new

.lr.ph138.split.us.preheader.new:                 ; preds = %.lr.ph138.split.us.preheader
  %unroll_iter180 = and i64 %i.az, -2
  br label %.lr.ph138.split.us

.lr.ph138.split.us:                               ; preds = %bb.o, %.lr.ph138.split.us.preheader.new
  %.0137.us = phi i32 [ -1, %.lr.ph138.split.us.preheader.new ], [ %.1.us.1, %bb.o ] ; 2 uses
  %.074136.us = phi ptr [ %i.al, %.lr.ph138.split.us.preheader.new ], [ %.175.us.1, %bb.o ] ; 3 uses
  %.080135.us = phi ptr [ %i.al, %.lr.ph138.split.us.preheader.new ], [ %i.bj, %bb.o ] ; 3 uses
  %niter181 = phi i64 [ 0, %.lr.ph138.split.us.preheader.new ], [ %niter181.next.1, %bb.o ]
  %i.bc = getelementptr i8, ptr %.080135.us, i64 1
  %i.bd = load i8, ptr %.080135.us, align 1, !tbaa !43 ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %.not102.us = icmp eq i32 %.0137.us, %i.be
  br i1 %.not102.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph138.split.us
  %i.bf = zext i8 %i.bd to i64
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !43
  %.not103.us = icmp eq i8 %i.bh, 0
  br i1 %.not103.us, label %bb.l, label %.lr.ph138.split.us.1

bb.l:                                             ; preds = %bb.k, %.lr.ph138.split.us
  %i.bi = getelementptr i8, ptr %.074136.us, i64 1
  store i8 %i.bd, ptr %.074136.us, align 1, !tbaa !43
  br label %.lr.ph138.split.us.1

.lr.ph138.split.us.1:                             ; preds = %bb.l, %bb.k
  %.175.us = phi ptr [ %i.bi, %bb.l ], [ %.074136.us, %bb.k ] ; 3 uses
  %.1.us = phi i32 [ %i.be, %bb.l ], [ %.0137.us, %bb.k ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.080135.us, i64 2 ; 2 uses
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !43  ; 3 uses
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %.not102.us.1 = icmp eq i32 %.1.us, %i.bl
  br i1 %.not102.us.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph138.split.us.1
  %i.bm = zext i8 %i.bk to i64
  %i.bn = getelementptr i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !43
  %.not103.us.1 = icmp eq i8 %i.bo, 0
  br i1 %.not103.us.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %.lr.ph138.split.us.1
  %i.bp = getelementptr i8, ptr %.175.us, i64 1
  store i8 %i.bk, ptr %.175.us, align 1, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.175.us.1 = phi ptr [ %i.bp, %bb.n ], [ %.175.us, %bb.m ] ; 3 uses
  %.1.us.1 = phi i32 [ %i.bl, %bb.n ], [ %.1.us, %bb.m ] ; 2 uses
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.loopexit.loopexit171.unr-lcssa, label %.lr.ph138.split.us, !llvm.loop !235

.preheader:                                       ; preds = %rb_enc_asciicompat.exit
  br i1 %i.aw, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %.preheader
  %i.bq = icmp sgt i32 %0, 0                      ; 2 uses
  %i.br = getelementptr i8, ptr %.184, i64 48
  br label %bb.u

.lr.ph138.split:                                  ; preds = %bb.t, %.lr.ph138.split.preheader.new
  %.0137 = phi i32 [ -1, %.lr.ph138.split.preheader.new ], [ %.1.3, %bb.t ] ; 2 uses
  %.074136 = phi ptr [ %i.al, %.lr.ph138.split.preheader.new ], [ %.175.3, %bb.t ] ; 3 uses
  %.080135 = phi ptr [ %i.al, %.lr.ph138.split.preheader.new ], [ %i.ce, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph138.split.preheader.new ], [ %niter.next.3, %bb.t ]
  %i.bs = getelementptr i8, ptr %.080135, i64 1
  %i.bt = load i8, ptr %.080135, align 1, !tbaa !43 ; 2 uses
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %.not102 = icmp eq i32 %.0137, %i.bu
  br i1 %.not102, label %.lr.ph138.split.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph138.split
  %i.bv = getelementptr i8, ptr %.074136, i64 1
  store i8 %i.bt, ptr %.074136, align 1, !tbaa !43
  br label %.lr.ph138.split.1

.lr.ph138.split.1:                                ; preds = %.lr.ph138.split, %bb.p
  %.175 = phi ptr [ %i.bv, %bb.p ], [ %.074136, %.lr.ph138.split ] ; 3 uses
  %.1 = phi i32 [ %i.bu, %bb.p ], [ %.0137, %.lr.ph138.split ] ; 2 uses
  %i.bw = getelementptr i8, ptr %.080135, i64 2
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !43  ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %.not102.1 = icmp eq i32 %.1, %i.by
  br i1 %.not102.1, label %.lr.ph138.split.2, label %bb.q

bb.q:                                             ; preds = %.lr.ph138.split.1
  %i.bz = getelementptr i8, ptr %.175, i64 1
  store i8 %i.bx, ptr %.175, align 1, !tbaa !43
  br label %.lr.ph138.split.2

.lr.ph138.split.2:                                ; preds = %bb.q, %.lr.ph138.split.1
  %.175.1 = phi ptr [ %i.bz, %bb.q ], [ %.175, %.lr.ph138.split.1 ] ; 3 uses
  %.1.1 = phi i32 [ %i.by, %bb.q ], [ %.1, %.lr.ph138.split.1 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.080135, i64 3
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !43  ; 2 uses
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %.not102.2 = icmp eq i32 %.1.1, %i.cc
  br i1 %.not102.2, label %.lr.ph138.split.3, label %bb.r

bb.r:                                             ; preds = %.lr.ph138.split.2
  %i.cd = getelementptr i8, ptr %.175.1, i64 1
  store i8 %i.cb, ptr %.175.1, align 1, !tbaa !43
  br label %.lr.ph138.split.3

.lr.ph138.split.3:                                ; preds = %bb.r, %.lr.ph138.split.2
  %.175.2 = phi ptr [ %i.cd, %bb.r ], [ %.175.1, %.lr.ph138.split.2 ] ; 3 uses
  %.1.2 = phi i32 [ %i.cc, %bb.r ], [ %.1.1, %.lr.ph138.split.2 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.080135, i64 4   ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 1, !tbaa !43  ; 2 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %.not102.3 = icmp eq i32 %.1.2, %i.cg
  br i1 %.not102.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph138.split.3
  %i.ch = getelementptr i8, ptr %.175.2, i64 1
  store i8 %i.cf, ptr %.175.2, align 1, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph138.split.3
  %.175.3 = phi ptr [ %i.ch, %bb.s ], [ %.175.2, %.lr.ph138.split.3 ] ; 3 uses
  %.1.3 = phi i32 [ %i.cg, %bb.s ], [ %.1.2, %.lr.ph138.split.3 ] ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit172.unr-lcssa, label %.lr.ph138.split, !llvm.loop !235

bb.u:                                             ; preds = %.lr.ph143, %bb.al
  %.2142 = phi i32 [ -1, %.lr.ph143 ], [ %.5, %bb.al ] ; 10 uses
  %.276141 = phi ptr [ %i.al, %.lr.ph143 ], [ %.579, %bb.al ] ; 11 uses
  %.181140 = phi ptr [ %i.al, %.lr.ph143 ], [ %i.dl, %bb.al ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  br i1 %.0.i106, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ci = load i8, ptr %.181140, align 1, !tbaa !43 ; 4 uses
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = icmp sgt i8 %i.ci, -1
  br i1 %i.ck, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not98 = icmp eq i32 %.2142, %i.cj
  br i1 %.not98, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.bq, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.cl = zext nneg i8 %i.ci to i64
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !43
  %.not99 = icmp eq i8 %i.cn, 0
  br i1 %.not99, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.co = getelementptr i8, ptr %.276141, i64 1
  store i8 %i.ci, ptr %.276141, align 1, !tbaa !43
  br label %bb.al

bb.aa:                                            ; preds = %bb.v, %bb.u
  %i.cp = call i32 @rb_enc_codepoint_len(ptr noundef %.181140, ptr noundef nonnull %i.at, ptr noundef nonnull %i.e, ptr noundef %.184) #28 ; 3 uses
  %.not95 = icmp eq i32 %i.cp, %.2142
  br i1 %.not95, label %bb.ab, label %tr_find.exit.thread118

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bq, label %bb.ac, label %tr_find.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !48  ; 4 uses
  %i.cs = icmp ult i32 %.2142, 256
  %i.ct = zext i32 %.2142 to i64                  ; 2 uses
  br i1 %i.cs, label %tr_find.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = or disjoint i64 %i.cu, 1                ; 3 uses
  %.not.i107 = icmp eq i64 %i.cq, 0
  br i1 %.not.i107, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = call i64 @rb_hash_lookup(i64 noundef %i.cq, i64 noundef %i.cv) #28
  %i.cx = icmp eq i64 %i.cw, 4
  br i1 %i.cx, label %tr_find.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not20.i = icmp eq i64 %i.cr, 0
  br i1 %.not20.i, label %tr_find.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = call i64 @rb_hash_lookup(i64 noundef %i.cr, i64 noundef %i.cv) #28
  %i.cz = icmp eq i64 %i.cy, 4
  br i1 %i.cz, label %tr_find.exit.thread, label %tr_find.exit

bb.ah:                                            ; preds = %bb.ad
  %.not19.i = icmp eq i64 %i.cr, 0
  br i1 %.not19.i, label %tr_find.exit, label %bb.ai
end_hunk_0
