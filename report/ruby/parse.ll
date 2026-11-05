Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@mark_lvar_used:bb.a
  %.063.i = phi ptr [ %.1.i, %bb.f ], [ %i.m, %bb.c ] ; 3 uses
  %.02962.i = phi ptr [ %i.r, %bb.f ], [ %i.k, %bb.c ] ; 2 uses
  %.03061.i = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = getelementptr i8, ptr %.03061.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1125 ; 4 uses
  %i.p = icmp ult ptr %i.o, inttoptr (i64 2 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.02962.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1125 ; 2 uses
  %.not36.i = icmp eq ptr %.063.i, null
  br i1 %.not36.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.063.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1125
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.g, label %.critedge37.i

bb.g:                                             ; preds = %.critedge.i
  %i.u = getelementptr i8, ptr %0, i64 352
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1050
  %i.w = tail call i32 @rb_local_defined(i64 noundef %i.f, ptr noundef %i.v) #31 ; 0 uses
  br label %local_id_ref.exit.thread

.critedge37.i:                                    ; preds = %bb.f, %.critedge.i, %bb.c
  %.03058.i = phi ptr [ %.03061.i, %.critedge.i ], [ null, %bb.c ], [ null, %bb.f ] ; 3 uses
  %.02956.i = phi ptr [ %.02962.i, %.critedge.i ], [ %i.k, %bb.c ], [ %i.r, %bb.f ] ; 3 uses
  %.054.i = phi ptr [ %.063.i, %.critedge.i ], [ %i.m, %bb.c ], [ %.1.i, %bb.f ] ; 2 uses
  %i.x = icmp ult ptr %.02956.i, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.y = getelementptr i8, ptr %.02956.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1167 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ab = load ptr, ptr %.02956.i, align 8, !tbaa !1169
  %wide.trip.count.i.i = zext nneg i32 %i.z to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !997
  %i.ae = icmp eq i64 %i.ad, %i.f
  br i1 %i.ae, label %local_id_ref.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.h, !llvm.loop !2

vtable_included.exit.thread.i:                    ; preds = %bb.i, %.preheader.i.i, %.critedge37.i
  %i.af = icmp ult ptr %.03058.i, inttoptr (i64 2 to ptr)
  br i1 %i.af, label %local_id_ref.exit.thread, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.ag = getelementptr i8, ptr %.03058.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1167 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i40.i, label %local_id_ref.exit.thread

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.aj = load ptr, ptr %.03058.i, align 8, !tbaa !1169
  %wide.trip.count.i41.i = zext nneg i32 %i.ah to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.k ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i42.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !997
  %i.am = icmp eq i64 %i.al, %i.f
  br i1 %i.am, label %vtable_included.exit45.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i44.i, label %local_id_ref.exit.thread, label %bb.j, !llvm.loop !2

vtable_included.exit45.i:                         ; preds = %bb.j
  %.not28 = icmp eq ptr %.054.i, null
  br i1 %.not28, label %local_id_ref.exit.thread, label %local_id_ref.exit

local_id_ref.exit:                                ; preds = %vtable_included.exit45.i
  %i.an = load ptr, ptr %.054.i, align 8, !tbaa !1169
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv.i42.i ; 3 uses
  %.not29 = icmp eq ptr %i.ao, null
  br i1 %.not29, label %local_id_ref.exit.thread, label %bb.l

bb.l:                                             ; preds = %local_id_ref.exit
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !997
  %i.aq = or i64 %i.ap, -9223372036854775808
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !997
  br label %local_id_ref.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %1, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1216 ; 6 uses
  %i.at = getelementptr i8, ptr %0, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1079 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1123 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, inttoptr (i64 2 to ptr)
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1171
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !1170
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i11, %bb.s
  %.061.i = phi ptr [ %.2.i, %bb.s ], [ %i.az, %.lr.ph.i11 ] ; 4 uses
  %.02560.i = phi ptr [ %i.br, %bb.s ], [ %i.ba, %.lr.ph.i11 ] ; 4 uses
  %.02659.i = phi ptr [ %i.bt, %bb.s ], [ %i.aw, %.lr.ph.i11 ] ; 3 uses
  %i.bb = icmp ult ptr %.02560.i, inttoptr (i64 2 to ptr)
  br i1 %i.bb, label %vtable_included.exit.thread.i13, label %.preheader.i.i12

.preheader.i.i12:                                 ; preds = %.lr.ph.split.i
  %i.bc = getelementptr i8, ptr %.02560.i, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1167 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i14, label %vtable_included.exit.thread.i13

.lr.ph.i.i14:                                     ; preds = %.preheader.i.i12
  %i.bf = load ptr, ptr %.02560.i, align 8, !tbaa !1169
  %wide.trip.count.i.i15 = zext nneg i32 %i.bd to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i14
  %indvars.iv.i.i16 = phi i64 [ 0, %.lr.ph.i.i14 ], [ %indvars.iv.next.i.i17, %bb.o ] ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !997
  %i.bi = icmp eq i64 %i.bh, %i.as
  br i1 %i.bi, label %local_id_ref.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i16, 1 ; 2 uses
  %exitcond.not.i.i18 = icmp eq i64 %indvars.iv.next.i.i17, %wide.trip.count.i.i15
  br i1 %exitcond.not.i.i18, label %vtable_included.exit.thread.i13, label %bb.n, !llvm.loop !2

vtable_included.exit.thread.i13:                  ; preds = %bb.o, %.preheader.i.i12, %.lr.ph.split.i
  %i.bj = getelementptr i8, ptr %.02659.i, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1167 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i38.i, label %vtable_included.exit43.thread.i

.lr.ph.i38.i:                                     ; preds = %vtable_included.exit.thread.i13
  %i.bm = load ptr, ptr %.02659.i, align 8, !tbaa !1169
  %wide.trip.count.i39.i = zext nneg i32 %i.bk to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i38.i
  %indvars.iv.i40.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %indvars.iv.next.i41.i, %bb.q ] ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv.i40.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !997
  %i.bp = icmp eq i64 %i.bo, %i.as
  br i1 %i.bp, label %vtable_included.exit43.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next.i41.i, %wide.trip.count.i39.i
  br i1 %exitcond.not.i42.i, label %vtable_included.exit43.thread.i, label %bb.p, !llvm.loop !2

vtable_included.exit43.i:                         ; preds = %bb.p
  %.not26 = icmp eq ptr %.061.i, null
  br i1 %.not26, label %local_id_ref.exit.thread, label %rb_parser_dvar_defined_ref.exit

vtable_included.exit43.thread.i:                  ; preds = %bb.q, %vtable_included.exit.thread.i13
  %i.bq = getelementptr i8, ptr %.02560.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1125
  %i.bs = getelementptr i8, ptr %.02659.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1125 ; 3 uses
  %.not3549.i = icmp eq ptr %.061.i, null
  br i1 %.not3549.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vtable_included.exit43.thread.i
  %i.bu = getelementptr i8, ptr %.061.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1125
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %vtable_included.exit43.thread.i
  %.2.i = phi ptr [ %i.bv, %bb.r ], [ null, %vtable_included.exit43.thread.i ]
  %i.bw = icmp ult ptr %i.bt, inttoptr (i64 2 to ptr)
  br i1 %i.bw, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.s, %bb.m
  %.026.lcssa.i = phi ptr [ %i.aw, %bb.m ], [ %i.bt, %bb.s ]
  %.not48.i = icmp eq ptr %.026.lcssa.i, null
  br i1 %.not48.i, label %local_id_ref.exit.thread, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.bx = and i64 %i.as, 14
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = icmp ult i64 %i.as, 3776
  %i.ca = lshr i64 %i.as, 4
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %i.cb, -245
  %i.cd = icmp ult i32 %i.cc, -9
  %.not53.i = or i1 %i.by, %i.cd
  %narrow.i.not.i = or i1 %i.bz, %.not53.i
  br i1 %narrow.i.not.i, label %bb.u, label %local_id_ref.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr i8, ptr %0, i64 352
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1050
  %i.cg = tail call i32 @rb_dvar_defined(i64 noundef %i.as, ptr noundef %i.cf) #31 ; 0 uses
  br label %local_id_ref.exit.thread

rb_parser_dvar_defined_ref.exit:                  ; preds = %vtable_included.exit43.i
  %i.ch = load ptr, ptr %.061.i, align 8, !tbaa !1169
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %indvars.iv.i40.i ; 3 uses
  %.not27 = icmp eq ptr %i.ci, null
  br i1 %.not27, label %local_id_ref.exit.thread, label %bb.v

bb.v:                                             ; preds = %rb_parser_dvar_defined_ref.exit
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !997
  %i.ck = or i64 %i.cj, -9223372036854775808
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !997
  br label %local_id_ref.exit.thread

local_id_ref.exit.thread:                         ; preds = %bb.n, %bb.h, %bb.k, %vtable_included.exit43.i, %bb.u, %bb.t, %._crit_edge.i, %bb.g, %vtable_included.exit45.i, %.preheader.i38.i, %vtable_included.exit.thread.i, %bb.b, %bb.l, %local_id_ref.exit, %bb.v, %rb_parser_dvar_defined_ref.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_kw_arg(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 !guid !1608 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !1107
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 74, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 74) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1041
  %i.d = load i32, ptr %2, align 4, !tbaa !1037
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !1052
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !1052
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1180 ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !1180
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !1181
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !1284
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !1285
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_opt_arg_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 !guid !1609 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !1107
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 73, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 73) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1041
  %i.d = load i32, ptr %2, align 4, !tbaa !1037
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !1052
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !1052
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1180 ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !1180
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !1181
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !1610
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !1128
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @new_bv(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !1611 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %rb_parser_dvar_defined_ref.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 171
  %i.b = and i64 %1, 14
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i1 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @rb_id2str(i64 noundef %1) #31
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.901, i64 noundef %i.e)
  br label %rb_parser_dvar_defined_ref.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1)
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %rb_parser_dvar_defined_ref.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @local_var(ptr noundef %0, i64 noundef %1)
  %i.g = getelementptr i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1079 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1123 ; 3 uses
  %i.k = icmp ult ptr %i.j, inttoptr (i64 2 to ptr)
  br i1 %i.k, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1171
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !1170
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %.061.i = phi ptr [ %.2.i, %bb.k ], [ %i.m, %.lr.ph.i ] ; 4 uses
  %.02560.i = phi ptr [ %i.ae, %bb.k ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.02659.i = phi ptr [ %i.ag, %bb.k ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %i.o = icmp ult ptr %.02560.i, inttoptr (i64 2 to ptr)
  br i1 %i.o, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %i.p = getelementptr i8, ptr %.02560.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1167 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.s = load ptr, ptr %.02560.i, align 8, !tbaa !1169
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !997
  %i.v = icmp eq i64 %i.u, %1
  br i1 %i.v, label %rb_parser_dvar_defined_ref.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.f, !llvm.loop !2

vtable_included.exit.thread.i:                    ; preds = %bb.g, %.preheader.i.i, %.lr.ph.split.i
  %i.w = getelementptr i8, ptr %.02659.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1167 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i38.i, label %vtable_included.exit43.thread.i

.lr.ph.i38.i:                                     ; preds = %vtable_included.exit.thread.i
  %i.z = load ptr, ptr %.02659.i, align 8, !tbaa !1169
  %wide.trip.count.i39.i = zext nneg i32 %i.x to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i38.i
  %indvars.iv.i40.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %indvars.iv.next.i41.i, %bb.i ] ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i40.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !997
  %i.ac = icmp eq i64 %i.ab, %1
  br i1 %i.ac, label %vtable_included.exit43.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next.i41.i, %wide.trip.count.i39.i
  br i1 %exitcond.not.i42.i, label %vtable_included.exit43.thread.i, label %bb.h, !llvm.loop !2

vtable_included.exit43.i:                         ; preds = %bb.h
  %.not15 = icmp eq ptr %.061.i, null
  br i1 %.not15, label %rb_parser_dvar_defined_ref.exit.thread, label %rb_parser_dvar_defined_ref.exit

vtable_included.exit43.thread.i:                  ; preds = %bb.i, %vtable_included.exit.thread.i
  %i.ad = getelementptr i8, ptr %.02560.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1125
  %i.af = getelementptr i8, ptr %.02659.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1125 ; 3 uses
  %.not3549.i = icmp eq ptr %.061.i, null
  br i1 %.not3549.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vtable_included.exit43.thread.i
  %i.ah = getelementptr i8, ptr %.061.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1125
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vtable_included.exit43.thread.i
  %.2.i = phi ptr [ %i.ai, %bb.j ], [ null, %vtable_included.exit43.thread.i ]
  %i.aj = icmp ult ptr %i.ag, inttoptr (i64 2 to ptr)
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.k, %bb.e
  %.026.lcssa.i = phi ptr [ %i.j, %bb.e ], [ %i.ag, %bb.k ]
  %.not48.i = icmp eq ptr %.026.lcssa.i, null
  br i1 %.not48.i, label %rb_parser_dvar_defined_ref.exit.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i64 %1, 3776
  %i.al = lshr i64 %1, 4
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.am, -245
  %i.ao = icmp ult i32 %i.an, -9
  %narrow.i.not.i = or i1 %i.ak, %i.ao
  br i1 %narrow.i.not.i, label %bb.m, label %rb_parser_dvar_defined_ref.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %0, i64 352
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1050
  %i.ar = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.aq) #31 ; 0 uses
  br label %rb_parser_dvar_defined_ref.exit.thread

rb_parser_dvar_defined_ref.exit:                  ; preds = %vtable_included.exit43.i
  %i.as = load ptr, ptr %.061.i, align 8, !tbaa !1169
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv.i40.i ; 3 uses
  %.not16 = icmp eq ptr %i.at, null
  br i1 %.not16, label %rb_parser_dvar_defined_ref.exit.thread, label %bb.n

bb.n:                                             ; preds = %rb_parser_dvar_defined_ref.exit
  %i.au = load i64, ptr %i.at, align 8, !tbaa !997
  %i.av = or i64 %i.au, -9223372036854775808
  store i64 %i.av, ptr %i.at, align 8, !tbaa !997
  br label %rb_parser_dvar_defined_ref.exit.thread

rb_parser_dvar_defined_ref.exit.thread:           ; preds = %bb.f, %vtable_included.exit43.i, %bb.m, %bb.l, %._crit_edge.i, %rb_parser_dvar_defined_ref.exit, %bb.n, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @dyna_push(ptr nofree noundef captures(none) %0) unnamed_addr #0 !guid !1612 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1079
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1170
  %i.d = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #34 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !1167
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !1168
  %i.g = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.g, ptr %i.d, align 8, !tbaa !1169
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.h, align 8, !tbaa !1125
  %i.i = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %vtable_alloc_gen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.939, i32 noundef 15144, ptr noundef nonnull %i.d)
  br label %vtable_alloc_gen.exit

vtable_alloc_gen.exit:                            ; preds = %bb.a, %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 2 uses
  store ptr %i.d, ptr %i.l, align 8, !tbaa !1170
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1123
  %i.o = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #34 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !1167
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 8, ptr %i.q, align 4, !tbaa !1168
  %i.r = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.r, ptr %i.o, align 8, !tbaa !1169
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.s, align 8, !tbaa !1125
  %i.t = load i32, ptr %i.i, align 8
  %i.u = and i32 %i.t, 32
  %.not.i11 = icmp eq i32 %i.u, 0
  br i1 %.not.i11, label %vtable_alloc_gen.exit12, label %bb.c

bb.c:                                             ; preds = %vtable_alloc_gen.exit
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.939, i32 noundef 15145, ptr noundef nonnull %i.o)
  br label %vtable_alloc_gen.exit12

vtable_alloc_gen.exit12:                          ; preds = %vtable_alloc_gen.exit, %bb.c
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.o, ptr %i.w, align 8, !tbaa !1123
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1171 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %vtable_alloc_gen.exit12
  %i.z = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #34 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !1167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 8, ptr %i.ab, align 4, !tbaa !1168
  %i.ac = tail call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef 8) #33
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !1169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !1125
  %i.ae = load i32, ptr %i.i, align 8
  %i.af = and i32 %i.ae, 32
  %.not.i13 = icmp eq i32 %i.af, 0
  br i1 %.not.i13, label %vtable_alloc_gen.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.939, i32 noundef 15147, ptr noundef nonnull %i.z)
  br label %vtable_alloc_gen.exit14

vtable_alloc_gen.exit14:                          ; preds = %bb.d, %bb.e
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.z, ptr %i.ah, align 8, !tbaa !1171
  br label %bb.f

bb.f:                                             ; preds = %vtable_alloc_gen.exit14, %vtable_alloc_gen.exit12
  %i.ai = phi ptr [ %i.ag, %vtable_alloc_gen.exit14 ], [ %i.v, %vtable_alloc_gen.exit12 ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1170
  ret ptr %i.aj
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @args_with_numbered(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 !guid !1613 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp ne i64 %3, 0                        ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1032 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1033
  %i.g = getelementptr i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1034
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1161
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !1107
  %i.s = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i, i32 noundef range(i32 0, 115) 71, i64 noundef range(i64 32, 129) 112, i64 noundef 8) #31 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.s, i32 noundef range(i32 0, 115) 71) #31
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull readonly align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !1041
  %i.u = load i64, ptr %i.s, align 8, !tbaa !1052
  %i.v = and i64 %i.u, 32767                      ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !1052
  %i.w = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1180 ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !1180
  %i.z = getelementptr i8, ptr %i.s, i64 24
  store i32 %i.x, ptr %i.z, align 8, !tbaa !1181
  %i.aa = getelementptr i8, ptr %i.s, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 noundef 0, i64 noundef 80, i1 noundef false) #31
  %i.ab = getelementptr i8, ptr %0, i64 360
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 512
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.d, label %new_args_tail.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.s, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %new_args_tail.exit

new_args_tail.exit:                               ; preds = %bb.c, %bb.d
  store i32 %i.d, ptr %i.t, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.s, i64 12
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.s, i64 16
  store i32 %i.d, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.s, i64 20
  store i32 %i.q, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !26
  %i.af = sext i32 %i.d to i64
  %i.ag = shl nsw i64 %i.af, 15
  %i.ah = or disjoint i64 %i.v, %i.ag
  store i64 %i.ah, ptr %i.s, align 8, !tbaa !1052
  br label %bb.e

bb.e:                                             ; preds = %new_args_tail.exit, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.s, %new_args_tail.exit ] ; 2 uses
  %i.ai = select i1 %i.b, i32 1, i32 %2
  %i.aj = getelementptr i8, ptr %.0, i64 48
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !1615
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi ptr [ %.0, %bb.e ], [ %1, %bb.a ]
  ret ptr %.1
end_hunk_0
begin_hunk_1_@rb_parser_set_location
define dso_local noundef ptr @rb_parser_set_location(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 16)) %1) local_unnamed_addr #3 !guid !1692 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1032 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1033
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1034
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1161
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !1037
  %i.p = getelementptr i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !1038
  %i.q = getelementptr i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.q, align 4, !tbaa !1039
  %i.r = getelementptr i8, ptr %1, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !1040
  ret ptr %1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_parser_local_defined(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !1693 {
bb.a:
  %i.a = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %2) #31
  ret i32 %i.a
}

declare i32 @rb_local_defined(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_parser_dvar_defined_ref(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 !guid !1694 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1123 ; 4 uses
  %i.e = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1171 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !1170 ; 2 uses
  %.not34 = icmp ne ptr %2, null                  ; 2 uses
  br i1 %.not34, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %vtable_included.exit43.thread.us
  %.061.us = phi ptr [ null, %vtable_included.exit43.thread.us ], [ %i.g, %.lr.ph ]
  %.02560.us = phi ptr [ %i.y, %vtable_included.exit43.thread.us ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02659.us = phi ptr [ %i.aa, %vtable_included.exit43.thread.us ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.i = icmp ult ptr %.02560.us, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %vtable_included.exit.thread.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.lr.ph.split.us
  %i.j = getelementptr i8, ptr %.02560.us, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1167 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.us, label %vtable_included.exit.thread.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us
  %i.m = load ptr, ptr %.02560.us, align 8, !tbaa !1169
  %wide.trip.count.i.us = zext nneg i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !997
  %i.p = icmp eq i64 %i.o, %1
  br i1 %i.p, label %vtable_included.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %vtable_included.exit.thread.us, label %bb.b, !llvm.loop !2

vtable_included.exit.thread.us:                   ; preds = %bb.c, %.preheader.i.us, %.lr.ph.split.us
  %i.q = getelementptr i8, ptr %.02659.us, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1167 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i38.us, label %vtable_included.exit43.thread.us

.lr.ph.i38.us:                                    ; preds = %vtable_included.exit.thread.us
  %i.t = load ptr, ptr %.02659.us, align 8, !tbaa !1169
  %wide.trip.count.i39.us = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us
  %indvars.iv.i40.us = phi i64 [ 0, %.lr.ph.i38.us ], [ %indvars.iv.next.i41.us, %bb.e ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i40.us
  %i.v = load i64, ptr %i.u, align 8, !tbaa !997
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %vtable_included.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us = add nuw nsw i64 %indvars.iv.i40.us, 1 ; 2 uses
  %exitcond.not.i42.us = icmp eq i64 %indvars.iv.next.i41.us, %wide.trip.count.i39.us
  br i1 %exitcond.not.i42.us, label %vtable_included.exit43.thread.us, label %bb.d, !llvm.loop !2

vtable_included.exit43.thread.us:                 ; preds = %bb.e, %vtable_included.exit.thread.us
  %i.x = getelementptr i8, ptr %.02560.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1125
  %i.z = getelementptr i8, ptr %.02659.us, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1125 ; 3 uses
  %i.ab = icmp ult ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.061 = phi ptr [ %.2, %bb.l ], [ %i.g, %.lr.ph ] ; 3 uses
  %.02560 = phi ptr [ %i.av, %bb.l ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02659 = phi ptr [ %i.ax, %bb.l ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.ac = icmp ult ptr %.02560, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split
  %i.ad = getelementptr i8, ptr %.02560, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1167 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ag = load ptr, ptr %.02560, align 8, !tbaa !1169
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !997
  %i.aj = icmp eq i64 %i.ai, %1
  br i1 %i.aj, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.lr.ph.split
  %i.ak = getelementptr i8, ptr %.02659, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1167 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i38, label %vtable_included.exit43.thread

.lr.ph.i38:                                       ; preds = %vtable_included.exit.thread
  %i.an = load ptr, ptr %.02659, align 8, !tbaa !1169
  %wide.trip.count.i39 = zext nneg i32 %i.al to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i38
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.i38 ], [ %indvars.iv.next.i41, %bb.i ] ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv.i40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !997
  %i.aq = icmp eq i64 %i.ap, %1
  br i1 %i.aq, label %vtable_included.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i39
  br i1 %exitcond.not.i42, label %vtable_included.exit43.thread, label %bb.h, !llvm.loop !2

vtable_included.exit43:                           ; preds = %bb.d, %bb.h
  %.us-phi = phi ptr [ %.061, %bb.h ], [ %.061.us, %bb.d ] ; 2 uses
  %.us-phi62 = phi i64 [ %indvars.iv.i40, %bb.h ], [ %indvars.iv.i40.us, %bb.d ]
  %i.ar = icmp ne ptr %.us-phi, null
  %or.cond = and i1 %.not34, %i.ar
  br i1 %or.cond, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit43
  %i.as = load ptr, ptr %.us-phi, align 8, !tbaa !1169
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.us-phi62
  store ptr %i.at, ptr %2, align 8, !tbaa !1012
  br label %vtable_included.exit

vtable_included.exit43.thread:                    ; preds = %bb.i, %vtable_included.exit.thread
  %i.au = getelementptr i8, ptr %.02560, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1125
  %i.aw = getelementptr i8, ptr %.02659, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1125 ; 3 uses
  %.not3549 = icmp eq ptr %.061, null
  br i1 %.not3549, label %bb.l, label %bb.k

bb.k:                                             ; preds = %vtable_included.exit43.thread
  %i.ay = getelementptr i8, ptr %.061, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %vtable_included.exit43.thread
  %.2 = phi ptr [ %i.az, %bb.k ], [ null, %vtable_included.exit43.thread ]
  %i.ba = icmp ult ptr %i.ax, inttoptr (i64 2 to ptr)
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.split, !llvm.loop !7

._crit_edge:                                      ; preds = %vtable_included.exit43.thread.us, %bb.l, %bb.a
  %.026.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ax, %bb.l ], [ %i.aa, %vtable_included.exit43.thread.us ]
  %.not48 = icmp eq ptr %.026.lcssa, null
  br i1 %.not48, label %vtable_included.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bb = and i64 %1, 14
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = icmp ult i64 %1, 3776
  %i.be = lshr i64 %1, 4
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.bf, -245
  %i.bh = icmp ult i32 %i.bg, -9
  %.not53 = or i1 %i.bc, %i.bh
  %narrow.i.not = or i1 %i.bd, %.not53
  br i1 %narrow.i.not, label %bb.n, label %vtable_included.exit

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %0, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1050
  %i.bk = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.bj) #31
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.b, %bb.f, %._crit_edge, %bb.m, %vtable_included.exit43, %bb.j, %bb.n
  %.027 = phi i32 [ %i.bk, %bb.n ], [ 0, %._crit_edge ], [ 1, %vtable_included.exit43 ], [ 1, %bb.j ], [ 0, %bb.m ], [ 1, %bb.f ], [ 1, %bb.b ]
  ret i32 %.027
}

declare i32 @rb_dvar_defined(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 256) i32 @rb_reg_fragment_setenc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !1695 {
bb.a:
  %i.a = lshr i32 %2, 8                           ; 2 uses
  %i.b = and i32 %i.a, 255
  %trunc = trunc i32 %i.a to i8
  switch i8 %trunc, label %kcode_to_enc.exit [
    i8 0, label %bb.i
    i8 110, label %bb.b
    i8 101, label %bb.c
    i8 115, label %bb.e
    i8 117, label %char_to_option_kcode.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  br label %kcode_to_enc.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_enc_find_index(ptr noundef nonnull @.str.948) #31 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %find_enc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.948) #32
  unreachable

find_enc.exit.i:                                  ; preds = %bb.c
  %i.f = tail call ptr @rb_enc_from_index(i32 noundef %i.d) #31
  br label %kcode_to_enc.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_enc_find_index(ptr noundef nonnull @.str.949) #31 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %find_enc.exit3.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.949) #32
  unreachable

find_enc.exit3.i:                                 ; preds = %bb.e
  %i.i = tail call ptr @rb_enc_from_index(i32 noundef %i.g) #31
  br label %kcode_to_enc.exit

char_to_option_kcode.exit:                        ; preds = %bb.a
  %i.j = tail call nonnull ptr @rb_utf8_encoding() #31
  br label %kcode_to_enc.exit

kcode_to_enc.exit:                                ; preds = %bb.a, %bb.b, %find_enc.exit.i, %find_enc.exit3.i, %char_to_option_kcode.exit
  %.0.i28 = phi ptr [ %i.j, %char_to_option_kcode.exit ], [ %i.c, %bb.b ], [ %i.f, %find_enc.exit.i ], [ %i.i, %find_enc.exit3.i ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !1010
  %.not26 = icmp eq ptr %.0.i28, %.val
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %kcode_to_enc.exit
  %i.l = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %1)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %rb_parser_enc_associate.exit

bb.h:                                             ; preds = %kcode_to_enc.exit, %bb.g
  store ptr %.0.i28, ptr %i.k, align 8, !tbaa !1010
  br label %rb_parser_enc_associate.exit

bb.i:                                             ; preds = %bb.a
  %i.n = and i32 %2, 32
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !1010
  %i.p = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  %i.q = icmp eq ptr %.val27, %i.p
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %1)
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %rb_parser_enc_associate.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = tail call nonnull ptr @rb_ascii8bit_encoding() #31 ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !1010
  %i.u = icmp eq ptr %.val.i, %i.t
  br i1 %i.u, label %rb_parser_enc_associate.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9.i = load i32, ptr %1, align 8, !tbaa !1009
  %i.v = icmp eq i32 %.val9.i, 1
  br i1 %i.v, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %1, align 8, !tbaa !1009
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.t, ptr %i.o, align 8, !tbaa !1010
  br label %rb_parser_enc_associate.exit

bb.p:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1149
  %i.y = tail call nonnull ptr @rb_usascii_encoding() #31
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.q, label %rb_parser_enc_associate.exit

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call nonnull ptr @rb_ascii8bit_encoding() #31 ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val.i29 = load ptr, ptr %i.ab, align 8, !tbaa !1010
  %i.ac = icmp eq ptr %.val.i29, %i.aa
  br i1 %i.ac, label %rb_parser_enc_associate.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val9.i30 = load i32, ptr %1, align 8, !tbaa !1009
  %i.ad = icmp eq i32 %.val9.i30, 1
  br i1 %i.ad, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %1, align 8, !tbaa !1009
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1010
  br label %rb_parser_enc_associate.exit

rb_parser_enc_associate.exit:                     ; preds = %bb.t, %bb.q, %bb.o, %bb.l, %bb.h, %bb.g, %bb.k, %bb.p
  %.023 = phi i32 [ 0, %bb.p ], [ 110, %bb.k ], [ %i.b, %bb.g ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.023
}

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @rb_parser_assignable(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 !guid !1696 {
bb.a:
  %i.a = tail call ptr @assignable(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 !guid !1697 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @rb_enc_symname_type(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 1) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_intern3(ptr noundef %1, i64 noundef %2, ptr noundef %3) #31 ; 3 uses
  %i.d = icmp slt i64 %2, 12
  br i1 %i.d, label %bb.d, label %reserved_word.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = shl i64 %2, 32
  %i.f = ashr exact i64 %i.e, 32                  ; 3 uses
  %i.g = add nsw i64 %i.f, -2
  %or.cond.i = icmp ult i64 %i.g, 11
  br i1 %or.cond.i, label %bb.e, label %reserved_word.exit.thread

bb.e:                                             ; preds = %bb.d
  %switch.i.i = icmp samesign ult i64 %i.f, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = trunc i64 %2 to i32
  %i.i = getelementptr i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1000
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr @hash.asso_values, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1000
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, %i.h
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.o, %bb.f ], [ 2, %bb.e ]
  %i.p = load i8, ptr %1, align 1, !tbaa !1000    ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @hash.asso_values, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !1000
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %.0.i.i, %i.t
  %i.v = getelementptr i8, ptr %1, i64 %i.f
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1000
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr i8, ptr @hash.asso_values, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1000
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.u, %i.ab             ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 51
  br i1 %i.ad, label %bb.g, label %reserved_word.exit.thread

bb.g:                                             ; preds = %hash.exit.i
  %i.ae = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.af = shl nuw nsw i64 1, %i.ae
  %i.ag = and i64 %i.af, 1407374883553024
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %reserved_word.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.ae
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !1327
  %i.aj = sext i16 %i.ai to i64
  %i.ak = getelementptr i8, ptr @stringpool_contents, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !1000
  %i.am = icmp eq i8 %i.p, %i.al
  br i1 %i.am, label %bb.i, label %reserved_word.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %1, i64 1
  %i.ao = getelementptr i8, ptr %i.ak, i64 1
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %i.ao) #35
  %.not24.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not24.i.not, label %bb.j, label %reserved_word.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call fastcc i32 @lvar_defined(ptr noundef %0, i64 noundef %i.c)
  %.not44 = icmp eq i32 %i.aq, 0
  br i1 %.not44, label %bb.m, label %reserved_word.exit.thread

reserved_word.exit.thread:                        ; preds = %hash.exit.i, %bb.g, %bb.h, %bb.i, %bb.d, %bb.j, %bb.c
  %i.ar = tail call ptr %6(ptr noundef %0, i64 noundef %i.c, ptr noundef null, ptr noundef %5) #31 ; 2 uses
  %i.as = tail call i64 @rb_id2str(i64 noundef %i.c) #31
  %i.at = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !1107
  %i.au = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.au, i32 noundef range(i32 0, 115) 101) #31
  %i.av = getelementptr i8, ptr %i.au, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1041
  %i.aw = load i32, ptr %5, align 4, !tbaa !1037
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !1052
  %i.az = and i64 %i.ay, 32767
  %i.ba = shl nsw i64 %i.ax, 15
  %i.bb = or disjoint i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.au, align 8, !tbaa !1052
  %i.bc = getelementptr i8, ptr %0, i64 296       ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1180 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !1180
  %i.bf = getelementptr i8, ptr %i.au, i64 24
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !1181
  %i.bg = tail call ptr @rb_str_to_parser_string(ptr poison, i64 noundef %i.as)
  %i.bh = getelementptr i8, ptr %i.au, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !1248
  %i.bi = tail call fastcc ptr @node_assign(ptr noundef %0, ptr noundef %i.ar, ptr noundef nonnull %i.au, ptr noundef nonnull %5) ; 0 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !1204  ; 2 uses
  %.not45 = icmp eq ptr %i.bj, null
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %reserved_word.exit.thread
  %.val.i.i46 = load ptr, ptr %i.at, align 8, !tbaa !1107
  %i.bk = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i46, i32 noundef range(i32 0, 115) 108, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #31 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.bk, i32 noundef range(i32 0, 115) 108) #31
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1041
  %i.bm = load i32, ptr %5, align 4, !tbaa !1037
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !1052
  %i.bp = and i64 %i.bo, 32767
  %i.bq = shl nsw i64 %i.bn, 15
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bk, align 8, !tbaa !1052
  %i.bs = load i32, ptr %i.bc, align 8, !tbaa !1180 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bc, align 8, !tbaa !1180
  %i.bu = getelementptr i8, ptr %i.bk, i64 24
  store i32 %i.bs, ptr %i.bu, align 8, !tbaa !1181
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %reserved_word.exit.thread
  %.041 = phi ptr [ %i.bj, %reserved_word.exit.thread ], [ %i.bk, %bb.k ]
  %i.bv = tail call fastcc ptr @block_append(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %i.ar)
  store ptr %i.bv, ptr %4, align 8, !tbaa !1204
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.b, %bb.a, %bb.l
  ret i32 0
}

declare i32 @rb_enc_symname_type(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_intern3(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @lvar_defined(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !1698 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 6 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1123 ; 7 uses
  %switch.i = icmp ult ptr %.val.val, inttoptr (i64 2 to ptr)
  br i1 %switch.i, label %dyna_in_block.exit.thread, label %dyna_in_block.exit

dyna_in_block.exit:                               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1125
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %dyna_in_block.exit.thread.thread, label %.lr.ph.split.us.i.i

dyna_in_block.exit.thread.thread:                 ; preds = %dyna_in_block.exit
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1170
  br label %.lr.ph.i.i.preheader

.lr.ph.split.us.i.i:                              ; preds = %dyna_in_block.exit, %vtable_included.exit43.thread.us.i.i
  %.02560.us.i.in.i = phi ptr [ %i.u, %vtable_included.exit43.thread.us.i.i ], [ %.val, %dyna_in_block.exit ]
  %.02659.us.i.i = phi ptr [ %i.w, %vtable_included.exit43.thread.us.i.i ], [ %.val.val, %dyna_in_block.exit ] ; 3 uses
  %.02560.us.i.i = load ptr, ptr %.02560.us.i.in.i, align 8, !tbaa !1277 ; 4 uses
  %i.f = icmp ult ptr %.02560.us.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %vtable_included.exit.thread.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.lr.ph.split.us.i.i
  %i.g = getelementptr i8, ptr %.02560.us.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1167 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.us.i.i, label %vtable_included.exit.thread.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.preheader.i.us.i.i
  %i.j = load ptr, ptr %.02560.us.i.i, align 8, !tbaa !1169
  %wide.trip.count.i.us.i.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i.us.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !997
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %dvar_defined.exit.thread9, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %vtable_included.exit.thread.us.i.i, label %bb.b, !llvm.loop !2

vtable_included.exit.thread.us.i.i:               ; preds = %bb.c, %.preheader.i.us.i.i, %.lr.ph.split.us.i.i
  %i.n = getelementptr i8, ptr %.02659.us.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1167 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i38.us.i.i, label %vtable_included.exit43.thread.us.i.i

.lr.ph.i38.us.i.i:                                ; preds = %vtable_included.exit.thread.us.i.i
  %i.q = load ptr, ptr %.02659.us.i.i, align 8, !tbaa !1169
  %wide.trip.count.i39.us.i.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us.i.i
  %indvars.iv.i40.us.i.i = phi i64 [ 0, %.lr.ph.i38.us.i.i ], [ %indvars.iv.next.i41.us.i.i, %bb.e ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i40.us.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !997
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %dvar_defined.exit.thread9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us.i.i = add nuw nsw i64 %indvars.iv.i40.us.i.i, 1 ; 2 uses
  %exitcond.not.i42.us.i.i = icmp eq i64 %indvars.iv.next.i41.us.i.i, %wide.trip.count.i39.us.i.i
  br i1 %exitcond.not.i42.us.i.i, label %vtable_included.exit43.thread.us.i.i, label %bb.d, !llvm.loop !2

vtable_included.exit43.thread.us.i.i:             ; preds = %bb.e, %vtable_included.exit.thread.us.i.i
  %i.u = getelementptr i8, ptr %.02560.us.i.i, i64 16
  %i.v = getelementptr i8, ptr %.02659.us.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1125 ; 3 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %vtable_included.exit43.thread.us.i.i
  %.not48.i.i = icmp eq ptr %i.w, null
  br i1 %.not48.i.i, label %dyna_in_block.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = and i64 %1, 14
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult i64 %1, 3776
  %i.ab = lshr i64 %1, 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -245
  %i.ae = icmp ult i32 %i.ad, -9
  %.not53.i.i = or i1 %i.z, %i.ae
  %narrow.i.not.i.i = or i1 %i.aa, %.not53.i.i
  br i1 %narrow.i.not.i.i, label %dvar_defined.exit, label %dyna_in_block.exit.thread

dvar_defined.exit:                                ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1050
  %i.ah = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.ag) #31
  %.not4 = icmp eq i32 %i.ah, 0
  br i1 %.not4, label %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge, label %dvar_defined.exit.thread9

dvar_defined.exit.dyna_in_block.exit.thread_crit_edge: ; preds = %dvar_defined.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1123
  br label %dyna_in_block.exit.thread

dyna_in_block.exit.thread:                        ; preds = %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge, %bb.f, %._crit_edge.i.i, %bb.a
  %i.ai = phi ptr [ %.pre29, %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge ], [ %.val.val, %bb.f ], [ %.val.val, %._crit_edge.i.i ], [ %.val.val, %bb.a ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge ], [ %.val, %bb.f ], [ %.val, %._crit_edge.i.i ], [ %.val, %bb.a ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1170 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.ai, null
  br i1 %.not60.i.i, label %.critedge37.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dyna_in_block.exit.thread.thread, %dyna_in_block.exit.thread
  %.02962.i.i.ph = phi ptr [ %i.ak, %dyna_in_block.exit.thread ], [ %i.e, %dyna_in_block.exit.thread.thread ]
  %.03061.i.i.ph = phi ptr [ %i.ai, %dyna_in_block.exit.thread ], [ %.val.val, %dyna_in_block.exit.thread.thread ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.g
  %.02962.i.i = phi ptr [ %i.ap, %bb.g ], [ %.02962.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.03061.i.i = phi ptr [ %i.am, %bb.g ], [ %.03061.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.al = getelementptr i8, ptr %.03061.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1125 ; 4 uses
  %i.an = icmp ult ptr %i.am, inttoptr (i64 2 to ptr)
  br i1 %i.an, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %.02962.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1125 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.critedge37.i.i, label %.lr.ph.i.i, !llvm.loop !6

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %.not66.i.i = icmp eq ptr %i.am, inttoptr (i64 1 to ptr)
  br i1 %.not66.i.i, label %bb.h, label %.critedge37.i.i

bb.h:                                             ; preds = %.critedge.i.i
  %i.aq = getelementptr i8, ptr %0, i64 352
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1050
  %i.as = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.ar) #31
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  br label %dvar_defined.exit.thread9

.critedge37.i.i:                                  ; preds = %bb.g, %.critedge.i.i, %dyna_in_block.exit.thread
  %.03058.i.i = phi ptr [ %.03061.i.i, %.critedge.i.i ], [ null, %dyna_in_block.exit.thread ], [ null, %bb.g ] ; 3 uses
  %.02956.i.i = phi ptr [ %.02962.i.i, %.critedge.i.i ], [ %i.ak, %dyna_in_block.exit.thread ], [ %i.ap, %bb.g ] ; 3 uses
  %i.av = icmp ult ptr %.02956.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.av, label %vtable_included.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge37.i.i
  %i.aw = getelementptr i8, ptr %.02956.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1167 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i, label %vtable_included.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.az = load ptr, ptr %.02956.i.i, align 8, !tbaa !1169
  %wide.trip.count.i.i.i = zext nneg i32 %i.ax to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.j ] ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !997
  %i.bc = icmp eq i64 %i.bb, %1
  br i1 %i.bc, label %dvar_defined.exit.thread9, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %vtable_included.exit.thread.i.i, label %bb.i, !llvm.loop !2

vtable_included.exit.thread.i.i:                  ; preds = %bb.j, %.preheader.i.i.i, %.critedge37.i.i
  %i.bd = icmp ult ptr %.03058.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.bd, label %dvar_defined.exit.thread9, label %.preheader.i38.i.i

.preheader.i38.i.i:                               ; preds = %vtable_included.exit.thread.i.i
  %i.be = getelementptr i8, ptr %.03058.i.i, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1167 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i40.i.i, label %dvar_defined.exit.thread9

.lr.ph.i40.i.i:                                   ; preds = %.preheader.i38.i.i
  %i.bh = load ptr, ptr %.03058.i.i, align 8, !tbaa !1169
  %wide.trip.count.i41.i.i = zext nneg i32 %i.bf to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i40.i.i
  %indvars.iv.i42.i.i = phi i64 [ 0, %.lr.ph.i40.i.i ], [ %indvars.iv.next.i43.i.i, %bb.l ] ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.i42.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !997
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %dvar_defined.exit.thread9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i43.i.i = add nuw nsw i64 %indvars.iv.i42.i.i, 1 ; 2 uses
  %exitcond.not.i44.i.i = icmp eq i64 %indvars.iv.next.i43.i.i, %wide.trip.count.i41.i.i
  br i1 %exitcond.not.i44.i.i, label %dvar_defined.exit.thread9, label %bb.k, !llvm.loop !2

dvar_defined.exit.thread9:                        ; preds = %bb.b, %bb.d, %bb.i, %bb.l, %bb.k, %.preheader.i38.i.i, %vtable_included.exit.thread.i.i, %bb.h, %dvar_defined.exit
  %i.bl = phi i32 [ 1, %dvar_defined.exit ], [ 1, %bb.d ], [ 1, %bb.i ], [ %i.au, %bb.h ], [ 0, %vtable_included.exit.thread.i.i ], [ 0, %.preheader.i38.i.i ], [ 0, %bb.l ], [ 1, %bb.k ], [ 1, %bb.b ]
  ret i32 %i.bl
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_parser_reg_compile(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !1699 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = getelementptr i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1066
  %i.d = getelementptr i8, ptr %0, i64 196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1032
  %i.f = tail call i64 @rb_reg_compile(i64 noundef %1, i32 noundef %i.a, ptr noundef %i.c, i32 noundef %i.e) #31
  ret i64 %i.f
}

declare i64 @rb_reg_compile(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden void @rb_ruby_parser_set_options(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !1700 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = shl i32 %1, 11
  %i.d = and i32 %i.c, 2048
  %i.e = and i32 %i.b, -30721
  %i.f = shl i32 %2, 12
  %i.g = and i32 %i.f, 4096
  %i.h = shl i32 %3, 13
  %i.i = and i32 %i.h, 8192
  %i.j = shl i32 %4, 14
  %i.k = and i32 %i.j, 16384
  %i.l = or disjoint i32 %i.g, %i.d
  %i.m = or disjoint i32 %i.l, %i.i
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = or disjoint i32 %i.n, %i.e
  store i32 %i.o, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @rb_init_parse() local_unnamed_addr #13 !guid !1701 {
bb.a:
  ret void
}

declare i64 @rb_make_temporary_id(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ruby_parser_mark(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !1702 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1294
  tail call void @rb_gc_mark(i64 noundef %i.b) #31
  %i.c = getelementptr i8, ptr %0, i64 368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1163
  tail call void @rb_gc_mark(i64 noundef %i.d) #31
  %i.e = getelementptr i8, ptr %0, i64 248
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1164
  tail call void @rb_gc_mark(i64 noundef %i.f) #31
  %i.g = getelementptr i8, ptr %0, i64 256
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1165
  tail call void @rb_gc_mark(i64 noundef %i.h) #31
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ruby_parser_free(ptr noundef %0) local_unnamed_addr #0 !guid !1709 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1107 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_ast_free(ptr noundef nonnull %i.b) #31
  br label %bb.c
end_hunk_1
begin_hunk_2_@literal_hash:bb.a
  %i.jp = add nuw i64 %.09.i.i.i50.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil, !llvm.loop !1890

rb_char_p_hash.exit.loopexit139.unr-lcssa:        ; preds = %.lr.ph.i.i.i56
  %lcmp.mod147.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil.preheader

.lr.ph.i.i.i56.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.preheader
  %.09.i.i.i57.epil.init = phi i64 [ 0, %.lr.ph.i.i.i56.preheader ], [ %i.gv, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %.078.i.i.i58.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i56.preheader ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter145, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.i.i56.epil

.lr.ph.i.i.i56.epil:                              ; preds = %.lr.ph.i.i.i56.epil, %.lr.ph.i.i.i56.epil.preheader
  %.09.i.i.i57.epil = phi i64 [ %i.jv, %.lr.ph.i.i.i56.epil ], [ %.09.i.i.i57.epil.init, %.lr.ph.i.i.i56.epil.preheader ] ; 2 uses
  %.078.i.i.i58.epil = phi i64 [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %.078.i.i.i58.epil.init, %.lr.ph.i.i.i56.epil.preheader ]
  %epil.iter146 = phi i64 [ %epil.iter146.next, %.lr.ph.i.i.i56.epil ], [ 0, %.lr.ph.i.i.i56.epil.preheader ]
  %i.jq = mul i64 %.078.i.i.i58.epil, 33
  %i.jr = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !1000
  %i.jt = zext i8 %i.js to i64
  %i.ju = add i64 %i.jq, %i.jt                    ; 2 uses
  %i.jv = add nuw i64 %.09.i.i.i57.epil, 1
  %epil.iter146.next = add i64 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i64 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil, !llvm.loop !1891

rb_char_p_hash.exit.loopexit141.unr-lcssa:        ; preds = %.lr.ph.i.i.i63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil.preheader

.lr.ph.i.i.i63.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.preheader
  %.09.i.i.i64.epil.init = phi i64 [ 0, %.lr.ph.i.i.i63.preheader ], [ %i.ib, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %.078.i.i.i65.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i63.preheader ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.i.i63.epil

.lr.ph.i.i.i63.epil:                              ; preds = %.lr.ph.i.i.i63.epil, %.lr.ph.i.i.i63.epil.preheader
  %.09.i.i.i64.epil = phi i64 [ %i.kb, %.lr.ph.i.i.i63.epil ], [ %.09.i.i.i64.epil.init, %.lr.ph.i.i.i63.epil.preheader ] ; 2 uses
  %.078.i.i.i65.epil = phi i64 [ %i.ka, %.lr.ph.i.i.i63.epil ], [ %.078.i.i.i65.epil.init, %.lr.ph.i.i.i63.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i63.epil ], [ 0, %.lr.ph.i.i.i63.epil.preheader ]
  %i.jw = mul i64 %.078.i.i.i65.epil, 33
  %i.jx = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64.epil
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !1000
  %i.jz = zext i8 %i.jy to i64
  %i.ka = add i64 %i.jw, %i.jz                    ; 2 uses
  %i.kb = add nuw i64 %.09.i.i.i64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil, !llvm.loop !1892

rb_char_p_hash.exit:                              ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.epil, %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.epil, %rb_char_p_hash.exit.loopexit137.unr-lcssa, %.lr.ph.i.i.i49.epil, %rb_char_p_hash.exit.loopexit135.unr-lcssa, %.lr.ph.i.i.i43.epil, %rb_char_p_hash.exit.loopexit133.unr-lcssa, %.lr.ph.i.i.i36.epil, %rb_char_p_hash.exit.loopexit131.unr-lcssa, %.lr.ph.i.i.i29.epil, %rb_char_p_hash.exit.loopexit129.unr-lcssa, %.lr.ph.i.i.i22.epil, %rb_char_p_hash.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i
  %.0 = phi i64 [ %i.ie, %bb.k ], [ %i.ji, %.lr.ph.i.i.i43.epil ], [ %i.jo, %.lr.ph.i.i.i49.epil ], [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %i.ik, %.lr.ph.i.i.i.epil ], [ %i.iq, %.lr.ph.i.i.i22.epil ], [ %i.iw, %.lr.ph.i.i.i29.epil ], [ %i.gy, %bb.i ], [ %i.jc, %.lr.ph.i.i.i36.epil ], [ 5381, %bb.b ], [ 5381, %bb.c ], [ 5381, %bb.d ], [ 5381, %bb.e ], [ 5381, %bb.f ], [ 5381, %bb.g ], [ 5381, %bb.h ], [ 5381, %bb.j ], [ %i.af, %rb_char_p_hash.exit.loopexit.unr-lcssa ], [ %i.bh, %rb_char_p_hash.exit.loopexit129.unr-lcssa ], [ %i.cj, %rb_char_p_hash.exit.loopexit131.unr-lcssa ], [ %i.dl, %rb_char_p_hash.exit.loopexit133.unr-lcssa ], [ %i.eo, %rb_char_p_hash.exit.loopexit135.unr-lcssa ], [ %i.fr, %rb_char_p_hash.exit.loopexit137.unr-lcssa ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ], [ %i.ka, %.lr.ph.i.i.i63.epil ]
  ret i64 %.0
}

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_io_puts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dvar_curr(ptr nofree readonly captures(none) %.168.val, i64 noundef %0) unnamed_addr #7 !guid !1894 {
bb.a:
  %i.a = load ptr, ptr %.168.val, align 8, !tbaa !1170 ; 3 uses
  %i.b = icmp ult ptr %i.a, inttoptr (i64 2 to ptr)
  br i1 %i.b, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1167 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1169
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !997
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %vtable_included.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.b, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.c, %.preheader.i, %bb.a
  %i.j = getelementptr i8, ptr %.168.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1123 ; 3 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %vtable_included.exit, label %.preheader.i3

.preheader.i3:                                    ; preds = %vtable_included.exit.thread
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1167 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i5, label %vtable_included.exit

.lr.ph.i5:                                        ; preds = %.preheader.i3
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !1169
  %wide.trip.count.i6 = zext nneg i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i5
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i8, %bb.e ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i7
  %i.r = load i64, ptr %i.q, align 8, !tbaa !997
  %i.s = icmp eq i64 %i.r, %0
  br i1 %i.s, label %vtable_included.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %indvars.iv.next.i8, %wide.trip.count.i6
  br i1 %exitcond.not.i9, label %vtable_included.exit, label %bb.d, !llvm.loop !2

vtable_included.exit:                             ; preds = %bb.b, %bb.e, %bb.d, %.preheader.i3, %vtable_included.exit.thread
  %i.t = phi i32 [ 0, %bb.e ], [ 0, %.preheader.i3 ], [ 0, %vtable_included.exit.thread ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dvar_defined(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !1895 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1123 ; 3 uses
  %i.e = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a, %vtable_included.exit43.thread.us.i
  %.02560.us.i.in = phi ptr [ %i.u, %vtable_included.exit43.thread.us.i ], [ %i.b, %bb.a ]
  %.02659.us.i = phi ptr [ %i.w, %vtable_included.exit43.thread.us.i ], [ %i.d, %bb.a ] ; 3 uses
  %.02560.us.i = load ptr, ptr %.02560.us.i.in, align 8, !tbaa !1277 ; 4 uses
  %i.f = icmp ult ptr %.02560.us.i, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %vtable_included.exit.thread.us.i, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i
  %i.g = getelementptr i8, ptr %.02560.us.i, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1167 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.us.i, label %vtable_included.exit.thread.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader.i.us.i
  %i.j = load ptr, ptr %.02560.us.i, align 8, !tbaa !1169
  %wide.trip.count.i.us.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.c ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i.us.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !997
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %rb_parser_dvar_defined_ref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.us.i, label %bb.b, !llvm.loop !2

vtable_included.exit.thread.us.i:                 ; preds = %bb.c, %.preheader.i.us.i, %.lr.ph.split.us.i
  %i.n = getelementptr i8, ptr %.02659.us.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1167 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i38.us.i, label %vtable_included.exit43.thread.us.i

.lr.ph.i38.us.i:                                  ; preds = %vtable_included.exit.thread.us.i
  %i.q = load ptr, ptr %.02659.us.i, align 8, !tbaa !1169
  %wide.trip.count.i39.us.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us.i
  %indvars.iv.i40.us.i = phi i64 [ 0, %.lr.ph.i38.us.i ], [ %indvars.iv.next.i41.us.i, %bb.e ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i40.us.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !997
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %rb_parser_dvar_defined_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us.i = add nuw nsw i64 %indvars.iv.i40.us.i, 1 ; 2 uses
  %exitcond.not.i42.us.i = icmp eq i64 %indvars.iv.next.i41.us.i, %wide.trip.count.i39.us.i
  br i1 %exitcond.not.i42.us.i, label %vtable_included.exit43.thread.us.i, label %bb.d, !llvm.loop !2

vtable_included.exit43.thread.us.i:               ; preds = %bb.e, %vtable_included.exit.thread.us.i
  %i.u = getelementptr i8, ptr %.02560.us.i, i64 16
  %i.v = getelementptr i8, ptr %.02659.us.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1125 ; 3 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %vtable_included.exit43.thread.us.i, %bb.a
  %.026.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.w, %vtable_included.exit43.thread.us.i ]
  %.not48.i = icmp eq ptr %.026.lcssa.i, null
  br i1 %.not48.i, label %rb_parser_dvar_defined_ref.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.y = and i64 %1, 14
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult i64 %1, 3776
  %i.ab = lshr i64 %1, 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -245
  %i.ae = icmp ult i32 %i.ad, -9
  %.not53.i = or i1 %i.z, %i.ae
  %narrow.i.not.i = or i1 %i.aa, %.not53.i
  br i1 %narrow.i.not.i, label %bb.g, label %rb_parser_dvar_defined_ref.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1050
  %i.ah = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.ag) #31
  br label %rb_parser_dvar_defined_ref.exit

rb_parser_dvar_defined_ref.exit:                  ; preds = %bb.b, %bb.d, %._crit_edge.i, %bb.f, %bb.g
  %.027.i = phi i32 [ %i.ah, %bb.g ], [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.027.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @local_id(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 !guid !1896 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1123 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1170 ; 2 uses
  %.not60.i = icmp eq ptr %i.d, null
  br i1 %.not60.i, label %.critedge37.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02962.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.03061.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.03061.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1125 ; 4 uses
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %.02962.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1125 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.c, label %.critedge37.i

bb.c:                                             ; preds = %.critedge.i
  %i.k = getelementptr i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1050
  %i.m = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.l) #31
  br label %local_id_ref.exit

.critedge37.i:                                    ; preds = %bb.b, %.critedge.i, %bb.a
  %.03058.i = phi ptr [ %.03061.i, %.critedge.i ], [ null, %bb.a ], [ null, %bb.b ] ; 3 uses
  %.02956.i = phi ptr [ %.02962.i, %.critedge.i ], [ %i.e, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.n = icmp ult ptr %.02956.i, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.o = getelementptr i8, ptr %.02956.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1167 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %.02956.i, align 8, !tbaa !1169
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !997
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
  %i.w = getelementptr i8, ptr %.03058.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1167 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i40.i, label %local_id_ref.exit

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.z = load ptr, ptr %.03058.i, align 8, !tbaa !1169
  %wide.trip.count.i41.i = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.g ] ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i42.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !997
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @local_var(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 !guid !1897 {
bb.a:
  %i.a = and i64 %1, 14
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp ult i64 %1, 3776
  %i.d = lshr i64 %1, 4
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -245
  %i.g = icmp ult i32 %i.f, -9
  %.not6.i = or i1 %i.b, %i.g
  %narrow.i.not.i = or i1 %i.c, %.not6.i
  br i1 %narrow.i.not.i, label %numparam_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.e, -235
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.942, i32 noundef %i.h)
  br label %numparam_name.exit

numparam_name.exit:                               ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1079
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1123 ; 7 uses
  %i.m = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 32
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %numparam_name.exit
  %i.p = tail call ptr @rb_id2name(i64 noundef %1) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 14992, ptr noundef nonnull @.str.898, ptr noundef %i.l, ptr noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %numparam_name.exit
  %i.q = icmp ult ptr %i.l, inttoptr (i64 2 to ptr)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %i.l)
  br label %vtable_add_gen.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1167 ; 3 uses
  %i.t = getelementptr i8, ptr %i.l, i64 12       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1168
  %i.v = icmp eq i32 %i.s, %i.u
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !1169 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = shl i32 %i.s, 1                          ; 2 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !1168
  %i.x = sext i32 %i.w to i64
  %i.y = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.x, i64 noundef 8) #38 ; 2 uses
  store ptr %i.y, ptr %i.l, align 8, !tbaa !1169
  %.pre21.i = load i32, ptr %i.r, align 8, !tbaa !1167
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi i32 [ %.pre21.i, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %bb.g ], [ %.pre.i, %bb.f ]
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !1167
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac
  store i64 %1, ptr %i.ad, align 8, !tbaa !997
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.e, %bb.h
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !1079
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1171 ; 8 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %vtable_add_gen.exit11, label %bb.i

bb.i:                                             ; preds = %vtable_add_gen.exit
  %i.ah = getelementptr i8, ptr %0, i64 196
end_hunk_2
begin_hunk_3_@shadowing_lvar_0:bb.a
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !1123 ; 9 uses
  %switch.i = icmp ult ptr %.val.val, inttoptr (i64 2 to ptr)
  br i1 %switch.i, label %dyna_in_block.exit.thread, label %dyna_in_block.exit

dyna_in_block.exit:                               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1125
  %.not99 = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1170 ; 6 uses
  br i1 %.not99, label %.lr.ph.i.i39.preheader, label %bb.b

bb.b:                                             ; preds = %dyna_in_block.exit
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %.preheader.i3.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1167 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.preheader.i3.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1169
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !997
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %dvar_curr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i3.i, label %bb.c, !llvm.loop !2

.preheader.i3.i:                                  ; preds = %bb.d, %bb.b, %.preheader.i.i
  %i.n = getelementptr i8, ptr %.val.val, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1167 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i5.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %bb.f, %.preheader.i3.i
  br label %.lr.ph.split.us.i.i

.lr.ph.i5.i:                                      ; preds = %.preheader.i3.i
  %i.q = load ptr, ptr %.val.val, align 8, !tbaa !1169
  %wide.trip.count.i6.i = zext nneg i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i5.i
  %indvars.iv.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %indvars.iv.next.i8.i, %bb.f ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i7.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !997
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %dvar_curr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i8.i = add nuw nsw i64 %indvars.iv.i7.i, 1 ; 2 uses
  %exitcond.not.i9.i = icmp eq i64 %indvars.iv.next.i8.i, %wide.trip.count.i6.i
  br i1 %exitcond.not.i9.i, label %.lr.ph.split.us.i.i.preheader, label %bb.e, !llvm.loop !2

dvar_curr.exit:                                   ; preds = %bb.c, %bb.e
  %i.u = icmp eq i64 %1, 3761
  br i1 %i.u, label %vtable_add_gen.exit37, label %bb.g

bb.g:                                             ; preds = %dvar_curr.exit
  %i.v = icmp ugt i64 %1, 171
  %i.w = and i64 %1, 14
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i1 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %is_private_local_id.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @rb_id2str(i64 noundef %1) #31 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %is_private_local_id.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !999
  %i.ac = and i64 %i.ab, 8192
  %.not.i.i = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr i8, ptr %i.aa, i64 24     ; 2 uses
  br i1 %.not.i.i, label %is_private_local_id.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1000
  br label %is_private_local_id.exit

is_private_local_id.exit:                         ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ %i.ae, %bb.j ], [ %i.ad, %bb.i ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1000
  %.not = icmp eq i8 %i.ag, 95
  br i1 %.not, label %vtable_add_gen.exit37, label %is_private_local_id.exit.thread

is_private_local_id.exit.thread:                  ; preds = %bb.h, %bb.g, %is_private_local_id.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ah = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1032 ; 4 uses
  %i.aj = getelementptr i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1033
  %i.al = getelementptr i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1034
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1161
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ao
  %i.av = trunc i64 %i.au to i32
  store i32 %i.ai, ptr %3, align 4, !tbaa !1037
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !1038
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ai, ptr %i.ax, align 4, !tbaa !1039
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !1040
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.900)
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !1032
  %i.ba = icmp eq i32 %i.ai, %i.az
  br i1 %i.ba, label %bb.k, label %parser_yyerror0.exit

bb.k:                                             ; preds = %is_private_local_id.exit.thread
  %i.bb = getelementptr i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1162
  %i.bd = getelementptr i8, ptr %0, i64 368
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !1163
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.be, ptr noundef nonnull readonly %3, i32 noundef %i.ai, ptr noundef %i.bc)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %is_private_local_id.exit.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %vtable_add_gen.exit37

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %vtable_included.exit43.thread.us.i.i
  %.02560.us.i.in.i = phi ptr [ %i.bu, %vtable_included.exit43.thread.us.i.i ], [ %.val, %.lr.ph.split.us.i.i.preheader ]
  %.02659.us.i.i = phi ptr [ %i.bw, %vtable_included.exit43.thread.us.i.i ], [ %.val.val, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %.02560.us.i.i = load ptr, ptr %.02560.us.i.in.i, align 8, !tbaa !1277 ; 4 uses
  %i.bf = icmp ult ptr %.02560.us.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.bf, label %vtable_included.exit.thread.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.lr.ph.split.us.i.i
  %i.bg = getelementptr i8, ptr %.02560.us.i.i, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1167 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.us.i.i, label %vtable_included.exit.thread.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.preheader.i.us.i.i
  %i.bj = load ptr, ptr %.02560.us.i.i, align 8, !tbaa !1169
  %wide.trip.count.i.us.i.i = zext nneg i32 %i.bh to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.m ] ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.i.us.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !997
  %i.bm = icmp eq i64 %i.bl, %1
  br i1 %i.bm, label %dvar_defined.exit.thread79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %vtable_included.exit.thread.us.i.i, label %bb.l, !llvm.loop !2

vtable_included.exit.thread.us.i.i:               ; preds = %bb.m, %.preheader.i.us.i.i, %.lr.ph.split.us.i.i
  %i.bn = getelementptr i8, ptr %.02659.us.i.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1167 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i38.us.i.i, label %vtable_included.exit43.thread.us.i.i

.lr.ph.i38.us.i.i:                                ; preds = %vtable_included.exit.thread.us.i.i
  %i.bq = load ptr, ptr %.02659.us.i.i, align 8, !tbaa !1169
  %wide.trip.count.i39.us.i.i = zext nneg i32 %i.bo to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i38.us.i.i
  %indvars.iv.i40.us.i.i = phi i64 [ 0, %.lr.ph.i38.us.i.i ], [ %indvars.iv.next.i41.us.i.i, %bb.o ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv.i40.us.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !997
  %i.bt = icmp eq i64 %i.bs, %1
  br i1 %i.bt, label %dvar_defined.exit.thread79, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i41.us.i.i = add nuw nsw i64 %indvars.iv.i40.us.i.i, 1 ; 2 uses
  %exitcond.not.i42.us.i.i = icmp eq i64 %indvars.iv.next.i41.us.i.i, %wide.trip.count.i39.us.i.i
  br i1 %exitcond.not.i42.us.i.i, label %vtable_included.exit43.thread.us.i.i, label %bb.n, !llvm.loop !2

vtable_included.exit43.thread.us.i.i:             ; preds = %bb.o, %vtable_included.exit.thread.us.i.i
  %i.bu = getelementptr i8, ptr %.02560.us.i.i, i64 16
  %i.bv = getelementptr i8, ptr %.02659.us.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1125 ; 3 uses
  %i.bx = icmp ult ptr %i.bw, inttoptr (i64 2 to ptr)
  br i1 %i.bx, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %vtable_included.exit43.thread.us.i.i
  %.not48.i.i = icmp eq ptr %i.bw, null
  br i1 %.not48.i.i, label %dvar_defined.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.by = and i64 %1, 14
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp ult i64 %1, 3776
  %i.cb = lshr i64 %1, 4
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = add i32 %i.cc, -245
  %i.ce = icmp ult i32 %i.cd, -9
  %.not53.i.i = or i1 %i.bz, %i.ce
  %narrow.i.not.i.i = or i1 %i.ca, %.not53.i.i
  br i1 %narrow.i.not.i.i, label %dvar_defined.exit, label %dvar_defined.exit.thread

dvar_defined.exit:                                ; preds = %bb.p
  %i.cf = getelementptr i8, ptr %0, i64 352
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1050
  %i.ch = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.cg) #31
  %.not26 = icmp eq i32 %i.ch, 0
  %.pre137 = load ptr, ptr %i.a, align 8, !tbaa !1079 ; 4 uses
  br i1 %.not26, label %dvar_defined.exit.dvar_defined.exit.thread_crit_edge, label %dvar_defined.exit.thread79

dvar_defined.exit.dvar_defined.exit.thread_crit_edge: ; preds = %dvar_defined.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre137, i64 8
  %.pre134 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1123
  %.pre135 = load ptr, ptr %.pre137, align 8, !tbaa !1170
  br label %dvar_defined.exit.thread

dvar_defined.exit.thread:                         ; preds = %dvar_defined.exit.dvar_defined.exit.thread_crit_edge, %bb.p, %._crit_edge.i.i
  %i.ci = phi ptr [ %.pre135, %dvar_defined.exit.dvar_defined.exit.thread_crit_edge ], [ %i.e, %bb.p ], [ %i.e, %._crit_edge.i.i ] ; 3 uses
  %i.cj = phi ptr [ %.pre134, %dvar_defined.exit.dvar_defined.exit.thread_crit_edge ], [ %.val.val, %bb.p ], [ %.val.val, %._crit_edge.i.i ] ; 3 uses
  %i.ck = phi ptr [ %.pre137, %dvar_defined.exit.dvar_defined.exit.thread_crit_edge ], [ %.val, %bb.p ], [ %.val, %._crit_edge.i.i ] ; 2 uses
  %.not60.i.i = icmp eq ptr %i.cj, null
  br i1 %.not60.i.i, label %.critedge37.i.i, label %.lr.ph.i.i31.preheader.split

.lr.ph.i.i31.preheader.split:                     ; preds = %dvar_defined.exit.thread
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1125 ; 3 uses
  %i.cn = icmp ult ptr %i.cm, inttoptr (i64 2 to ptr)
  br i1 %i.cn, label %.critedge.i.i, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %.lr.ph.i.i31.preheader.split, %.lr.ph.i.i31
  %i.co = phi ptr [ %i.cs, %.lr.ph.i.i31 ], [ %i.cm, %.lr.ph.i.i31.preheader.split ] ; 2 uses
  %.02962.i.i117 = phi ptr [ %i.cq, %.lr.ph.i.i31 ], [ %i.ci, %.lr.ph.i.i31.preheader.split ]
  %i.cp = getelementptr i8, ptr %.02962.i.i117, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1125 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1125 ; 3 uses
  %i.ct = icmp ult ptr %i.cs, inttoptr (i64 2 to ptr)
  br i1 %i.ct, label %.critedge.i.i, label %.lr.ph.i.i31

.critedge.i.i:                                    ; preds = %.lr.ph.i.i31, %.lr.ph.i.i31.preheader.split
  %.02962.i.i.lcssa = phi ptr [ %i.ci, %.lr.ph.i.i31.preheader.split ], [ %i.cq, %.lr.ph.i.i31 ]
  %.03061.i.i.lcssa = phi ptr [ %i.cj, %.lr.ph.i.i31.preheader.split ], [ %i.co, %.lr.ph.i.i31 ]
  %.lcssa111 = phi ptr [ %i.cm, %.lr.ph.i.i31.preheader.split ], [ %i.cs, %.lr.ph.i.i31 ]
  %.not66.i.i = icmp eq ptr %.lcssa111, null
  br i1 %.not66.i.i, label %.critedge37.i.i, label %local_id.exit

.critedge37.i.i:                                  ; preds = %.critedge.i.i, %dvar_defined.exit.thread
  %.03058.i.i = phi ptr [ %.03061.i.i.lcssa, %.critedge.i.i ], [ null, %dvar_defined.exit.thread ] ; 3 uses
  %.02956.i.i = phi ptr [ %.02962.i.i.lcssa, %.critedge.i.i ], [ %i.ci, %dvar_defined.exit.thread ] ; 3 uses
  %i.cu = icmp ult ptr %.02956.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.cu, label %vtable_included.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge37.i.i
  %i.cv = getelementptr i8, ptr %.02956.i.i, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1167 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i, label %vtable_included.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.cy = load ptr, ptr %.02956.i.i, align 8, !tbaa !1169
  %wide.trip.count.i.i.i = zext nneg i32 %i.cw to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.r ] ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %indvars.iv.i.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !997
  %i.db = icmp eq i64 %i.da, %1
  br i1 %i.db, label %dvar_defined.exit.thread79, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %vtable_included.exit.thread.i.i, label %bb.q, !llvm.loop !2

vtable_included.exit.thread.i.i:                  ; preds = %bb.r, %.preheader.i.i.i, %.critedge37.i.i
  %i.dc = icmp ult ptr %.03058.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.dc, label %vtable_add_gen.exit37, label %.preheader.i38.i.i

.preheader.i38.i.i:                               ; preds = %vtable_included.exit.thread.i.i
  %i.dd = getelementptr i8, ptr %.03058.i.i, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !1167 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i40.i.i, label %vtable_add_gen.exit37

.lr.ph.i40.i.i:                                   ; preds = %.preheader.i38.i.i
  %i.dg = load ptr, ptr %.03058.i.i, align 8, !tbaa !1169
  %wide.trip.count.i41.i.i = zext nneg i32 %i.de to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i40.i.i
  %indvars.iv.i42.i.i = phi i64 [ 0, %.lr.ph.i40.i.i ], [ %indvars.iv.next.i43.i.i, %bb.t ] ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv.i42.i.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !997
  %i.dj = icmp eq i64 %i.di, %1
  br i1 %i.dj, label %dvar_defined.exit.thread79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i43.i.i = add nuw nsw i64 %indvars.iv.i42.i.i, 1 ; 2 uses
  %exitcond.not.i44.i.i = icmp eq i64 %indvars.iv.next.i43.i.i, %wide.trip.count.i41.i.i
  br i1 %exitcond.not.i44.i.i, label %vtable_add_gen.exit37, label %bb.s, !llvm.loop !2

local_id.exit:                                    ; preds = %.critedge.i.i
  %i.dk = getelementptr i8, ptr %0, i64 352
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1050
  %i.dm = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.dl) #31
  %.not27 = icmp eq i32 %i.dm, 0
  br i1 %.not27, label %vtable_add_gen.exit37, label %local_id.exit.dvar_defined.exit.thread79_crit_edge

local_id.exit.dvar_defined.exit.thread79_crit_edge: ; preds = %local_id.exit
  %.pre136 = load ptr, ptr %i.a, align 8, !tbaa !1079
  br label %dvar_defined.exit.thread79

dvar_defined.exit.thread79:                       ; preds = %bb.l, %bb.n, %bb.q, %bb.s, %local_id.exit.dvar_defined.exit.thread79_crit_edge, %dvar_defined.exit
  %i.dn = phi ptr [ %.pre136, %local_id.exit.dvar_defined.exit.thread79_crit_edge ], [ %.val, %bb.n ], [ %i.ck, %bb.q ], [ %i.ck, %bb.s ], [ %.pre137, %dvar_defined.exit ], [ %.val, %bb.l ]
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1123 ; 7 uses
  %i.dq = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 32
  %.not.i33 = icmp eq i32 %i.ds, 0
  br i1 %.not.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %dvar_defined.exit.thread79
  %i.dt = tail call ptr @rb_id2name(i64 noundef %1) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 13579, ptr noundef nonnull @.str.898, ptr noundef %i.dp, ptr noundef %i.dt)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %dvar_defined.exit.thread79
  %i.du = icmp ult ptr %i.dp, inttoptr (i64 2 to ptr)
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %i.dp)
  br label %vtable_add_gen.exit

bb.x:                                             ; preds = %bb.v
  %i.dv = getelementptr i8, ptr %i.dp, i64 8      ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1167 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dp, i64 12     ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1168
  %i.dz = icmp eq i32 %i.dw, %i.dy
  %.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !1169 ; 2 uses
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = shl i32 %i.dw, 1                        ; 2 uses
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !1168
  %i.eb = sext i32 %i.ea to i64
  %i.ec = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.eb, i64 noundef 8) #38 ; 2 uses
  store ptr %i.ec, ptr %i.dp, align 8, !tbaa !1169
  %.pre21.i = load i32, ptr %i.dv, align 8, !tbaa !1167
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ed = phi i32 [ %.pre21.i, %bb.y ], [ %i.dw, %bb.x ] ; 2 uses
  %i.ee = phi ptr [ %i.ec, %bb.y ], [ %.pre.i, %bb.x ]
  %i.ef = add i32 %i.ed, 1
  store i32 %i.ef, ptr %i.dv, align 8, !tbaa !1167
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr [8 x i8], ptr %i.ee, i64 %i.eg
  store i64 %1, ptr %i.eh, align 8, !tbaa !997
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.w, %bb.z
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !1079
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1171 ; 8 uses
  %.not28 = icmp eq ptr %i.ek, null
  br i1 %.not28, label %vtable_add_gen.exit37, label %bb.aa

bb.aa:                                            ; preds = %vtable_add_gen.exit
  %i.el = getelementptr i8, ptr %0, i64 196
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1032
  %i.en = sext i32 %i.em to i64
  %i.eo = or i64 %i.en, -9223372036854775808      ; 2 uses
  %i.ep = load i32, ptr %i.dq, align 8
  %i.eq = and i32 %i.ep, 32
  %.not.i34 = icmp eq i32 %i.eq, 0
  br i1 %.not.i34, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = tail call ptr @rb_id2name(i64 noundef %i.eo) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 13581, ptr noundef nonnull @.str.899, ptr noundef nonnull %i.ek, ptr noundef %i.er)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.es = icmp ult ptr %i.ek, inttoptr (i64 2 to ptr)
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef nonnull %i.ek)
  br label %vtable_add_gen.exit37

bb.ae:                                            ; preds = %bb.ac
  %i.et = getelementptr i8, ptr %i.ek, i64 8      ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !1167 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.ek, i64 12     ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !1168
  %i.ex = icmp eq i32 %i.eu, %i.ew
  %.pre.i35 = load ptr, ptr %i.ek, align 8, !tbaa !1169 ; 2 uses
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ey = shl i32 %i.eu, 1                        ; 2 uses
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !1168
  %i.ez = sext i32 %i.ey to i64
  %i.fa = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i35, i64 noundef %i.ez, i64 noundef 8) #38 ; 2 uses
  store ptr %i.fa, ptr %i.ek, align 8, !tbaa !1169
  %.pre21.i36 = load i32, ptr %i.et, align 8, !tbaa !1167
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fb = phi i32 [ %.pre21.i36, %bb.af ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.fc = phi ptr [ %i.fa, %bb.af ], [ %.pre.i35, %bb.ae ]
  %i.fd = add i32 %i.fb, 1
  store i32 %i.fd, ptr %i.et, align 8, !tbaa !1167
  %i.fe = sext i32 %i.fb to i64
  %i.ff = getelementptr [8 x i8], ptr %i.fc, i64 %i.fe
  store i64 %i.eo, ptr %i.ff, align 8, !tbaa !997
  br label %vtable_add_gen.exit37

dyna_in_block.exit.thread:                        ; preds = %bb.a
  %i.fg = load ptr, ptr %.val, align 8, !tbaa !1170 ; 2 uses
  %.not60.i.i38 = icmp eq ptr %.val.val, null
  br i1 %.not60.i.i38, label %.critedge37.i.i43, label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %dyna_in_block.exit, %dyna_in_block.exit.thread
  %.02962.i.i40.ph = phi ptr [ %i.e, %dyna_in_block.exit ], [ %i.fg, %dyna_in_block.exit.thread ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %bb.ah
  %.02962.i.i40 = phi ptr [ %i.fl, %bb.ah ], [ %.02962.i.i40.ph, %.lr.ph.i.i39.preheader ] ; 2 uses
  %.03061.i.i41 = phi ptr [ %i.fi, %bb.ah ], [ %.val.val, %.lr.ph.i.i39.preheader ] ; 2 uses
  %i.fh = getelementptr i8, ptr %.03061.i.i41, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1125 ; 4 uses
  %i.fj = icmp ult ptr %i.fi, inttoptr (i64 2 to ptr)
  br i1 %i.fj, label %.critedge.i.i60, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i39
  %i.fk = getelementptr i8, ptr %.02962.i.i40, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1125 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i42, label %.critedge37.i.i43, label %.lr.ph.i.i39, !llvm.loop !6

end_hunk_3
