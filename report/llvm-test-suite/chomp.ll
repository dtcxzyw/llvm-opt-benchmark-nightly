Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/chomp?download=true
inline.NumInlined: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@make_data:bb.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @make_list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !4
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = load i32, ptr @nrow, align 4, !tbaa !4   ; 2 uses
  %.not70 = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr @ncol, align 4             ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %or.cond94 = select i1 %.not70, i1 true, i1 %i.e
  br i1 %or.cond94, label %._crit_edge73.thread, label %.preheader60

.preheader60:                                     ; preds = %bb.a, %._crit_edge
  %i.f = phi i32 [ %i.cr, %._crit_edge ], [ %i.c, %bb.a ]
  %i.g = phi i32 [ %i.cs, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %.072 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %.03471 = phi i32 [ %i.ct, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not3865 = icmp eq i32 %i.g, 0
  br i1 %.not3865, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader60
  %.011.i = load ptr, ptr @wanted, align 8        ; 2 uses
  %cond12.i = icmp eq ptr %.011.i, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %in_wanted.exit.thread
  %i.h = phi i32 [ %i.g, %.lr.ph ], [ %i.cq, %in_wanted.exit.thread ] ; 6 uses
  %.168 = phi ptr [ %.072, %.lr.ph ], [ %.2, %in_wanted.exit.thread ] ; 2 uses
  %.03267 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %in_wanted.exit.thread ] ; 4 uses
  %.13566 = phi i32 [ %.03471, %.lr.ph ], [ %.3, %in_wanted.exit.thread ] ; 4 uses
  %i.i = sext i32 %i.h to i64                     ; 8 uses
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 11 uses
  %.not11.i = icmp eq i32 %.03267, 0              ; 2 uses
  br i1 %.not11.i, label %.lr.ph15.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = load i32, ptr @nrow, align 4, !tbaa !4   ; 2 uses
  %i.m = zext i32 %.03267 to i64                  ; 5 uses
  %min.iters.check124 = icmp ult i32 %.03267, 8
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i
  %n.vec126 = and i64 %i.m, 4294967288            ; 3 uses
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body129 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index130 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %broadcast.splat128, ptr %i.n, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat128, ptr %i.o, align 4, !tbaa !4
  %index.next131 = add nuw i64 %index130, 8       ; 2 uses
  %i.p = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.p, label %middle.block132, label %vector.body129, !llvm.loop !47

middle.block132:                                  ; preds = %vector.body129
  %cmp.n133 = icmp eq i64 %n.vec126, %i.m
  br i1 %cmp.n133, label %.lr.ph15.preheader.i, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph.i, %middle.block132
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec126, %middle.block132 ]
  br label %scalar.ph123

.lr.ph15.preheader.i:                             ; preds = %scalar.ph123, %middle.block132, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %i.m, %middle.block132 ], [ %i.m, %scalar.ph123 ] ; 4 uses
  %i.q = zext i32 %i.h to i64                     ; 3 uses
  %i.r = sub nsw i64 %i.q, %.pre-phi              ; 3 uses
  %min.iters.check114 = icmp ult i64 %i.r, 8
  br i1 %min.iters.check114, label %.lr.ph15.i.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.lr.ph15.preheader.i
  %n.vec116 = and i64 %i.r, -8                    ; 3 uses
  %i.s = add nsw i64 %.pre-phi, %n.vec116
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.13566, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.pre-phi
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next119, %vector.body117 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index118 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !4
  %index.next119 = add nuw i64 %index118, 8       ; 2 uses
  %i.w = icmp eq i64 %index.next119, %n.vec116
  br i1 %i.w, label %middle.block120, label %vector.body117, !llvm.loop !48

middle.block120:                                  ; preds = %vector.body117
  %cmp.n121 = icmp eq i64 %i.r, %n.vec116
  br i1 %cmp.n121, label %.lr.ph.i42.preheader, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.lr.ph15.preheader.i, %middle.block120
  %indvars.iv17.i.ph = phi i64 [ %.pre-phi, %.lr.ph15.preheader.i ], [ %i.s, %middle.block120 ]
  br label %.lr.ph15.i

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph123 ], [ %indvars.iv.i.ph, %scalar.ph123.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store i32 %i.l, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %.not.i, label %.lr.ph15.preheader.i, label %scalar.ph123, !llvm.loop !49

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.lr.ph15.i ], [ %indvars.iv17.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv17.i
  store i32 %.13566, ptr %i.y, align 4, !tbaa !4
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %.not10.i = icmp eq i64 %indvars.iv.next18.i, %i.q
  br i1 %.not10.i, label %.lr.ph.i42.preheader, label %.lr.ph15.i, !llvm.loop !50

.lr.ph.i42.preheader:                             ; preds = %.lr.ph15.i, %middle.block120
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.i42.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i42.preheader
  %n.vec = and i64 %i.i, -8                       ; 2 uses
  %i.z = and i64 %i.i, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = xor i64 %index, -1
  %i.ab = add i64 %i.aa, %i.i                     ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4
  %wide.load105 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -12
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -28
  %wide.load107 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !4
  %wide.load108 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !4
  %i.ai = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load107)
  %i.aj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load105, <4 x i32> %wide.load108)
  store <4 x i32> %i.ai, ptr %i.ad, align 4
  store <4 x i32> %i.aj, ptr %i.ae, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %melt_data.exit.preheader, label %.lr.ph.i42.preheader136

.lr.ph.i42.preheader136:                          ; preds = %.lr.ph.i42.preheader, %middle.block
  %indvars.iv.i43.ph = phi i64 [ %i.i, %.lr.ph.i42.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader136, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %.lr.ph.i42 ], [ %indvars.iv.i43.ph, %.lr.ph.i42.preheader136 ]
  %indvars.iv.next.i44 = add nsw i64 %indvars.iv.i43, -1 ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i44 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ao)
  store i32 %spec.store.select, ptr %i.al, align 4
  %.not.i45 = icmp eq i64 %indvars.iv.next.i44, 0
  br i1 %.not.i45, label %melt_data.exit.preheader, label %.lr.ph.i42, !llvm.loop !52

melt_data.exit.preheader:                         ; preds = %.lr.ph.i42, %middle.block
  %i.ap = icmp eq i32 %i.h, 0
  br i1 %i.ap, label %equal_data.exit.thread, label %.lr.ph99

melt_data.exit:                                   ; preds = %.lr.ph99
  %i.aq = icmp eq i64 %indvars.iv.next.i47, 0
  br i1 %i.aq, label %equal_data.exit.thread, label %.lr.ph99, !llvm.loop !19

.lr.ph99:                                         ; preds = %melt_data.exit.preheader, %melt_data.exit
  %indvars.iv.i4698 = phi i64 [ %indvars.iv.next.i47, %melt_data.exit ], [ %i.i, %melt_data.exit.preheader ] ; 2 uses
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i4698, -1 ; 4 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i47
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i47
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %melt_data.exit, label %equal_data.exit, !llvm.loop !19

equal_data.exit:                                  ; preds = %.lr.ph99
  %i.aw = icmp sgt i64 %indvars.iv.i4698, 0
  br i1 %i.aw, label %.lr.ph.preheader.i48, label %equal_data.exit.thread

.lr.ph.preheader.i48:                             ; preds = %equal_data.exit
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.168, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !21
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.ba = add i32 %i.h, -1                        ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = zext i32 %i.ba to i64
  %i.bd = sub nsw i64 %i.bb, %i.bc
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.az, i64 %i.be
  %scevgep7.i = getelementptr i8, ptr %i.k, i64 %i.be
  %i.bf = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.bf, i1 false), !tbaa !4
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !21
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 4 uses
  %i.bi = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.preheader.split, label %bb.e

.preheader.split:                                 ; preds = %.lr.ph.preheader.i48, %equal_data.exit.i
  %.0.in.i = phi ptr [ %i.bs, %equal_data.exit.i ], [ @game_tree, %.lr.ph.preheader.i48 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.bm = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %i.bm, label %get_value.exit, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %.preheader.split, %bb.c
  %indvars.iv.i.i100 = phi i64 [ %i.i, %.preheader.split ], [ %indvars.iv.next.i.i, %bb.c ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i100, -1 ; 4 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.c, label %equal_data.exit.i, !llvm.loop !19

equal_data.exit.i:                                ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %.preheader.split, !llvm.loop !33

get_value.exit:                                   ; preds = %bb.c
  %i.bt = load i32, ptr %.0.i, align 8, !tbaa !34 ; 2 uses
  store i32 %i.bt, ptr %1, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %get_value.exit, %.lr.ph.preheader.i48
  %i.bu = phi i32 [ %i.bt, %get_value.exit ], [ %i.bi, %.lr.ph.preheader.i48 ]
  %i.bv = load i32, ptr %2, align 4, !tbaa !4
  %.not40 = icmp eq i32 %i.bv, 0
  %i.bw = icmp eq i32 %i.bu, 0
  %or.cond = select i1 %.not40, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.f, label %in_wanted.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bx = load i32, ptr @ncol, align 4, !tbaa !4  ; 3 uses
  %i.by = add nsw i32 %i.bx, -1                   ; 3 uses
  %i.bz = load i32, ptr @nrow, align 4, !tbaa !4
  %i.ca = add nsw i32 %i.bz, -1                   ; 3 uses
  br i1 %cond12.i, label %in_wanted.exit.thread, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.f
  %i.cb = sext i32 %i.bx to i64
  %i.cc = icmp eq i32 %i.bx, 0
  br label %bb.h

bb.g:                                             ; preds = %equal_data.exit.i52
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.0.i53 = load ptr, ptr %i.cd, align 8, !tbaa !41 ; 2 uses
  %cond.i = icmp eq ptr %.0.i53, null
  br i1 %cond.i, label %in_wanted.exit.thread, label %bb.h, !llvm.loop !42

bb.h:                                             ; preds = %bb.g, %.lr.ph.i49
  %.013.i = phi ptr [ %.011.i, %.lr.ph.i49 ], [ %.0.i53, %bb.g ] ; 2 uses
  %i.ce = load ptr, ptr %.013.i, align 8, !tbaa !26
  br i1 %i.cc, label %in_wanted.exit, label %.lr.ph103

bb.i:                                             ; preds = %.lr.ph103
  %i.cf = icmp eq i64 %indvars.iv.next.i.i51, 0
  br i1 %i.cf, label %in_wanted.exit, label %.lr.ph103, !llvm.loop !19

.lr.ph103:                                        ; preds = %bb.h, %bb.i
  %indvars.iv.i.i50101 = phi i64 [ %indvars.iv.next.i.i51, %bb.i ], [ %i.cb, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i51 = add nsw i64 %indvars.iv.i.i50101, -1 ; 4 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i51
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i51
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.i, label %equal_data.exit.i52, !llvm.loop !19

equal_data.exit.i52:                              ; preds = %.lr.ph103
  %i.cl = icmp sgt i64 %indvars.iv.i.i50101, 0
  br i1 %i.cl, label %bb.g, label %in_wanted.exit

in_wanted.exit:                                   ; preds = %equal_data.exit.i52, %bb.h, %bb.i
  store i32 2, ptr %2, align 4, !tbaa !4
  br label %in_wanted.exit.thread

equal_data.exit.thread:                           ; preds = %melt_data.exit, %melt_data.exit.preheader, %equal_data.exit
  %i.cm = load i32, ptr @nrow, align 4
  %i.cn = add nsw i32 %i.cm, -1
  %.236 = select i1 %.not11.i, i32 %i.cn, i32 %.13566
  %i.co = add nsw i32 %i.h, -1
  br label %in_wanted.exit.thread

in_wanted.exit.thread:                            ; preds = %bb.g, %bb.f, %bb.e, %in_wanted.exit, %equal_data.exit.thread
  %.3 = phi i32 [ %.236, %equal_data.exit.thread ], [ %.13566, %bb.e ], [ %i.ca, %in_wanted.exit ], [ %i.ca, %bb.f ], [ %i.ca, %bb.g ] ; 2 uses
  %.133 = phi i32 [ %i.co, %equal_data.exit.thread ], [ %.03267, %bb.e ], [ %i.by, %in_wanted.exit ], [ %i.by, %bb.f ], [ %i.by, %bb.g ]
  %.2 = phi ptr [ %.168, %equal_data.exit.thread ], [ %i.bh, %bb.e ], [ %i.bh, %in_wanted.exit ], [ %i.bh, %bb.f ], [ %i.bh, %bb.g ] ; 2 uses
  tail call void @free(ptr noundef %i.k) #17
  %i.cp = add nsw i32 %.133, 1                    ; 3 uses
  %i.cq = load i32, ptr @ncol, align 4, !tbaa !4  ; 2 uses
  %.not38 = icmp eq i32 %i.cp, %i.cq
  br i1 %.not38, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %in_wanted.exit.thread
  %.pre = load i32, ptr @nrow, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader60
  %i.cr = phi i32 [ %i.f, %.preheader60 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.cs = phi i32 [ 0, %.preheader60 ], [ %i.cp, %._crit_edge.loopexit ]
  %.135.lcssa = phi i32 [ %.03471, %.preheader60 ], [ %.3, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.072, %.preheader60 ], [ %.2, %._crit_edge.loopexit ]
  %i.ct = add nsw i32 %.135.lcssa, 1              ; 2 uses
  %.not = icmp eq i32 %i.ct, %i.cr
  br i1 %.not, label %._crit_edge73, label %.preheader60, !llvm.loop !54

._crit_edge73.thread:                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %bb.k

._crit_edge73:                                    ; preds = %._crit_edge
  %.pre78 = load ptr, ptr %i.b, align 8, !tbaa !21 ; 2 uses
  tail call void @free(ptr noundef %i.a) #17
  %.not37 = icmp eq ptr %.pre78, null
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge73
  %i.cu = load i32, ptr %1, align 4, !tbaa !4
  %i.cv = sub nsw i32 1, %i.cu
  store i32 %i.cv, ptr %1, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge73.thread, %bb.j, %._crit_edge73
  %i.cw = phi ptr [ null, %._crit_edge73.thread ], [ %.pre78, %bb.j ], [ null, %._crit_edge73 ]
  ret ptr %i.cw
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @make_play(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  store ptr null, ptr @game_tree, align 8, !tbaa !32
  %i.d = load i32, ptr @ncol, align 4, !tbaa !4   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 4 uses
  %.not1013.i = icmp eq i32 %i.d, 0
  br i1 %.not1013.i, label %.loopexit38, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %bb.a
  %i.h = zext i32 %i.d to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !4
  %.pre = load i32, ptr %i.g, align 4, !tbaa !4
  %i.j = add nsw i32 %.pre, -1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !4
  br label %.lr.ph.i.preheader.outer

.lr.ph.i.preheader.outer:                         ; preds = %.lr.ph.i.preheader.preheader, %valid_data.exit
  %.045.ph = phi ptr [ %i.c, %.lr.ph.i.preheader.preheader ], [ %.1, %valid_data.exit ]
  %.01744.ph = phi ptr [ %i.g, %.lr.ph.i.preheader.preheader ], [ %.118, %valid_data.exit ] ; 6 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.outer, %copy_data.exit.valid_data.exit_crit_edge
  %.045 = phi ptr [ %i.ar, %copy_data.exit.valid_data.exit_crit_edge ], [ %.045.ph, %.lr.ph.i.preheader.outer ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01744.ph, i64 %indvars.iv ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = load i32, ptr @nrow, align 4, !tbaa !4
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !4
  %i.o = load i32, ptr @ncol, align 4, !tbaa !4
  %i.p = zext i32 %i.o to i64
  %.not.not.i = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not.not.i, label %.loopexit38, label %.lr.ph.i, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i32 %i.l, 1
  store i32 %i.q, ptr %i.k, align 4, !tbaa !4
  %i.r = load i32, ptr @ncol, align 4, !tbaa !4   ; 5 uses
  %.not9.i = icmp eq i32 %i.r, 0                  ; 2 uses
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.s = load i32, ptr @nrow, align 4, !tbaa !4
  %i.t = zext i32 %i.r to i64
  br label %.lr.ph.i20

bb.d:                                             ; preds = %.lr.ph.i20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.t
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i20, !llvm.loop !20

.lr.ph.i20:                                       ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.0710.i = phi i32 [ %i.s, %.lr.ph.preheader.i ], [ %i.v, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01744.ph, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = icmp sgt i32 %i.v, %.0710.i
  br i1 %i.w, label %valid_data.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.x = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  %i.z = load ptr, ptr @game_tree, align 8, !tbaa !32
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  store ptr %i.x, ptr @game_tree, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.ab = sext i32 %i.r to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #16 ; 2 uses
  br i1 %.not9.i, label %copy_data.exit, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %bb.f
  %i.ae = add i32 %i.r, -1                        ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = sub nsw i64 %i.af, %i.ag
  %i.ai = shl nsw i64 %i.ah, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ad, i64 %i.ai
  %scevgep7.i = getelementptr i8, ptr %.01744.ph, i64 %i.ai
  %i.aj = zext i32 %i.r to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.ak, i1 false), !tbaa !4
  br label %copy_data.exit

copy_data.exit:                                   ; preds = %bb.f, %.lr.ph.preheader.i21
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !31
  %i.am = call ptr @make_list(ptr noundef %.01744.ph, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !27  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !30
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr null, ptr %i.aq, align 8, !tbaa !27
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !27  ; 3 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.g, label %copy_data.exit.valid_data.exit_crit_edge

copy_data.exit.valid_data.exit_crit_edge:         ; preds = %copy_data.exit
  %.pre52 = load i32, ptr @ncol, align 4, !tbaa !4
  %i.au = icmp eq i32 %.pre52, 0
  br i1 %i.au, label %.loopexit38, label %.lr.ph.i.preheader, !llvm.loop !56

bb.g:                                             ; preds = %copy_data.exit
  tail call void @free(ptr noundef %.01744.ph) #17
  %i.av = load i32, ptr @nrow, align 4, !tbaa !4  ; 2 uses
  %i.aw = load i32, ptr @ncol, align 4, !tbaa !4  ; 4 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #16 ; 4 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %.loopexit38, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g
  %i.ba = zext i32 %i.aw to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i22
  %n.vec = and i64 %i.ba, 4294967288              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %valid_data.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i22, %middle.block
  %indvars.iv.i23.ph = phi i64 [ 0, %.lr.ph.i22 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %scalar.ph ], [ %indvars.iv.i23.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i23
  store i32 %i.av, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %.not.i25 = icmp eq i64 %indvars.iv.next.i24, %i.ba
  br i1 %.not.i25, label %valid_data.exit, label %scalar.ph, !llvm.loop !58

valid_data.exit:                                  ; preds = %scalar.ph, %.lr.ph.i20, %middle.block
  %.118 = phi ptr [ %i.az, %middle.block ], [ %.01744.ph, %.lr.ph.i20 ], [ %i.az, %scalar.ph ]
  %.1 = phi ptr [ %i.ar, %middle.block ], [ %.045, %.lr.ph.i20 ], [ %i.ar, %scalar.ph ]
  br label %.lr.ph.i.preheader.outer, !llvm.loop !56

.loopexit38:                                      ; preds = %bb.g, %copy_data.exit.valid_data.exit_crit_edge, %bb.b, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.bg
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @make_wanted(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.c = load i32, ptr @nrow, align 4, !tbaa !4   ; 5 uses
  %.not43 = icmp eq i32 %i.c, 0
  br i1 %.not43, label %._crit_edge46, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = load i32, ptr @ncol, align 4, !tbaa !4   ; 6 uses
  %.not2638 = icmp eq i32 %i.d, 0
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 3 uses
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = zext i32 %i.h to i64
  %i.k = sub nsw i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 2
  %i.n = add nsw i32 %i.c, -1
  br i1 %.not2638, label %._crit_edge46, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %i.e, -8                       ; 2 uses
  %i.o = and i64 %i.e, 7
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.045 = phi ptr [ %.258, %._crit_edge ], [ %i.a, %.preheader.preheader ]
  %.02344 = phi i32 [ %i.be, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.02344, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.141 = phi ptr [ %.045, %.preheader ], [ %i.bc, %bb.c ] ; 2 uses
  %.02140 = phi i32 [ 0, %.preheader ], [ %i.bd, %bb.c ] ; 4 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 10 uses
  %.not11.i = icmp eq i32 %.02140, 0              ; 2 uses
  br i1 %.not11.i, label %.lr.ph15.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = zext nneg i32 %.02140 to i64             ; 5 uses
  %min.iters.check101 = icmp samesign ult i32 %.02140, 8
  br i1 %min.iters.check101, label %scalar.ph100.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i
  %n.vec103 = and i64 %i.q, 2147483640            ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph102
  %index107 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body106 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index107 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %broadcast.splat105, ptr %i.r, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat105, ptr %i.s, align 4, !tbaa !4
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %i.t = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.t, label %middle.block109, label %vector.body106, !llvm.loop !59

middle.block109:                                  ; preds = %vector.body106
  %cmp.n110 = icmp eq i64 %n.vec103, %i.q
  br i1 %cmp.n110, label %.lr.ph15.preheader.i, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.lr.ph.i, %middle.block109
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec103, %middle.block109 ]
  br label %scalar.ph100

.lr.ph15.preheader.i:                             ; preds = %scalar.ph100, %middle.block109, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %i.q, %middle.block109 ], [ %i.q, %scalar.ph100 ] ; 4 uses
  %i.u = sub nsw i64 %i.g, %.pre-phi              ; 3 uses
  %min.iters.check91 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check91, label %.lr.ph15.i.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph15.preheader.i
  %n.vec93 = and i64 %i.u, -8                     ; 3 uses
  %i.v = add nsw i64 %.pre-phi, %n.vec93
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre-phi
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next96, %vector.body94 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index95 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.y, align 4, !tbaa !4
  %index.next96 = add nuw i64 %index95, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.z, label %middle.block97, label %vector.body94, !llvm.loop !60

middle.block97:                                   ; preds = %vector.body94
  %cmp.n98 = icmp eq i64 %i.u, %n.vec93
  br i1 %cmp.n98, label %.lr.ph.i28.preheader, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.lr.ph15.preheader.i, %middle.block97
  %indvars.iv17.i.ph = phi i64 [ %.pre-phi, %.lr.ph15.preheader.i ], [ %i.v, %middle.block97 ]
  br label %.lr.ph15.i

scalar.ph100:                                     ; preds = %scalar.ph100.preheader, %scalar.ph100
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph100 ], [ %indvars.iv.i.ph, %scalar.ph100.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.c, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %.not.i, label %.lr.ph15.preheader.i, label %scalar.ph100, !llvm.loop !61

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.lr.ph15.i ], [ %indvars.iv17.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv17.i
  store i32 %.02344, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %.not10.i = icmp eq i64 %indvars.iv.next18.i, %i.g
  br i1 %.not10.i, label %.lr.ph.i28.preheader, label %.lr.ph15.i, !llvm.loop !62

.lr.ph.i28.preheader:                             ; preds = %.lr.ph15.i, %middle.block97
  br i1 %min.iters.check, label %.lr.ph.i28.preheader112, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i28.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i28.preheader ] ; 2 uses
  %i.ac = xor i64 %index, -1
  %i.ad = add i64 %i.ac, %i.e                     ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -12 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !4
  %wide.load82 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !4
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -12
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -28
  %wide.load84 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  %wide.load85 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !4
  %i.ak = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load84)
  %i.al = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load82, <4 x i32> %wide.load85)
  store <4 x i32> %i.ak, ptr %i.af, align 4
  store <4 x i32> %i.al, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %melt_data.exit.loopexit.preheader.preheader, label %.lr.ph.i28.preheader112

.lr.ph.i28.preheader112:                          ; preds = %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.i29.ph = phi i64 [ %i.e, %.lr.ph.i28.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader112, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.lr.ph.i28 ], [ %indvars.iv.i29.ph, %.lr.ph.i28.preheader112 ]
  %indvars.iv.next.i30 = add nsw i64 %indvars.iv.i29, -1 ; 4 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next.i30 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i30
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aq)
  store i32 %spec.store.select, ptr %i.an, align 4
  %.not.i31 = icmp eq i64 %indvars.iv.next.i30, 0
  br i1 %.not.i31, label %melt_data.exit.loopexit.preheader.preheader, label %.lr.ph.i28, !llvm.loop !64

melt_data.exit.loopexit.preheader.preheader:      ; preds = %.lr.ph.i28, %middle.block
  br label %melt_data.exit.loopexit.preheader

melt_data.exit.loopexit:                          ; preds = %melt_data.exit.loopexit.preheader
  %i.ar = icmp eq i64 %indvars.iv.next.i33, 0
  br i1 %i.ar, label %.thread, label %melt_data.exit.loopexit.preheader, !llvm.loop !19

melt_data.exit.loopexit.preheader:                ; preds = %melt_data.exit.loopexit.preheader.preheader, %melt_data.exit.loopexit
  %indvars.iv.i3281 = phi i64 [ %indvars.iv.next.i33, %melt_data.exit.loopexit ], [ %i.e, %melt_data.exit.loopexit.preheader.preheader ] ; 2 uses
  %indvars.iv.next.i33 = add nsw i64 %indvars.iv.i3281, -1 ; 4 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next.i33
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next.i33
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %melt_data.exit.loopexit, label %equal_data.exit, !llvm.loop !19

equal_data.exit:                                  ; preds = %melt_data.exit.loopexit.preheader
  %i.ax = icmp sgt i64 %indvars.iv.i3281, 0
  br i1 %i.ax, label %bb.c, label %.thread

.thread:                                          ; preds = %equal_data.exit, %melt_data.exit.loopexit
  %.225 = select i1 %.not11.i, i32 %i.n, i32 %.02344
  tail call void @free(ptr noundef nonnull %i.p) #17
  br label %._crit_edge

bb.c:                                             ; preds = %equal_data.exit
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !21
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 %i.l
  %scevgep7.i = getelementptr i8, ptr %i.p, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr readonly align 4 %scevgep7.i, i64 %i.m, i1 false), !tbaa !4
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !21
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bd = add nuw nsw i32 %.02140, 1              ; 2 uses
  tail call void @free(ptr noundef nonnull %i.p) #17
  %.not26 = icmp eq i32 %i.bd, %i.d
  br i1 %.not26, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.c, %.thread
  %.258 = phi ptr [ %.141, %.thread ], [ %i.bc, %bb.c ]
  %.357 = phi i32 [ %.225, %.thread ], [ %.02344, %bb.c ]
  %i.be = add nsw i32 %.357, 1                    ; 2 uses
  %.not = icmp eq i32 %i.be, %i.c
  br i1 %.not, label %._crit_edge46.loopexit47, label %.preheader, !llvm.loop !66

._crit_edge46.loopexit47:                         ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %.preheader.lr.ph, %._crit_edge46.loopexit47, %bb.a
  %i.bf = phi ptr [ %.pre, %._crit_edge46.loopexit47 ], [ null, %bb.a ], [ null, %.preheader.lr.ph ]
end_hunk_0
