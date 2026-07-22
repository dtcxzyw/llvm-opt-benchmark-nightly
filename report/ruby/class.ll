inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@rb_class_duplicate_classext:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.duplicate_id_tbl_data, align 8 ; 5 uses
  %6 = alloca %struct.duplicate_id_tbl_data, align 8 ; 5 uses
  %i.b = tail call noalias nonnull dereferenceable(136) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 136) #20 ; 16 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit56.thread, label %rbimpl_RB_TYPE_P_fastpath.exit56

rbimpl_RB_TYPE_P_fastpath.exit56:                 ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 3                      ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.b, label %bb.d

rbimpl_RB_TYPE_P_fastpath.exit56.thread:          ; preds = %bb.a
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %.not.i64 = icmp eq ptr %i.t, null
  br i1 %.not.i64, label %duplicate_classext_m_tbl.exit, label %bb.d

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56
  br i1 %i.j, label %bb.c, label %duplicate_classext_m_tbl.exit

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_m_tbl.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56.thread, %rbimpl_RB_TYPE_P_fastpath.exit56
  %i.v = phi ptr [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ], [ %i.o, %rbimpl_RB_TYPE_P_fastpath.exit56 ] ; 2 uses
  %.0.i5566 = phi i1 [ false, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit56 ]
  %i.w = tail call i64 @rb_id_table_size(ptr noundef nonnull %i.v) #18
  %i.x = tail call ptr @rb_id_table_create(i64 noundef %i.w) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.x, ptr %6, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.y, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.v, ptr noundef nonnull @duplicate_classext_m_tbl_i, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %duplicate_classext_m_tbl.exit

duplicate_classext_m_tbl.exit:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit56.thread, %bb.b, %bb.c, %bb.d
  %.0.i5565 = phi i1 [ %.0.i5566, %bb.d ], [ true, %bb.c ], [ false, %bb.b ], [ false, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ] ; 2 uses
  %.0.i57 = phi ptr [ %i.x, %bb.d ], [ %i.u, %bb.c ], [ null, %bb.b ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit56.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %.0.i57, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 125 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, -29
  %i.ad = getelementptr i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %rb_obj_write.exit, label %bb.e

bb.e:                                             ; preds = %duplicate_classext_m_tbl.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = call i64 @rb_imemo_fields_clone(i64 noundef %i.ae) #18 ; 4 uses
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = and i64 %i.ag, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.ag) #18
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.f, %bb.e, %duplicate_classext_m_tbl.exit
  %i.al = getelementptr i8, ptr %0, i64 125       ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 4
  %.not52 = icmp eq i8 %i.an, 0
  %i.ao = getelementptr i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 4 uses
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_obj_write.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !33
  %i.ar = or disjoint i8 %i.ac, 12
  br label %bb.j

bb.h:                                             ; preds = %rb_obj_write.exit
  %.not.i58 = icmp eq ptr %i.ap, null
  br i1 %.not.i58, label %duplicate_classext_const_tbl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call i64 @rb_id_table_size(ptr noundef nonnull %i.ap) #18
  %i.at = call ptr @rb_id_table_create(i64 noundef %i.as) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.at, ptr %5, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.au, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.ap, ptr noundef nonnull @duplicate_classext_const_tbl_i, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %duplicate_classext_const_tbl.exit

duplicate_classext_const_tbl.exit:                ; preds = %bb.h, %bb.i
  %.0.i59 = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.0.i59, ptr %i.av, align 8, !tbaa !33
  %i.aw = and i8 %i.ab, -29
  %i.ax = or disjoint i8 %i.aw, 8
  br label %bb.j

bb.j:                                             ; preds = %duplicate_classext_const_tbl.exit, %bb.g
  %storemerge = phi i8 [ %i.ax, %duplicate_classext_const_tbl.exit ], [ %i.ar, %bb.g ]
  store i8 %storemerge, ptr %i.aa, align 1
  %i.ay = getelementptr i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 3 uses
  %.not.i60 = icmp eq ptr %i.az, null
  br i1 %.not.i60, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.0.i5565, label %bb.l, label %duplicate_classext_id_table.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_id_table.exit

bb.m:                                             ; preds = %bb.j
  %i.bb = call i64 @rb_id_table_size(ptr noundef nonnull %i.az) #18
  %i.bc = call ptr @rb_id_table_create(i64 noundef %i.bb) #18 ; 2 uses
  call void @rb_id_table_foreach(ptr noundef nonnull %i.az, ptr noundef nonnull @duplicate_classext_id_table_i, ptr noundef %i.bc) #18
  br label %duplicate_classext_id_table.exit

duplicate_classext_id_table.exit:                 ; preds = %bb.k, %bb.l, %bb.m
  %.0.i61 = phi ptr [ %i.bc, %bb.m ], [ %i.ba, %bb.l ], [ null, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %.0.i61, ptr %i.bd, align 8, !tbaa !34
  call fastcc void @duplicate_classext_subclasses(ptr noundef nonnull %0, ptr noundef %i.b)
  %i.be = getelementptr i8, ptr %0, i64 96
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !63 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !17
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = and i64 %i.bf, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = or i1 %i.bh, %i.bj
  br i1 %i.bk, label %RCLASSEXT_SET_ORIGIN.exit, label %bb.n

bb.n:                                             ; preds = %duplicate_classext_id_table.exit
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.bf) #18
  br label %RCLASSEXT_SET_ORIGIN.exit

RCLASSEXT_SET_ORIGIN.exit:                        ; preds = %duplicate_classext_id_table.exit, %bb.n
  %i.bl = load i8, ptr %i.al, align 1
  %i.bm = load i8, ptr %i.aa, align 1
  %i.bn = and i8 %i.bm, -4
  %i.bo = and i8 %i.bl, 3
  %i.bp = or disjoint i8 %i.bn, %i.bo
  store i8 %i.bp, ptr %i.aa, align 1
  %i.bq = getelementptr i8, ptr %0, i64 128
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !64
  br i1 %.0.i5565, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %RCLASSEXT_SET_ORIGIN.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36
  %.0.in71 = getelementptr i8, ptr %i.bu, i64 8
  %.072 = load ptr, ptr %.0.in71, align 8, !tbaa !65 ; 2 uses
  %.not5373 = icmp eq ptr %.072, null
  br i1 %.not5373, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = ptrtoint ptr %3 to i64
  %i.bz = getelementptr i8, ptr %2, i64 120
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %class_duplicate_iclass_classext.exit
  %.074 = phi ptr [ %.072, %.lr.ph ], [ %.0, %class_duplicate_iclass_classext.exit ] ; 2 uses
  %i.ca = load i64, ptr %.074, align 8, !tbaa !66 ; 10 uses
  %.not54 = icmp ne i64 %i.ca, 0
  %i.cb = and i64 %i.ca, 7
  %.not70 = icmp eq i64 %i.cb, 0
  %or.cond = and i1 %.not54, %.not70
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit, label %class_duplicate_iclass_classext.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.p
  %i.cc = inttoptr i64 %i.ca to ptr               ; 16 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.ce = and i64 %i.cd, 31
  %i.cf = icmp eq i64 %i.ce, 28
  br i1 %i.cf, label %bb.q, label %class_duplicate_iclass_classext.exit

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !67
  %i.ci = icmp eq i64 %i.ch, %1
  br i1 %i.ci, label %bb.r, label %class_duplicate_iclass_classext.exit

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr i8, ptr %i.cc, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ck = and i64 %i.cd, 65536
  %.not.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_CLASSEXT_TBL.exit.i.i

RCLASS_CLASSEXT_TBL.exit.i.i:                     ; preds = %bb.r
  %i.cl = getelementptr i8, ptr %i.cc, i64 160
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i
  %i.cn = load i64, ptr %2, align 8, !tbaa !11
  %i.co = call i32 @rb_st_lookup(ptr noundef nonnull %i.cm, i64 noundef %i.cn, ptr noundef nonnull %i.a) #18
  %.not5.i.i = icmp eq i32 %i.co, 0
  br i1 %.not5.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i:   ; preds = %bb.s, %RCLASS_CLASSEXT_TBL.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.u

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i:          ; preds = %bb.s
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i62 = icmp eq i64 %i.cp, 0
  br i1 %.not.i62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.ct = getelementptr i8, ptr %i.cq, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !68
  call void @rb_invalidate_method_caches(ptr noundef %i.cs, i64 noundef %i.cu) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i
  %i.cv = call noalias nonnull dereferenceable(136) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 136) #20 ; 10 uses
  store ptr %2, ptr %i.cv, align 8, !tbaa !42
  %i.cw = getelementptr i8, ptr %i.cc, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !58
  %i.cz = getelementptr i8, ptr %i.cc, i64 149    ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = and i8 %i.da, 24
  %or.cond.i = icmp eq i8 %i.db, 8
  br i1 %or.cond.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr i8, ptr %i.cc, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32 ; 3 uses
  %.not.i41.i = icmp eq ptr %i.dd, null
  br i1 %.not.i41.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.de = call ptr @rb_id_table_create(i64 noundef 0) #18
  br label %duplicate_classext_m_tbl.exit.i

bb.x:                                             ; preds = %bb.v
  %i.df = call i64 @rb_id_table_size(ptr noundef nonnull %i.dd) #18
  %i.dg = call ptr @rb_id_table_create(i64 noundef %i.df) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.dg, ptr %4, align 8, !tbaa !59
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !61
  call void @rb_id_table_foreach(ptr noundef nonnull %i.dd, ptr noundef nonnull @duplicate_classext_m_tbl_i, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %duplicate_classext_m_tbl.exit.i

bb.y:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !32
  br label %duplicate_classext_m_tbl.exit.i

duplicate_classext_m_tbl.exit.i:                  ; preds = %bb.y, %bb.x, %bb.w
  %.sink.i = phi ptr [ %i.dh, %bb.y ], [ %i.dg, %bb.x ], [ %i.de, %bb.w ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %.sink.i, ptr %i.di, align 8, !tbaa !32
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !33
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !34
  call fastcc void @duplicate_classext_subclasses(ptr noundef %i.cj, ptr noundef %i.cv)
  %i.dn = getelementptr i8, ptr %i.cc, i64 120
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !63 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !17
  %i.dq = icmp eq i64 %i.do, 0
  %i.dr = and i64 %i.do, 7
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = or i1 %i.dq, %i.ds
  br i1 %i.dt, label %RCLASSEXT_SET_ORIGIN.exit.i, label %bb.z

bb.z:                                             ; preds = %duplicate_classext_m_tbl.exit.i
  call void @rb_gc_writebarrier(i64 noundef range(i64 1, 0) %i.ca, i64 noundef %i.do) #18
  br label %RCLASSEXT_SET_ORIGIN.exit.i

RCLASSEXT_SET_ORIGIN.exit.i:                      ; preds = %bb.z, %duplicate_classext_m_tbl.exit.i
  %i.du = load i8, ptr %i.cz, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 125 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = and i8 %i.dw, -25
  %i.dy = and i8 %i.du, 24
  %i.dz = or disjoint i8 %i.dx, %i.dy
  store i8 %i.dz, ptr %i.dv, align 1
  %i.ea = getelementptr i8, ptr %i.cc, i64 136
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !69 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !17
  %i.ed = icmp eq i64 %i.eb, 0
  %i.ee = and i64 %i.eb, 7
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = or i1 %i.ed, %i.ef
  br i1 %i.eg, label %RCLASSEXT_SET_INCLUDER.exit.i, label %bb.aa

bb.aa:                                            ; preds = %RCLASSEXT_SET_ORIGIN.exit.i
  call void @rb_gc_writebarrier(i64 noundef range(i64 1, 0) %i.ca, i64 noundef %i.eb) #18
  br label %RCLASSEXT_SET_INCLUDER.exit.i

RCLASSEXT_SET_INCLUDER.exit.i:                    ; preds = %bb.aa, %RCLASSEXT_SET_ORIGIN.exit.i
  %i.eh = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.ei = and i64 %i.eh, 65536
  %.not.i.i43.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i43.i, label %RCLASS_CLASSEXT_TBL.exit.thread.i.i, label %RCLASS_CLASSEXT_TBL.exit.i44.i

RCLASS_CLASSEXT_TBL.exit.i44.i:                   ; preds = %RCLASSEXT_SET_INCLUDER.exit.i
  %i.ej = getelementptr i8, ptr %i.cc, i64 160
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !21 ; 2 uses
  %.not.i45.i = icmp eq ptr %i.ek, null
  br i1 %.not.i45.i, label %RCLASS_CLASSEXT_TBL.exit.thread.i.i, label %bb.ab

RCLASS_CLASSEXT_TBL.exit.thread.i.i:              ; preds = %RCLASS_CLASSEXT_TBL.exit.i44.i, %RCLASSEXT_SET_INCLUDER.exit.i
  %i.el = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #18 ; 2 uses
  %i.em = getelementptr i8, ptr %i.cc, i64 160
  store ptr %i.el, ptr %i.em, align 8, !tbaa !21
  br label %bb.ab

bb.ab:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.thread.i.i, %RCLASS_CLASSEXT_TBL.exit.i44.i
  %.0.i46.i = phi ptr [ %i.ek, %RCLASS_CLASSEXT_TBL.exit.i44.i ], [ %i.el, %RCLASS_CLASSEXT_TBL.exit.thread.i.i ]
  %i.en = call i64 @rb_st_table_size(ptr noundef %.0.i46.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 %i.ca, ptr %3, align 8, !tbaa !53
  store ptr %i.cv, ptr %i.bx, align 8, !tbaa !56
  %i.eo = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.ep = and i64 %i.eo, 65536
  %.not.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i, label %RCLASS_SET_BOX_CLASSEXT.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr i8, ptr %i.cc, i64 160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !21
  br label %RCLASS_SET_BOX_CLASSEXT.exit.i

RCLASS_SET_BOX_CLASSEXT.exit.i:                   ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi ptr [ %i.er, %bb.ac ], [ null, %bb.ab ]
  %i.es = load i64, ptr %2, align 8, !tbaa !11
  %i.et = call i32 @rb_st_update(ptr noundef %.0.i.i.i.i, i64 noundef %i.es, ptr noundef nonnull @set_box_classext_update, i64 noundef %i.by) #18 ; 0 uses
  %i.eu = load ptr, ptr %i.bz, align 8, !tbaa !18
  %i.ev = call i64 @rb_obj_id(i64 noundef range(i64 1, 0) %i.ca) #18
  %i.ew = call i32 @rb_st_insert(ptr noundef %i.eu, i64 noundef %i.ev, i64 noundef range(i64 1, 0) %i.ca) #18 ; 0 uses
  call void @rb_gc_writebarrier_remember(i64 noundef range(i64 1, 0) %i.ca) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %or.cond50.i = icmp eq i64 %i.en, 0
  br i1 %or.cond50.i, label %bb.ad, label %class_duplicate_iclass_classext.exit

bb.ad:                                            ; preds = %RCLASS_SET_BOX_CLASSEXT.exit.i
  %i.ex = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.ey = and i64 %i.ex, -16385
  store i64 %i.ey, ptr %i.cc, align 8, !tbaa !19
  br label %class_duplicate_iclass_classext.exit

class_duplicate_iclass_classext.exit:             ; preds = %bb.ad, %RCLASS_SET_BOX_CLASSEXT.exit.i, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.p
  %.0.in = getelementptr i8, ptr %.074, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !65  ; 2 uses
  %.not53 = icmp eq ptr %.0, null
  br i1 %.not53, label %.loopexit, label %bb.p, !llvm.loop !70

.loopexit:                                        ; preds = %class_duplicate_iclass_classext.exit, %bb.o, %RCLASSEXT_SET_ORIGIN.exit
  ret ptr %i.b
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_imemo_fields_clone(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @duplicate_classext_subclasses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call noalias nonnull dereferenceable(16) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 16) #20 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !49
  %i.h = add i64 %i.g, 1
end_hunk_0
