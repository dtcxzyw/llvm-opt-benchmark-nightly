Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_operators?download=true
inline.NumInlined: 54
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@zend_str_tolower_dup_ex:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.224.i68, i64 8
  store i8 %i.ce, ptr %i.bz, align 1, !tbaa !12
  %exitcond.not.7 = icmp eq ptr %i.ca, %scevgep
  br i1 %exitcond.not.7, label %zend_str_tolower_impl.exit, label %.lr.ph70, !llvm.loop !151

zend_str_tolower_impl.exit:                       ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  store i8 0, ptr %i.cg, align 1, !tbaa !12
  br label %.loopexit64

bb.e:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.067, i64 1 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.a
  br i1 %i.ci, label %.lr.ph, label %.loopexit64, !llvm.loop !160

.loopexit64:                                      ; preds = %bb.e, %bb.a, %zend_str_tolower_impl.exit
  %.059 = phi ptr [ %i.g, %zend_str_tolower_impl.exit ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.059
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_str_toupper_dup_ex(ptr noundef %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %.loopexit64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.067 = phi ptr [ %i.ch, %bb.e ], [ %0, %bb.a ] ; 8 uses
  %i.b = load i8, ptr %.067, align 1, !tbaa !12   ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %1, 1
  %i.g = tail call noalias ptr @_emalloc(i64 noundef %i.f) #26 ; 4 uses
  %.not63 = icmp eq ptr %.067, %0
  br i1 %.not63, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = ptrtoint ptr %0 to i64
  %.pre75 = ptrtoint ptr %.067 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %.067 to i64                ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi76 = phi i64 [ %.pre75, %._crit_edge ], [ %i.h, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %.pre-phi
  %i.m = getelementptr inbounds i8, ptr %.067, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.n, %.pre-phi76
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader
  %.022.i = phi ptr [ %i.w, %.preheader ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.v, %.preheader ], [ %.067, %bb.d ] ; 3 uses
  %i.q = load <16 x i8>, ptr %.0.i, align 1, !tbaa !12 ; 2 uses
  %i.r = add <16 x i8> %i.q, splat (i8 31)
  %i.s = icmp slt <16 x i8> %i.r, splat (i8 -102)
  %i.t = select <16 x i1> %i.s, <16 x i8> splat (i8 -32), <16 x i8> zeroinitializer
  %i.u = add <16 x i8> %i.t, %i.q
  store <16 x i8> %i.u, ptr %.022.i, align 1, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.022.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.not.i = icmp ugt ptr %i.x, %i.a
  br i1 %.not.i, label %.loopexit, label %.preheader, !llvm.loop !152

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.123.i = phi ptr [ %i.m, %bb.d ], [ %i.w, %.preheader ] ; 2 uses
  %.1.i = phi ptr [ %.067, %bb.d ], [ %i.v, %.preheader ] ; 5 uses
  %i.y = icmp ult ptr %.1.i, %i.a
  br i1 %i.y, label %.lr.ph70.preheader, label %zend_str_toupper_impl.exit

.lr.ph70.preheader:                               ; preds = %.loopexit
  %.1.i74 = ptrtoaddr ptr %.1.i to i64            ; 2 uses
  %i.z = add i64 %1, %.pre-phi
  %i.aa = sub i64 %i.z, %.1.i74                   ; 2 uses
  %scevgep = getelementptr i8, ptr %.1.i, i64 %i.aa
  %i.ab = add i64 %.pre-phi, %1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol

.lr.ph70.prol:                                    ; preds = %.lr.ph70.preheader, %.lr.ph70.prol
  %.2.i69.prol = phi ptr [ %i.ac, %.lr.ph70.prol ], [ %.1.i, %.lr.ph70.preheader ] ; 2 uses
  %.224.i68.prol = phi ptr [ %i.ah, %.lr.ph70.prol ], [ %.123.i, %.lr.ph70.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph70.prol ], [ 0, %.lr.ph70.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.2.i69.prol, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.2.i69.prol, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.224.i68.prol, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.224.i68.prol, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol, !llvm.loop !161

.lr.ph70.prol.loopexit:                           ; preds = %.lr.ph70.prol, %.lr.ph70.preheader
  %.2.i69.unr = phi ptr [ %.1.i, %.lr.ph70.preheader ], [ %i.ac, %.lr.ph70.prol ]
  %.224.i68.unr = phi ptr [ %.123.i, %.lr.ph70.preheader ], [ %i.ah, %.lr.ph70.prol ]
  %i.ai = sub i64 %.1.i74, %i.ab
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %zend_str_toupper_impl.exit, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70
  %.2.i69 = phi ptr [ %i.ca, %.lr.ph70 ], [ %.2.i69.unr, %.lr.ph70.prol.loopexit ] ; 9 uses
  %.224.i68 = phi ptr [ %i.cf, %.lr.ph70 ], [ %.224.i68.unr, %.lr.ph70.prol.loopexit ] ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.2.i69, i64 1
  %i.al = load i8, ptr %.2.i69, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.224.i68, i64 1
  store i8 %i.ao, ptr %.224.i68, align 1, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.2.i69, i64 2
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.224.i68, i64 2
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.i69, i64 3
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.224.i68, i64 3
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i69, i64 4
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.224.i68, i64 4
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.2.i69, i64 5
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.224.i68, i64 5
  store i8 %i.bm, ptr %i.bh, align 1, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.i69, i64 6
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.224.i68, i64 6
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.i69, i64 7
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !12
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.224.i68, i64 7
  store i8 %i.by, ptr %i.bt, align 1, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i69, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.224.i68, i64 8
  store i8 %i.ce, ptr %i.bz, align 1, !tbaa !12
  %exitcond.not.7 = icmp eq ptr %i.ca, %scevgep
  br i1 %exitcond.not.7, label %zend_str_toupper_impl.exit, label %.lr.ph70, !llvm.loop !154

zend_str_toupper_impl.exit:                       ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  store i8 0, ptr %i.cg, align 1, !tbaa !12
  br label %.loopexit64

bb.e:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.067, i64 1 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.a
  br i1 %i.ci, label %.lr.ph, label %.loopexit64, !llvm.loop !162

.loopexit64:                                      ; preds = %bb.e, %bb.a, %zend_str_toupper_impl.exit
  %.059 = phi ptr [ %i.g, %zend_str_toupper_impl.exit ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.059
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_string_tolower_ex(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c     ; 8 uses
  %i.f = and i64 %i.c, -8
  %i.g = add i64 %i.f, 32                         ; 4 uses
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.061 = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.061, i64 16 ; 5 uses
  %.not = icmp ugt ptr %i.j, %i.e
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.k = icmp ult ptr %.061, %i.e
  br i1 %i.k, label %.lr.ph78, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = load <16 x i8>, ptr %.061, align 1, !tbaa !12 ; 2 uses
  %i.m = add <16 x i8> %i.l, splat (i8 63)
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -102) ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not68 = icmp eq i16 %i.o, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not68, label %bb.b, label %bb.d, !llvm.loop !163

bb.d:                                             ; preds = %bb.c
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @__zend_malloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit69

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @_emalloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit69

zend_string_alloc.exit69:                         ; preds = %bb.e, %bb.f
  %i.r = phi i32 [ 150, %bb.e ], [ 22, %bb.f ]
  %i.s = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 6 uses
  store i32 1, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.c, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.x = ptrtoint ptr %.061 to i64
  %i.y = sub i64 %i.x, %i.h                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.d, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ab = add <16 x i8> %i.aa, %i.l
  store <16 x i8> %i.ab, ptr %i.z, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.i, %i.ad
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.preheader71, label %.loopexit

.preheader71:                                     ; preds = %zend_string_alloc.exit69, %.preheader71
  %.022.i = phi ptr [ %i.am, %.preheader71 ], [ %i.ac, %zend_string_alloc.exit69 ] ; 2 uses
  %.0.i = phi ptr [ %i.al, %.preheader71 ], [ %i.j, %zend_string_alloc.exit69 ] ; 3 uses
  %i.ag = load <16 x i8>, ptr %.0.i, align 1, !tbaa !12 ; 2 uses
  %i.ah = add <16 x i8> %i.ag, splat (i8 63)
  %i.ai = icmp slt <16 x i8> %i.ah, splat (i8 -102)
  %i.aj = select <16 x i1> %i.ai, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ak = add <16 x i8> %i.aj, %i.ag
  store <16 x i8> %i.ak, ptr %.022.i, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.022.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.not.i70 = icmp ugt ptr %i.an, %i.e
  br i1 %.not.i70, label %.loopexit, label %.preheader71, !llvm.loop !148

.loopexit:                                        ; preds = %.preheader71, %zend_string_alloc.exit69
  %.123.i = phi ptr [ %i.ac, %zend_string_alloc.exit69 ], [ %i.am, %.preheader71 ] ; 2 uses
  %.1.i = phi ptr [ %i.j, %zend_string_alloc.exit69 ], [ %i.al, %.preheader71 ] ; 5 uses
  %i.ao = icmp ult ptr %.1.i, %i.e
  br i1 %i.ao, label %.lr.ph.preheader, label %zend_string_copy.exit.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit
  %.1.i86 = ptrtoaddr ptr %.1.i to i64            ; 3 uses
  %scevgep = getelementptr i8, ptr %.1.i, i64 %i.i
  %i.ap = sub i64 0, %.1.i86
  %scevgep87 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %i.aq = add i64 %i.c, %i.a                      ; 2 uses
  %i.ar = sub i64 %i.aq, %.1.i86
  %i.as = add i64 %i.aq, 23
  %i.at = sub i64 %i.as, %.1.i86
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.2.i76.prol = phi ptr [ %i.au, %.lr.ph.prol ], [ %.1.i, %.lr.ph.preheader ] ; 2 uses
  %.224.i75.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.123.i, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i76.prol, i64 1 ; 2 uses
  %i.av = load i8, ptr %.2.i76.prol, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.224.i75.prol, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.224.i75.prol, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !164

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2.i76.unr = phi ptr [ %.1.i, %.lr.ph.preheader ], [ %i.au, %.lr.ph.prol ]
  %.224.i75.unr = phi ptr [ %.123.i, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %i.ba = icmp ult i64 %i.at, 7
  br i1 %i.ba, label %zend_string_copy.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.2.i76 = phi ptr [ %i.cr, %.lr.ph ], [ %.2.i76.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.224.i75 = phi ptr [ %i.cw, %.lr.ph ], [ %.224.i75.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i76, i64 1
  %i.bc = load i8, ptr %.2.i76, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.224.i75, i64 1
  store i8 %i.bf, ptr %.224.i75, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.2.i76, i64 2
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.224.i75, i64 2
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i76, i64 3
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.224.i75, i64 3
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.i76, i64 4
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.224.i75, i64 4
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i76, i64 5
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.224.i75, i64 5
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i76, i64 6
  %i.cg = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.224.i75, i64 6
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.2.i76, i64 7
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.224.i75, i64 7
  store i8 %i.cp, ptr %i.ck, align 1, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i76, i64 8 ; 2 uses
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.224.i75, i64 8
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !12
  %exitcond.not.7 = icmp eq ptr %i.cr, %scevgep87
  br i1 %exitcond.not.7, label %zend_string_copy.exit.loopexit, label %.lr.ph, !llvm.loop !151

.lr.ph78:                                         ; preds = %.preheader, %bb.j
  %indvar117 = phi i64 [ %indvar.next118, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.26377 = phi ptr [ %i.fv, %bb.j ], [ %.061, %.preheader ] ; 6 uses
  %i.cx = load i8, ptr %.26377, align 1, !tbaa !12 ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12
  %.not67 = icmp eq i8 %i.cx, %i.da
  br i1 %.not67, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph78
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = tail call noalias ptr @__zend_malloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit

bb.i:                                             ; preds = %bb.g
  %i.dc = tail call noalias ptr @_emalloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.h, %bb.i
  %i.dd = phi i32 [ 150, %bb.h ], [ 22, %bb.i ]
  %i.de = phi ptr [ %i.db, %bb.h ], [ %i.dc, %bb.i ] ; 6 uses
  store i32 1, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %i.c, ptr %i.dh, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 3 uses
  %i.dj = ptrtoint ptr %.26377 to i64
  %i.dk = sub i64 %i.dj, %i.h                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.d, i64 %i.dk, i1 false)
  %i.dl = icmp ult ptr %.26377, %i.e
  br i1 %i.dl, label %.lr.ph81.preheader, label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %zend_string_alloc.exit
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dk ; 2 uses
  %i.dn = sub i64 %i.c, %indvar117
  %i.do = shl i64 %indvar, 4
  %xtraiter120 = and i64 %i.dn, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader, %.lr.ph81.prol
  %.080.prol = phi ptr [ %i.du, %.lr.ph81.prol ], [ %i.dm, %.lr.ph81.preheader ] ; 2 uses
  %.379.prol = phi ptr [ %i.dp, %.lr.ph81.prol ], [ %.26377, %.lr.ph81.preheader ] ; 2 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph81.prol ], [ 0, %.lr.ph81.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.379.prol, i64 1 ; 2 uses
  %i.dq = load i8, ptr %.379.prol, align 1, !tbaa !12
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.080.prol, i64 1 ; 2 uses
  store i8 %i.dt, ptr %.080.prol, align 1, !tbaa !12
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol, !llvm.loop !165

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %.080.unr = phi ptr [ %i.dm, %.lr.ph81.preheader ], [ %i.du, %.lr.ph81.prol ]
  %.379.unr = phi ptr [ %.26377, %.lr.ph81.preheader ], [ %i.dp, %.lr.ph81.prol ]
  %i.dv = sub i64 %i.do, %i.c
  %i.dw = add i64 %i.dv, %indvar117
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %.080 = phi ptr [ %i.ft, %.lr.ph81 ], [ %.080.unr, %.lr.ph81.prol.loopexit ] ; 9 uses
  %.379 = phi ptr [ %i.fo, %.lr.ph81 ], [ %.379.unr, %.lr.ph81.prol.loopexit ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.379, i64 1
  %i.dz = load i8, ptr %.379, align 1, !tbaa !12
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.080, i64 1
  store i8 %i.ec, ptr %.080, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !12
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %.080, i64 2
  store i8 %i.ei, ptr %i.ed, align 1, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %.379, i64 3
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !12
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.080, i64 3
  store i8 %i.eo, ptr %i.ej, align 1, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.379, i64 4
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.080, i64 4
  store i8 %i.eu, ptr %i.ep, align 1, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.379, i64 5
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !12
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %.080, i64 5
  store i8 %i.fa, ptr %i.ev, align 1, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %.379, i64 6
  %i.fd = load i8, ptr %i.ew, align 1, !tbaa !12
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %.080, i64 6
  store i8 %i.fg, ptr %i.fb, align 1, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %.379, i64 7
  %i.fj = load i8, ptr %i.fc, align 1, !tbaa !12
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.080, i64 7
  store i8 %i.fm, ptr %i.fh, align 1, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.379, i64 8 ; 2 uses
  %i.fp = load i8, ptr %i.fi, align 1, !tbaa !12
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @zend_tolower_map, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.080, i64 8
  store i8 %i.fs, ptr %i.fn, align 1, !tbaa !12
  %exitcond89.not.7 = icmp eq ptr %i.fo, %i.e
  br i1 %exitcond89.not.7, label %._crit_edge82, label %.lr.ph81, !llvm.loop !166

._crit_edge82:                                    ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81, %zend_string_alloc.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.c
  store i8 0, ptr %i.fu, align 1, !tbaa !12
  br label %zend_string_copy.exit

bb.j:                                             ; preds = %.lr.ph78
  %i.fv = getelementptr inbounds nuw i8, ptr %.26377, i64 1 ; 2 uses
  %exitcond88.not = icmp eq ptr %i.fv, %i.e
  %indvar.next118 = add i64 %indvar117, 1
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph78, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !12
  %i.fy = and i32 %i.fx, 64
  %.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i, label %bb.k, label %zend_string_copy.exit

bb.k:                                             ; preds = %._crit_edge
  %i.fz = load i32, ptr %0, align 8, !tbaa !13
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %0, align 8, !tbaa !13
  br label %zend_string_copy.exit

zend_string_copy.exit.loopexit:                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.c
  store i8 0, ptr %i.gb, align 1, !tbaa !12
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %zend_string_copy.exit.loopexit, %bb.k, %._crit_edge, %._crit_edge82
  %.2 = phi ptr [ %0, %bb.k ], [ %i.de, %._crit_edge82 ], [ %0, %._crit_edge ], [ %i.s, %zend_string_copy.exit.loopexit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_string_toupper_ex(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c     ; 8 uses
  %i.f = and i64 %i.c, -8
  %i.g = add i64 %i.f, 32                         ; 4 uses
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.061 = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.061, i64 16 ; 5 uses
  %.not = icmp ugt ptr %i.j, %i.e
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.k = icmp ult ptr %.061, %i.e
  br i1 %i.k, label %.lr.ph78, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = load <16 x i8>, ptr %.061, align 1, !tbaa !12 ; 2 uses
  %i.m = add <16 x i8> %i.l, splat (i8 31)
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -102) ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not68 = icmp eq i16 %i.o, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not68, label %bb.b, label %bb.d, !llvm.loop !168

bb.d:                                             ; preds = %bb.c
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @__zend_malloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit69

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @_emalloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit69

zend_string_alloc.exit69:                         ; preds = %bb.e, %bb.f
  %i.r = phi i32 [ 150, %bb.e ], [ 22, %bb.f ]
  %i.s = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 6 uses
  store i32 1, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.c, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.x = ptrtoint ptr %.061 to i64
  %i.y = sub i64 %i.x, %i.h                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.d, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = select <16 x i1> %i.n, <16 x i8> splat (i8 -32), <16 x i8> zeroinitializer
  %i.ab = add <16 x i8> %i.aa, %i.l
  store <16 x i8> %i.ab, ptr %i.z, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.i, %i.ad
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.preheader71, label %.loopexit

.preheader71:                                     ; preds = %zend_string_alloc.exit69, %.preheader71
  %.022.i = phi ptr [ %i.am, %.preheader71 ], [ %i.ac, %zend_string_alloc.exit69 ] ; 2 uses
  %.0.i = phi ptr [ %i.al, %.preheader71 ], [ %i.j, %zend_string_alloc.exit69 ] ; 3 uses
  %i.ag = load <16 x i8>, ptr %.0.i, align 1, !tbaa !12 ; 2 uses
  %i.ah = add <16 x i8> %i.ag, splat (i8 31)
  %i.ai = icmp slt <16 x i8> %i.ah, splat (i8 -102)
  %i.aj = select <16 x i1> %i.ai, <16 x i8> splat (i8 -32), <16 x i8> zeroinitializer
  %i.ak = add <16 x i8> %i.aj, %i.ag
  store <16 x i8> %i.ak, ptr %.022.i, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.022.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.not.i70 = icmp ugt ptr %i.an, %i.e
  br i1 %.not.i70, label %.loopexit, label %.preheader71, !llvm.loop !152

.loopexit:                                        ; preds = %.preheader71, %zend_string_alloc.exit69
  %.123.i = phi ptr [ %i.ac, %zend_string_alloc.exit69 ], [ %i.am, %.preheader71 ] ; 2 uses
  %.1.i = phi ptr [ %i.j, %zend_string_alloc.exit69 ], [ %i.al, %.preheader71 ] ; 5 uses
  %i.ao = icmp ult ptr %.1.i, %i.e
  br i1 %i.ao, label %.lr.ph.preheader, label %zend_string_copy.exit.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit
  %.1.i86 = ptrtoaddr ptr %.1.i to i64            ; 3 uses
  %scevgep = getelementptr i8, ptr %.1.i, i64 %i.i
  %i.ap = sub i64 0, %.1.i86
  %scevgep87 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %i.aq = add i64 %i.c, %i.a                      ; 2 uses
  %i.ar = sub i64 %i.aq, %.1.i86
  %i.as = add i64 %i.aq, 23
  %i.at = sub i64 %i.as, %.1.i86
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.2.i76.prol = phi ptr [ %i.au, %.lr.ph.prol ], [ %.1.i, %.lr.ph.preheader ] ; 2 uses
  %.224.i75.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.123.i, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i76.prol, i64 1 ; 2 uses
  %i.av = load i8, ptr %.2.i76.prol, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.224.i75.prol, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.224.i75.prol, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !169

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2.i76.unr = phi ptr [ %.1.i, %.lr.ph.preheader ], [ %i.au, %.lr.ph.prol ]
  %.224.i75.unr = phi ptr [ %.123.i, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %i.ba = icmp ult i64 %i.at, 7
  br i1 %i.ba, label %zend_string_copy.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.2.i76 = phi ptr [ %i.cr, %.lr.ph ], [ %.2.i76.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.224.i75 = phi ptr [ %i.cw, %.lr.ph ], [ %.224.i75.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i76, i64 1
  %i.bc = load i8, ptr %.2.i76, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.224.i75, i64 1
  store i8 %i.bf, ptr %.224.i75, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.2.i76, i64 2
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.224.i75, i64 2
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i76, i64 3
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.224.i75, i64 3
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.i76, i64 4
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.224.i75, i64 4
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i76, i64 5
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.224.i75, i64 5
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i76, i64 6
  %i.cg = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.224.i75, i64 6
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.2.i76, i64 7
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.224.i75, i64 7
  store i8 %i.cp, ptr %i.ck, align 1, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i76, i64 8 ; 2 uses
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.224.i75, i64 8
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !12
  %exitcond.not.7 = icmp eq ptr %i.cr, %scevgep87
  br i1 %exitcond.not.7, label %zend_string_copy.exit.loopexit, label %.lr.ph, !llvm.loop !154

.lr.ph78:                                         ; preds = %.preheader, %bb.j
  %indvar117 = phi i64 [ %indvar.next118, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.26377 = phi ptr [ %i.fv, %bb.j ], [ %.061, %.preheader ] ; 6 uses
  %i.cx = load i8, ptr %.26377, align 1, !tbaa !12 ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12
  %.not67 = icmp eq i8 %i.cx, %i.da
  br i1 %.not67, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph78
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = tail call noalias ptr @__zend_malloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit

bb.i:                                             ; preds = %bb.g
  %i.dc = tail call noalias ptr @_emalloc(i64 noundef %i.g) #26
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.h, %bb.i
  %i.dd = phi i32 [ 150, %bb.h ], [ 22, %bb.i ]
  %i.de = phi ptr [ %i.db, %bb.h ], [ %i.dc, %bb.i ] ; 6 uses
  store i32 1, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %i.c, ptr %i.dh, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 3 uses
  %i.dj = ptrtoint ptr %.26377 to i64
  %i.dk = sub i64 %i.dj, %i.h                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.d, i64 %i.dk, i1 false)
  %i.dl = icmp ult ptr %.26377, %i.e
  br i1 %i.dl, label %.lr.ph81.preheader, label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %zend_string_alloc.exit
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dk ; 2 uses
  %i.dn = sub i64 %i.c, %indvar117
  %i.do = shl i64 %indvar, 4
  %xtraiter120 = and i64 %i.dn, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader, %.lr.ph81.prol
  %.080.prol = phi ptr [ %i.du, %.lr.ph81.prol ], [ %i.dm, %.lr.ph81.preheader ] ; 2 uses
  %.379.prol = phi ptr [ %i.dp, %.lr.ph81.prol ], [ %.26377, %.lr.ph81.preheader ] ; 2 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph81.prol ], [ 0, %.lr.ph81.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.379.prol, i64 1 ; 2 uses
  %i.dq = load i8, ptr %.379.prol, align 1, !tbaa !12
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.080.prol, i64 1 ; 2 uses
  store i8 %i.dt, ptr %.080.prol, align 1, !tbaa !12
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol, !llvm.loop !170

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %.080.unr = phi ptr [ %i.dm, %.lr.ph81.preheader ], [ %i.du, %.lr.ph81.prol ]
  %.379.unr = phi ptr [ %.26377, %.lr.ph81.preheader ], [ %i.dp, %.lr.ph81.prol ]
  %i.dv = sub i64 %i.do, %i.c
  %i.dw = add i64 %i.dv, %indvar117
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %.080 = phi ptr [ %i.ft, %.lr.ph81 ], [ %.080.unr, %.lr.ph81.prol.loopexit ] ; 9 uses
  %.379 = phi ptr [ %i.fo, %.lr.ph81 ], [ %.379.unr, %.lr.ph81.prol.loopexit ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.379, i64 1
  %i.dz = load i8, ptr %.379, align 1, !tbaa !12
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.080, i64 1
  store i8 %i.ec, ptr %.080, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !12
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %.080, i64 2
  store i8 %i.ei, ptr %i.ed, align 1, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %.379, i64 3
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !12
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.080, i64 3
  store i8 %i.eo, ptr %i.ej, align 1, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.379, i64 4
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.080, i64 4
  store i8 %i.eu, ptr %i.ep, align 1, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.379, i64 5
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !12
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @zend_toupper_map, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %.080, i64 5
  store i8 %i.fa, ptr %i.ev, align 1, !tbaa !12
end_hunk_0
