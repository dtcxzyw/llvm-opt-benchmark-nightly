Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@qcall_branch_end:bb.a
  %i.q = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.r = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.q, i64 noundef 1) #39 ; 6 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !64
  store ptr %i.r, ptr %i.b, align 8, !tbaa !64
  store ptr null, ptr %i.r, align 8, !tbaa !64
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %i.r, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.t, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %nd_line.exit, %._crit_edge.i.i.i.i
  %i.u = phi i32 [ %i.e, %nd_line.exit ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.c, %nd_line.exit ], [ %i.r, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.v = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.w = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 10 uses
  %i.z = add i32 %i.u, 48
  store i32 %i.z, ptr %i.w, align 8, !tbaa !37
  store i32 1, ptr %i.y, align 8, !tbaa !182
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !183
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %i.ab, i64 132    ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !184 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !184
  %i.af = getelementptr i8, ptr %i.y, i64 24
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !111
  %i.ag = getelementptr i8, ptr %i.y, i64 40      ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 44      ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, -16
  store i8 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr i8, ptr %i.y, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ak, align 4, !tbaa !37
  br i1 %.not.i, label %nd_line.exit19, label %bb.d

bb.d:                                             ; preds = %new_label_body.exit
  %i.al = load i64, ptr %5, align 8, !tbaa !172
  %i.am = lshr i64 %i.al, 15
  %i.an = trunc i64 %i.am to i32
  br label %nd_line.exit19

nd_line.exit19:                                   ; preds = %new_label_body.exit, %bb.d
  %.0.i18 = phi i32 [ %i.an, %bb.d ], [ -1, %new_label_body.exit ]
  %i.ao = getelementptr i8, ptr %5, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %.0.i18, i32 noundef %i.ap, i32 noundef 72, i32 noundef 1, i64 noundef %i.aq) ; 4 uses
  %i.as = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !62
  %i.aw = load i32, ptr %i.ag, align 8, !tbaa !240
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ag, align 8, !tbaa !240
  %i.ay = getelementptr i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !61
  %i.az = getelementptr i8, ptr %i.ar, i64 8
  store ptr %2, ptr %i.az, align 8, !tbaa !62
  store ptr %2, ptr %i.as, align 8, !tbaa !42
  %i.ba = getelementptr i8, ptr %4, i64 8
  %i.bb = getelementptr i8, ptr %4, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !243
  tail call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ba, i32 noundef %i.bc, i32 noundef 1, ptr noundef nonnull @.str.88, i64 noundef %3)
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.be = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.y, ptr %i.bf, align 8, !tbaa !62
  store ptr %i.y, ptr %i.as, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %nd_line.exit19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_builtin_arg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %2, align 8, !tbaa !172   ; 3 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 11008
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !524
  %.not29 = icmp eq ptr %i.d, null
  br i1 %.not29, label %bb.d, label %nd_line.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !523  ; 4 uses
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %i.h = and i64 %i.g, 32512
  %cond = icmp eq i64 %i.h, 25856
  br i1 %cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %i.f) #37 ; 6 uses
  %i.j = and i64 %i.i, 255
  %i.k = icmp eq i64 %i.j, 12
  br i1 %i.k, label %RB_SYMBOL_P.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i64 %i.i, 0
  %i.m = and i64 %i.i, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %nd_line.exit34, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.g
  %i.p = inttoptr i64 %i.i to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !100
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %RB_SYMBOL_P.exit.thread, label %nd_line.exit34

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.f, %RB_SYMBOL_P.exit
  %.not31 = icmp eq i32 %4, 0
  br i1 %.not31, label %bb.h, label %bb.k

bb.h:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.t = tail call i64 @rb_sym2id(i64 noundef %i.i) #37
  tail call fastcc void @compile_lvar(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %i.t)
  br label %bb.k

bb.i:                                             ; preds = %bb.d, %bb.a
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.183)
  br label %bb.k

nd_line.exit:                                     ; preds = %bb.c
  %i.u = lshr i64 %.val, 15
  %i.v = trunc i64 %i.u to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.v, ptr noundef nonnull @.str.184)
  br label %bb.k

nd_line.exit34:                                   ; preds = %bb.g, %RB_SYMBOL_P.exit
  %i.w = load i64, ptr %i.f, align 8, !tbaa !172
  %i.x = lshr i64 %i.w, 15
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call ptr @rb_builtin_class_name(i64 noundef %i.i) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.y, ptr noundef nonnull @.str.185, ptr noundef %i.z)
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.aa = phi i64 [ %i.g, %bb.e ], [ %.val, %bb.b ] ; 2 uses
  %i.ab = lshr i64 %i.aa, 15
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = lshr i32 %i.ad, 8
  %i.af = and i32 %i.ae, 127
  %i.ag = tail call ptr @ruby_node_name(i32 noundef %i.af) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.ac, ptr noundef nonnull @.str.186, ptr noundef %i.ag)
  br label %bb.k

bb.k:                                             ; preds = %RB_SYMBOL_P.exit.thread, %bb.h, %bb.j, %nd_line.exit34, %nd_line.exit, %bb.i
  %.0 = phi i32 [ 0, %nd_line.exit ], [ 0, %bb.i ], [ 0, %nd_line.exit34 ], [ 0, %bb.j ], [ 1, %bb.h ], [ 1, %RB_SYMBOL_P.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @compile_builtin_mandatory_only_method(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.RNode_ARGS, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.RNode_SCOPE, align 8        ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @rb_node_init(ptr noundef nonnull %3, i32 noundef 71) #37
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx, i8 0, i64 60, i1 false)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !232
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !181  ; 2 uses
  %i.l = sub i32 %i.i, %i.k                       ; 5 uses
  %i.m = getelementptr i8, ptr %i.g, i64 240
  %i.n = load i32, ptr %i.m, align 8, !tbaa !170
  %i.o = sub i32 %i.n, %i.l                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 0, ptr %i.a, align 8, !tbaa !63
  %i.p = sext i32 %i.o to i64                     ; 4 uses
  %i.q = shl nsw i64 %i.p, 3
  %i.r = add nsw i64 %i.q, 8                      ; 3 uses
  %i.s = icmp ult i64 %i.r, 1024
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = alloca i8, i64 %i.r, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.a, i64 noundef %i.r) #48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 24
  %.pre49 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !181
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.k, %bb.b ], [ %.pre49, %bb.c ] ; 6 uses
  %i.w = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.c ] ; 5 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  store i32 %i.o, ptr %i.x, align 8, !tbaa !37
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.w, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !179 ; 7 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 8       ; 6 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.v, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %i.ae = sub i64 %i.y, %i.ad
  %i.af = add i64 %i.ae, 7
  %diff.check = icmp ult i64 %i.af, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !tbaa !63
  %wide.load1 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  store <2 x i64> %wide.load, ptr %i.ai, align 8, !tbaa !63
  store <2 x i64> %wide.load1, ptr %i.aj, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.prol
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %i.an = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.prol
  store i64 %i.am, ptr %i.an, align 8, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1240

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ], [ %i.v, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aq = icmp slt i32 %.0.lcssa, %i.o
  br i1 %i.aq, label %.lr.ph44, label %._crit_edge

.lr.ph44:                                         ; preds = %.preheader
  %i.ar = getelementptr i8, ptr %i.w, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !179 ; 3 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %i.av = zext nneg i32 %.0.lcssa to i64          ; 8 uses
  %i.aw = sub nsw i64 %i.p, %i.av                 ; 3 uses
  %min.iters.check5 = icmp ult i64 %i.aw, 30
  br i1 %min.iters.check5, label %scalar.ph4.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph44
  %i.ax = xor i64 %i.av, -1
  %i.ay = add nsw i64 %i.ax, %i.p                 ; 2 uses
  %i.az = add i32 %i.l, %.0.lcssa                 ; 2 uses
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = icmp slt i32 %i.bb, %i.az
  %i.bd = icmp ugt i64 %i.ay, 4294967295
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %scalar.ph4.preheader, label %vector.memcheck2

vector.memcheck2:                                 ; preds = %vector.scevcheck
  %i.bf = shl nuw nsw i64 %i.av, 3
  %i.bg = add i64 %i.bf, %i.y
  %i.bh = add i32 %i.l, %.0.lcssa
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = add i64 %i.bj, %i.at
  %i.bl = sub i64 %i.bg, %i.bk
  %i.bm = add i64 %i.bl, 7
  %diff.check3 = icmp ult i64 %i.bm, 31
  br i1 %diff.check3, label %scalar.ph4.preheader, label %vector.ph6

vector.ph6:                                       ; preds = %vector.memcheck2
  %n.vec7 = and i64 %i.aw, -4                     ; 3 uses
  %i.bn = add nsw i64 %n.vec7, %i.av
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph6
  %index9 = phi i64 [ 0, %vector.ph6 ], [ %index.next12, %vector.body8 ] ; 2 uses
  %i.bo = add nuw i64 %index9, %i.av              ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add i32 %i.l, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.as, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %wide.load10 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !63
  %wide.load11 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !63
  %i.bu = getelementptr [8 x i8], ptr %i.au, i64 %i.bo ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  store <2 x i64> %wide.load10, ptr %i.bu, align 8, !tbaa !63
  store <2 x i64> %wide.load11, ptr %i.bv, align 8, !tbaa !63
  %index.next12 = add nuw i64 %index9, 4          ; 2 uses
  %i.bw = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.bw, label %middle.block13, label %vector.body8, !llvm.loop !1241

middle.block13:                                   ; preds = %vector.body8
  %cmp.n14 = icmp eq i64 %i.aw, %n.vec7
  br i1 %cmp.n14, label %._crit_edge, label %scalar.ph4.preheader

scalar.ph4.preheader:                             ; preds = %vector.memcheck2, %vector.scevcheck, %.lr.ph44, %middle.block13
  %indvars.iv46.ph = phi i64 [ %i.av, %vector.memcheck2 ], [ %i.av, %vector.scevcheck ], [ %i.av, %.lr.ph44 ], [ %i.bn, %middle.block13 ]
  br label %scalar.ph4

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !63
  %i.bz = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !63
  %i.cc = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !63
  %i.cf = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !63
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !63
  %i.ci = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !1242

scalar.ph4:                                       ; preds = %scalar.ph4.preheader, %scalar.ph4
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %scalar.ph4 ], [ %indvars.iv46.ph, %scalar.ph4.preheader ] ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.ck = add i32 %i.l, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.as, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !63
  %i.co = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv46
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !63
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next47, %i.p
  br i1 %i.cp, label %scalar.ph4, label %._crit_edge, !llvm.loop !1243

._crit_edge:                                      ; preds = %scalar.ph4, %middle.block13, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @rb_node_init(ptr noundef nonnull %4, i32 noundef 0) #37
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.x, ptr %i.cq, align 8, !tbaa !176
  %i.cr = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.ct = getelementptr i8, ptr %i.cs, i64 176
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !241 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !172
  %i.cw = and i64 %i.cv, 32512
  %i.cx = icmp eq i64 %i.cw, 512
  br i1 %i.cx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.cy = getelementptr i8, ptr %i.cu, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !517
  %i.da = icmp eq ptr %i.cz, %1
  br i1 %i.da, label %mandatory_node.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.187) #38
  unreachable

mandatory_node.exit:                              ; preds = %bb.e
  %i.db = getelementptr i8, ptr %i.cu, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !591
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !238
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.de, align 8, !tbaa !1244
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.df, align 8, !tbaa !177
  %i.dg = call i64 @rb_ruby_ast_new(ptr noundef nonnull %4) #37
  %i.dh = call i64 @rb_iseq_base_label(ptr noundef nonnull %0) #37
  %i.di = call i64 @rb_iseq_path(ptr noundef nonnull %0) #37
  %i.dj = call i64 @rb_iseq_realpath(ptr noundef nonnull %0) #37
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %nd_line.exit, label %bb.g

bb.g:                                             ; preds = %mandatory_node.exit
  %i.dk = load i64, ptr %2, align 8, !tbaa !172
  %i.dl = lshr i64 %i.dk, 15
  %i.dm = trunc i64 %i.dl to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %mandatory_node.exit, %bb.g
  %.0.i = phi i32 [ %i.dm, %bb.g ], [ -1, %mandatory_node.exit ]
  %i.dn = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.do = getelementptr i8, ptr %i.dn, i64 152
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dr = getelementptr i8, ptr %i.dq, i64 208
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !296
  %i.dt = call ptr @rb_iseq_new_with_opt(i64 noundef %i.dg, i64 noundef %i.dh, i64 noundef %i.di, i64 noundef %i.dj, i32 noundef %.0.i, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %i.dp, i64 noundef %i.ds) #37 ; 2 uses
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dv = getelementptr i8, ptr %i.du, i64 296
  %i.dw = ptrtoint ptr %i.dt to i64               ; 3 uses
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !63
  %i.dx = icmp eq ptr %i.dt, null
  %i.dy = and i64 %i.dw, 7
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = or i1 %i.dx, %i.dz
  br i1 %i.ea, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %nd_line.exit
  %i.eb = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.eb, i64 noundef %i.dw) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %nd_line.exit, %bb.h
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #4

declare ptr @rb_builtin_class_name(i64 noundef) local_unnamed_addr #4

declare void @rb_node_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef, i64 noundef) local_unnamed_addr #28

declare i64 @rb_ruby_ast_new(ptr noundef) local_unnamed_addr #4

declare ptr @rb_iseq_new_with_opt(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_iseq_base_label(ptr noundef) local_unnamed_addr #4

declare i64 @rb_iseq_realpath(ptr noundef) local_unnamed_addr #4

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

declare void @rb_hash_bulk_insert(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @compile_named_capture_assign(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(address) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val13.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 48
  %i.h = getelementptr i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 4 uses
end_hunk_0
