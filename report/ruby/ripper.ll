Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@token_info_warn:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !244
  %.sroa.2.8.extract.trunc = trunc i64 %i.t to i32
  %i.w = icmp eq i32 %i.v, %.sroa.2.8.extract.trunc
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %token_info_setup.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !136
  %.not24 = icmp eq i32 %i.y, 0
  %or.cond = select i1 %.not24, i1 %.014.lcssa.i, i1 false
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !303 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %.015.lcssa.i
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not26 = icmp eq i32 %3, 0
  %i.ac = icmp slt i32 %i.aa, %.015.lcssa.i
  %or.cond28 = and i1 %.not26, %i.ac
  br i1 %or.cond28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55
  %i.af = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.ag = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.578, i64 noundef 47) #29
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = tail call i64 @rb_enc_str_new(ptr noundef nonnull %1, i64 noundef %i.ah, ptr noundef %i.aj) #29
  %i.al = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #32
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ao = tail call i64 @rb_enc_str_new(ptr noundef nonnull %i.al, i64 noundef %i.am, ptr noundef %i.an) #29
  %i.ap = load i32, ptr %i.u, align 8, !tbaa !244
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ae, i64 noundef %i.af, i32 noundef 4, i64 noundef %i.ag, i64 noundef %i.ak, i64 noundef %i.ao, i64 noundef %i.as) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %token_info_setup.exit, %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @token_info_pop(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @token_info_warn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137
  store ptr %i.d, ptr %i.a, align 8, !tbaa !134
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @ripper_compile_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_lvar_used(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8, !tbaa !305
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %local_id_ref.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !70
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127
  switch i32 %i.e, label %local_id_ref.exit.thread [
    i32 25, label %bb.c
    i32 26, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !228  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !184  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185  ; 2 uses
  %.not60.i = icmp eq ptr %i.k, null
  br i1 %.not60.i, label %.critedge37.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.063.i = phi ptr [ %.1.i, %bb.f ], [ %i.n, %bb.c ] ; 3 uses
  %.02962.i = phi ptr [ %i.s, %bb.f ], [ %i.l, %bb.c ] ; 2 uses
  %.03061.i = phi ptr [ %i.p, %bb.f ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03061.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143  ; 4 uses
  %i.q = icmp ult ptr %i.p, inttoptr (i64 2 to ptr)
  br i1 %i.q, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02962.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !143  ; 2 uses
  %.not36.i = icmp eq ptr %.063.i, null
  br i1 %.not36.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.p, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.g, label %.critedge37.i

bb.g:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !289
  %i.x = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %i.g, ptr noundef %i.w) #29 ; 0 uses
  br label %local_id_ref.exit.thread

.critedge37.i:                                    ; preds = %bb.f, %.critedge.i, %bb.c
  %.03058.i = phi ptr [ %.03061.i, %.critedge.i ], [ null, %bb.c ], [ null, %bb.f ] ; 3 uses
  %.02956.i = phi ptr [ %.02962.i, %.critedge.i ], [ %i.l, %bb.c ], [ %i.s, %bb.f ] ; 3 uses
  %.054.i = phi ptr [ %.063.i, %.critedge.i ], [ %i.n, %bb.c ], [ %.1.i, %bb.f ] ; 2 uses
  %i.y = icmp ult ptr %.02956.i, inttoptr (i64 2 to ptr)
  br i1 %i.y, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.z = getelementptr inbounds nuw i8, ptr %.02956.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !181 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ac = load ptr, ptr %.02956.i, align 8, !tbaa !183
  %wide.trip.count.i.i = zext nneg i32 %i.aa to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = icmp eq i64 %i.ae, %i.g
  br i1 %i.af, label %local_id_ref.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.h, !llvm.loop !2

vtable_included.exit.thread.i:                    ; preds = %bb.i, %.preheader.i.i, %.critedge37.i
  %i.ag = icmp ult ptr %.03058.i, inttoptr (i64 2 to ptr)
  br i1 %i.ag, label %local_id_ref.exit.thread, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.03058.i, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !181 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i40.i, label %local_id_ref.exit.thread

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.ak = load ptr, ptr %.03058.i, align 8, !tbaa !183
  %wide.trip.count.i41.i = zext nneg i32 %i.ai to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.k ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i42.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = icmp eq i64 %i.am, %i.g
  br i1 %i.an, label %vtable_included.exit45.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i44.i, label %local_id_ref.exit.thread, label %bb.j, !llvm.loop !2

vtable_included.exit45.i:                         ; preds = %bb.j
  %.not13 = icmp eq ptr %.054.i, null
  br i1 %.not13, label %local_id_ref.exit.thread, label %local_id_ref.exit

local_id_ref.exit:                                ; preds = %vtable_included.exit45.i
  %2 = add nuw i64 %indvars.iv.i42.i, 1
  %3 = load ptr, ptr %.054.i, align 8, !tbaa !183
  %4 = and i64 %2, 4294967295
  %5 = getelementptr [8 x i8], ptr %3, i64 %4
  %i.ao = getelementptr i8, ptr %5, i64 -8        ; 3 uses
  %.not42 = icmp eq ptr %i.ao, null
  br i1 %.not42, label %local_id_ref.exit.thread, label %bb.l

bb.l:                                             ; preds = %local_id_ref.exit
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.aq = or i64 %i.ap, -9223372036854775808
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !22
  br label %local_id_ref.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !230
  %i.at = call i32 @rb_parser_dvar_defined_ref(ptr noundef %0, i64 noundef %i.as, ptr noundef nonnull %i.a) #29
  %i.au = icmp ne i32 %i.at, 0
  %i.av = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aw = icmp ne ptr %i.av, null
  %or.cond3 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond3, label %bb.n, label %local_id_ref.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ay = or i64 %i.ax, -9223372036854775808
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !22
  br label %local_id_ref.exit.thread

local_id_ref.exit.thread:                         ; preds = %bb.h, %bb.k, %vtable_included.exit45.i, %bb.g, %.preheader.i38.i, %vtable_included.exit.thread.i, %bb.b, %bb.l, %local_id_ref.exit, %bb.n, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_kw_arg(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 74, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 74) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !300
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !301
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_opt_arg_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 73, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 73) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !509
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !146
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @new_bv(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 171
  %i.c = and i64 %1, 14
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i1 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_id2str(i64 noundef %1) #29
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.706, i64 noundef %i.f) #29
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1)
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @local_var(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8, !tbaa !305
  %i.h = call i32 @rb_parser_dvar_defined_ref(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #29
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !22
  %i.m = or i64 %i.l, -9223372036854775808
  store i64 %i.m, ptr %i.j, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.g, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dyna_push(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.d = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #30 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !182
  %i.g = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.g, ptr %i.d, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.h, align 8, !tbaa !143
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  store ptr %i.d, ptr %i.i, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #30 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 8, ptr %i.n, align 4, !tbaa !182
  %i.o = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.o, ptr %i.l, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.p, align 8, !tbaa !143
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.l, ptr %i.r, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #30 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !181
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 8, ptr %i.w, align 4, !tbaa !182
  %i.x = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.x, ptr %i.u, align 8, !tbaa !183
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.y, align 8, !tbaa !143
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.u, ptr %i.aa, align 8, !tbaa !185
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = phi ptr [ %i.z, %bb.b ], [ %i.q, %bb.a ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184
end_hunk_0
begin_hunk_1_@local_id:bb.a

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02962.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.03061.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03061.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02962.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.c, label %.critedge37.i

bb.c:                                             ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.m = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.l) #29
  br label %local_id_ref.exit

.critedge37.i:                                    ; preds = %bb.b, %.critedge.i, %bb.a
  %.03058.i = phi ptr [ %.03061.i, %.critedge.i ], [ null, %bb.a ], [ null, %bb.b ] ; 3 uses
  %.02956.i = phi ptr [ %.02962.i, %.critedge.i ], [ %i.e, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.n = icmp ult ptr %.02956.i, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.o = getelementptr inbounds nuw i8, ptr %.02956.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !181  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %.02956.i, align 8, !tbaa !183
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = icmp eq i64 %i.t, %1
  br i1 %i.u, label %local_id_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.d, !llvm.loop !2

vtable_included.exit.thread.i:                    ; preds = %bb.e, %.preheader.i.i, %.critedge37.i
  %i.v = icmp ult ptr %.03058.i, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %local_id_ref.exit, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03058.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !181  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i40.i, label %local_id_ref.exit

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.z = load ptr, ptr %.03058.i, align 8, !tbaa !183
  %wide.trip.count.i41.i = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i42.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp eq i64 %i.ab, %1
  br i1 %i.ac, label %local_id_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i44.i, label %local_id_ref.exit, label %bb.f, !llvm.loop !2

local_id_ref.exit:                                ; preds = %bb.d, %bb.f, %bb.g, %bb.c, %vtable_included.exit.thread.i, %.preheader.i38.i
  %.031.i = phi i32 [ %i.m, %bb.c ], [ 0, %vtable_included.exit.thread.i ], [ 0, %.preheader.i38.i ], [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ]
  ret i32 %.031.i
}

declare i32 @rb_parser_dvar_defined_ref(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @local_id_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !185  ; 2 uses
  %.not60 = icmp eq ptr %i.d, null
  br i1 %.not60, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.063 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.02962 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03061 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03061, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02962, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 2 uses
  %.not36 = icmp eq ptr %.063, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph
  %.not66 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not66, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.q = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.p) #29
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03058 = phi ptr [ %.03061, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.02956 = phi ptr [ %.02962, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.054 = phi ptr [ %.063, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.r = icmp ult ptr %.02956, inttoptr (i64 2 to ptr)
  br i1 %i.r, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge37
  %i.s = getelementptr inbounds nuw i8, ptr %.02956, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !181  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = load ptr, ptr %.02956, align 8, !tbaa !183
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.critedge37
  %i.z = icmp ult ptr %.03058, inttoptr (i64 2 to ptr)
  br i1 %i.z, label %vtable_included.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %vtable_included.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.03058, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !181 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i40, label %vtable_included.exit

.lr.ph.i40:                                       ; preds = %.preheader.i38
  %i.ad = load ptr, ptr %.03058, align 8, !tbaa !183
  %wide.trip.count.i41 = zext nneg i32 %i.ab to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i43, %bb.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i42
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %vtable_included.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i41
  br i1 %exitcond.not.i44, label %vtable_included.exit, label %bb.h, !llvm.loop !2

vtable_included.exit45:                           ; preds = %bb.h
  %i.ah = icmp ne ptr %.054, null
  %i.ai = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.ai, %i.ah
  br i1 %or.cond3, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit45
  %3 = add nuw i64 %indvars.iv.i42, 1
  %4 = load ptr, ptr %.054, align 8, !tbaa !183
  %5 = and i64 %3, 4294967295
  %6 = getelementptr [8 x i8], ptr %4, i64 %5
  %i.aj = getelementptr i8, ptr %6, i64 -8
  store ptr %i.aj, ptr %2, align 8, !tbaa !305
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.f, %bb.i, %vtable_included.exit45, %bb.j, %vtable_included.exit.thread, %.preheader.i38, %bb.e
  %.031 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.i ], [ 1, %vtable_included.exit45 ], [ 1, %bb.j ], [ 0, %vtable_included.exit.thread ], [ 0, %.preheader.i38 ], [ 1, %bb.f ]
  ret i32 %.031
}

declare i32 @rb_parser_local_defined(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_ast_resize_latest_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @rb_str_to_parser_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_list_new2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 43) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %4, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %2, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !176
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 57) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %3, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !274
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !275
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !276
  ret ptr %i.b
}

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @reg_named_capture_assign_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !279
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !281
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !282
  %i.l = tail call i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %i.a, ptr noundef %0, i64 noundef %i.f, ptr noundef %i.c, ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef %i.k) #29
  ret i32 %i.l
}

declare i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_nested_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 2 uses
  %i.j = select i1 %i.g, ptr @.str.682, ptr @.str.683
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !344
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !70
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.681, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.g = load i64, ptr %i.d, align 8, !tbaa !70
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.684, ptr noundef %i.f, i32 noundef %i.i) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 6 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.678) #29
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !103
end_hunk_1
