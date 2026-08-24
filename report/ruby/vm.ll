Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3274
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_call_iseq_setup_normal_opt_start:bb.a
  br i1 %i.ax, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ay = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ay, 2147483644              ; 4 uses
  %i.az = shl nuw nsw i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.az  ; 2 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.bd, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ay
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.af, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.026.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.02325.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader24 ]
  %i.bf = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.bg = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bg, %i.an
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !730

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.af, %.preheader.i ], [ %i.ba, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %sext = shl i64 %i.t, 32
  %i.bh = ashr exact i64 %sext, 29
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bh
  %i.bj = ptrtoint ptr %.val19 to i64
  %i.bk = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.bj, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.bl = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.ak, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.bl, align 8, !tbaa !11
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -48
  store ptr %i.bm, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -40
  store ptr %.val21, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -32
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -24
  store ptr %i.bl, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_tailcall_opt_start(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.val10, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !175
  %i.k = getelementptr i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !230
  %i.m = sub i32 %i.l, %i.j
  %i.n = getelementptr i8, ptr %i.h, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !718
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = trunc i64 %i.r to i32
  tail call fastcc void @vm_call_iseq_setup_tailcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.s)
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.m = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.085128 = phi i32 [ 0, %.lr.ph ], [ %.186, %bb.g ] ; 2 uses
  %.092126 = phi i64 [ 0, %.lr.ph ], [ %.294, %bb.g ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.q = tail call i64 @rb_id2sym(i64 noundef %i.o) #23
  br i1 %i.m, label %.lr.ph.i, label %.loopexit123

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit123, label %.lr.ph.i, !llvm.loop !732

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  store i64 %i.v, ptr %i.p, align 8, !tbaa !11
  store i64 36, ptr %i.u, align 8, !tbaa !11
  %i.w = add i32 %.085128, 1
  br label %bb.g

.loopexit123:                                     ; preds = %bb.c, %bb.b
  %.not102 = icmp eq i64 %.092126, 0
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit123
  %i.x = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23
  br label %bb.f

bb.f:                                             ; preds = %.loopexit123, %bb.e
  %.193 = phi i64 [ %.092126, %.loopexit123 ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = tail call i64 @rb_id2sym(i64 noundef %i.o) #23
  %i.z = tail call i64 @rb_ary_push(i64 noundef %.193, i64 noundef %i.y) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.294 = phi i64 [ %.092126, %bb.d ], [ %.193, %bb.f ] ; 3 uses
  %.186 = phi i32 [ %i.w, %bb.d ], [ %.085128, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !733

._crit_edge:                                      ; preds = %bb.g
  %.not = icmp eq i64 %.294, 0
  br i1 %.not, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.085.lcssa164 = phi i32 [ %.186, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.090.lcssa163 = phi i32 [ %i.h, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = icmp slt i32 %.090.lcssa163, %i.i
  br i1 %i.aa, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.preheader
  %i.ab = icmp sgt i32 %4, 0
  %wide.trip.count.i105 = zext nneg i32 %4 to i64
  %i.ac = zext nneg i32 %.090.lcssa163 to i64
  %i.ad = sub nsw i32 %i.i, %.090.lcssa163
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.154, i64 noundef %.294) #58
  unreachable

bb.i:                                             ; preds = %.lr.ph137, %bb.t
  %indvars.iv149.a = phi i64 [ %i.ac, %.lr.ph137 ], [ %indvars.iv.next150.a, %bb.t ] ; 4 uses
  %.082136.a = phi i64 [ 4, %.lr.ph137 ], [ %.2, %bb.t ] ; 5 uses
  %.083135 = phi i32 [ 0, %.lr.ph137 ], [ %.184, %bb.t ] ; 5 uses
  %.287134.a = phi i32 [ %.085.lcssa164, %.lr.ph137 ], [ %.388, %bb.t ] ; 4 uses
  %.089133 = phi i32 [ 0, %.lr.ph137 ], [ %8, %bb.t ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %6, i64 %indvars.iv149.a ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv149.a
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.ag) #23
  br i1 %i.ab, label %.lr.ph.i106, label %.loopexit122

bb.j:                                             ; preds = %.lr.ph.i106
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %.loopexit122, label %.lr.ph.i106, !llvm.loop !732

.lr.ph.i106:                                      ; preds = %bb.i, %bb.j
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i107
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i106
  %i.al = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i107 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !11
  store i64 36, ptr %i.al, align 8, !tbaa !11
  %i.an = add i32 %.287134.a, 1
  br label %bb.t

.loopexit122:                                     ; preds = %bb.j, %bb.i
  %7 = sext i32 %.089133 to i64                   ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.k, i64 %7
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 36
  br i1 %i.aq, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.loopexit122
  store i64 4, ptr %i.ae, align 8, !tbaa !11
  %i.ar = icmp samesign ult i64 %indvars.iv149.a, 31
  br i1 %i.ar, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.as = shl nuw i32 1, %.089133
  %i.at = or i32 %.083135, %i.as
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %.082136.a, 4
  br i1 %i.au, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.av = tail call i64 @rb_hash_new() #23        ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.r
  %indvars.iv145 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next146, %bb.r ] ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.ax = shl nuw nsw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %.083135
  %.not100 = icmp eq i32 %i.ay, 0
  br i1 %.not100, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = shl nuw nsw i64 %indvars.iv145, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = tail call i64 @rb_hash_aset(i64 noundef %i.av, i64 noundef %i.ba, i64 noundef 20) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 31
  br i1 %exitcond148.not, label %.loopexit, label %bb.p, !llvm.loop !734

.loopexit:                                        ; preds = %bb.r, %bb.n
  %.1 = phi i64 [ %.082136.a, %bb.n ], [ %i.av, %bb.r ] ; 2 uses
  %i.bc = shl nsw i64 %7, 1
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = tail call i64 @rb_hash_aset(i64 noundef %.1, i64 noundef %i.bd, i64 noundef 20) #23 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.loopexit122
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.m, %.loopexit, %bb.s
  %.388 = phi i32 [ %i.an, %bb.k ], [ %.287134.a, %bb.m ], [ %.287134.a, %.loopexit ], [ %.287134.a, %bb.s ] ; 2 uses
  %.184 = phi i32 [ %.083135, %bb.k ], [ %i.at, %bb.m ], [ %.083135, %.loopexit ], [ %.083135, %bb.s ] ; 2 uses
  %.2 = phi i64 [ %.082136.a, %bb.k ], [ %.082136.a, %bb.m ], [ %.1, %.loopexit ], [ %.082136.a, %bb.s ] ; 2 uses
  %indvars.iv.next150.a = add nuw nsw i64 %indvars.iv149.a, 1
  %8 = add i32 %.089133, 1                        ; 2 uses
  %exitcond152.not = icmp eq i32 %8, %i.ad
  br i1 %exitcond152.not, label %._crit_edge138.loopexit, label %bb.i, !llvm.loop !735

._crit_edge138.loopexit:                          ; preds = %bb.t
  %i.bf = sext i32 %.184 to i64
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %.preheader
  %.287.lcssa = phi i32 [ %.085.lcssa164, %.preheader ], [ %.388, %._crit_edge138.loopexit ]
  %.083.lcssa = phi i64 [ 1, %.preheader ], [ %i.bh, %._crit_edge138.loopexit ]
  %.082.lcssa = phi i64 [ 4, %.preheader ], [ %.2, %._crit_edge138.loopexit ] ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = and i16 %i.bk, 32
  %.not97 = icmp eq i16 %i.bl, 0
  br i1 %.not97, label %bb.x, label %bb.u

bb.u:                                             ; preds = %._crit_edge138
  %i.bm = add i32 %i.i, 1
  %i.bn = sext i32 %4 to i64
  %i.bo = tail call i64 @rb_hash_new_with_size(i64 noundef %i.bn) #23 ; 2 uses
  %i.bp = icmp sgt i32 %4, 0
  br i1 %i.bp, label %.lr.ph.preheader.i112, label %make_rest_kw_hash.exit

.lr.ph.preheader.i112:                            ; preds = %bb.u
  %wide.trip.count.i113 = zext nneg i32 %4 to i64
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.w, %.lr.ph.preheader.i112
  %indvars.iv.i115 = phi i64 [ 0, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i116, %bb.w ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i115
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 36
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i114
  %i.bt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i115
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = tail call i64 @rb_hash_aset(i64 noundef %i.bo, i64 noundef %i.bu, i64 noundef %i.br) #23 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i114
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i113
  br i1 %exitcond.not.i117, label %make_rest_kw_hash.exit, label %.lr.ph.i114, !llvm.loop !736

make_rest_kw_hash.exit:                           ; preds = %bb.w, %bb.u
  %i.bw = sext i32 %i.bm to i64
  %i.bx = getelementptr [8 x i8], ptr %6, i64 %i.bw
  store i64 %i.bo, ptr %i.bx, align 8, !tbaa !11
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge138
  %.not98 = icmp eq i32 %.287.lcssa, %4
  br i1 %.not98, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = tail call fastcc i64 @make_unknown_kw_hash(ptr noundef %5, i32 noundef %4, ptr noundef %3)
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.by) #58
  unreachable

bb.z:                                             ; preds = %bb.x, %make_rest_kw_hash.exit
  %i.bz = icmp eq i64 %.082.lcssa, 4
  %.3 = select i1 %i.bz, i64 %.083.lcssa, i64 %.082.lcssa
  %i.ca = sext i32 %i.i to i64
  %i.cb = getelementptr [8 x i8], ptr %6, i64 %i.ca
  store i64 %.3, ptr %i.cb, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_kwparm_kwarg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
vm_ci_kwarg.exit:
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %.val33 = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %i.f = getelementptr i8, ptr %.val33, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr i8, ptr %.val35, i64 16    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !720  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 2) ]
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7    ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !230
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.l, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !721
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !723
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = sext i32 %i.o to i64                    ; 2 uses
  %i.ag = icmp slt i32 %i.o, 0
  br i1 %i.ag, label %bb.a, label %rbimpl_size_mul_or_raise.exit36, !prof !177

bb.a:                                             ; preds = %vm_ci_kwarg.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.af) #42
  unreachable

rbimpl_size_mul_or_raise.exit36:                  ; preds = %vm_ci_kwarg.exit
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_size_mul_or_raise.exit36
  %i.aj = getelementptr i8, ptr %i.j, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !175
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.w, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.ai, ptr noundef nonnull readonly align 1 %i.am, i64 noundef %i.ah, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit36, %bb.b
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %.val35, ptr noundef nonnull %.val33, ptr noundef nonnull %i.ai, i32 noundef %i.o, ptr noundef %i.p, ptr noundef %i.ae)
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !124 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 240
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !190
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %i.as = getelementptr i8, ptr %.val, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val34 = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.aw = load i32, ptr %i.s, align 8, !tbaa !230
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = sext i32 %i.ap to i64
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 -8
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !73
  %i.bd = getelementptr i8, ptr %2, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !229
  %i.bf = getelementptr i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !228
  %i.bh = getelementptr i8, ptr %.val34, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !147
  %i.bl = sub i32 %i.ar, %i.ap                    ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 264
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !355
  %i.bo = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70 ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -56    ; 3 uses
  %i.br = add i32 %i.bn, %i.bl
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  %.not.i38 = icmp ugt ptr %i.bq, %i.bu
  br i1 %.not.i38, label %.preheader.i, label %bb.c, !prof !72

.preheader.i:                                     ; preds = %ruby_nonempty_memcpy.exit
  %i.bv = icmp sgt i32 %i.bl, 0
  br i1 %i.bv, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bw = zext nneg i32 %i.bl to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bw, 2147483644              ; 4 uses
  %i.bx = shl nuw nsw i64 %n.vec, 3
  %i.by = getelementptr i8, ptr %i.bb, i64 %i.bx  ; 2 uses
  %i.bz = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cb, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !737

end_hunk_0
begin_hunk_1_@flatten_rest_args:bb.a

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader33, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.01927.prol = phi i32 [ %i.ay, %.lr.ph.prol ], [ %.01927.ph, %.lr.ph.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader33 ]
  %i.au = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv.prol
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = sext i32 %.01927.prol to i64
  %i.ax = getelementptr [8 x i8], ptr %2, i64 %i.aw
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !11
  %i.ay = add i32 %.01927.prol, 1                 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !787

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader33
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader33 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.01927.unr = phi i32 [ %.01927.ph, %.lr.ph.preheader33 ], [ %i.ay, %.lr.ph.prol ]
  %i.az = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01927 = phi i32 [ %i.bx, %.lr.ph ], [ %.01927.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = sext i32 %.01927 to i64
  %i.be = getelementptr [8 x i8], ptr %2, i64 %i.bd
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !11
  %i.bf = add i32 %.01927, 1
  %i.bg = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bj = sext i32 %i.bf to i64
  %i.bk = getelementptr [8 x i8], ptr %2, i64 %i.bj
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !11
  %i.bl = add i32 %.01927, 2
  %i.bm = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr [8 x i8], ptr %2, i64 %i.bp
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !11
  %i.br = add i32 %.01927, 3
  %i.bs = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = sext i32 %i.br to i64
  %i.bw = getelementptr [8 x i8], ptr %2, i64 %i.bv
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !11
  %i.bx = add i32 %.01927, 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !788

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %RARRAY_LENINT.exit
  store i64 0, ptr %i.b, align 8, !tbaa !757
  %i.by = load i32, ptr %3, align 4, !tbaa !7
  %i.bz = and i32 %i.by, -2
  store i32 %i.bz, ptr %3, align 4, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @RARRAY_ASET(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @rb_ary_ptr_use_start(i64 noundef %0) #23
  %i.b = getelementptr [8 x i8], ptr %i.a, i64 %1
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  tail call void @rb_ary_ptr_use_end(i64 noundef %0) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %3, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %RHASH_SIZE.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0106128 = phi i64 [ %.0.i, %.lr.ph.preheader ], [ %.1107, %bb.k ] ; 2 uses
  %.0115126 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2117, %bb.k ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #23 ; 3 uses
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.y = tail call i64 @rb_hash_delete_entry(i64 noundef %3, i64 noundef %i.x) #23
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = tail call i64 @rb_hash_lookup2(i64 noundef %3, i64 noundef %i.x, i64 noundef 36) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0104 = phi i64 [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = icmp eq i64 %.0104, 36
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %.0106128, -1
  %i.ac = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %.0104, ptr %i.ac, align 8, !tbaa !11
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not124 = icmp eq i64 %.0115126, 0
  br i1 %.not124, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1116 = phi i64 [ %.0115126, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ae = tail call i64 @rb_ary_push(i64 noundef %.1116, i64 noundef %i.x) #23 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2117 = phi i64 [ %.1116, %bb.j ], [ %.0115126, %bb.g ] ; 3 uses
  %.1107 = phi i64 [ %.0106128, %bb.j ], [ %i.ab, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !789

._crit_edge:                                      ; preds = %bb.k
  %.not = icmp eq i64 %.2117, 0
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %RHASH_SIZE.exit, %._crit_edge
  %.0106.lcssa159 = phi i64 [ %.1107, %._crit_edge ], [ %.0.i, %RHASH_SIZE.exit ] ; 2 uses
  %.0113.lcssa158 = phi i32 [ %i.h, %._crit_edge ], [ 0, %RHASH_SIZE.exit ] ; 3 uses
  %i.af = icmp slt i32 %.0113.lcssa158, %i.i
  br i1 %i.af, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %.preheader
  %i.ag = zext nneg i32 %.0113.lcssa158 to i64
  %i.ah = sub nsw i32 %i.i, %.0113.lcssa158
  br label %.lr.ph137

bb.l:                                             ; preds = %._crit_edge
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.154, i64 noundef %.2117) #58
  unreachable

.lr.ph137:                                        ; preds = %bb.z, %.lr.ph137.preheader
  %indvars.iv147.a = phi i64 [ %i.ag, %.lr.ph137.preheader ], [ %indvars.iv.next148.a, %bb.z ] ; 5 uses
  %.0105136.a = phi i64 [ 4, %.lr.ph137.preheader ], [ %.2, %bb.z ] ; 5 uses
  %.2108135.a = phi i64 [ %.0106.lcssa159, %.lr.ph137.preheader ], [ %.3109, %bb.z ] ; 4 uses
  %.0110134 = phi i32 [ 0, %.lr.ph137.preheader ], [ %.1111, %bb.z ] ; 5 uses
  %.0112133 = phi i32 [ 0, %.lr.ph137.preheader ], [ %7, %bb.z ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv147.a
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = tail call i64 @rb_id2sym(i64 noundef %i.aj) #23 ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph137
  %i.al = tail call i64 @rb_hash_delete_entry(i64 noundef %3, i64 noundef %i.ak) #23
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph137
  %i.am = tail call i64 @rb_hash_lookup2(i64 noundef %3, i64 noundef %i.ak, i64 noundef 36) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0103 = phi i64 [ %i.al, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = icmp eq i64 %.0103, 36
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %.2108135.a, -1
  %i.ap = getelementptr [8 x i8], ptr %4, i64 %indvars.iv147.a
  store i64 %.0103, ptr %i.ap, align 8, !tbaa !11
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %6 = sext i32 %.0112133 to i64                  ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.k, i64 %6
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 36
  %i.at = getelementptr [8 x i8], ptr %4, i64 %indvars.iv147.a ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  store i64 4, ptr %i.at, align 8, !tbaa !11
  %i.au = icmp samesign ult i64 %indvars.iv147.a, 31
  br i1 %i.au, label %bb.s, label %bb.t, !prof !72

bb.s:                                             ; preds = %bb.r
  %i.av = shl nuw i32 1, %.0112133
  %i.aw = or i32 %.0110134, %i.av
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp eq i64 %.0105136.a, 4
  br i1 %i.ax, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ay = tail call i64 @rb_hash_new() #23        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x
  %indvars.iv143 = phi i64 [ 0, %bb.u ], [ %indvars.iv.next144, %bb.x ] ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv143 to i32
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = and i32 %i.ba, %.0110134
  %.not122 = icmp eq i32 %i.bb, 0
  br i1 %.not122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = shl nuw nsw i64 %indvars.iv143, 1
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = tail call i64 @rb_hash_aset(i64 noundef %i.ay, i64 noundef %i.bd, i64 noundef 20) #23 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 31
  br i1 %exitcond146.not, label %.loopexit, label %bb.v, !llvm.loop !790

.loopexit:                                        ; preds = %bb.x, %bb.t
  %.1 = phi i64 [ %.0105136.a, %bb.t ], [ %i.ay, %bb.x ] ; 2 uses
  %i.bf = shl nsw i64 %6, 1
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = tail call i64 @rb_hash_aset(i64 noundef %.1, i64 noundef %i.bg, i64 noundef 20) #23 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.q
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit, %bb.s, %bb.p
  %.1111 = phi i32 [ %i.aw, %bb.s ], [ %.0110134, %.loopexit ], [ %.0110134, %bb.y ], [ %.0110134, %bb.p ] ; 2 uses
  %.3109 = phi i64 [ %.2108135.a, %bb.s ], [ %.2108135.a, %.loopexit ], [ %.2108135.a, %bb.y ], [ %i.ao, %bb.p ] ; 2 uses
  %.2 = phi i64 [ %.0105136.a, %bb.s ], [ %.1, %.loopexit ], [ %.0105136.a, %bb.y ], [ %.0105136.a, %bb.p ] ; 2 uses
  %indvars.iv.next148.a = add nuw nsw i64 %indvars.iv147.a, 1
  %7 = add i32 %.0112133, 1                       ; 2 uses
  %exitcond150.not = icmp eq i32 %7, %i.ah
  br i1 %exitcond150.not, label %._crit_edge138.loopexit, label %.lr.ph137, !llvm.loop !791

._crit_edge138.loopexit:                          ; preds = %bb.z
  %i.bi = sext i32 %.1111 to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %.preheader
  %.0110.lcssa = phi i64 [ 1, %.preheader ], [ %i.bk, %._crit_edge138.loopexit ]
  %.2108.lcssa = phi i64 [ %.0106.lcssa159, %.preheader ], [ %.3109, %._crit_edge138.loopexit ]
  %.0105.lcssa = phi i64 [ 4, %.preheader ], [ %.2, %._crit_edge138.loopexit ] ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 32
  %.not119 = icmp eq i16 %i.bo, 0
  br i1 %.not119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge138
  %i.bp = add i32 %i.i, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %4, i64 %i.bq
  store i64 %3, ptr %i.br, align 8, !tbaa !11
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge138
  br i1 %5, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not120 = icmp eq i64 %.2108.lcssa, 0
  br i1 %.not120, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = tail call i64 @rb_hash_dup(i64 noundef %3) #23
  tail call fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.bs, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  %i.bu = and i64 %i.bt, 32768
  %.not.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bv = lshr i64 %i.bt, 16
  %i.bw = and i64 %i.bv, 15
  br label %RHASH_EMPTY_P.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bx = add i64 %3, 24
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i64 [ %i.bw, %bb.af ], [ %i.ca, %bb.ag ]
  %i.cb = icmp eq i64 %.0.i.i, 0
  br i1 %i.cb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit
  %i.cc = tail call i64 @rb_hash_keys(i64 noundef %3) #23
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.cc) #58
  unreachable

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %RHASH_EMPTY_P.exit, %bb.aa
  %i.cd = icmp eq i64 %.0105.lcssa, 4
  %.3 = select i1 %i.cd, i64 %.0110.lcssa, i64 %.0105.lcssa
  %i.ce = sext i32 %i.i to i64
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %i.ce
  store i64 %.3, ptr %i.cf, align 8, !tbaa !11
  ret void
}

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #4

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #4

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_behead(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_delete_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0                 ; 4 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.m, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.n = icmp sgt i64 %.0.i.i, 0
  br i1 %i.n, label %bb.e, label %.split18

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i19 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr [8 x i8], ptr %.0.i19, i64 %.0.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %.split18, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_array_const_ptr.exit
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 3 uses
  %i.aa = and i64 %i.z, 8223
  %or.cond.not = icmp eq i64 %i.aa, 8200
  br i1 %or.cond.not, label %bb.p, label %.split18, !prof !774

.split18:                                         ; preds = %rb_array_const_ptr.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split18
  %i.ab = lshr i64 %i.g, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.i:                                             ; preds = %.split18
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !177

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.l:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.f, i64 16
end_hunk_1
