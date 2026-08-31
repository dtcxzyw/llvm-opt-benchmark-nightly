Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_property_hooks?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@zho_build_properties_ex:bb.a
  %.not155177 = icmp eq i32 %i.ae, 0
  br i1 %.not155177, label %.loopexit167, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.f, %zend_string_release.exit
  %.0138178 = phi ptr [ %i.cq, %zend_string_release.exit ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0138178, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !23
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %zend_string_release.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %.lr.ph180
  %i.ak = load ptr, ptr %.0138178, align 8, !tbaa !23 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32 ; 2 uses
  %i.an = and i32 %i.am, 16
  %.not156.a = icmp eq i32 %i.an, 0
  br i1 %.not156.a, label %bb.h, label %zend_string_release.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39 ; 6 uses
  %i.aq = and i32 %i.am, 2
  %.not157.a = icmp eq i32 %i.aq, 0
  br i1 %.not157.a, label %zend_string_release.exit164, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ar = call i32 @zend_unmangle_property_name_ex(ptr noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #7 ; 0 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #9 ; 4 uses
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 32
  %i.aw = call noalias ptr @_emalloc(i64 noundef %i.av) #8 ; 11 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  store i32 22, ptr %i.ax, align 4, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.at, ptr %i.az, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.at
  store i8 0, ptr %i.bb, align 1, !tbaa !23
  %i.bc = call ptr @zend_hash_find(ptr noundef nonnull %i.s, ptr noundef nonnull %i.aw) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.i

bb.i:                                             ; preds = %zend_string_alloc.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23, !nonnull !46, !noundef !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = and i32 %i.bf, 1
  %.not159 = icmp eq i32 %i.bg, 0
  br i1 %.not159, label %zend_hash_find_ptr.exit.thread, label %zend_string_release.exit164

zend_hash_find_ptr.exit.thread:                   ; preds = %zend_string_alloc.exit, %bb.i
  %i.bh = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %i.bi = and i32 %i.bh, 64
  %.not.i162 = icmp eq i32 %i.bi, 0
  br i1 %.not.i162, label %bb.j, label %zend_string_release.exit164

bb.j:                                             ; preds = %zend_hash_find_ptr.exit.thread
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.aw, align 8, !tbaa !42
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %zend_string_release.exit164

bb.k:                                             ; preds = %bb.j
  %i.bn = and i32 %i.bh, 128
  %.not5.i163 = icmp eq i32 %i.bn, 0
  br i1 %.not5.i163, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.aw) #7
  br label %zend_string_release.exit164

bb.m:                                             ; preds = %bb.k
  call void @_efree(ptr noundef nonnull %i.aw) #7
  br label %zend_string_release.exit164

zend_string_release.exit164:                      ; preds = %bb.m, %bb.l, %bb.j, %zend_hash_find_ptr.exit.thread, %bb.i, %bb.h
  %.1137 = phi ptr [ %i.ap, %bb.h ], [ %i.aw, %bb.i ], [ %i.ap, %zend_hash_find_ptr.exit.thread ], [ %i.ap, %bb.j ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ] ; 9 uses
  br i1 %1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %zend_string_release.exit164
  %i.bo = call i32 @zend_check_property_access(ptr noundef %0, ptr noundef %.1137, i1 noundef zeroext false) #7
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %zend_string_release.exit164
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.bs = icmp ne ptr %i.br, null
  %or.cond = or i1 %2, %i.bs
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.ak, ptr %4, align 8, !tbaa !23
  store i32 13, ptr %i.u, align 8, !tbaa !23
  %i.bt = call ptr @zend_hash_update(ptr noundef %i.j, ptr noundef %.1137, ptr noundef nonnull %4) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !23
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.r, label %bb.s, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.ca = load i32, ptr %i.t, align 8, !tbaa !23
  %i.cb = or i32 %i.ca, 32
  store i32 %i.cb, ptr %i.t, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cc = call ptr @zend_hash_lookup(ptr noundef %i.j, ptr noundef %.1137) #7 ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 12, ptr %i.cg, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.n
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !39
  %.not160 = icmp eq ptr %.1137, %i.ch
  br i1 %.not160, label %zend_string_release.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.1137, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23 ; 2 uses
  %i.ck = and i32 %i.cj, 64
  %.not.i161 = icmp eq i32 %i.ck, 0
  br i1 %.not.i161, label %bb.v, label %zend_string_release.exit

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %.1137, align 4, !tbaa !42 ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cn, ptr %.1137, align 4, !tbaa !42
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.w, label %zend_string_release.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = and i32 %i.cj, 128
  %.not5.i = icmp eq i32 %i.cp, 0
  br i1 %.not5.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %.1137) #7
  br label %zend_string_release.exit

bb.y:                                             ; preds = %bb.w
  call void @_efree(ptr noundef nonnull %.1137) #7
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.g, %.lr.ph180
  %i.cq = getelementptr inbounds nuw i8, ptr %.0138178, i64 32 ; 2 uses
  %.not155 = icmp eq ptr %i.cq, %i.ag
  br i1 %.not155, label %.loopexit167, label %.lr.ph180, !llvm.loop !49

._crit_edge184:                                   ; preds = %.loopexit167, %._crit_edge, %.preheader
  call void @_efree(ptr noundef %i.p) #7
  br i1 %3, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge184
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21 ; 4 uses
  %.not150.a = icmp eq ptr %i.cs, null
  br i1 %.not150.a, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !29 ; 2 uses
  %.not151185 = icmp eq i32 %i.cv, 0
  br i1 %.not151185, label %.loopexit, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %bb.ag
  %.0189 = phi i32 [ %i.dm, %bb.ag ], [ %i.cv, %.lr.ph191.preheader ]
  %.0131188 = phi ptr [ %.1, %bb.ag ], [ %i.cx, %.lr.ph191.preheader ] ; 5 uses
  %.0134186 = phi ptr [ %.1135, %bb.ag ], [ null, %.lr.ph191.preheader ]
  %i.cy = load i32, ptr %i.ct, align 8, !tbaa !23
  %i.cz = and i32 %i.cy, 4
  %.not152 = icmp eq i32 %i.cz, 0
  br i1 %.not152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph191
  %i.da = getelementptr inbounds nuw i8, ptr %.0131188, i64 16
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph191
  %i.db = getelementptr inbounds nuw i8, ptr %.0131188, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0131188, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1135 = phi ptr [ %.0134186, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %.1 = phi ptr [ %i.da, %bb.ab ], [ %i.db, %bb.ac ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0131188, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !23
  switch i8 %i.df, label %bb.ae [
    i8 0, label %bb.ag
    i8 12, label %bb.ag
  ], !prof !53

bb.ae:                                            ; preds = %bb.ad
  %i.dg = call ptr @zend_hash_add_new(ptr noundef %i.j, ptr noundef %.1135, ptr noundef nonnull %.0131188) #7 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !23
  %.not153 = icmp eq i8 %i.di, 0
  br i1 %.not153, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !23 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !42
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !42
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ad, %bb.ae, %bb.af
  %i.dm = add i32 %.0189, -1                      ; 2 uses
  %.not151 = icmp eq i32 %i.dm, 0
  br i1 %.not151, label %.loopexit, label %.lr.ph191, !llvm.loop !54

.loopexit:                                        ; preds = %bb.ag, %bb.aa, %bb.z, %._crit_edge184
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_hooked_object_get_iterator(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = icmp ugt i32 %i.c, 1073741823
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @zend_lazy_object_init(ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = tail call noalias ptr @_emalloc_160() #7 ; 14 uses
  tail call void @zend_iterator_init(ptr noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.h = load i32, ptr %.026, align 4, !tbaa !42
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %.026, align 4, !tbaa !42
  store ptr %.026, ptr %i.g, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 776, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @zend_hooked_object_it_funcs, ptr %i.k, align 8, !tbaa !55
  %i.l = icmp ne i32 %2, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 8, !tbaa !60
  %i.o = tail call fastcc ptr @zho_build_properties_ex(ptr noundef nonnull %.026, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i32 775, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61
  %.not27 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.u = zext i1 %.not27 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !62
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = tail call ptr %i.z(ptr noundef %i.v) #7, !inline_history !66 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %i.ab, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i
  %.not1622.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1622.i.i, label %zho_dynamic_it_init.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %select.unfold.i.i
  %.01424.i.i = phi ptr [ %i.am, %select.unfold.i.i ], [ %i.ad, %bb.c ] ; 2 uses
  %.01523.i.i = phi i32 [ %.1.ph.i.i, %select.unfold.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01424.i.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !23  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not17.i.i = icmp eq i8 %i.aj, 12
  %i.al = add i32 %.01523.i.i, 1
  br i1 %.not17.i.i, label %select.unfold.i.i, label %zho_dynamic_it_init.exit

select.unfold.i.i:                                ; preds = %bb.d, %.lr.ph.i.i
  %.1.ph.i.i = phi i32 [ %.01523.i.i, %.lr.ph.i.i ], [ %i.al, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01424.i.i, i64 32 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not16.i.i, label %zho_dynamic_it_init.exit, label %.lr.ph.i.i, !llvm.loop !68

zho_dynamic_it_init.exit:                         ; preds = %bb.d, %select.unfold.i.i, %bb.c
  %.015.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.01523.i.i, %bb.d ], [ %.1.ph.i.i, %select.unfold.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 %.015.lcssa.i.i, ptr %i.an, align 4, !tbaa !69
  %i.ao = tail call i32 @zend_hash_iterator_add(ptr noundef %i.aa, i32 noundef %.015.lcssa.i.i) #7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i32 0, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 0, ptr %i.ar, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %zho_dynamic_it_init.exit
  %.0 = phi ptr [ %i.f, %zho_dynamic_it_init.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @_emalloc_160() local_unnamed_addr #1

declare void @zend_iterator_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @_zend_new_array(i32 noundef) local_unnamed_addr #1

declare void @zend_hash_real_init_mixed(ptr noundef) local_unnamed_addr #1

declare noalias ptr @_emalloc_32() local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @zend_check_property_access(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @zend_hash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_efree(ptr noundef) local_unnamed_addr #1

declare ptr @zend_hash_add_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zend_unmangle_property_name_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @zend_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @zho_it_dtor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !42
  %.not3.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i, label %bb.c, label %zval_ptr_dtor_nogc.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @rc_dtor_func(ptr noundef %i.j) #7
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  tail call void @zend_hash_iterator_del(i32 noundef %i.m) #7
  ret void
}

end_hunk_0
