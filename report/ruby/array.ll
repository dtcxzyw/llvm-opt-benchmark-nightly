inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_index:bb.a
  br i1 %.not23, label %rb_long2num_inline.exit35, label %bb.o

bb.o:                                             ; preds = %RARRAY_AREF.exit32
  %i.ao = add nuw i64 %.121, 4611686018427387904
  %or.cond.i33 = icmp sgt i64 %i.ao, -1
  br i1 %or.cond.i33, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = shl nuw nsw i64 %.121, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %rb_long2num_inline.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = tail call i64 @rb_int2big(i64 noundef %.121) #24
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit35:                        ; preds = %RARRAY_AREF.exit32
  %i.as = add nuw nsw i64 %.121, 1
  br label %bb.m, !llvm.loop !108

rb_long2num_inline.exit:                          ; preds = %rb_array_len.exit29.thread, %rb_array_len.exit29, %rb_array_len.exit.thread, %rb_array_len.exit, %bb.p, %bb.q, %bb.h, %bb.g, %bb.c
  %.2 = phi i64 [ %i.ar, %bb.q ], [ %i.aq, %bb.p ], [ %i.g, %bb.c ], [ %i.w, %bb.h ], [ 4, %rb_array_len.exit.thread ], [ %i.v, %bb.g ], [ 4, %rb_array_len.exit ], [ 4, %rb_array_len.exit29 ], [ 4, %rb_array_len.exit29.thread ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_rindex(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  switch i32 %0, label %bb.n [
    i32 0, label %bb.d
    i32 1, label %rb_check_arity.exit
  ]

bb.d:                                             ; preds = %rb_array_len.exit
  %i.h = tail call i32 @rb_block_given_p() #24
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not3158 = icmp eq i64 %.0.i, 0
  br i1 %.not3158, label %rb_long2num_inline.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @rb_frame_this_func() #24
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.k) #24
  %i.m = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.l, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %.lr.ph, %rb_array_len.exit35
  %i.n = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %rb_array_len.exit35 ]
  %.02259 = phi i64 [ %.0.i, %.lr.ph ], [ %spec.select, %rb_array_len.exit35 ] ; 2 uses
  %i.o = add i64 %.02259, -1                      ; 4 uses
  %i.p = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %RARRAY_AREF.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.g ], [ %i.i, %bb.f ]
  %i.r = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.o
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  %i.t = tail call i64 @rb_yield(i64 noundef %i.s) #24
  %i.u = and i64 %i.t, -5
  %.not52 = icmp eq i64 %i.u, 0
  br i1 %.not52, label %bb.k, label %bb.h

bb.h:                                             ; preds = %RARRAY_AREF.exit
  %i.v = add i64 %.02259, 4611686018427387903
  %or.cond.i = icmp sgt i64 %i.v, -1
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = shl nsw i64 %i.o, 1
  %i.x = or disjoint i64 %i.w, 1
  br label %rb_long2num_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.y = tail call i64 @rb_int2big(i64 noundef %i.o) #24
  br label %rb_long2num_inline.exit

bb.k:                                             ; preds = %RARRAY_AREF.exit
  %i.z = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.aa = and i64 %i.z, 8192
  %.not.i33 = icmp eq i64 %i.aa, 0
  br i1 %.not.i33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = lshr i64 %i.z, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit35

bb.m:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !14
  br label %rb_array_len.exit35

rb_array_len.exit35:                              ; preds = %bb.l, %bb.m
  %.0.i34 = phi i64 [ %i.ac, %bb.l ], [ %i.ad, %bb.m ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %.0.i34) ; 2 uses
  %.not31 = icmp eq i64 %spec.select, 0
  br i1 %.not31, label %rb_long2num_inline.exit, label %bb.f, !llvm.loop !109

bb.n:                                             ; preds = %rb_array_len.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #23
  unreachable

rb_check_arity.exit:                              ; preds = %rb_array_len.exit
  %i.ae = load i64, ptr %1, align 8, !tbaa !15
  %i.af = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %rb_check_arity.exit
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.149) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %rb_check_arity.exit
  %i.ag = getelementptr i8, ptr %i.a, i64 16      ; 2 uses
  %i.ah = getelementptr i8, ptr %i.a, i64 32
  %.not2878 = icmp eq i64 %.0.i, 0
  br i1 %.not2878, label %rb_long2num_inline.exit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.p, %rb_array_len.exit45
  %.22479 = phi i64 [ %i.ai, %rb_array_len.exit45 ], [ %.0.i, %bb.p ] ; 2 uses
  %i.ai = add i64 %.22479, -1                     ; 6 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ak = and i64 %i.aj, 8192
  %.not.i.i37 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i37, label %bb.q, label %RARRAY_AREF.exit39

bb.q:                                             ; preds = %.lr.ph80
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !14
  br label %RARRAY_AREF.exit39

RARRAY_AREF.exit39:                               ; preds = %.lr.ph80, %bb.q
  %.0.i.i38 = phi ptr [ %i.al, %bb.q ], [ %i.ag, %.lr.ph80 ]
  %i.am = getelementptr [8 x i8], ptr %.0.i.i38, i64 %i.ai
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ao = tail call i64 @rb_equal(i64 noundef %i.an, i64 noundef %i.ae) #24
  %.not29 = icmp eq i64 %i.ao, 0
  br i1 %.not29, label %bb.u, label %bb.r

bb.r:                                             ; preds = %RARRAY_AREF.exit39
  %i.ap = add i64 %.22479, 4611686018427387903
  %or.cond.i40 = icmp sgt i64 %i.ap, -1
  br i1 %or.cond.i40, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = shl nsw i64 %i.ai, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %rb_long2num_inline.exit

bb.t:                                             ; preds = %bb.r
  %i.as = tail call i64 @rb_int2big(i64 noundef %i.ai) #24
  br label %rb_long2num_inline.exit

bb.u:                                             ; preds = %RARRAY_AREF.exit39
  %i.at = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.au = and i64 %i.at, 8192
  %.not.i43 = icmp eq i64 %i.au, 0
  br i1 %.not.i43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = lshr i64 %i.at, 15
  %i.aw = and i64 %i.av, 127
  br label %rb_array_len.exit45

bb.w:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !14
  br label %rb_array_len.exit45

rb_array_len.exit45:                              ; preds = %bb.v, %bb.w
  %.0.i44 = phi i64 [ %i.aw, %bb.v ], [ %i.ax, %bb.w ]
  %i.ay = icmp sgt i64 %i.ai, %.0.i44
  %cond.fr = freeze i1 %i.ay
  %.not28 = icmp eq i64 %i.ai, 0
  %or.cond = select i1 %cond.fr, i1 true, i1 %.not28
  br i1 %or.cond, label %rb_long2num_inline.exit, label %.lr.ph80

rb_long2num_inline.exit:                          ; preds = %rb_array_len.exit45, %rb_array_len.exit35, %bb.p, %.preheader, %bb.t, %bb.s, %bb.j, %bb.i, %bb.e
  %.2 = phi i64 [ %i.ar, %bb.s ], [ %i.y, %bb.j ], [ %i.m, %bb.e ], [ %i.as, %bb.t ], [ %i.x, %bb.i ], [ 4, %.preheader ], [ 4, %bb.p ], [ 4, %rb_array_len.exit35 ], [ 4, %rb_array_len.exit45 ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_join_m(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #23
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %rb_check_arity.exit
  %i.d = load i64, ptr @rb_output_fs, align 8, !tbaa !15 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.156) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ 4, %bb.d ], [ %i.d, %bb.e ], [ %i.b, %bb.c ]
  %i.f = tail call i64 @rb_ary_join(i64 noundef %2, i64 noundef %.0)
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_reverse_m(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 10 uses
  %i.h = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.i = tail call fastcc i64 @ary_new(i64 noundef %i.h, i64 noundef %.0.i) ; 3 uses
  %i.j = icmp sgt i64 %.0.i, 0
  br i1 %i.j, label %bb.d, label %rb_array_len.exit..loopexit_crit_edge

rb_array_len.exit..loopexit_crit_edge:            ; preds = %rb_array_len.exit
  %.pre = inttoptr i64 %i.i to ptr
  br label %.loopexit

bb.d:                                             ; preds = %rb_array_len.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11
  %i.l = and i64 %i.k, 8192
  %.not.i19 = icmp eq i64 %i.l, 0
  br i1 %.not.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 16
  br label %rb_array_const_ptr.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.f ] ; 6 uses
  %i.p = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = and i64 %i.q, 8192
  %.not.i21 = icmp eq i64 %i.r, 0
  br i1 %.not.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_array_const_ptr.exit
  %i.s = getelementptr i8, ptr %i.p, i64 16
  br label %rb_array_const_ptr.exit23

bb.h:                                             ; preds = %rb_array_const_ptr.exit
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit23

rb_array_const_ptr.exit23:                        ; preds = %bb.g, %bb.h
  %.0.i22 = phi ptr [ %i.s, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %.0.i22, i64 %.0.i ; 5 uses
  %min.iters.check = icmp ult i64 %.0.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %rb_array_const_ptr.exit23
  %i.w = shl i64 %.0.i, 3
  %scevgep30 = getelementptr i8, ptr %.0.i20, i64 %i.w
  %bound0 = icmp ult ptr %.0.i22, %scevgep30
  %bound1 = icmp ult ptr %.0.i20, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 4 uses
  %i.x = shl i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %.0.i20, i64 %i.x
  %i.z = mul i64 %n.vec, -8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = and i64 %.0.i, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.i20, i64 %i.ac ; 2 uses
  %i.ad = mul i64 %index, -8
  %next.gep32 = getelementptr i8, ptr %i.v, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !15, !alias.scope !110
  %wide.load33 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !15, !alias.scope !110
  %i.af = getelementptr i8, ptr %next.gep32, i64 -16
  %i.ag = getelementptr i8, ptr %next.gep32, i64 -32
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse34 = shufflevector <2 x i64> %wide.load33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.af, align 8, !tbaa !15, !alias.scope !113, !noalias !110
  store <2 x i64> %reverse34, ptr %i.ag, align 8, !tbaa !15, !alias.scope !113, !noalias !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %rb_array_const_ptr.exit23, %middle.block
  %.017.ph = phi ptr [ %.0.i20, %vector.memcheck ], [ %.0.i20, %rb_array_const_ptr.exit23 ], [ %i.y, %middle.block ]
  %.pn.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %rb_array_const_ptr.exit23 ], [ %i.aa, %middle.block ]
  %.0.ph = phi i64 [ %.0.i, %vector.memcheck ], [ %.0.i, %rb_array_const_ptr.exit23 ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017 = phi ptr [ %i.ai, %scalar.ph ], [ %.017.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn = phi ptr [ %.016, %scalar.ph ], [ %.pn.ph, %scalar.ph.preheader ]
  %.0 = phi i64 [ %i.ak, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ] ; 2 uses
  %.016 = getelementptr i8, ptr %.pn, i64 -8      ; 2 uses
  %i.ai = getelementptr i8, ptr %.017, i64 8
  %i.aj = load i64, ptr %.017, align 8, !tbaa !15
  store i64 %i.aj, ptr %.016, align 8, !tbaa !15
  %i.ak = add nsw i64 %.0, -1
  %i.al = icmp samesign ugt i64 %.0, 1
  br i1 %i.al, label %scalar.ph, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %rb_array_len.exit..loopexit_crit_edge
  %.pre-phi = phi ptr [ %.pre, %rb_array_len.exit..loopexit_crit_edge ], [ %i.p, %middle.block ], [ %i.p, %scalar.ph ] ; 3 uses
  %i.am = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 2 uses
  %i.an = and i64 %i.am, 8192
  %.not = icmp eq i64 %i.an, 0
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ap = and i64 %i.ao, 8192
  %.not.i27 = icmp eq i64 %i.ap, 0                ; 2 uses
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.loopexit
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = lshr i64 %i.ao, 15
  %i.ar = and i64 %i.aq, 127
  br label %rb_array_len.exit26

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.a, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14
  br label %rb_array_len.exit26

rb_array_len.exit26:                              ; preds = %bb.j, %bb.k
  %.0.i25 = phi i64 [ %i.ar, %bb.j ], [ %i.at, %bb.k ]
  %i.au = and i64 %i.am, -4161537
  %i.av = shl i64 %.0.i25, 15
  %i.aw = or i64 %i.av, %i.au
  store i64 %i.aw, ptr %.pre-phi, align 8, !tbaa !11
  br label %bb.o

bb.l:                                             ; preds = %.loopexit
  br i1 %.not.i27, label %bb.n, label %bb.m
end_hunk_0
begin_hunk_1_@ary_sample:bb.a
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15 ; 2 uses
  %i.dw = add i64 %i.dv, %.3171295
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph297, %bb.at
  %.2174294 = phi i64 [ 0, %.lr.ph297 ], [ %i.eb, %bb.at ] ; 3 uses
  %.1176293 = phi i64 [ %i.dv, %.lr.ph297 ], [ %i.ea, %bb.at ] ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %i.h, i64 %.2174294
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15
  %i.dz = icmp slt i64 %.1176293, %i.dy
  br i1 %i.dz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = add i64 %.1176293, 1
  %i.eb = add nuw nsw i64 %.2174294, 1            ; 2 uses
  %exitcond309.not = icmp eq i64 %i.eb, %.3171295
  br i1 %exitcond309.not, label %bb.au, label %bb.as, !llvm.loop !209

bb.au:                                            ; preds = %bb.as, %bb.at
  %.1176.lcssa = phi i64 [ %.1176293, %bb.as ], [ %i.dw, %bb.at ] ; 2 uses
  %.2174.lcssa = phi i64 [ %.2174294, %bb.as ], [ %.3171295, %bb.at ] ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.h, i64 %.2174.lcssa ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = sub nsw i64 %.3171295, %.2174.lcssa
  %i.ef = shl i64 %i.ee, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 %i.ed, ptr noundef nonnull align 8 %i.ec, i64 noundef %i.ef, i1 noundef false) #24
  %i.eg = getelementptr [8 x i8], ptr %i.f, i64 %.3171295
  store i64 %.1176.lcssa, ptr %i.eg, align 8, !tbaa !15
  store i64 %.1176.lcssa, ptr %i.ec, align 8, !tbaa !15
  %i.eh = add nuw nsw i64 %.3171295, 1            ; 2 uses
  %exitcond310.not = icmp eq i64 %i.eh, %spec.select209
  br i1 %exitcond310.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !210

._crit_edge298:                                   ; preds = %bb.au, %bb.ar
  %i.ei = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.ej = tail call fastcc i64 @ary_new(i64 noundef %i.ei, i64 noundef %spec.select209) ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = and i64 %i.el, 8192
  %.not.i.i238 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i238, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge298
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  br label %rb_ary_ptr_use_start.exit

bb.aw:                                            ; preds = %._crit_edge298
  %i.eo = getelementptr i8, ptr %i.ek, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit

rb_ary_ptr_use_start.exit:                        ; preds = %bb.av, %bb.aw
  %.0.i.i239 = phi ptr [ %i.en, %bb.av ], [ %i.ep, %bb.aw ] ; 3 uses
  %i.eq = icmp sgt i64 %spec.select209, 0
  br i1 %i.eq, label %.lr.ph300.preheader, label %._crit_edge301

.lr.ph300.preheader:                              ; preds = %rb_ary_ptr_use_start.exit
  %i.er = getelementptr i8, ptr %i.m, i64 16      ; 3 uses
  %i.es = getelementptr i8, ptr %i.m, i64 32      ; 3 uses
  %xtraiter = and i64 %spec.select209, 1
  %i.et = icmp eq i64 %spec.select209, 1
  br i1 %i.et, label %.lr.ph300.epil.preheader, label %.lr.ph300.preheader.new

.lr.ph300.preheader.new:                          ; preds = %.lr.ph300.preheader
  %unroll_iter = and i64 %spec.select209, 9223372036854775806
  br label %.lr.ph300

.lr.ph300:                                        ; preds = %RARRAY_AREF.exit242.1, %.lr.ph300.preheader.new
  %.4299 = phi i64 [ 0, %.lr.ph300.preheader.new ], [ %i.fl, %RARRAY_AREF.exit242.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph300.preheader.new ], [ %niter.next.1, %RARRAY_AREF.exit242.1 ]
  %i.eu = getelementptr [8 x i8], ptr %i.f, i64 %.4299
  %i.ev = load i64, ptr %i.eu, align 16, !tbaa !15
  %i.ew = load i64, ptr %i.m, align 8, !tbaa !11
  %i.ex = and i64 %i.ew, 8192
  %.not.i.i240 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i240, label %bb.ax, label %RARRAY_AREF.exit242

bb.ax:                                            ; preds = %.lr.ph300
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %RARRAY_AREF.exit242

RARRAY_AREF.exit242:                              ; preds = %.lr.ph300, %bb.ax
  %.0.i.i241 = phi ptr [ %i.ey, %bb.ax ], [ %i.er, %.lr.ph300 ]
  %i.ez = getelementptr [8 x i8], ptr %.0.i.i241, i64 %i.ev
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !15
  %i.fb = getelementptr [8 x i8], ptr %.0.i.i239, i64 %.4299
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !15
  %i.fc = or disjoint i64 %.4299, 1               ; 2 uses
  %i.fd = getelementptr [8 x i8], ptr %i.f, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !15
  %i.ff = load i64, ptr %i.m, align 8, !tbaa !11
  %i.fg = and i64 %i.ff, 8192
  %.not.i.i240.1 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i240.1, label %bb.ay, label %RARRAY_AREF.exit242.1

bb.ay:                                            ; preds = %RARRAY_AREF.exit242
  %i.fh = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %RARRAY_AREF.exit242.1

RARRAY_AREF.exit242.1:                            ; preds = %bb.ay, %RARRAY_AREF.exit242
  %.0.i.i241.1 = phi ptr [ %i.fh, %bb.ay ], [ %i.er, %RARRAY_AREF.exit242 ]
  %i.fi = getelementptr [8 x i8], ptr %.0.i.i241.1, i64 %i.fe
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15
  %i.fk = getelementptr [8 x i8], ptr %.0.i.i239, i64 %i.fc
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !15
  %i.fl = add nuw nsw i64 %.4299, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge301.loopexit.unr-lcssa, label %.lr.ph300, !llvm.loop !211

._crit_edge301.loopexit.unr-lcssa:                ; preds = %RARRAY_AREF.exit242.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge301, label %.lr.ph300.epil.preheader

.lr.ph300.epil.preheader:                         ; preds = %._crit_edge301.loopexit.unr-lcssa, %.lr.ph300.preheader
  %.4299.epil.init = phi i64 [ 0, %.lr.ph300.preheader ], [ %i.fl, %._crit_edge301.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod321 = trunc i64 %spec.select209 to i1
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %i.fm = getelementptr [8 x i8], ptr %i.f, i64 %.4299.epil.init
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !15
  %i.fo = load i64, ptr %i.m, align 8, !tbaa !11
  %i.fp = and i64 %i.fo, 8192
  %.not.i.i240.epil = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i240.epil, label %bb.az, label %RARRAY_AREF.exit242.epil

bb.az:                                            ; preds = %.lr.ph300.epil.preheader
  %i.fq = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %RARRAY_AREF.exit242.epil

RARRAY_AREF.exit242.epil:                         ; preds = %bb.az, %.lr.ph300.epil.preheader
  %.0.i.i241.epil = phi ptr [ %i.fq, %bb.az ], [ %i.er, %.lr.ph300.epil.preheader ]
  %i.fr = getelementptr [8 x i8], ptr %.0.i.i241.epil, i64 %i.fn
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !15
  %i.ft = getelementptr [8 x i8], ptr %.0.i.i239, i64 %.4299.epil.init
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !15
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %RARRAY_AREF.exit242.epil, %._crit_edge301.loopexit.unr-lcssa, %rb_ary_ptr_use_start.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.bp

bb.ba:                                            ; preds = %bb.aq
  %i.fu = sdiv i64 %i.dq, 2
  %.not204 = icmp sgt i64 %spec.select209, %i.fu
  br i1 %.not204, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.fv = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @ary_sample_memo_type) #24 ; 2 uses
  store i64 %i.fv, ptr %i.i, align 8, !tbaa !15
  %i.fw = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %spec.select209) #24 ; 5 uses
  %i.fx = inttoptr i64 %i.fv to ptr
  %i.fy = getelementptr i8, ptr %i.fx, i64 32     ; 2 uses
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !212
  %i.fz = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.ga = tail call fastcc i64 @ary_new(i64 noundef %i.fz, i64 noundef %spec.select209) ; 2 uses
  %i.gb = inttoptr i64 %i.ga to ptr               ; 4 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !11
  %i.gd = and i64 %i.gc, 8192
  %.not.i.i243 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i243, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = getelementptr i8, ptr %i.gb, i64 16
  br label %.lr.ph286.preheader

bb.bd:                                            ; preds = %bb.bb
  %i.gf = getelementptr i8, ptr %i.gb, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !14
  br label %.lr.ph286.preheader

.lr.ph286.preheader:                              ; preds = %bb.bd, %bb.bc
  %.0.i.i244 = phi ptr [ %i.ge, %bb.bc ], [ %i.gg, %bb.bd ] ; 2 uses
  br label %.lr.ph286

.lr.ph286:                                        ; preds = %.lr.ph286.preheader, %.lr.ph286
  %.5285 = phi i64 [ %i.gm, %.lr.ph286 ], [ 0, %.lr.ph286.preheader ] ; 4 uses
  %.0179284 = phi i64 [ %spec.select212, %.lr.ph286 ], [ 0, %.lr.ph286.preheader ]
  %i.gh = xor i64 %.5285, -1
  %i.gi = add i64 %.0.i219, %i.gh
  %i.gj = tail call i64 @rb_random_ulong_limited(i64 noundef %2, i64 noundef %i.gi) #24
  %i.gk = add i64 %i.gj, %.5285                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %.0.i.i244, i64 %.5285
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !15
  %spec.select212 = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %.0179284) ; 3 uses
  %i.gm = add nuw nsw i64 %.5285, 1               ; 2 uses
  %exitcond305.not = icmp eq i64 %i.gm, %spec.select209
  br i1 %exitcond305.not, label %._crit_edge, label %.lr.ph286, !llvm.loop !214

._crit_edge:                                      ; preds = %.lr.ph286
  %i.gn = load i64, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %i.go = and i64 %i.gn, 8192
  %.not.i246 = icmp eq i64 %i.go, 0
  br i1 %.not.i246, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.gp = lshr i64 %i.gn, 15
  %i.gq = and i64 %i.gp, 127                      ; 2 uses
  %.not205 = icmp sgt i64 %i.gq, %spec.select212
  %i.gr = tail call i64 @llvm.umin.i64(i64 %spec.select209, i64 %i.gq)
  %cond.fr = freeze i1 %.not205
  %i.gs = getelementptr i8, ptr %i.m, i64 16
  br i1 %cond.fr, label %rb_ary_ptr_use_start.exit251, label %._crit_edge289

bb.bf:                                            ; preds = %._crit_edge
  %i.gt = getelementptr i8, ptr %i.m, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !14 ; 2 uses
  %.not205269 = icmp sgt i64 %i.gu, %spec.select212
  %spec.select213270 = tail call i64 @llvm.smin.i64(i64 %spec.select209, i64 %i.gu)
  %cond.fr317 = freeze i1 %.not205269
  %i.gv = getelementptr i8, ptr %i.m, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !14
  br i1 %cond.fr317, label %rb_ary_ptr_use_start.exit251, label %._crit_edge289

rb_ary_ptr_use_start.exit251:                     ; preds = %bb.bf, %bb.be
  %.2272 = phi i64 [ %i.gr, %bb.be ], [ %spec.select213270, %bb.bf ] ; 4 uses
  %.0.i.i250 = phi ptr [ %i.gs, %bb.be ], [ %i.gw, %bb.bf ]
  %i.gx = icmp sgt i64 %.2272, 0
  br i1 %i.gx, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %rb_ary_ptr_use_start.exit251, %.lr.ph288
  %.6287 = phi i64 [ %i.hh, %.lr.ph288 ], [ 0, %rb_ary_ptr_use_start.exit251 ] ; 4 uses
  %i.gy = getelementptr [8 x i8], ptr %.0.i.i244, i64 %.6287 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.ha = call i32 @rb_st_lookup(ptr noundef %i.fw, i64 noundef %.6287, ptr noundef nonnull %i.j) #24
  %.not206 = icmp eq i32 %i.ha, 0
  %i.hb = load i64, ptr %i.j, align 8
  %spec.select214 = select i1 %.not206, i64 %.6287, i64 %i.hb
  %i.hc = call i32 @rb_st_lookup(ptr noundef %i.fw, i64 noundef %i.gz, ptr noundef nonnull %i.j) #24
  %.not207 = icmp eq i32 %i.hc, 0
  %i.hd = load i64, ptr %i.j, align 8
  %.0167 = select i1 %.not207, i64 %i.gz, i64 %i.hd
  %i.he = call i32 @rb_st_insert(ptr noundef %i.fw, i64 noundef %i.gz, i64 noundef %spec.select214) #24 ; 0 uses
  %i.hf = getelementptr [8 x i8], ptr %.0.i.i250, i64 %.0167
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.gy, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.hh = add nuw nsw i64 %.6287, 1               ; 2 uses
  %exitcond306.not = icmp eq i64 %i.hh, %.2272
  br i1 %exitcond306.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !215

._crit_edge289:                                   ; preds = %.lr.ph288, %bb.bf, %bb.be, %rb_ary_ptr_use_start.exit251
  %.2272320 = phi i64 [ 0, %bb.bf ], [ %.2272, %rb_ary_ptr_use_start.exit251 ], [ 0, %bb.be ], [ %.2272, %.lr.ph288 ]
  store ptr null, ptr %i.fy, align 8, !tbaa !212
  call void @rb_st_free_table(ptr noundef %i.fw) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !70
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.k) #24, !srcloc !216
  %i.hi = load ptr, ptr %i.k, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  %i.hj = load volatile i64, ptr %i.hi, align 8, !tbaa !15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.bp

bb.bg:                                            ; preds = %bb.ba
  br i1 %.not.i218, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = lshr i64 %i.au, 15
  %i.hl = and i64 %i.hk, 127
  br label %rb_array_len.exit.i253

bb.bi:                                            ; preds = %bb.bg
  %i.hm = getelementptr i8, ptr %i.m, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !14
  br label %rb_array_len.exit.i253

rb_array_len.exit.i253:                           ; preds = %bb.bi, %bb.bh
  %.0.i.i254 = phi i64 [ %i.hl, %bb.bh ], [ %i.hn, %bb.bi ] ; 4 uses
  %i.ho = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.hp = tail call fastcc i64 @ary_new(i64 noundef %i.ho, i64 noundef %.0.i.i254) ; 4 uses
  %i.hq = load i64, ptr %i.m, align 8, !tbaa !11
  %i.hr = and i64 %i.hq, 8192
  %.not.i13.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i13.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %rb_array_len.exit.i253
  %i.hs = getelementptr i8, ptr %i.m, i64 16
  br label %rb_array_const_ptr.exit.i

bb.bk:                                            ; preds = %rb_array_len.exit.i253
  %i.ht = getelementptr i8, ptr %i.m, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.bk, %bb.bj
  %.0.i14.i = phi ptr [ %i.hs, %bb.bj ], [ %i.hu, %bb.bk ]
  tail call fastcc void @ary_memcpy0(i64 noundef %i.hp, i64 noundef 0, i64 noundef %.0.i.i254, ptr noundef readonly %.0.i14.i, i64 noundef %i.hp)
  %i.hv = inttoptr i64 %i.hp to ptr               ; 8 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !11 ; 2 uses
  %i.hx = and i64 %i.hw, 8192
  %.not.i255 = icmp eq i64 %i.hx, 0
  br i1 %.not.i255, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %rb_array_const_ptr.exit.i
  %i.hy = and i64 %i.hw, -4161537
  %i.hz = shl i64 %.0.i.i254, 15
  %i.ia = or i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %i.hv, align 8, !tbaa !11
  br label %rb_ary_dup.exit

bb.bm:                                            ; preds = %rb_array_const_ptr.exit.i
  %i.ib = getelementptr i8, ptr %i.hv, i64 16
  store i64 %.0.i.i254, ptr %i.ib, align 8, !tbaa !14
  br label %rb_ary_dup.exit

rb_ary_dup.exit:                                  ; preds = %bb.bl, %bb.bm
  %i.ic = getelementptr i8, ptr %i.hv, i64 8      ; 2 uses
  store i64 0, ptr %i.ic, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store ptr %i.e, ptr %i.l, align 8, !tbaa !70
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.l) #24, !srcloc !217
  %i.id = load ptr, ptr %i.l, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  %i.ie = load volatile i64, ptr %i.id, align 8, !tbaa !15 ; 0 uses
  %i.if = load i64, ptr %i.hv, align 8, !tbaa !11
  %i.ig = and i64 %i.if, 8192
  %.not.i.i256 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i256, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %rb_ary_dup.exit
  %i.ih = getelementptr i8, ptr %i.hv, i64 16
  br label %.lr.ph291.preheader

bb.bo:                                            ; preds = %rb_ary_dup.exit
  %i.ii = getelementptr i8, ptr %i.hv, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !14
  br label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %bb.bo, %bb.bn
  %.0.i.i258 = phi ptr [ %i.ih, %bb.bn ], [ %i.ij, %bb.bo ] ; 2 uses
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %.7290 = phi i64 [ %i.is, %.lr.ph291 ], [ 0, %.lr.ph291.preheader ] ; 4 uses
  %i.ik = xor i64 %.7290, -1
  %i.il = add i64 %.0.i219, %i.ik
  %i.im = call i64 @rb_random_ulong_limited(i64 noundef %2, i64 noundef %i.il) #24
  %i.in = getelementptr [8 x i8], ptr %.0.i.i258, i64 %i.im
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %.7290 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !15
  %i.iq = getelementptr [8 x i8], ptr %.0.i.i258, i64 %.7290 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !15
  store i64 %i.ir, ptr %i.io, align 8, !tbaa !15
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !15
  %i.is = add nuw nsw i64 %.7290, 1               ; 2 uses
  %exitcond308.not = icmp eq i64 %i.is, %spec.select209
  br i1 %exitcond308.not, label %._crit_edge292, label %.lr.ph291, !llvm.loop !218

._crit_edge292:                                   ; preds = %.lr.ph291
  %i.it = load i64, ptr @rb_cArray, align 8, !tbaa !15
  store i64 %i.it, ptr %i.ic, align 8, !tbaa !15
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge301, %._crit_edge292, %._crit_edge289
  %.pre-phi = phi ptr [ %i.ek, %._crit_edge301 ], [ %i.hv, %._crit_edge292 ], [ %i.gb, %._crit_edge289 ] ; 3 uses
  %.3 = phi i64 [ %spec.select209, %._crit_edge301 ], [ %spec.select209, %._crit_edge292 ], [ %.2272320, %._crit_edge289 ] ; 2 uses
  %.0164 = phi i64 [ %i.ej, %._crit_edge301 ], [ %i.hp, %._crit_edge292 ], [ %i.ga, %._crit_edge289 ] ; 2 uses
  %i.iu = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 2 uses
  %i.iv = and i64 %i.iu, 8192
  %.not278 = icmp eq i64 %i.iv, 0
  br i1 %.not278, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iw = and i64 %i.iu, -4161537
  %i.ix = shl i64 %.3, 15
  %i.iy = or i64 %i.iw, %i.ix
  store i64 %i.iy, ptr %.pre-phi, align 8, !tbaa !11
  br label %rb_ary_elt.exit

bb.br:                                            ; preds = %bb.bp
  %i.iz = getelementptr i8, ptr %.pre-phi, i64 16
  store i64 %.3, ptr %i.iz, align 8, !tbaa !14
  br label %rb_ary_elt.exit

rb_ary_elt.exit:                                  ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %RARRAY_AREF.exit.i, %bb.i, %rb_array_len.exit.i, %bb.bq, %bb.br, %RARRAY_AREF.exit237, %RARRAY_AREF.exit228, %RARRAY_AREF.exit
  %.0 = phi i64 [ 4, %bb.i ], [ %.0164, %bb.bq ], [ %i.bk, %bb.w ], [ %i.cg, %RARRAY_AREF.exit ], [ %i.cs, %RARRAY_AREF.exit228 ], [ %i.di, %RARRAY_AREF.exit237 ], [ %.0164, %bb.br ], [ %i.ai, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ], [ %i.bi, %bb.v ], [ %i.bt, %bb.y ], [ %i.bv, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_132(ptr readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %ary_first.exit, label %bb.b

rb_array_len.exit.thread.i:                       ; preds = %bb.a
  %i.g = and i64 %i.b, 4161536
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %ary_first.exit, label %.thread.i

.thread.i:                                        ; preds = %rb_array_len.exit.thread.i
  %i.i = getelementptr i8, ptr %i.a, i64 16
  br label %RARRAY_AREF.exit.i

bb.b:                                             ; preds = %rb_array_len.exit.i
  %i.j = getelementptr i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.b, %.thread.i
end_hunk_1
