Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3275
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@rb_f_eval:bb.a
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !550 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.bc, i64 264
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !647
  %i.bn = getelementptr i8, ptr %i.bg, i64 -56    ; 4 uses
  %i.bo = add i32 %i.bm, %i.bk
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %i.bi, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  %.not.i.i.i = icmp ugt ptr %i.bn, %i.br
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.w, !prof !448

.preheader.i.i.i:                                 ; preds = %vm_block_ep.exit.i.i
  %i.bs = icmp sgt i32 %i.bk, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.preheader, label %vm_set_eval_stack.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.bt = zext nneg i32 %i.bk to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bt, 2147483644              ; 4 uses
  %i.bu = shl nuw nsw i64 %n.vec, 3
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bu  ; 2 uses
  %i.bw = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !389
  store <2 x i64> splat (i64 4), ptr %i.by, align 8, !tbaa !389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br i1 %cmp.n, label %vm_set_eval_stack.exit.i, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.026.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.02325.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i

bb.w:                                             ; preds = %vm_block_ep.exit.i.i
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.026.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i ], [ %.02325.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ]
  %i.ca = getelementptr i8, ptr %.026.i.i.i, i64 8 ; 2 uses
  store i64 4, ptr %.026.i.i.i, align 8, !tbaa !389
  %i.cb = add nuw nsw i32 %.02325.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cb, %i.bk
  br i1 %exitcond.not.i.i.i, label %vm_set_eval_stack.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1210

vm_set_eval_stack.exit.i:                         ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.bi, %.preheader.i.i.i ], [ %i.bv, %middle.block ], [ %i.ca, %.lr.ph.i.i.i ] ; 4 uses
  %i.cc = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i.i, align 8, !tbaa !389
  %i.cd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  store i64 %.0.i12.i.i, ptr %i.cc, align 8, !tbaa !389
  %i.ce = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  store i64 2004287521, ptr %i.cd, align 8, !tbaa !389
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !451
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bg, i64 -48
  store ptr %i.ce, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !451
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bg, i64 -40
  store ptr %i.aj, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bg, i64 -32
  store i64 %.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !389
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bg, i64 -24
  store ptr %i.cd, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !451
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bg, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !446
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !497
  %i.cg = getelementptr i8, ptr %i.cf, i64 240
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !550
  %.not15.i = icmp eq i32 %i.ch, 0
  br i1 %.not15.i, label %eval_string_with_scope.exit, label %bb.x

bb.x:                                             ; preds = %vm_set_eval_stack.exit.i
  %i.ci = call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %.0..0..0..0..0..0..0..0..i.i, ptr noundef nonnull %i.bn), !inline_history !27
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ai, i64 16
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !716 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 3 uses
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !389
  %i.co = icmp eq ptr %i.cm, null
  %i.cp = and i64 %i.cn, 7
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = or i1 %i.co, %i.cq
  br i1 %i.cr, label %rb_obj_write.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %i.cn) #23
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.y, %bb.x
  %i.cs = getelementptr i8, ptr %i.cj, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !717 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ai, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !403
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i16.i = load i64, ptr %i.cv, align 8, !tbaa !389 ; 3 uses
  %i.cw = icmp eq i64 %.val.i.i16.i, 0
  %i.cx = and i64 %.val.i.i16.i, 7
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = or i1 %i.cw, %i.cy
  br i1 %i.cz, label %eval_string_with_scope.exit, label %bb.z

bb.z:                                             ; preds = %rb_obj_write.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %.val.i.i16.i) #23
  br label %eval_string_with_scope.exit

eval_string_with_scope.exit:                      ; preds = %vm_set_eval_stack.exit.i, %rb_obj_write.exit.i.i, %bb.z
  %i.da = call i64 @rb_vm_exec(ptr noundef nonnull %.0..0..0..0..0..0..0..0..i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %eval_string_with_scope.exit, %bb.n
  %.010 = phi i64 [ %i.af, %bb.n ], [ %i.da, %eval_string_with_scope.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.010
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @eval_string_with_cref(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 !guid !1214 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_block, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !405
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !405
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !405 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !446  ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !492
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.f, align 8, !tbaa !493
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = getelementptr i8, ptr %.011.i, i64 32
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !395
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !389
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !389
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.236) #42
  unreachable

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 16, i1 false), !tbaa.struct !718
  store i64 %0, ptr %5, align 8, !tbaa !403
  %i.m = getelementptr i8, ptr %.011.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !494  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !403
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.p, align 8, !tbaa !696
  tail call void @rb_zjit_invalidate_no_ep_escape(ptr noundef %i.n) #23
  %i.q = call fastcc ptr @eval_make_iseq(i64 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %5) ; 3 uses
  %.not22 = icmp eq ptr %i.q, null
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit
  %i.r = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !442
  tail call void @rb_exc_raise(i64 noundef %i.s) #42
  unreachable

bb.d:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne ptr %i.n, null
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %vm_block_ep.exit.a, label %vm_block_ep.exit.i

vm_block_ep.exit.a:                               ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !403
  %6 = tail call fastcc ptr @vm_get_cref(ptr noundef %i.w)
  %7 = tail call fastcc ptr @vm_cref_dup(ptr noundef nonnull %6)
  br label %vm_block_ep.exit.i

vm_block_ep.exit.i:                               ; preds = %vm_block_ep.exit.a, %bb.d
  %.0 = phi ptr [ %7, %vm_block_ep.exit.a ], [ %2, %bb.d ]
  %8 = load i64, ptr %5, align 8, !tbaa !403
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !403
  %i.x = getelementptr i8, ptr %i.q, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !497  ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !516
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !446 ; 7 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !449 ; 5 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 240
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !550 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 264
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !647
  %i.ai = getelementptr i8, ptr %i.ab, i64 -56    ; 3 uses
  %i.aj = add i32 %i.ah, %i.af
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.ad, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 56
  %.not.i.i = icmp ugt ptr %i.ai, %i.am
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.e, !prof !448

.preheader.i.i:                                   ; preds = %vm_block_ep.exit.i
  %i.an = icmp sgt i32 %i.af, 0
  br i1 %i.an, label %.lr.ph.i.i.preheader, label %vm_set_eval_stack.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.ao = zext nneg i32 %i.af to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ao, 2147483644              ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %i.ad, i64 %i.ap  ; 2 uses
  %i.ar = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !389
  store <2 x i64> splat (i64 4), ptr %i.at, align 8, !tbaa !389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %vm_set_eval_stack.exit, label %.lr.ph.i.i.preheader54

.lr.ph.i.i.preheader54:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i

bb.e:                                             ; preds = %vm_block_ep.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader54, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader54 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader54 ]
  %i.av = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !389
  %i.aw = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aw, %i.af
  br i1 %exitcond.not.i.i, label %vm_set_eval_stack.exit, label %.lr.ph.i.i, !llvm.loop !1213

vm_set_eval_stack.exit:                           ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.ad, %.preheader.i.i ], [ %i.aq, %middle.block ], [ %i.av, %.lr.ph.i.i ] ; 4 uses
  %11 = ptrtoint ptr %10 to i64
  %12 = or i64 %11, 1
  %i.ax = ptrtoint ptr %.0 to i64
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 %i.ax, ptr %.0.lcssa.i.i, align 8, !tbaa !389
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %12, ptr %i.ay, align 8, !tbaa !389
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 2004287521, ptr %i.az, align 8, !tbaa !389
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !451
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ab, i64 -48
  store ptr %i.ba, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !451
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.ab, i64 -40
  store ptr %i.q, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.ab, i64 -32
  store i64 %8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !389
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.ab, i64 -24
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !451
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.ab, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !446
  %i.bb = tail call i64 @rb_vm_exec(ptr noundef nonnull %.0..0..0..0..0..0..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %i.bb
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @ruby_eval_string_from_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !guid !1215 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !405
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !405
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !405 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not11 = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not11, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !446  ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !492
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.h, align 8, !tbaa !493
  %i.i = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.i, %i.g
  br i1 %.not910.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.011.i = phi ptr [ %i.l, %bb.e ], [ %i.g, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %.011.i, i64 32
  %.0.val.i = load ptr, ptr %i.j, align 8, !tbaa !395
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !389
  %i.k = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.k, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.i, %i.l
  br i1 %.not9.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !14

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.011.i, i64 24
  br label %bb.f

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.d
  %i.n = tail call ptr @rb_current_box() #23
  %i.o = getelementptr i8, ptr %i.n, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %rb_vm_get_ruby_level_next_cfp.exit
  %.in = phi ptr [ %i.m, %rb_vm_get_ruby_level_next_cfp.exit ], [ %i.o, %.loopexit ]
  %i.p = load i64, ptr %.in, align 8, !tbaa !389
  %i.q = tail call i64 @rb_str_new_cstr(ptr noundef %0) #23
  %i.r = tail call fastcc i64 @eval_string_with_cref(i64 noundef %i.p, i64 noundef %i.q, ptr noundef null, i64 noundef %i.c, i32 noundef 1)
  ret i64 %i.r
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rbimpl_str_new_cstr(ptr noundef nonnull %0) unnamed_addr #11 !guid !1216 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #56
  %i.b = tail call i64 @rb_str_new_static(ptr noundef nonnull %0, i64 noundef %i.a) #23
  ret i64 %i.b
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_eval_string(ptr noundef nonnull %0) local_unnamed_addr #2 !guid !1217 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_str_new_cstr(ptr noundef nonnull @.str.61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !405
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !405
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !405 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not11.i = icmp eq ptr %.0..0..0..0..0..0..0..0..i.i, null
  br i1 %.not11.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !446  ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !492
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 8
  %.val8.i.i = load i64, ptr %i.g, align 8, !tbaa !493
  %i.h = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val8.i.i ; 2 uses
  %.not910.i.i = icmp ugt ptr %i.h, %i.f
  br i1 %.not910.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.011.i.i = phi ptr [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.i = getelementptr i8, ptr %.011.i.i, i64 32
  %.0.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !395
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !389
  %i.j = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr i8, ptr %.011.i.i, i64 56  ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.h, %i.k
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !14

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %.011.i.i, i64 24
  br label %ruby_eval_string_from_file.exit

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.m = tail call ptr @rb_current_box() #23
  %i.n = getelementptr i8, ptr %i.m, i64 16
  br label %ruby_eval_string_from_file.exit

ruby_eval_string_from_file.exit:                  ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i, %.loopexit.i
  %.in.i = phi ptr [ %i.l, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ %i.n, %.loopexit.i ]
  %i.o = load i64, ptr %.in.i, align 8, !tbaa !389
  %i.p = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %0) #23
  %i.q = tail call fastcc i64 @eval_string_with_cref(i64 noundef %i.o, i64 noundef %i.p, ptr noundef null, i64 noundef %i.b, i32 noundef 1)
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_eval_string_protect(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #2 !guid !1218 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call i64 @rb_protect(ptr noundef nonnull @eval_string_protect, i64 noundef %i.a, ptr noundef %1) #23
  ret i64 %i.b
}

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @eval_string_protect(i64 noundef %0) #2 !guid !1219 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_str_new_cstr(ptr noundef nonnull @.str.61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !405
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !405
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !405 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not11.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, null
  br i1 %.not11.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !446  ; 2 uses
  %.val.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !492
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.g, align 8, !tbaa !493
  %i.h = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.h, %i.f
  br i1 %.not910.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.011.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.i = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !395
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !389
  %i.j = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.h, %i.k
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i, !llvm.loop !14

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr i8, ptr %.011.i.i.i, i64 24
  br label %rb_eval_string.exit

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.m = tail call ptr @rb_current_box() #23
  %i.n = getelementptr i8, ptr %i.m, i64 16
  br label %rb_eval_string.exit

rb_eval_string.exit:                              ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i, %.loopexit.i.i
  %.in.i.i = phi ptr [ %i.l, %rb_vm_get_ruby_level_next_cfp.exit.i.i ], [ %i.n, %.loopexit.i.i ]
  %i.o = inttoptr i64 %0 to ptr
  %i.p = load i64, ptr %.in.i.i, align 8, !tbaa !389
end_hunk_0
