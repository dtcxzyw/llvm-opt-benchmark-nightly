inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@check_kwd_patterns:bb.a
  %i.p = getelementptr [8 x i8], ptr %i.c, i64 %.020
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.q, ptr noundef nonnull @.str.23) #7
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = add nuw nsw i64 %.020, 1
  br i1 %.not.i, label %.split, label %check_name.exit.thread, !llvm.loop !202

check_name.exit.thread:                           ; preds = %check_name.exit
  %i.t = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.24) #7
  %i.u = load ptr, ptr %0, align 8, !tbaa !31
  %i.v = add i32 %i.m, 1
  %i.w = add i32 %i.o, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.u, i32 noundef %i.i, i32 noundef %i.v, i32 noundef %i.k, i32 noundef %i.w) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.a, %check_name.exit.thread
  %not..not = phi i32 [ 0, %check_name.exit.thread ], [ 1, %bb.a ], [ 1, %.split ]
  ret i32 %not..not
}

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @symtable_raise_if_annotation_block(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  switch i32 %i.d, label %bb.g [
    i32 3, label %bb.b
    i32 6, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.63, ptr noundef %1) #7 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.i = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.64, ptr noundef %1, ptr noundef %i.h) #7 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.65, ptr noundef %1) #7 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.66, ptr noundef %1) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !31
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !86
  %i.r = getelementptr i8, ptr %2, i64 48
  %i.s = getelementptr i8, ptr %2, i64 44
  %i.t = getelementptr i8, ptr %2, i64 52
  %i.u = load i32, ptr %i.s, align 4, !tbaa !89
  %i.v = add i32 %i.u, 1
  %i.w = load i32, ptr %i.r, align 8, !tbaa !88
  %i.x = load i32, ptr %i.t, align 4, !tbaa !90
  %i.y = add i32 %i.x, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.y) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @symtable_handle_namedexpr(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.67) #7 ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %i.i = getelementptr i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr i8, ptr %1, i64 48
  %i.l = getelementptr i8, ptr %1, i64 44
  %i.m = getelementptr i8, ptr %1, i64 52
  %i.n = load i32, ptr %i.l, align 4, !tbaa !89
  %i.o = add i32 %i.n, 1
  %i.p = load i32, ptr %i.k, align 8, !tbaa !88
  %i.q = load i32, ptr %i.m, align 4, !tbaa !90
  %i.r = add i32 %i.q, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.r) #7
  br label %symtable_extend_namedexpr_scope.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.b, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !135
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 17 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 9 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val.i = load i64, ptr %i.aa, align 8, !tbaa !50
  %i.ab = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge.i, %bb.d
  %.pre189.i.ph = phi ptr [ %.pre.pre.i, %._crit_edge.i ], [ %i.z, %bb.d ]
  %.0160.in.i.ph = phi i64 [ %.0160.i, %._crit_edge.i ], [ %.val.i, %bb.d ]
  %i.ac = getelementptr i8, ptr %.pre189.i.ph, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.0160.in.i = phi i64 [ %.0160.i, %bb.i ], [ %.0160.in.i.ph, %.outer ]
  %.0160.i = add i64 %.0160.in.i, -1              ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.0160.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !135
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val174.i = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ai = tail call fastcc i64 @symtable_lookup_entry(ptr %.val174.i, ptr noundef nonnull %i.af, ptr noundef %i.x) ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i64 %i.ai, 514
  %or.cond.not.i = icmp eq i64 %i.ak, 514
  br i1 %or.cond.not.i, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.pre.i = load ptr, ptr %i.y, align 8, !tbaa !34
  br label %.outer, !llvm.loop !203

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.am = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.68, ptr noundef %i.x) #7 ; 0 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !31
  %i.ao = getelementptr i8, ptr %i.v, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !86
  %i.aq = getelementptr i8, ptr %i.v, i64 48
  %i.ar = getelementptr i8, ptr %i.v, i64 44
  %i.as = getelementptr i8, ptr %i.v, i64 52
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !89
  %i.au = add i32 %i.at, 1
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !88
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !90
  %i.ax = add i32 %i.aw, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.an, i32 noundef %i.ap, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.ax) #7
  br label %symtable_extend_namedexpr_scope.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.ay = getelementptr i8, ptr %i.af, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !56
  switch i32 %i.az, label %bb.e [
    i32 0, label %bb.j
    i32 2, label %bb.o
    i32 1, label %.loopexit.loopexit
    i32 5, label %.loopexit
    i32 4, label %.loopexit58
    i32 6, label %.loopexit66
  ], !llvm.loop !203

bb.j:                                             ; preds = %bb.i
  %.val173.i = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ba = tail call fastcc i64 @symtable_lookup_entry(ptr %.val173.i, ptr noundef nonnull %i.af, ptr noundef %i.x) ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = and i64 %i.ba, 1
  %.not167.i = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr i8, ptr %i.v, i64 40      ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !86
  %i.bf = getelementptr i8, ptr %i.v, i64 48      ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !88
  %i.bh = getelementptr i8, ptr %i.v, i64 44      ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !89
  %i.bj = getelementptr i8, ptr %i.v, i64 52      ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !90
  %.sroa.232.0.insert.ext.i = zext i32 %i.bg to i64
  %.sroa.232.0.insert.shift.i = shl nuw i64 %.sroa.232.0.insert.ext.i, 32
  %.sroa.031.0.insert.ext.i = zext i32 %i.be to i64
  %.sroa.031.0.insert.insert.i = or disjoint i64 %.sroa.232.0.insert.shift.i, %.sroa.031.0.insert.ext.i ; 2 uses
  %.sroa.534.8.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.534.8.insert.shift.i = shl nuw i64 %.sroa.534.8.insert.ext.i, 32
  %.sroa.333.8.insert.ext.i = zext i32 %i.bi to i64
  %.sroa.333.8.insert.insert.i = or disjoint i64 %.sroa.534.8.insert.shift.i, %.sroa.333.8.insert.ext.i ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  br i1 %.not167.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.x, i32 noundef 1, ptr noundef %i.bl, i64 %.sroa.031.0.insert.insert.i, i64 %.sroa.333.8.insert.insert.i)
  %.not169.i = icmp eq i32 %i.bm, 0
  br i1 %.not169.i, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bn = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.x, i32 noundef 8, ptr noundef %i.bl, i64 %.sroa.031.0.insert.insert.i, i64 %.sroa.333.8.insert.insert.i)
  %.not168.i = icmp eq i32 %i.bn, 0
  br i1 %.not168.i, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !86
  %i.bp = load i32, ptr %i.bf, align 8, !tbaa !88
  %i.bq = load i32, ptr %i.bh, align 4, !tbaa !89
  %i.br = load i32, ptr %i.bj, align 4, !tbaa !90
  %.sroa.228.0.insert.ext.i = zext i32 %i.bp to i64
  %.sroa.228.0.insert.shift.i = shl nuw i64 %.sroa.228.0.insert.ext.i, 32
  %.sroa.027.0.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.027.0.insert.insert.i = or disjoint i64 %.sroa.228.0.insert.shift.i, %.sroa.027.0.insert.ext.i
  %.sroa.530.8.insert.ext.i = zext i32 %i.br to i64
  %.sroa.530.8.insert.shift.i = shl nuw i64 %.sroa.530.8.insert.ext.i, 32
  %.sroa.329.8.insert.ext.i = zext i32 %i.bq to i64
  %.sroa.329.8.insert.insert.i = or disjoint i64 %.sroa.530.8.insert.shift.i, %.sroa.329.8.insert.ext.i
  %i.bs = tail call fastcc i32 @symtable_record_directive(ptr noundef nonnull readonly %0, ptr noundef %i.x, i64 %.sroa.027.0.insert.insert.i, i64 %.sroa.329.8.insert.insert.i)
  %.not170.i = icmp eq i32 %i.bs, 0
  br i1 %.not170.i, label %symtable_extend_namedexpr_scope.exit.thread, label %symtable_extend_namedexpr_scope.exit

bb.o:                                             ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %i.v, i64 40      ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !86
  %i.bv = getelementptr i8, ptr %i.v, i64 48      ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !88
  %i.bx = getelementptr i8, ptr %i.v, i64 44      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !89
  %i.bz = getelementptr i8, ptr %i.v, i64 52      ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !90
  %.sroa.220.0.insert.ext.i = zext i32 %i.bw to i64
  %.sroa.220.0.insert.shift.i = shl nuw i64 %.sroa.220.0.insert.ext.i, 32
  %.sroa.019.0.insert.ext.i = zext i32 %i.bu to i64
  %.sroa.019.0.insert.insert.i = or disjoint i64 %.sroa.220.0.insert.shift.i, %.sroa.019.0.insert.ext.i
  %.sroa.522.8.insert.ext.i = zext i32 %i.ca to i64
  %.sroa.522.8.insert.shift.i = shl nuw i64 %.sroa.522.8.insert.ext.i, 32
  %.sroa.321.8.insert.ext.i = zext i32 %i.by to i64
  %.sroa.321.8.insert.insert.i = or disjoint i64 %.sroa.522.8.insert.shift.i, %.sroa.321.8.insert.ext.i
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cc = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.x, i32 noundef 1, ptr noundef %i.cb, i64 %.sroa.019.0.insert.insert.i, i64 %.sroa.321.8.insert.insert.i)
  %.not165.i = icmp eq i32 %i.cc, 0
  br i1 %.not165.i, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.bt, align 8, !tbaa !86
  %i.ce = load i32, ptr %i.bv, align 8, !tbaa !88
  %i.cf = load i32, ptr %i.bx, align 4, !tbaa !89
  %i.cg = load i32, ptr %i.bz, align 4, !tbaa !90
  %.sroa.216.0.insert.ext.i = zext i32 %i.ce to i64
  %.sroa.216.0.insert.shift.i = shl nuw i64 %.sroa.216.0.insert.ext.i, 32
  %.sroa.015.0.insert.ext.i = zext i32 %i.cd to i64
  %.sroa.015.0.insert.insert.i = or disjoint i64 %.sroa.216.0.insert.shift.i, %.sroa.015.0.insert.ext.i
  %.sroa.518.8.insert.ext.i = zext i32 %i.cg to i64
  %.sroa.518.8.insert.shift.i = shl nuw i64 %.sroa.518.8.insert.ext.i, 32
  %.sroa.317.8.insert.ext.i = zext i32 %i.cf to i64
  %.sroa.317.8.insert.insert.i = or disjoint i64 %.sroa.518.8.insert.shift.i, %.sroa.317.8.insert.ext.i
  %i.ch = tail call fastcc i32 @symtable_record_directive(ptr noundef nonnull readonly %0, ptr noundef %i.x, i64 %.sroa.015.0.insert.insert.i, i64 %.sroa.317.8.insert.insert.i)
  %.not166.i = icmp eq i32 %i.ch, 0
  br i1 %.not166.i, label %symtable_extend_namedexpr_scope.exit.thread, label %symtable_extend_namedexpr_scope.exit

.loopexit58:                                      ; preds = %bb.i
  br label %.loopexit

.loopexit66:                                      ; preds = %bb.i
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.loopexit.loopexit, %.loopexit66, %.loopexit58
  %.str.72.sink.i = phi ptr [ @.str.71, %.loopexit58 ], [ @.str.69, %.loopexit.loopexit ], [ @.str.72, %.loopexit66 ], [ @.str.70, %bb.i ]
  %i.ci = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.cj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ci, ptr noundef nonnull %.str.72.sink.i) #7 ; 0 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !31
  %i.cl = getelementptr i8, ptr %i.v, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86
  %i.cn = getelementptr i8, ptr %i.v, i64 48
  %i.co = getelementptr i8, ptr %i.v, i64 44
  %i.cp = getelementptr i8, ptr %i.v, i64 52
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !89
  %i.cr = add i32 %i.cq, 1
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !88
  %i.ct = load i32, ptr %i.cp, align 4, !tbaa !90
  %i.cu = add i32 %i.ct, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.cu) #7
  br label %symtable_extend_namedexpr_scope.exit.thread

symtable_extend_namedexpr_scope.exit:             ; preds = %bb.p, %bb.n
  %.sink = phi i32 [ 2, %bb.n ], [ 1, %bb.p ]
  %.in = phi ptr [ %i.bf, %bb.n ], [ %i.bv, %bb.p ]
  %.in78 = phi ptr [ %i.bd, %bb.n ], [ %i.bt, %bb.p ]
  %2 = load <2 x i32>, ptr %.in78, align 8, !tbaa !7
  %3 = load <2 x i32>, ptr %.in, align 8, !tbaa !7
  %4 = zext <2 x i32> %3 to <2 x i64>
  %5 = zext <2 x i32> %2 to <2 x i64>
  %6 = shl nuw <2 x i64> %4, splat (i64 32)
  %7 = or disjoint <2 x i64> %6, %5               ; 2 uses
  %8 = extractelement <2 x i64> %7, i64 0
  %9 = extractelement <2 x i64> %7, i64 1
  %i.cv = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.x, i32 noundef %.sink, ptr noundef nonnull %i.af, i64 %8, i64 %9)
  %.not36 = icmp eq i32 %i.cv, 0
  br i1 %.not36, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.c, %symtable_extend_namedexpr_scope.exit
  %i.cw = getelementptr i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !22
  %i.cy = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.cx)
  %.not37 = icmp eq i32 %i.cy, 0
  br i1 %.not37, label %symtable_extend_namedexpr_scope.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !22
  %i.db = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.da)
  br label %symtable_extend_namedexpr_scope.exit.thread

symtable_extend_namedexpr_scope.exit.thread:      ; preds = %bb.f, %bb.h, %bb.j, %bb.m, %bb.l, %bb.n, %bb.o, %.loopexit, %bb.p, %bb.r, %bb.q, %symtable_extend_namedexpr_scope.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.q ], [ %i.db, %bb.r ], [ 0, %symtable_extend_namedexpr_scope.exit ], [ 0, %bb.p ], [ 0, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @symtable_raise_if_comprehension_block(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135  ; 3 uses
  %i.e = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.f = icmp eq i32 %i.d, 1
  %i.g = icmp eq i32 %i.d, 3
  %i.h = icmp eq i32 %i.d, 2
  %i.i = select i1 %i.h, ptr @.str.77, ptr @.str.78
  %i.j = select i1 %i.g, ptr @.str.76, ptr %i.i
  %i.k = select i1 %i.f, ptr @.str.75, ptr %i.j
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull %i.k) #7
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr i8, ptr %1, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !86
  %i.o = getelementptr i8, ptr %1, i64 48
  %i.p = getelementptr i8, ptr %1, i64 44
  %i.q = getelementptr i8, ptr %1, i64 52
  %i.r = load i32, ptr %i.p, align 4, !tbaa !89
  %i.s = add i32 %i.r, 1
  %i.t = load i32, ptr %i.o, align 8, !tbaa !88
  %i.u = load i32, ptr %i.q, align 4, !tbaa !90
  %i.v = add i32 %i.u, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.v) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @symtable_handle_comprehension(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !91
  %i.b = icmp eq i32 %i.a, 12                     ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 19 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr i8, ptr %i.f, i64 104      ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !55
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !55
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.k)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.n = getelementptr i8, ptr %i.m, i64 104      ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !55
  %.not110 = icmp eq ptr %2, null
  br i1 %.not110, label %.critedge128, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = getelementptr i8, ptr %1, i64 52         ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !90
  %.sroa.230.0.insert.ext = zext i32 %i.t to i64
  %.sroa.230.0.insert.shift = shl nuw i64 %.sroa.230.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i32 %i.r to i64
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.230.0.insert.shift, %.sroa.029.0.insert.ext
  %.sroa.5.8.insert.ext = zext i32 %i.x to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.331.8.insert.ext = zext i32 %i.v to i64
  %.sroa.331.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.331.8.insert.ext
  %i.y = tail call fastcc i32 @symtable_enter_block(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1, i64 %.sroa.029.0.insert.insert, i64 %.sroa.331.8.insert.insert)
  %.not111 = icmp eq i32 %i.y, 0
  br i1 %.not111, label %.critedge128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %1, align 8, !tbaa !91
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 96
  %switch.tableidx = add i32 %i.z, -9             ; 2 uses
  %i.ac = icmp ult i32 %switch.tableidx, 3
  br i1 %i.ac, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.ad = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.symtable_handle_comprehension, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.d ]
  store i32 %.sink, ptr %i.ab, align 8, !tbaa !135
  %i.ae = getelementptr i8, ptr %i.d, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !208
  %.not112 = icmp eq i32 %i.af, 0
  br i1 %.not112, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.aa, i64 92     ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = or i8 %i.ah, 2
  store i8 %i.ai, ptr %i.ag, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.74, i32 noundef 0) #7 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %symtable_implicit_arg.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 108
  %i.an = load i64, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 116
  %i.ap = load i64, ptr %i.ao, align 4            ; 3 uses
  %i.aq = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.23) #7
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %check_name.exit.thread.i.i, label %check_name.exit.i.i

check_name.exit.i.i:                              ; preds = %bb.h
  %.sroa.8.8.extract.shift.i.i.i = lshr i64 %i.ap, 32
  %.sroa.8.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.8.8.extract.shift.i.i.i to i32
  %.sroa.5.8.extract.trunc.i.i.i = trunc i64 %i.ap to i32
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %i.an, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.an to i32
  %i.ar = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.24) #7
  %i.as = load ptr, ptr %0, align 8, !tbaa !31
  %i.at = add i32 %.sroa.5.8.extract.trunc.i.i.i, 1
  %i.au = add i32 %.sroa.8.8.extract.trunc.i.i.i, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.as, i32 noundef %.sroa.0.0.extract.trunc.i.i.i, i32 noundef %i.at, i32 noundef %.sroa.3.0.extract.trunc.i.i.i, i32 noundef %i.au) #7
  br label %symtable_add_def_ctx.exit.i

check_name.exit.thread.i.i:                       ; preds = %bb.h
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.aw = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.aj, i32 noundef 4, ptr noundef %i.av, i64 %i.an, i64 %i.ap)
  %i.ax = icmp eq i32 %i.aw, 0
  br label %symtable_add_def_ctx.exit.i

symtable_add_def_ctx.exit.i:                      ; preds = %check_name.exit.thread.i.i, %check_name.exit.i.i
  %.0.i.i = phi i1 [ true, %check_name.exit.i.i ], [ %i.ax, %check_name.exit.thread.i.i ]
  %i.ay = load i32, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.i, label %symtable_implicit_arg.exit

bb.i:                                             ; preds = %symtable_add_def_ctx.exit.i
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.aj, align 8, !tbaa !22
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %symtable_implicit_arg.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #7
  br label %symtable_implicit_arg.exit

symtable_implicit_arg.exit:                       ; preds = %symtable_add_def_ctx.exit.i, %bb.i, %bb.j
  br i1 %.0.i.i, label %symtable_implicit_arg.exit.thread, label %bb.m

symtable_implicit_arg.exit.thread:                ; preds = %bb.g, %symtable_implicit_arg.exit
  store ptr null, ptr %i.e, align 8, !tbaa !35
  %i.bb = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val.i = load i64, ptr %i.bd, align 8, !tbaa !50 ; 5 uses
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %.critedge128, label %bb.k

bb.k:                                             ; preds = %symtable_implicit_arg.exit.thread
  %i.be = add i64 %.val.i, -1
  %i.bf = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.bc, i64 noundef %i.be, i64 noundef %.val.i, ptr noundef null) #7
  %i.bg = icmp slt i32 %i.bf, 0
  %.not12.i = icmp eq i64 %.val.i, 1
  %or.cond = or i1 %.not12.i, %i.bg
end_hunk_0
