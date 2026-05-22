inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@setup_subexp_call:bb.a
  %i.am = phi i32 [ %i.bz, %bb.r ], [ 0, %bb.n ], [ %i.u, %bb.i ]
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.s, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %i.aq = getelementptr i8, ptr %.tr, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !130
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %.tr, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = getelementptr i8, ptr %.tr, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  call void @onig_scan_env_set_error_string(ptr noundef nonnull %1, i32 noundef -217, ptr noundef %i.at, ptr noundef %i.av) #22
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !35
  %i.ay = or i32 %i.ax, 256
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !35
  %i.az = load i32, ptr %i.t, align 8, !tbaa !125 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 32
  %i.bb = shl nuw i32 1, %i.az
  %.sink132 = select i1 %i.ba, i32 %i.bb, i32 1
  %i.bc = getelementptr i8, ptr %1, i64 28        ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !72
  %i.be = or i32 %i.bd, %.sink132
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !72
  %i.bf = getelementptr i8, ptr %1, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.bh = getelementptr i8, ptr %.tr, i64 40
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !131
  br label %.critedge

bb.n:                                             ; preds = %bb.e
  %i.bi = getelementptr i8, ptr %.tr, i64 16      ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !128 ; 2 uses
  %i.bk = getelementptr i8, ptr %.tr, i64 24      ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bn = getelementptr i8, ptr %1, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bp = call i32 @onig_name_to_group_numbers(ptr noundef %i.bo, ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull %i.a) #22 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not85 = icmp eq i32 %i.bp, 1
  br i1 %.not85, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !56
  %i.bv = and i32 %i.bu, 1024
  %.not86 = icmp eq i32 %i.bv, 0
  br i1 %.not86, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q, %bb.o
  %.sink126 = phi i32 [ -217, %bb.o ], [ -220, %bb.q ] ; 2 uses
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !129
  call void @onig_scan_env_set_error_string(ptr noundef nonnull %1, i32 noundef %.sink126, ptr noundef %i.bw, ptr noundef %i.bx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 2 uses
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.k

bb.s:                                             ; preds = %tailrecurse
  %i.ca = getelementptr i8, ptr %.tr, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !133 ; 2 uses
  %i.cc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.split, label %.critedge

.split:                                           ; preds = %bb.s
  %i.ce = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cb, i1 true)
  %.off = add nsw i32 %i.ce, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %.critedge

.critedge:                                        ; preds = %tailrecurse, %.split, %bb.s, %bb.c, %.preheader98, %bb.b, %.preheader, %bb.h, %.thread, %bb.l, %bb.j, %bb.m
  %.3 = phi i32 [ -217, %bb.l ], [ 0, %bb.b ], [ 0, %bb.m ], [ -209, %bb.h ], [ %.sink126, %.thread ], [ 0, %bb.c ], [ -218, %bb.j ], [ %i.e, %.preheader ], [ %i.k, %.preheader98 ], [ 0, %bb.s ], [ 0, %.split ], [ 0, %tailrecurse ]
  ret i32 %.3
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @subexp_recursive_check_trav(ptr noundef captures(none) %0) unnamed_addr #12 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.w, %bb.h ]   ; 10 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %common.ret28 [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %bb.e
    i32 7, label %bb.g
    i32 6, label %bb.i
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %.034 = phi i32 [ %.135, %bb.d ], [ 0, %.preheader ]
  %.032 = phi ptr [ %i.h, %bb.d ], [ %.tr, %.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.032, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @subexp_recursive_check_trav(ptr noundef %i.c) ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %common.ret28, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.135 = phi i32 [ %.034, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %i.g = getelementptr i8, ptr %.032, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %common.ret28, label %bb.b, !llvm.loop !135

bb.e:                                             ; preds = %tailrecurse
  %i.i = getelementptr i8, ptr %.tr, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = tail call fastcc i32 @subexp_recursive_check_trav(ptr noundef %i.j) ; 2 uses
  %i.l = getelementptr i8, ptr %.tr, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp eq i32 %i.k, 1
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.f, label %common.ret28

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.tr, i64 48
  store i32 1, ptr %i.p, align 8, !tbaa !35
  br label %common.ret28

bb.g:                                             ; preds = %tailrecurse
  %i.q = getelementptr i8, ptr %.tr, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !133  ; 2 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.r)
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.split, label %common.ret28

.split:                                           ; preds = %bb.g
  %i.u = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.r, i1 true)
  %.off = add nsw i32 %i.u, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %bb.h, label %common.ret28

bb.h:                                             ; preds = %.split
  %i.v = getelementptr i8, ptr %.tr, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136
  br label %tailrecurse

bb.i:                                             ; preds = %tailrecurse
  %i.x = getelementptr i8, ptr %.tr, i64 4        ; 6 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !137  ; 2 uses
  %i.z = and i32 %i.y, 384
  %or.cond42.not = icmp eq i32 %i.z, 256
  br i1 %or.cond42.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = or i32 %i.y, 8
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !35
  %i.ab = getelementptr i8, ptr %.tr, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  %i.ad = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.ac)
  %.not39 = icmp eq i32 %i.ad, 0
  %.pre = load i32, ptr %i.x, align 4, !tbaa !35  ; 2 uses
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = or i32 %.pre, 128                       ; 2 uses
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi i32 [ %i.ae, %bb.k ], [ %.pre, %bb.j ]
  %i.ag = and i32 %i.af, -9
  store i32 %i.ag, ptr %i.x, align 4, !tbaa !35
  br label %bb.m

common.ret28:                                     ; preds = %bb.f, %bb.e, %bb.c, %bb.d, %tailrecurse, %.split, %bb.g, %bb.m
  %common.ret28.op = phi i32 [ %spec.select, %bb.m ], [ %i.d, %bb.c ], [ %i.k, %bb.e ], [ 1, %bb.f ], [ %.135, %bb.d ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.g ]
  ret i32 %common.ret28.op

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ah = getelementptr i8, ptr %.tr, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.aj = tail call fastcc i32 @subexp_recursive_check_trav(ptr noundef %i.ai)
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !137
  %i.al = lshr i32 %i.ak, 8
  %i.am = and i32 %i.al, 1
  %spec.select = or i32 %i.am, %i.aj
  br label %common.ret28
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @subexp_inf_recursive_check_trav(ptr noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #12 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 6 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %tailrecurse.backedge
    i32 7, label %bb.d
    i32 6, label %bb.e
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.024 = phi ptr [ %i.g, %bb.c ], [ %.tr, %.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.024, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @subexp_inf_recursive_check_trav(ptr noundef %i.c, ptr noundef %1) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.024, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %.critedge, label %bb.b, !llvm.loop !140

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.g, %bb.e, %.split
  %.sink = phi i64 [ 24, %bb.g ], [ 8, %.split ], [ 24, %bb.e ], [ 8, %tailrecurse ]
  %i.h = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.h, align 8, !tbaa !35
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.i = getelementptr i8, ptr %.tr, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !133  ; 2 uses
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.split, label %.critedge

.split:                                           ; preds = %bb.d
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 true)
  %.off = add nsw i32 %i.m, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %.critedge

bb.e:                                             ; preds = %tailrecurse
  %i.n = getelementptr i8, ptr %.tr, i64 4        ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !137  ; 2 uses
  %i.p = and i32 %i.o, 128
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %tailrecurse.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = or i32 %i.o, 8
  store i32 %i.q, ptr %i.n, align 4, !tbaa !35
  %i.r = getelementptr i8, ptr %.tr, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139
  %i.t = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.s, ptr noundef %1, i32 noundef 1)
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.n, align 4, !tbaa !35
  %i.w = and i32 %i.v, -9
  store i32 %i.w, ptr %i.n, align 4, !tbaa !35
  br label %tailrecurse.backedge

.critedge:                                        ; preds = %bb.f, %tailrecurse, %.split, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ], [ 0, %.split ], [ -221, %bb.f ], [ 0, %tailrecurse ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @setup_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #4 {
bb.a:
  %.sroa.0.i.i = alloca %struct.StrNode, align 8  ; 4 uses
  %i.a = alloca [7 x i8], align 1                 ; 6 uses
  %4 = alloca [13 x %struct.OnigCaseFoldCodeItem], align 16 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 96
  %i.d = getelementptr i8, ptr %3, i64 16
  %i.e = getelementptr i8, ptr %3, i64 92         ; 2 uses
  %i.f = getelementptr i8, ptr %3, i64 28         ; 4 uses
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %bb.a
  %.tr.ph = phi ptr [ %0, %bb.a ], [ %.tr.ph.be, %tailrecurse.outer.backedge ]
  %.tr342.ph = phi i32 [ %2, %bb.a ], [ %.tr342.ph.be, %tailrecurse.outer.backedge ] ; 13 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr = phi ptr [ %.tr.ph, %tailrecurse.outer ], [ %.tr.be, %tailrecurse.backedge ] ; 40 uses
  %i.g = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.g, label %common.ret865 [
    i32 8, label %.preheader
    i32 9, label %.preheader344
    i32 5, label %bb.ct
    i32 0, label %bb.u
    i32 7, label %bb.ee
    i32 6, label %bb.dl
    i32 4, label %bb.cp
  ]

.preheader344:                                    ; preds = %tailrecurse
  %i.h = or i32 %.tr342.ph, 1
  br label %bb.s

.preheader:                                       ; preds = %tailrecurse, %next_setup.exit.thread
  %.0245 = phi ptr [ %i.au, %next_setup.exit.thread ], [ null, %tailrecurse ] ; 2 uses
  %.0231 = phi ptr [ %i.aw, %next_setup.exit.thread ], [ %.tr, %tailrecurse ] ; 2 uses
  %i.i = getelementptr i8, ptr %.0231, i64 8      ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = tail call fastcc i32 @setup_tree(ptr noundef %i.j, ptr noundef %1, i32 noundef %.tr342.ph, ptr noundef %3) ; 2 uses
  %i.l = icmp ne ptr %.0245, null
  %i.m = icmp eq i32 %i.k, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %next_setup.exit

bb.b:                                             ; preds = %.preheader
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.r, %bb.b
  %.050.i = phi ptr [ %.0245, %bb.b ], [ %i.at, %bb.r ] ; 10 uses
  %i.o = load i32, ptr %.050.i, align 8, !tbaa !35
  switch i32 %i.o, label %next_setup.exit.thread [
    i32 5, label %bb.d
    i32 6, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.050.i, i64 24    ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !141
  %.not56.i = icmp eq i32 %i.q, 0
  br i1 %.not56.i, label %next_setup.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.050.i, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !143
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %next_setup.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc ptr @get_head_value_node(ptr noundef %i.n, i32 noundef 1, ptr noundef %1) ; 3 uses
  %.not57.i = icmp eq ptr %i.u, null
  br i1 %.not57.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %.not58.i = icmp eq i8 %i.x, 0
  br i1 %.not58.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %.050.i, i64 40
  store ptr %i.u, ptr %i.y, align 8, !tbaa !144
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.z = getelementptr i8, ptr %.050.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !145
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.j, label %next_setup.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.050.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35
  %.not59.i = icmp ugt i32 %i.ae, 4
  br i1 %.not59.i, label %next_setup.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call fastcc ptr @get_head_value_node(ptr noundef nonnull %i.ad, i32 noundef 0, ptr noundef %1) ; 2 uses
  %.not60.i = icmp eq ptr %i.af, null
  br i1 %.not60.i, label %next_setup.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call fastcc ptr @get_head_value_node(ptr noundef %i.n, i32 noundef 0, ptr noundef %1) ; 2 uses
  %.not61.i = icmp eq ptr %i.ag, null
  br i1 %.not61.i, label %next_setup.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call fastcc i32 @is_not_included(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %1)
  %.not62.i = icmp eq i32 %i.ah, 0
  br i1 %.not62.i, label %next_setup.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call ptr @onig_node_new_enclose(i32 noundef 4) #22 ; 4 uses
  %.not63.i = icmp eq ptr %i.ai, null
  br i1 %.not63.i, label %common.ret865, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35
  %i.al = or i32 %i.ak, 64
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !35
  tail call fastcc void @swap_node(ptr noundef nonnull %.050.i, ptr noundef nonnull %i.ai)
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !35
  br label %next_setup.exit.thread

bb.p:                                             ; preds = %bb.c
  %i.am = getelementptr i8, ptr %.050.i, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !147
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.q, label %next_setup.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %.050.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !137
  %i.ar = and i32 %i.aq, 256
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.r, label %next_setup.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %.050.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !139
  br label %bb.c

next_setup.exit:                                  ; preds = %.preheader
  br i1 %i.m, label %next_setup.exit.thread, label %common.ret865

next_setup.exit.thread:                           ; preds = %bb.p, %bb.q, %bb.c, %bb.o, %bb.l, %bb.m, %bb.k, %bb.e, %bb.j, %bb.i, %bb.d, %next_setup.exit
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.av = getelementptr i8, ptr %.0231, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %.not310 = icmp eq ptr %i.aw, null
  br i1 %.not310, label %common.ret865, label %.preheader, !llvm.loop !148
end_hunk_0
begin_hunk_1_@onig_is_code_in_cc:bb.a
  br i1 %i.k, label %onig_is_code_in_cc_len.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 4        ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.01719.i.i = phi i32 [ %.118.i.i, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = add i32 %.01719.i.i, %.020.i.i           ; 2 uses
  %i.p = lshr i32 %i.o, 1                         ; 2 uses
  %i.q = or i32 %i.o, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = icmp ugt i32 %1, %i.t                    ; 2 uses
  %i.v = add nuw i32 %i.p, 1
  %.118.i.i = select i1 %i.u, i32 %i.v, i32 %.01719.i.i ; 3 uses
  %.1.i.i = select i1 %i.u, i32 %.020.i.i, i32 %i.p ; 2 uses
  %i.w = icmp ult i32 %.118.i.i, %.1.i.i
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !226

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.017.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.118.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.x = icmp ult i32 %.017.lcssa.i.i, %i.m
  br i1 %i.x, label %bb.d, label %onig_is_code_in_cc_len.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = shl i32 %.017.lcssa.i.i, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr %i.n, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = icmp uge i32 %1, %i.ab
  %i.ad = zext i1 %i.ac to i32
  br label %onig_is_code_in_cc_len.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = lshr i32 %1, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = and i32 %1, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = and i32 %i.ak, 1
  br label %onig_is_code_in_cc_len.exit

onig_is_code_in_cc_len.exit:                      ; preds = %.thread, %._crit_edge.i.i, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.al, %bb.e ], [ 0, %.thread ], [ 0, %._crit_edge.i.i ], [ %i.ad, %bb.d ]
  %i.am = getelementptr i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !192
  %i.ao = and i32 %i.an, 1
  %.012.i = xor i32 %i.ao, %.0.i
  ret i32 %.012.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @noname_disable_map(ptr noundef captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %bb.a
  %.tr.ph = phi ptr [ %0, %bb.a ], [ %.tr.ph.be, %tailrecurse.outer.backedge ] ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.j
  %i.a = load ptr, ptr %.tr.ph, align 8, !tbaa !61 ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %bb.c
    i32 6, label %bb.f
    i32 7, label %bb.k
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.041 = phi ptr [ %i.e, %bb.b ], [ %i.a, %.preheader ] ; 2 uses
  %i.c = getelementptr i8, ptr %.041, i64 8
  tail call fastcc void @noname_disable_map(ptr noundef %i.c, ptr noundef %1, ptr noundef %2)
  %i.d = getelementptr i8, ptr %.041, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not49 = icmp eq ptr %i.e, null
  br i1 %.not49, label %.critedge, label %bb.b, !llvm.loop !228

bb.c:                                             ; preds = %tailrecurse
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  tail call fastcc void @noname_disable_map(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %2)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %.not48 = icmp eq ptr %i.h, %i.g
  br i1 %.not48, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @onig_reduce_nested_quantifier(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h) #22
  br label %.critedge

bb.f:                                             ; preds = %tailrecurse
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.a, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !137
  %i.p = and i32 %i.o, 1024
  %.not46 = icmp eq i32 %i.p, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %2, align 4, !tbaa !7
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %2, align 4, !tbaa !7
  %i.s = getelementptr i8, ptr %i.a, i64 12       ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !180
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %1, i64 %i.u
  store i32 %i.r, ptr %i.v, align 4, !tbaa !119
  %i.w = load i32, ptr %2, align 4, !tbaa !7
  store i32 %i.w, ptr %i.s, align 4, !tbaa !180
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.a, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !180
  %.not47 = icmp eq i32 %i.y, 0
  br i1 %.not47, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !139
  store ptr %i.aa, ptr %.tr.ph, align 8, !tbaa !61
  store ptr null, ptr %i.z, align 8, !tbaa !139
  tail call void @onig_node_free(ptr noundef nonnull %i.a) #22
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.i, %bb.f, %bb.h
  %i.ab = getelementptr i8, ptr %i.a, i64 24
  br label %tailrecurse.outer.backedge

bb.k:                                             ; preds = %tailrecurse
  %i.ac = getelementptr i8, ptr %i.a, i64 8       ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge, label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.k, %.loopexit
  %.tr.ph.be = phi ptr [ %i.ab, %.loopexit ], [ %i.ac, %bb.k ]
  br label %tailrecurse.outer

.critedge:                                        ; preds = %bb.k, %tailrecurse, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -209, 1) i32 @renumber_by_map(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 10 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %tailrecurse.backedge.sink.split
    i32 6, label %bb.d
    i32 4, label %bb.g
    i32 7, label %bb.l
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.031 = phi ptr [ %i.g, %bb.c ], [ %.tr, %.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.031, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @renumber_by_map(ptr noundef %i.c, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.031, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not37 = icmp eq ptr %i.g, null
  br i1 %.not37, label %.critedge, label %bb.b, !llvm.loop !229

tailrecurse.backedge.sink.split:                  ; preds = %tailrecurse, %bb.f, %bb.d
  %.sink64 = phi i64 [ 24, %bb.f ], [ 24, %bb.d ], [ 8, %tailrecurse ]
  %i.h = getelementptr i8, ptr %.tr, i64 %.sink64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.l
  %.tr.be = phi ptr [ %i.an, %bb.l ], [ %i.i, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.j = getelementptr i8, ptr %.tr, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !147
  %i.l = icmp eq i32 %i.k, 8
  br i1 %i.l, label %bb.e, label %tailrecurse.backedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.tr, i64 12       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !180  ; 2 uses
  %i.o = icmp sgt i32 %i.n, %2
  br i1 %i.o, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !119
  store i32 %i.r, ptr %i.m, align 4, !tbaa !180
  br label %tailrecurse.backedge.sink.split

bb.g:                                             ; preds = %tailrecurse
  %i.s = getelementptr i8, ptr %.tr, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !173
  %i.u = and i32 %i.t, 2048
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.tr, i64 8        ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !171  ; 2 uses
  %i.x = getelementptr i8, ptr %.tr, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !169  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr i8, ptr %.tr, i64 12
  %.022.i = select i1 %i.z, ptr %i.aa, ptr %i.y   ; 2 uses
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.02429.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.k ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %2
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !119 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = sext i32 %.02429.i to i64
  %i.ak = getelementptr [4 x i8], ptr %.022.i, i64 %i.aj
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !7
  %i.al = add i32 %.02429.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi i32 [ %i.al, %bb.j ], [ %.02429.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !230

._crit_edge.i:                                    ; preds = %bb.k, %bb.h
  %.024.lcssa.i = phi i32 [ 0, %bb.h ], [ %.1.i, %bb.k ]
  store i32 %.024.lcssa.i, ptr %i.v, align 8, !tbaa !171
  br label %.critedge

bb.l:                                             ; preds = %tailrecurse
  %i.am = getelementptr i8, ptr %.tr, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge, label %tailrecurse.backedge

.critedge:                                        ; preds = %bb.e, %bb.l, %tailrecurse, %.lr.ph.i, %bb.c, %bb.b, %._crit_edge.i, %bb.g
  %.1 = phi i32 [ -208, %.lr.ph.i ], [ 0, %bb.c ], [ -209, %bb.g ], [ 0, %._crit_edge.i ], [ %i.d, %bb.b ], [ -208, %bb.e ], [ 0, %tailrecurse ], [ 0, %bb.l ]
  ret i32 %.1
}

declare i32 @onig_renumber_name_table(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @onig_reduce_nested_quantifier(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @onig_scan_env_set_error_string(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @onig_name_to_group_numbers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @subexp_recursive_check(ptr noundef captures(none) %0) unnamed_addr #12 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 8 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %common.ret47 [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %tailrecurse.backedge
    i32 7, label %bb.c
    i32 10, label %bb.d
    i32 6, label %bb.f
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.018 = phi ptr [ %i.g, %bb.b ], [ %.tr, %.preheader ] ; 2 uses
  %.017 = phi i32 [ %i.e, %bb.b ], [ 0, %.preheader ]
  %i.b = getelementptr i8, ptr %.018, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.c)
  %i.e = or i32 %i.d, %.017                       ; 2 uses
  %i.f = getelementptr i8, ptr %.018, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %common.ret47, label %bb.b, !llvm.loop !231

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse
  %.tr.be.in = getelementptr i8, ptr %.tr, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !35
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr i8, ptr %.tr, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !133  ; 2 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.split, label %common.ret47

.split:                                           ; preds = %bb.c
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  %.off = add nsw i32 %i.l, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %common.ret47

bb.d:                                             ; preds = %tailrecurse
  %i.m = getelementptr i8, ptr %.tr, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.n)
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %common.ret47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.tr, i64 4        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = or i32 %i.q, 128
  store i32 %i.r, ptr %i.p, align 4, !tbaa !35
  br label %common.ret47

bb.f:                                             ; preds = %tailrecurse
  %i.s = getelementptr i8, ptr %.tr, i64 4        ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35   ; 3 uses
  %i.u = and i32 %i.t, 16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %common.ret47

bb.g:                                             ; preds = %bb.f
  %i.v = and i32 %i.t, 8
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.h, label %common.ret47

common.ret47:                                     ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.b, %tailrecurse, %.split, %bb.c, %bb.h
  %common.ret47.op = phi i32 [ %i.z, %bb.h ], [ %i.e, %bb.b ], [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.c ]
  ret i32 %common.ret47.op

bb.h:                                             ; preds = %bb.g
  %i.w = or disjoint i32 %i.t, 16
  store i32 %i.w, ptr %i.s, align 4, !tbaa !35
  %i.x = getelementptr i8, ptr %.tr, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.y)
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !35
  %i.ab = and i32 %i.aa, -17
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !35
  br label %common.ret47
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @subexp_inf_recursive_check(ptr noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 9 uses
  %i.b = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.b, label %common.ret119 [
    i32 8, label %bb.b
    i32 9, label %.preheader
    i32 5, label %bb.j
    i32 7, label %bb.l
    i32 10, label %tailrecurse.backedge
    i32 6, label %bb.m
  ]

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.061 = phi i32 [ %2, %bb.b ], [ %.162, %bb.g ] ; 2 uses
  %.058 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.g ]
  %.057 = phi ptr [ %.tr, %bb.b ], [ %i.m, %bb.g ] ; 2 uses
  %i.c = getelementptr i8, ptr %.057, i64 8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.d, ptr noundef %1, i32 noundef %.061) ; 4 uses
  %i.f = icmp slt i32 %i.e, 0
  %i.g = icmp eq i32 %i.e, 2
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or i32 %i.e, %.058                       ; 2 uses
  %.not73 = icmp eq i32 %.061, 0
  br i1 %.not73, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.j = call fastcc i32 @get_min_match_length(ptr noundef %i.i, ptr noundef %i.a, ptr noundef nonnull %1) ; 2 uses
  %.not74 = icmp eq i32 %i.j, 0
  br i1 %.not74, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.a, align 8, !tbaa !34
  %.not75 = icmp eq i64 %i.k, 0
  %spec.select = zext i1 %.not75 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.162 = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.f ]
  %i.l = getelementptr i8, ptr %.057, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not76 = icmp eq ptr %i.m, null
  br i1 %.not76, label %bb.h, label %bb.c, !llvm.loop !232

.thread:                                          ; preds = %bb.e, %bb.c
  %.0.ph = phi i32 [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.ret119

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.ret119

.preheader:                                       ; preds = %tailrecurse, %bb.i
  %.260 = phi i32 [ %i.s, %bb.i ], [ 1, %tailrecurse ]
  %.054 = phi ptr [ %i.u, %bb.i ], [ %.tr, %tailrecurse ] ; 2 uses
  %i.n = getelementptr i8, ptr %.054, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.o, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = icmp ne i32 %i.p, 2
  %or.cond4.not = and i1 %i.q, %i.r
  br i1 %or.cond4.not, label %bb.i, label %common.ret119

bb.i:                                             ; preds = %.preheader
  %i.s = and i32 %i.p, %.260                      ; 2 uses
  %i.t = getelementptr i8, ptr %.054, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.not70 = icmp eq ptr %i.u, null
  br i1 %.not70, label %common.ret119, label %.preheader, !llvm.loop !233

bb.j:                                             ; preds = %tailrecurse
  %i.v = getelementptr i8, ptr %.tr, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.w, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %common.ret119

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.tr, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp ne i32 %i.aa, 0
  %spec.select77 = zext i1 %i.ab to i32
  br label %common.ret119

bb.l:                                             ; preds = %tailrecurse
  %i.ac = getelementptr i8, ptr %.tr, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !133 ; 2 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.split, label %common.ret119

.split:                                           ; preds = %bb.l
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 true)
  %.off = add nsw i32 %i.ag, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %common.ret119

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse
  %.sink = phi i64 [ 32, %tailrecurse ], [ 8, %.split ]
  %i.ah = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.ah, align 8, !tbaa !35
  br label %tailrecurse

bb.m:                                             ; preds = %tailrecurse
  %i.ai = getelementptr i8, ptr %.tr, i64 4       ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !35 ; 3 uses
  %i.ak = and i32 %i.aj, 16
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.n, label %common.ret119

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %i.aj, 8
  %.not69 = icmp eq i32 %i.al, 0
  br i1 %.not69, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp eq i32 %2, 0
  %i.an = select i1 %i.am, i32 1, i32 2
  br label %common.ret119

common.ret119:                                    ; preds = %bb.j, %bb.k, %bb.h, %.thread, %bb.m, %bb.o, %bb.i, %.preheader, %tailrecurse, %.split, %bb.l, %bb.p
  %common.ret119.op = phi i32 [ %i.ar, %bb.p ], [ %i.p, %.preheader ], [ %i.x, %bb.j ], [ %.0.ph, %.thread ], [ 0, %bb.m ], [ %i.an, %bb.o ], [ %spec.select77, %bb.k ], [ %i.h, %bb.h ], [ %i.s, %bb.i ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.l ]
  ret i32 %common.ret119.op

bb.p:                                             ; preds = %bb.n
  %i.ao = or disjoint i32 %i.aj, 16
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !35
  %i.ap = getelementptr i8, ptr %.tr, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.ar = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.aq, ptr noundef %1, i32 noundef %2)
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.at = and i32 %i.as, -17
  store i32 %i.at, ptr %i.ai, align 4, !tbaa !35
  br label %common.ret119
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @get_min_match_length(ptr noundef captures(address) %0, ptr noundef nonnull initializes((0, 8)) %1, ptr noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %1, align 8, !tbaa !34
  %i.b = load i32, ptr %0, align 8, !tbaa !35
  switch i32 %i.b, label %.critedge [
    i32 4, label %bb.b
    i32 10, label %bb.i
    i32 8, label %.preheader133
    i32 9, label %.preheader136
    i32 0, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
    i32 3, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not124 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %2, i64 104
  %i.f = select i1 %.not124, ptr %i.e, ptr %i.d   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !173
  %i.i = and i32 %i.h, 128
  %.not125 = icmp eq i32 %i.i, 0
  br i1 %.not125, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169  ; 2 uses
  %.not126 = icmp eq ptr %i.k, null
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = select i1 %.not126, ptr %i.l, ptr %i.k   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 92         ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !60
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = tail call fastcc i32 @get_min_match_length(ptr noundef %i.t, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not127 = icmp eq i32 %i.u, 0
  br i1 %.not127, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !171
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.preheader ] ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !60
  %i.ab = icmp sgt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr [8 x i8], ptr %i.f, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = call fastcc i32 @get_min_match_length(ptr noundef %i.ae, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %.not128 = icmp eq i32 %i.af, 0
  br i1 %.not128, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %1, align 8, !tbaa !34
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.ah, ptr %1, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !171
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %.lr.ph, label %.critedge, !llvm.loop !234

bb.i:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35
  %i.ao = and i32 %i.an, 128
  %.not122 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 3 uses
  br i1 %.not122, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !137
  %i.at = and i32 %i.as, 1
  %.not123 = icmp eq i32 %i.at, 0
  br i1 %.not123, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.aq, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !235
  store i64 %i.av, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.aw = tail call fastcc i32 @get_min_match_length(ptr noundef %i.aq, ptr noundef %1, ptr noundef %2)
  br label %.critedge

.preheader133:                                    ; preds = %bb.a, %bb.m
  %.094 = phi ptr [ %i.bf, %bb.m ], [ %0, %bb.a ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.094, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.az = call fastcc i32 @get_min_match_length(ptr noundef %i.ay, ptr noundef %i.a, ptr noundef %2) ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.preheader133
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !34
  %i.bc = load i64, ptr %1, align 8, !tbaa !34
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %1, align 8, !tbaa !34
  %i.be = getelementptr i8, ptr %.094, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %.not121 = icmp eq ptr %i.bf, null
  br i1 %.not121, label %.critedge, label %.preheader133, !llvm.loop !236

.preheader136:                                    ; preds = %bb.a, %bb.q
  %.097 = phi ptr [ %i.bp, %bb.q ], [ %0, %bb.a ] ; 3 uses
  %i.bg = getelementptr i8, ptr %.097, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bi = call fastcc i32 @get_min_match_length(ptr noundef %i.bh, ptr noundef %i.a, ptr noundef %2) ; 2 uses
  %.not119 = icmp eq i32 %i.bi, 0
  br i1 %.not119, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.preheader136
  %i.bj = icmp eq ptr %.097, %0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !34
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %1, align 8, !tbaa !34
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ %i.bk, %bb.o ], [ %i.bm, %bb.p ]
  store i64 %.sink, ptr %1, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.bo = getelementptr i8, ptr %.097, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 2 uses
  %.not120 = icmp eq ptr %i.bp, null
  br i1 %.not120, label %.critedge, label %.preheader136, !llvm.loop !237

bb.r:                                             ; preds = %bb.a
  %i.bq = getelementptr i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !152
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !150
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  store i64 1, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.t:                                             ; preds = %bb.a, %bb.a
  store i64 1, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.u:                                             ; preds = %bb.a
  %i.bx = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !145
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !146
  %i.cc = tail call fastcc i32 @get_min_match_length(ptr noundef %i.cb, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.bx, align 8, !tbaa !145 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %distance_multiply.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load i64, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ch = sext i32 %i.ce to i64                   ; 2 uses
  %i.ci = udiv i64 -1, %i.ch
  %i.cj = icmp ult i64 %i.cg, %i.ci
  %i.ck = mul i64 %i.cg, %i.ch
  %spec.select.i = select i1 %i.cj, i64 %i.ck, i64 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.w, %bb.x
  %.0.i = phi i64 [ 0, %bb.w ], [ %spec.select.i, %bb.x ]
  store i64 %.0.i, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.y:                                             ; preds = %bb.a
  %i.cl = getelementptr i8, ptr %0, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !147 ; 2 uses
  %i.cn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cm)
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %.split, label %.critedge

.split:                                           ; preds = %bb.y
  %i.cp = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cm, i1 true)
  switch i32 %i.cp, label %.critedge [
    i32 0, label %bb.z
    i32 1, label %bb.ae
    i32 2, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.z:                                             ; preds = %.split
  %i.cq = getelementptr i8, ptr %0, i64 4         ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !137 ; 3 uses
  %i.cs = and i32 %i.cr, 1
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr i8, ptr %0, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !235
  store i64 %i.cu, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.cv = and i32 %i.cr, 8
  %.not118 = icmp eq i32 %i.cv, 0
  br i1 %.not118, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.cw = or disjoint i32 %i.cr, 8
  store i32 %i.cw, ptr %i.cq, align 4, !tbaa !35
  %i.cx = getelementptr i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !139
  %i.cz = tail call fastcc i32 @get_min_match_length(ptr noundef %i.cy, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.da = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.db = and i32 %i.da, -9                       ; 2 uses
  store i32 %i.db, ptr %i.cq, align 4, !tbaa !35
  %i.dc = icmp eq i32 %i.cz, 0
  br i1 %i.dc, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load i64, ptr %1, align 8, !tbaa !34
  %i.de = getelementptr i8, ptr %0, i64 32
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !235
  %i.df = or i32 %i.db, 1
  store i32 %i.df, ptr %i.cq, align 4, !tbaa !35
  br label %.critedge

bb.ae:                                            ; preds = %.split, %.split, %.split
  %i.dg = getelementptr i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !139
  %i.di = tail call fastcc i32 @get_min_match_length(ptr noundef %i.dh, ptr noundef %1, ptr noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %.preheader136, %bb.q, %bb.m, %.preheader133, %.lr.ph, %bb.e, %bb.h, %bb.ab, %.preheader, %bb.d, %bb.b, %bb.c, %bb.r, %bb.s, %bb.t, %bb.l, %bb.a, %bb.k, %bb.j, %bb.v, %distance_multiply.exit, %bb.u, %bb.aa, %bb.ac, %bb.ad, %bb.y, %bb.ae, %.split
  %.1 = phi i32 [ %i.u, %bb.d ], [ 0, %bb.a ], [ 0, %bb.u ], [ %i.aw, %bb.l ], [ 0, %.preheader ], [ -208, %bb.c ], [ 0, %bb.y ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %distance_multiply.exit ], [ %i.cc, %bb.v ], [ 0, %.split ], [ 0, %bb.aa ], [ %i.az, %.preheader133 ], [ 0, %bb.ad ], [ %i.cz, %bb.ac ], [ %i.di, %bb.ae ], [ 0, %bb.ab ], [ -208, %.lr.ph ], [ %i.af, %bb.e ], [ 0, %bb.m ], [ 0, %bb.q ], [ %i.bi, %.preheader136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @quantifiers_memory_node_info(ptr noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 6 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 10, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.019 = phi i32 [ %spec.select, %bb.b ], [ 0, %.preheader ]
  %.017 = phi ptr [ %i.f, %bb.b ], [ %.tr, %.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.017, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call fastcc i32 @quantifiers_memory_node_info(ptr noundef %i.c)
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %.019) ; 2 uses
  %i.e = getelementptr i8, ptr %.017, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %.critedge, label %bb.b, !llvm.loop !238

bb.c:                                             ; preds = %tailrecurse
  %i.g = getelementptr i8, ptr %.tr, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = and i32 %i.h, 128
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %tailrecurse.backedge, label %.critedge

tailrecurse.backedge:                             ; preds = %bb.c, %.split, %.split, %.split, %.split, %bb.d
  %.sink = phi i64 [ 24, %.split ], [ 8, %bb.d ], [ 24, %.split ], [ 24, %.split ], [ 24, %.split ], [ 32, %bb.c ]
  %i.j = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.j, align 8, !tbaa !35
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.k = getelementptr i8, ptr %.tr, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !143
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %tailrecurse.backedge

bb.e:                                             ; preds = %tailrecurse
  %i.m = getelementptr i8, ptr %.tr, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !147  ; 2 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.split, label %.critedge

.split:                                           ; preds = %bb.e
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true)
  switch i32 %i.q, label %.critedge [
    i32 0, label %.critedge.loopexit40
    i32 1, label %tailrecurse.backedge
    i32 2, label %tailrecurse.backedge
    i32 3, label %tailrecurse.backedge
    i32 4, label %tailrecurse.backedge
  ]

.critedge.loopexit40:                             ; preds = %.split
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %tailrecurse, %bb.d, %bb.c, %bb.b, %.split, %.critedge.loopexit40
  %.1 = phi i32 [ 0, %.split ], [ %spec.select, %bb.b ], [ 0, %bb.e ], [ 0, %tailrecurse ], [ 0, %bb.d ], [ 3, %bb.c ], [ 2, %.critedge.loopexit40 ]
  ret i32 %.1
}

declare ptr @onig_node_new_str(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @onig_node_str_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @onig_node_new_list(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_node(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
bb.a:
  %.sroa.0 = alloca %struct.StrNode, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !167
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, i64 56, i1 false), !tbaa.struct !167
  %i.a = load i32, ptr %0, align 8, !tbaa !35
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !150
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  store ptr %i.n, ptr %i.f, align 8, !tbaa !152
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !168
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !152
  %i.v = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !150
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %1, i64 32        ; 2 uses
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !150
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !152
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

declare ptr @onig_node_list_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @check_type_tree(ptr noundef readonly captures(none) %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #11 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %3, %2
  %.tr = phi ptr [ %0, %2 ], [ %5, %3 ]           ; 2 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35   ; 2 uses
  %i.b = shl nuw i32 1, %i.a
  %i.c = and i32 %i.b, 2031
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %tailrecurse, %tailrecurse.backedge
  %i.e = phi i32 [ %i.n, %tailrecurse.backedge ], [ %i.a, %tailrecurse ]
  %.tr47 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %.tr, %tailrecurse ] ; 6 uses
  switch i32 %i.e, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

.preheader:                                       ; preds = %.lr.ph, %.lr.ph
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.b
  %.034 = phi ptr [ %i.k, %bb.b ], [ %.tr47, %.preheader ] ; 2 uses
  %i.f = getelementptr i8, ptr %.034, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = tail call fastcc i32 @check_type_tree(ptr noundef %i.g, i32 noundef %1)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.034, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %.critedge, label %bb.a, !llvm.loop !239

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.tr47, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.c, %bb.f
  %.tr.be = phi ptr [ %i.m, %bb.c ], [ %i.z, %bb.f ] ; 2 uses
  %i.n = load i32, ptr %.tr.be, align 8, !tbaa !35 ; 2 uses
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.o, 2031
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.tr47, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !147
  %i.t = and i32 %i.s, %1
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %.critedge, label %3

3:                                                ; preds = %bb.d
  %4 = getelementptr i8, ptr %.tr47, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  br label %tailrecurse

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.tr47, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = and i32 %i.v, 78823
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %.tr47, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge, label %tailrecurse.backedge

.critedge:                                        ; preds = %tailrecurse.backedge, %bb.e, %.lr.ph, %bb.f, %bb.b, %bb.a, %tailrecurse, %bb.d
  %.1 = phi i32 [ 1, %tailrecurse ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.a ], [ 0, %.lr.ph ], [ 1, %tailrecurse.backedge ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i32 @setup_look_behind(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %.sroa.0.i.i = alloca %struct.StrNode, align 8  ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = call fastcc i32 @get_char_length_tree1(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  switch i32 %i.d, label %.fold.split [
    i32 0, label %bb.b
    i32 -1, label %divide_look_behind_alternatives.exit
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  %i.f = getelementptr i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !213
  br label %divide_look_behind_alternatives.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !56
  %i.k = and i32 %i.j, 64
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %divide_look_behind_alternatives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !133  ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !136  ; 8 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !tbaa.struct !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i, i64 56, i1 false), !tbaa.struct !167
  %i.q = load i32, ptr %0, align 8, !tbaa !35
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !168
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !150
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !152
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !35
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %swap_node.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.n, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !168
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %swap_node.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.n, i64 16      ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr i8, ptr %i.n, i64 32
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !152
  br label %swap_node.exit.i

swap_node.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store ptr %i.n, ptr %i.b, align 8, !tbaa !35
  store ptr %i.p, ptr %i.o, align 8, !tbaa !35
  %i.aq = getelementptr i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %.not27.i = icmp eq ptr %i.ar, null
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %swap_node.exit.i, %bb.j
  %i.as = phi ptr [ %i.az, %bb.j ], [ %i.ar, %swap_node.exit.i ] ; 2 uses
  %i.at = call ptr @onig_node_new_anchor(i32 noundef %i.m) #22 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %divide_look_behind_alternatives.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !35
  store ptr %i.at, ptr %i.av, align 8, !tbaa !35
  %i.ay = getelementptr i8, ptr %i.as, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !240

._crit_edge.i:                                    ; preds = %bb.j, %swap_node.exit.i
  %i.ba = icmp eq i32 %i.m, 8192
  br i1 %i.ba, label %.preheader.i, label %divide_look_behind_alternatives.exit

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %.1.i = phi ptr [ %i.bc, %.preheader.i ], [ %0, %._crit_edge.i ] ; 2 uses
  store i32 8, ptr %.1.i, align 1
  %i.bb = getelementptr i8, ptr %.1.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35 ; 2 uses
  %.not25.i = icmp eq ptr %i.bc, null
  br i1 %.not25.i, label %divide_look_behind_alternatives.exit, label %.preheader.i, !llvm.loop !241

.fold.split:                                      ; preds = %bb.a
  br label %divide_look_behind_alternatives.exit

divide_look_behind_alternatives.exit:             ; preds = %.lr.ph.i, %.preheader.i, %._crit_edge.i, %bb.c, %bb.a, %.fold.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -122, %bb.a ], [ -122, %bb.c ], [ %i.d, %.fold.split ], [ 0, %.preheader.i ], [ 0, %._crit_edge.i ], [ -5, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @get_head_value_node(ptr noundef readonly captures(ret: address, provenance) %0, i32 noundef range(i32 0, 2) %1, ptr noundef captures(none) %2) unnamed_addr #12 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 12 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %common.ret57 [
    i32 7, label %bb.k
    i32 6, label %bb.i
    i32 5, label %bb.h
    i32 0, label %bb.c
    i32 2, label %bb.b
    i32 1, label %bb.b
    i32 8, label %tailrecurse.backedge
  ]

bb.b:                                             ; preds = %tailrecurse, %tailrecurse
  %i.b = icmp eq i32 %1, 0
  %spec.select = select i1 %i.b, ptr %.tr, ptr null
  br label %common.ret57

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.k, %.split, %.split, %.split, %bb.h
  %.sink = phi i64 [ 8, %bb.k ], [ 24, %.split ], [ 8, %bb.h ], [ 24, %.split ], [ 24, %.split ], [ 8, %tailrecurse ]
  %i.c = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.d = getelementptr i8, ptr %.tr, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  %i.f = getelementptr i8, ptr %.tr, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150
  %.not = icmp ugt ptr %i.e, %i.g
  br i1 %.not, label %bb.d, label %common.ret57

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %1, 0
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.tr, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = and i32 %i.j, 1
  %.not35 = icmp eq i32 %i.k, 0
  br i1 %.not35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %2, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = and i32 %i.m, 1
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %bb.g, label %common.ret57

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %common.ret57

bb.h:                                             ; preds = %tailrecurse
  %i.o = getelementptr i8, ptr %.tr, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !145
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %tailrecurse.backedge, label %common.ret57

end_hunk_1
begin_hunk_2_@compile_length_tree:bb.a
  %.0.i67 = phi i32 [ 5, %bb.ad ], [ 37, %bitset_is_empty.exit.thread.i ], [ 5, %bitset_is_empty.exit.i ]
  %i.fc = getelementptr i8, ptr %i.ef, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !16
  %i.fe = add i32 %i.fd, %.0.i67
  br label %common.ret184

bb.am:                                            ; preds = %bb.a
  %i.ff = getelementptr i8, ptr %0, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !173
  %i.fh = and i32 %i.fg, 8192
  %.not = icmp eq i32 %i.fh, 0
  %i.fi = getelementptr i8, ptr %0, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !171 ; 3 uses
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = shl i32 %i.fj, 1
  %i.fl = add i32 %i.fk, 13
  br label %common.ret184

bb.ao:                                            ; preds = %bb.am
  %i.fm = icmp eq i32 %i.fj, 1
  br i1 %i.fm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr i8, ptr %1, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !59
  %i.fp = and i32 %i.fo, 1
  %.not57 = icmp eq i32 %i.fp, 0
  br i1 %.not57, label %bb.aq, label %common.ret184

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr i8, ptr %0, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = icmp slt i32 %i.fr, 3
  %i.ft = select i1 %i.fs, i32 1, i32 3
  br label %common.ret184

bb.ar:                                            ; preds = %bb.ao
  %i.fu = shl i32 %i.fj, 1
  %i.fv = add i32 %i.fu, 5
  br label %common.ret184

bb.as:                                            ; preds = %bb.a
  br label %common.ret184

bb.at:                                            ; preds = %bb.a
  %i.fw = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !143
  %i.fy = icmp eq i32 %i.fx, -1                   ; 4 uses
  %i.fz = getelementptr i8, ptr %0, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !177
  %i.gb = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !146
  %i.gd = tail call fastcc i32 @compile_length_tree(ptr noundef %i.gc, ptr noundef %1), !inline_history !324 ; 11 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %common.ret184, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !146
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !35
  %i.gh = icmp eq i32 %i.gg, 3
  br i1 %i.gh, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr i8, ptr %0, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !141
  %i.gk = icmp ne i32 %i.gj, 0
  %or.cond.i = select i1 %i.gk, i1 %i.fy, i1 false
  br i1 %or.cond.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gl = getelementptr i8, ptr %0, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !144
  %.not67.i = icmp eq ptr %i.gm, null
  %i.gn = getelementptr i8, ptr %0, i64 16
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !145
  %i.gp = mul i32 %i.go, %i.gd                    ; 2 uses
  br i1 %.not67.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = add i32 %i.gp, 2
  br label %common.ret184

bb.ay:                                            ; preds = %bb.aw
  %i.gr = add i32 %i.gp, 1
  br label %common.ret184

bb.az:                                            ; preds = %bb.av, %bb.au
  %.not.i69 = icmp eq i32 %i.ga, 0
  %i.gs = add nuw i32 %i.gd, 6
  %.057.i = select i1 %.not.i69, i32 %i.gd, i32 %i.gs ; 4 uses
  br i1 %i.fy, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gt = getelementptr i8, ptr %0, i64 16
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !145 ; 3 uses
  %i.gv = icmp slt i32 %i.gu, 2
  %i.gw = mul i32 %i.gu, %i.gd                    ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 51
  %or.cond69.i = or i1 %i.gv, %i.gx
  br i1 %or.cond69.i, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.gy = icmp eq i32 %i.gu, 1
  %i.gz = icmp samesign ugt i32 %i.gd, 50
  %or.cond3.i = and i1 %i.gz, %i.gy
  %.056.i = select i1 %or.cond3.i, i32 5, i32 %i.gw ; 3 uses
  %i.ha = getelementptr i8, ptr %0, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !141
  %.not65.i = icmp eq i32 %i.hb, 0
  br i1 %.not65.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = getelementptr i8, ptr %0, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !144
  %.not66.i = icmp eq ptr %i.hd, null
  br i1 %.not66.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.he = add nuw i32 %.057.i, 11
  %i.hf = add i32 %i.he, %.056.i
  br label %common.ret184

bb.be:                                            ; preds = %bb.bc
  %i.hg = add nuw i32 %.057.i, 10
  %i.hh = add i32 %i.hg, %.056.i
  br label %common.ret184

bb.bf:                                            ; preds = %bb.bb
  %i.hi = add nuw i32 %.057.i, 10
  %i.hj = add i32 %i.hi, %.056.i
  br label %common.ret184

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.hk = load i32, ptr %i.fw, align 4, !tbaa !143 ; 4 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hm = getelementptr i8, ptr %0, i64 48
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !204
  %.not62.i = icmp eq i32 %i.hn, 0
  br i1 %.not62.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = add nuw i32 %i.gd, 5
  br label %common.ret184

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre101.a = load i32, ptr %.phi.trans.insert, align 8, !tbaa !141
  %i.hp = icmp eq i32 %.pre101.a, 0               ; 2 uses
  %brmerge = select i1 %i.fy, i1 true, i1 %i.hp
  %i.hq = icmp eq i32 %i.hk, 1                    ; 2 uses
  br i1 %brmerge, label %._crit_edge100, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.pre103 = add nuw i32 %i.gd, 5                 ; 2 uses
  %i.hr = mul i32 %i.hk, %.pre103
  %i.hs = icmp slt i32 %i.hr, 51
  %or.cond163 = select i1 %i.hq, i1 true, i1 %i.hs
  br i1 %or.cond163, label %._crit_edge102, label %.thread152

._crit_edge102:                                   ; preds = %bb.bk
  %i.ht = getelementptr i8, ptr %0, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !145 ; 2 uses
  %i.hv = mul i32 %i.hu, %i.gd
  %i.hw = sub i32 %i.hk, %i.hu
  %i.hx = mul i32 %i.hw, %.pre103
  %i.hy = add i32 %i.hx, %i.hv
  br label %common.ret184

._crit_edge100:                                   ; preds = %bb.bj
  %not. = xor i1 %i.fy, true
  %.mux = select i1 %not., i1 true, i1 %i.hp
  %or.cond = and i1 %i.hq, %.mux
  br i1 %or.cond, label %bb.bl, label %.thread152

bb.bl:                                            ; preds = %._crit_edge100
  %i.hz = getelementptr i8, ptr %0, i64 16
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !145
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.bm, label %.thread152

bb.bm:                                            ; preds = %bb.bl
  %i.ic = add nuw i32 %i.gd, 10
  br label %common.ret184

.thread152:                                       ; preds = %bb.bk, %bb.bl, %._crit_edge100
  %i.id = add nuw i32 %.057.i, 10
  br label %common.ret184

bb.bn:                                            ; preds = %bb.a
  %i.ie = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !147 ; 2 uses
  %i.ig = icmp eq i32 %i.if, 2
  br i1 %i.ig, label %bb.bo, label %bb.bp

common.ret184:                                    ; preds = %bb.by, %bb.ce, %bb.cc, %bb.cb, %bb.cd, %bb.as, %bb.ap, %bb.aq, %bb.ar, %bb.an, %.thread.a, %bb.e, %add_compile_string_length.exit.i, %bb.f, %add_compile_string_length.exit82.i, %bb.ac, %bb.al, %bb.at, %bb.ax, %bb.ay, %bb.bd, %bb.be, %bb.bf, %bb.bi, %._crit_edge102, %bb.bm, %.thread152, %bb.bq, %bb.br, %.split.i, %bb.bw, %bb.bx, %bb.bz, %bb.ca, %bb.cf, %bb.ch, %bb.ci, %.split.i77, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.a, %compile_length_string_raw_node.exit, %bb.b, %.preheader, %.preheader84, %bb.bo
  %common.ret184.op = phi i32 [ %i.in, %bb.bo ], [ %i.d, %.preheader ], [ 1, %bb.ci ], [ -6, %bb.a ], [ %i.kp, %bb.cl ], [ 1, %compile_length_string_raw_node.exit ], [ %i.r, %.thread.a ], [ %i.ft, %bb.aq ], [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %.split.i77 ], [ 5, %bb.as ], [ 33, %bb.ac ], [ %i.hy, %._crit_edge102 ], [ %i.fl, %bb.an ], [ %i.fv, %bb.ar ], [ 3, %bb.ap ], [ %i.ae, %add_compile_string_length.exit.i ], [ %i.ed, %add_compile_string_length.exit82.i ], [ %i.fe, %bb.al ], [ %i.gd, %bb.at ], [ %i.gq, %bb.ax ], [ %i.gr, %bb.ay ], [ %i.hf, %bb.bd ], [ %i.hh, %bb.be ], [ %i.hj, %bb.bf ], [ %i.ho, %bb.bi ], [ %i.id, %.thread152 ], [ %i.ic, %bb.bm ], [ %i.jq, %bb.cb ], [ %i.iq, %bb.bq ], [ -11, %bb.ca ], [ -6, %.split.i ], [ %i.kd, %bb.cf ], [ -6, %bb.br ], [ %i.jh, %bb.bw ], [ %i.ji, %bb.bx ], [ %i.jj, %bb.by ], [ -11, %bb.cc ], [ %i.jk, %bb.bz ], [ %i.jy, %bb.cd ], [ %spec.select, %bb.ce ], [ %i.kg, %bb.ch ], [ %i.kq, %bb.cm ], [ %i.kn, %bb.cj ], [ %i.ko, %bb.ck ], [ %i.f, %bb.b ], [ %i.k, %.preheader84 ]
  ret i32 %common.ret184.op

bb.bo:                                            ; preds = %bb.bn
  %i.ih = getelementptr i8, ptr %1, i64 56        ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !59
  %i.ij = getelementptr i8, ptr %0, i64 16
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !207
  store i32 %i.ik, ptr %i.ih, align 8, !tbaa !59
  %i.il = getelementptr i8, ptr %0, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !139
  %i.in = tail call fastcc i32 @compile_length_tree(ptr noundef %i.im, ptr noundef %1), !inline_history !325
  store i32 %i.ii, ptr %i.ih, align 8, !tbaa !59
  br label %common.ret184

bb.bp:                                            ; preds = %bb.bn
  %i.io = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !139 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ip, null
  br i1 %.not.i71, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iq = tail call fastcc i32 @compile_length_tree(ptr noundef nonnull %i.ip, ptr noundef %1), !inline_history !326 ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %common.ret184, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bq
  %.pre = load i32, ptr %i.ie, align 8, !tbaa !147
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge, %bb.bp
  %i.is = phi i32 [ %.pre, %._crit_edge ], [ %i.if, %bb.bp ] ; 2 uses
  %.057.i72 = phi i32 [ %i.iq, %._crit_edge ], [ 0, %bb.bp ] ; 5 uses
  %i.it = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.is)
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %.split.i, label %common.ret184

.split.i:                                         ; preds = %bb.br
  %i.iv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.is, i1 true)
  switch i32 %i.iv, label %common.ret184 [
    i32 0, label %bb.bs
    i32 2, label %bb.bz
    i32 3, label %bb.ca
    i32 4, label %bb.cf
  ]

bb.bs:                                            ; preds = %.split.i
  %i.iw = getelementptr i8, ptr %0, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !137
  %i.iy = and i32 %i.ix, 256
  %.not74.i = icmp eq i32 %i.iy, 0
  br i1 %.not74.i, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iz = getelementptr i8, ptr %0, i64 12
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !180 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 32
  %i.jc = getelementptr i8, ptr %1, i64 44
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !74 ; 2 uses
  br i1 %i.jb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.je = shl nuw i32 1, %i.ja
  %i.jf = and i32 %i.jd, %i.je
  %.not79.i = icmp eq i32 %i.jf, 0
  br i1 %.not79.i, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jg = and i32 %i.jd, 1
  %.not78.i = icmp eq i32 %i.jg, 0
  br i1 %.not78.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jh = add nuw i32 %.057.i72, 17
  br label %common.ret184

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.ji = add nuw i32 %.057.i72, 17
  br label %common.ret184

bb.by:                                            ; preds = %bb.bs
  %i.jj = add nuw i32 %.057.i72, 6
  br label %common.ret184

bb.bz:                                            ; preds = %.split.i
  %i.jk = add nuw i32 %.057.i72, 2
  br label %common.ret184

bb.ca:                                            ; preds = %.split.i
  %i.jl = load ptr, ptr %i.io, align 8, !tbaa !139 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !35
  %i.jn = icmp eq i32 %i.jm, 9
  br i1 %i.jn, label %bb.cb, label %common.ret184

bb.cb:                                            ; preds = %bb.ca
  %i.jo = getelementptr i8, ptr %i.jl, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !35
  %i.jq = tail call fastcc i32 @compile_length_tree(ptr noundef %i.jp, ptr noundef %1), !inline_history !326 ; 3 uses
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %common.ret184, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.js = add nuw i32 %i.jq, 12
  %i.jt = getelementptr i8, ptr %i.jl, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !35 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %common.ret184, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jw = getelementptr i8, ptr %i.ju, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !35
  %i.jy = tail call fastcc i32 @compile_length_tree(ptr noundef %i.jx, ptr noundef %1), !inline_history !326 ; 3 uses
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %common.ret184, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ka = add i32 %i.js, %i.jy
  %i.kb = getelementptr i8, ptr %i.ju, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !35
  %.fr = freeze ptr %i.kc
  %.not73.i = icmp eq ptr %.fr, null
  %spec.select = select i1 %.not73.i, i32 %i.ka, i32 -124
  br label %common.ret184

bb.cf:                                            ; preds = %.split.i
  %i.kd = add nuw i32 %.057.i72, 7
  br label %common.ret184

bb.cg:                                            ; preds = %bb.a
  %i.ke = getelementptr i8, ptr %0, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !136 ; 2 uses
  %.not.i75 = icmp eq ptr %i.kf, null
  br i1 %.not.i75, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kg = tail call fastcc i32 @compile_length_tree(ptr noundef nonnull %i.kf, ptr noundef %1), !inline_history !327 ; 3 uses
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %common.ret184, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0.i76 = phi i32 [ %i.kg, %bb.ch ], [ 0, %bb.cg ] ; 4 uses
  %i.ki = getelementptr i8, ptr %0, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !133 ; 2 uses
  %i.kk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kj)
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %.split.i77, label %common.ret184

.split.i77:                                       ; preds = %bb.ci
  %i.km = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kj, i1 true)
  switch i32 %i.km, label %common.ret184 [
    i32 10, label %bb.cj
    i32 11, label %bb.ck
    i32 12, label %bb.cl
    i32 13, label %bb.cm
  ]

bb.cj:                                            ; preds = %.split.i77
  %i.kn = add nuw i32 %.0.i76, 2
  br label %common.ret184

bb.ck:                                            ; preds = %.split.i77
  %i.ko = add nuw i32 %.0.i76, 6
  br label %common.ret184

bb.cl:                                            ; preds = %.split.i77
  %i.kp = add nuw i32 %.0.i76, 5
  br label %common.ret184

bb.cm:                                            ; preds = %.split.i77
  %i.kq = add nuw i32 %.0.i76, 10
  br label %common.ret184

compile_length_string_raw_node.exit:              ; preds = %bb.a, %bb.a
  br label %common.ret184
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @add_opcode_rel_addr(ptr noundef captures(none) %0, i32 noundef range(i32 61, 87) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 12         ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38   ; 2 uses
  %i.f = icmp ult i32 %i.e, %i.c
  br i1 %i.f, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.d

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %i.g = phi i32 [ %i.h, %.preheader.i ], [ %i.e, %bb.a ]
  %i.h = shl i32 %i.g, 1                          ; 4 uses
  %i.i = icmp ult i32 %i.h, %i.c
  br i1 %i.i, label %.preheader.i, label %bb.b, !llvm.loop !183

bb.b:                                             ; preds = %.preheader.i
  store i32 %i.h, ptr %i.d, align 4, !tbaa !38
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = zext i32 %i.h to i64
end_hunk_2
