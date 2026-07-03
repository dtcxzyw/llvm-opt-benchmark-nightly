inline.NumInlined: 6676
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@qcall_branch_end:bb.a
  %i.al = load i64, ptr %5, align 8, !tbaa !176
  %i.am = lshr i64 %i.al, 15
  %i.an = trunc i64 %i.am to i32
  br label %nd_line.exit19

nd_line.exit19:                                   ; preds = %new_label_body.exit, %bb.d
  %.0.i18 = phi i32 [ %i.an, %bb.d ], [ -1, %new_label_body.exit ]
  %i.ao = getelementptr i8, ptr %5, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !278
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %.0.i18, i32 noundef %i.ap, i32 noundef 72, i32 noundef 1, i64 noundef %i.aq) ; 4 uses
  %i.as = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !35
  %i.aw = load i32, ptr %i.ag, align 8, !tbaa !273
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ag, align 8, !tbaa !273
  %i.ay = getelementptr i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !34
  %i.az = getelementptr i8, ptr %i.ar, i64 8
  store ptr %2, ptr %i.az, align 8, !tbaa !35
  store ptr %2, ptr %i.as, align 8, !tbaa !11
  %i.ba = getelementptr i8, ptr %4, i64 8
  %i.bb = getelementptr i8, ptr %4, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !278
  tail call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ba, i32 noundef %i.bc, i32 noundef 1, ptr noundef nonnull @.str.88, i64 noundef %3)
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.be = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !34
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.y, ptr %i.bf, align 8, !tbaa !35
  store ptr %i.y, ptr %i.as, align 8, !tbaa !11
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
  %.val = load i64, ptr %2, align 8, !tbaa !176   ; 3 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 11008
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !943
  %.not29 = icmp eq ptr %i.d, null
  br i1 %.not29, label %bb.d, label %nd_line.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !941  ; 4 uses
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.f, align 8, !tbaa !176  ; 2 uses
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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
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
  %i.w = load i64, ptr %i.f, align 8, !tbaa !176
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @rb_node_init(ptr noundef nonnull %3, i32 noundef 71) #37
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx, i8 0, i64 60, i1 false)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !259  ; 3 uses
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !190  ; 4 uses
  %i.l = sub i32 %i.i, %i.k                       ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 240
  %i.n = load i32, ptr %i.m, align 8, !tbaa !175
  %i.o = sub i32 %i.n, %i.l                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 0, ptr %i.a, align 8, !tbaa !36
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
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 24
  %.pre49 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.k, %bb.b ], [ %.pre49, %bb.c ] ; 6 uses
  %i.w = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.c ] ; 5 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  store i32 %i.o, ptr %i.x, align 8, !tbaa !7
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.w, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !188 ; 7 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 8       ; 6 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %5 = add i64 %i.y, 8
  %6 = sub i64 %5, %i.ad
  %diff.check = icmp ult i64 %6, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !36
  %wide.load1 = load <2 x i64>, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store <2 x i64> %wide.load, ptr %i.ag, align 8, !tbaa !36
  store <2 x i64> %wide.load1, ptr %i.ah, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1170

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
  %i.aj = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.prol
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.al = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.prol
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ], [ %i.v, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ao = icmp slt i32 %.0.lcssa, %i.o
  br i1 %i.ao, label %.lr.ph44, label %._crit_edge

.lr.ph44:                                         ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %i.w, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188 ; 3 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %i.at = zext nneg i32 %.0.lcssa to i64          ; 8 uses
  %i.au = sub nsw i64 %i.p, %i.at                 ; 3 uses
  %min.iters.check5 = icmp ult i64 %i.au, 30
  br i1 %min.iters.check5, label %scalar.ph4.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph44
  %i.av = xor i64 %i.at, -1
  %i.aw = add nsw i64 %i.av, %i.p                 ; 2 uses
  %i.ax = add i32 %i.i, %.0.lcssa
  %i.ay = sub i32 %i.ax, %i.k                     ; 2 uses
  %i.az = trunc i64 %i.aw to i32
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = icmp slt i32 %i.ba, %i.ay
  %i.bc = icmp ugt i64 %i.aw, 4294967295
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %scalar.ph4.preheader, label %vector.memcheck2

vector.memcheck2:                                 ; preds = %vector.scevcheck
  %i.be = shl nuw nsw i64 %i.at, 3
  %7 = add i64 %i.be, %i.y
  %i.bf = add i64 %7, 8
  %i.bg = add i32 %i.i, %.0.lcssa
  %i.bh = sub i32 %i.bg, %i.k
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = add i64 %i.bj, %i.ar
  %i.bl = sub i64 %i.bf, %i.bk
  %diff.check3 = icmp ult i64 %i.bl, 32
  br i1 %diff.check3, label %scalar.ph4.preheader, label %vector.ph6

vector.ph6:                                       ; preds = %vector.memcheck2
  %n.vec8 = and i64 %i.au, -4                     ; 3 uses
  %i.bm = add nsw i64 %n.vec8, %i.at
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph6
  %index10 = phi i64 [ 0, %vector.ph6 ], [ %index.next13, %vector.body9 ] ; 2 uses
  %i.bn = add i64 %index10, %i.at                 ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add i32 %i.l, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.aq, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %wide.load11 = load <2 x i64>, ptr %i.br, align 8, !tbaa !36
  %wide.load12 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr [8 x i8], ptr %i.as, i64 %i.bn ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store <2 x i64> %wide.load11, ptr %i.bt, align 8, !tbaa !36
  store <2 x i64> %wide.load12, ptr %i.bu, align 8, !tbaa !36
  %index.next13 = add nuw i64 %index10, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next13, %n.vec8
  br i1 %i.bv, label %middle.block14, label %vector.body9, !llvm.loop !1172

middle.block14:                                   ; preds = %vector.body9
  %cmp.n15 = icmp eq i64 %i.au, %n.vec8
  br i1 %cmp.n15, label %._crit_edge, label %scalar.ph4.preheader

scalar.ph4.preheader:                             ; preds = %vector.memcheck2, %vector.scevcheck, %.lr.ph44, %middle.block14
  %indvars.iv46.ph = phi i64 [ %i.at, %vector.memcheck2 ], [ %i.at, %vector.scevcheck ], [ %i.at, %.lr.ph44 ], [ %i.bm, %middle.block14 ]
  br label %scalar.ph4

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !36
  %i.by = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !36
  %i.cb = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !36
  %i.ce = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !36
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !36
  %i.ch = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !1173

scalar.ph4:                                       ; preds = %scalar.ph4.preheader, %scalar.ph4
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %scalar.ph4 ], [ %indvars.iv46.ph, %scalar.ph4.preheader ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.cj = add i32 %i.l, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.aq, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36
  %i.cn = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv46
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !36
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.co = icmp slt i64 %indvars.iv.next47, %i.p
  br i1 %i.co, label %scalar.ph4, label %._crit_edge, !llvm.loop !1174

._crit_edge:                                      ; preds = %scalar.ph4, %middle.block14, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @rb_node_init(ptr noundef nonnull %4, i32 noundef 0) #37
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.x, ptr %i.cp, align 8, !tbaa !178
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr i8, ptr %i.cr, i64 176
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !274 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !176
  %i.cv = and i64 %i.cu, 32512
  %i.cw = icmp eq i64 %i.cv, 512
  br i1 %i.cw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %i.ct, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !930
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %mandatory_node.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.187) #38
  unreachable

mandatory_node.exit:                              ; preds = %bb.e
  %i.da = getelementptr i8, ptr %i.ct, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1132
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !271
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.dd, align 8, !tbaa !1175
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.de, align 8, !tbaa !182
  %i.df = call i64 @rb_ruby_ast_new(ptr noundef nonnull %4) #37
  %i.dg = call i64 @rb_iseq_base_label(ptr noundef nonnull %0) #37
  %i.dh = call i64 @rb_iseq_path(ptr noundef nonnull %0) #37
  %i.di = call i64 @rb_iseq_realpath(ptr noundef nonnull %0) #37
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %nd_line.exit, label %bb.g

bb.g:                                             ; preds = %mandatory_node.exit
  %i.dj = load i64, ptr %2, align 8, !tbaa !176
  %i.dk = lshr i64 %i.dj, 15
  %i.dl = trunc i64 %i.dk to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %mandatory_node.exit, %bb.g
  %.0.i = phi i32 [ %i.dl, %bb.g ], [ -1, %mandatory_node.exit ]
  %i.dm = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.dn = getelementptr i8, ptr %i.dm, i64 152
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !42
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.dq = getelementptr i8, ptr %i.dp, i64 208
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !409
  %i.ds = call ptr @rb_iseq_new_with_opt(i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %i.dh, i64 noundef %i.di, i32 noundef %.0.i, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %i.do, i64 noundef %i.dr) #37 ; 2 uses
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.du = getelementptr i8, ptr %i.dt, i64 296
  %i.dv = ptrtoint ptr %i.ds to i64               ; 3 uses
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !36
  %i.dw = icmp eq ptr %i.ds, null
  %i.dx = and i64 %i.dv, 7
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = or i1 %i.dw, %i.dy
  br i1 %i.dz, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %nd_line.exit
  %i.ea = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ea, i64 noundef %i.dv) #37
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
  %.val13.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 48
  %i.h = getelementptr i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp samesign ugt i64 %i.g, %i.j
  br i1 %i.k, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.a
end_hunk_0
