Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_:bb.a
bb.a:
  %5 = alloca %struct.hb_vector_t.78, align 8     ; 11 uses
  %6 = alloca %struct.hb_vector_size_t, align 8   ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !193, !range !64, !noundef !65
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.af, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !194
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !313  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !313  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.not19.i.not = icmp eq i32 %i.e, 0
  br i1 %.not19.i.not, label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.j = icmp samesign ugt i32 %i.e, 1073741823
  br i1 %i.j, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !66

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.k = shl nuw i32 %i.e, 2
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.l) #14 ; 3 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129, label %bb.e, !prof !260

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129:  ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i
  store i32 -1, ptr %5, align 8, !tbaa !289
  br label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !285
  store i32 %i.e, ptr %5, align 8, !tbaa !289
  %i.o = shl nuw i32 %i.e, 2
  %i.p = zext i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.p, i1 false)
  br label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread

_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread: ; preds = %bb.d, %bb.e
  store i32 %i.e, ptr %i.i, align 4, !tbaa !284
  br label %bb.f

_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit: ; preds = %bb.c, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129
  store i8 0, ptr %0, align 8, !tbaa !193
  br label %bb.ad

bb.f:                                             ; preds = %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread, %bb.b
  %i.q = icmp ne i32 %i.e, 0
  %i.r = icmp ne i32 %i.g, 0                      ; 3 uses
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !250  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !250  ; 2 uses
  %i.x = zext i1 %3 to i32                        ; 2 uses
  %i.y = zext i1 %2 to i32                        ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.0104140.us = phi i32 [ %.1105.us, %bb.k ], [ 0, %.lr.ph ] ; 4 uses
  %.0107139.us = phi i32 [ %.1108.us, %bb.k ], [ 0, %.lr.ph ] ; 4 uses
  %.0112138.us = phi i32 [ %.3115.us, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.z = zext i32 %.0107139.us to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !253 ; 2 uses
  %i.ac = zext i32 %.0104140.us to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !253 ; 2 uses
  %i.af = icmp eq i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ag = icmp ult i32 %i.ab, %i.ae
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select126.us = add i32 %.0112138.us, %i.x
  %i.ah = add nuw i32 %.0104140.us, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %spec.select.us = add i32 %.0112138.us, %i.y
  %i.ai = add nuw i32 %.0107139.us, 1
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.aj = add i32 %.0112138.us, 1
  %i.ak = add nuw i32 %.0107139.us, 1
  %i.al = add nuw i32 %.0104140.us, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.3115.us = phi i32 [ %i.aj, %bb.j ], [ %spec.select.us, %bb.i ], [ %spec.select126.us, %bb.h ] ; 2 uses
  %.1108.us = phi i32 [ %i.ak, %bb.j ], [ %i.ai, %bb.i ], [ %.0107139.us, %bb.h ] ; 3 uses
  %.1105.us = phi i32 [ %i.al, %bb.j ], [ %.0104140.us, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.am = icmp ult i32 %.1108.us, %i.e
  %i.an = icmp ult i32 %.1105.us, %i.g
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !937

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.0141 = phi i32 [ %.2, %bb.r ], [ 0, %.lr.ph ] ; 5 uses
  %.0104140 = phi i32 [ %.1105, %bb.r ], [ 0, %.lr.ph ] ; 4 uses
  %.0107139 = phi i32 [ %.1108, %bb.r ], [ 0, %.lr.ph ] ; 5 uses
  %.0112138 = phi i32 [ %.3115, %bb.r ], [ 0, %.lr.ph ] ; 3 uses
  %i.ap = zext i32 %.0107139 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !253 ; 2 uses
  %i.as = zext i32 %.0104140 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !253 ; 2 uses
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.aw = icmp ult i32 %.0141, %.0107139
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = zext i32 %.0141 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ax
  %i.az = load i64, ptr %i.aq, align 4, !tbaa !157
  store i64 %i.az, ptr %i.ay, align 4, !tbaa !157
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = add i32 %.0141, 1
  %i.bb = add i32 %.0112138, 1
  %i.bc = add nuw i32 %.0107139, 1
  %i.bd = add nuw i32 %.0104140, 1
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph.split
  %i.be = icmp ult i32 %i.ar, %i.au
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %spec.select = add i32 %.0112138, %i.y
  %i.bf = add nuw i32 %.0107139, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %spec.select126 = add i32 %.0112138, %i.x
  %i.bg = add nuw i32 %.0104140, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.3115 = phi i32 [ %i.bb, %bb.n ], [ %spec.select, %bb.p ], [ %spec.select126, %bb.q ] ; 2 uses
  %.1108 = phi i32 [ %i.bc, %bb.n ], [ %i.bf, %bb.p ], [ %.0107139, %bb.q ] ; 3 uses
  %.1105 = phi i32 [ %i.bd, %bb.n ], [ %.0104140, %bb.p ], [ %i.bg, %bb.q ] ; 3 uses
  %.2 = phi i32 [ %i.ba, %bb.n ], [ %.0141, %bb.p ], [ %.0141, %bb.q ] ; 2 uses
  %i.bh = icmp ult i32 %.1108, %i.e
  %i.bi = icmp ult i32 %.1105, %i.g
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !937

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.f
  %.0112.lcssa = phi i32 [ 0, %bb.f ], [ %.3115.us, %bb.k ], [ %.3115, %bb.r ]
  %.0107.lcssa = phi i32 [ 0, %bb.f ], [ %.1108.us, %bb.k ], [ %.1108, %bb.r ]
  %.0104.lcssa = phi i32 [ 0, %bb.f ], [ %.1105.us, %bb.k ], [ %.1105, %bb.r ]
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ 0, %bb.k ], [ %.2, %bb.r ] ; 2 uses
  %i.bk = sub i32 %i.e, %.0107.lcssa
  %i.bl = select i1 %2, i32 %i.bk, i32 0
  %.4116 = add i32 %i.bl, %.0112.lcssa
  %i.bm = sub i32 %i.g, %.0104.lcssa
  %i.bn = select i1 %3, i32 %i.bm, i32 0
  %.5 = add i32 %.4116, %i.bn                     ; 4 uses
  br i1 %2, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  call void @_ZN12hb_bit_set_t7compactER11hb_vector_tIjLb0EEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %.0.lcssa)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.0117 = phi i32 [ %i.e, %._crit_edge ], [ %.0.lcssa, %bb.s ] ; 5 uses
  %i.bo = call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.5, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.bo, label %.preheader135, label %bb.ad, !prof !68

.preheader135:                                    ; preds = %bb.t
  %i.bp = icmp ne i32 %.0117, 0                   ; 2 uses
  %i.bq = select i1 %i.bp, i1 %i.r, i1 false
  br i1 %i.bq, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader135
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre163 = load ptr, ptr %i.br, align 8, !tbaa !250
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph152, %bb.ab
  %7 = phi ptr [ %.pre163, %.lr.ph152 ], [ %8, %bb.ab ] ; 7 uses
  %.2109150.a = phi i32 [ %i.g, %.lr.ph152 ], [ %.3, %bb.ab ] ; 3 uses
  %.6149.a = phi i32 [ %.0117, %.lr.ph152 ], [ %.3110, %bb.ab ] ; 3 uses
  %.1118148.a = phi i32 [ %.5, %.lr.ph152 ], [ %.7, %bb.ab ] ; 5 uses
  %.1118148 = phi i32 [ %.0117, %.lr.ph152 ], [ %.2119, %bb.ab ] ; 7 uses
  %i.bv = add i32 %.6149.a, -1                    ; 4 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bw ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !253 ; 2 uses
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !250
  %i.ca = add i32 %.2109150.a, -1                 ; 4 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !253 ; 3 uses
  %i.ce = icmp eq i32 %i.by, %i.cd
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = add i32 %.1118148.a, -1                 ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cg
  %i.ci = load i64, ptr %i.bx, align 4, !tbaa !157
  store i64 %i.ci, ptr %i.ch, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !256
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %i.cj, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.bt, align 8, !tbaa !254
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !256
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void %1(ptr dead_on_unwind nonnull writable sret(%struct.hb_vector_size_t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.cu) #14
  %i.cv = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.cw = load ptr, ptr %i.br, align 8, !tbaa !250
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cg
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !256
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.cv, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !942
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.dd = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.de = load ptr, ptr %i.br, align 8, !tbaa !250 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cg
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !256
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %i.di
  store i32 -1, ptr %i.dj, align 8, !tbaa !312
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.dk = icmp ugt i32 %i.by, %i.cd
  br i1 %i.dk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %2, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dl = add i32 %.1118148.a, -1                 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dm
  %i.do = load i64, ptr %i.bx, align 4, !tbaa !157
  store i64 %i.do, ptr %i.dn, align 4, !tbaa !157
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  br i1 %3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = add i32 %.1118148.a, -1                 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dq ; 2 uses
  store i32 %i.cd, ptr %i.dr, align 4, !tbaa !253
  %i.ds = add i32 %.1118148, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 %.1118148, ptr %i.dt, align 4, !tbaa !256
  %i.du = load ptr, ptr %i.bt, align 8, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !256
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [72 x i8], ptr %i.du, i64 %i.dx
  %i.dz = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.ea = zext i32 %.1118148 to i64
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %i.dz, i64 %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef nonnull align 8 dereferenceable(72) %i.dy, i64 72, i1 false), !tbaa.struct !318
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !250
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.x, %bb.aa, %bb.z, %bb.v
  %8 = phi ptr [ %i.de, %bb.v ], [ %7, %bb.y ], [ %7, %bb.x ], [ %.pre, %bb.aa ], [ %7, %bb.z ]
  %.2119 = phi i32 [ %.1118148, %bb.v ], [ %.1118148, %bb.y ], [ %.1118148, %bb.x ], [ %i.ds, %bb.aa ], [ %.1118148, %bb.z ] ; 2 uses
  %.7 = phi i32 [ %i.cf, %bb.v ], [ %i.dl, %bb.y ], [ %.1118148.a, %bb.x ], [ %i.dp, %bb.aa ], [ %.1118148.a, %bb.z ] ; 2 uses
  %.3110 = phi i32 [ %i.bv, %bb.v ], [ %i.bv, %bb.y ], [ %i.bv, %bb.x ], [ %.6149.a, %bb.aa ], [ %.6149.a, %bb.z ] ; 3 uses
  %.3 = phi i32 [ %i.ca, %bb.v ], [ %.2109150.a, %bb.y ], [ %.2109150.a, %bb.x ], [ %i.ca, %bb.aa ], [ %i.ca, %bb.z ] ; 3 uses
  %i.ec = icmp ne i32 %.3110, 0                   ; 2 uses
  %i.ed = icmp ne i32 %.3, 0                      ; 2 uses
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %bb.u, label %._crit_edge153, !llvm.loop !938

._crit_edge153:                                   ; preds = %bb.ab, %.preheader135
  %.1118.lcssa = phi i32 [ %.0117, %.preheader135 ], [ %.2119, %bb.ab ]
  %.6.lcssa = phi i32 [ %.5, %.preheader135 ], [ %.7, %bb.ab ] ; 9 uses
  %.2109.lcssa = phi i32 [ %.0117, %.preheader135 ], [ %.3110, %bb.ab ] ; 10 uses
  %.2106.lcssa = phi i32 [ %i.g, %.preheader135 ], [ %.3, %bb.ab ]
  %.lcssa137 = phi i1 [ %i.bp, %.preheader135 ], [ %i.ec, %bb.ab ]
  %.lcssa136 = phi i1 [ %i.r, %.preheader135 ], [ %i.ed, %bb.ab ]
  %or.cond = and i1 %2, %.lcssa137
  br i1 %or.cond, label %.preheader133, label %.loopexit134

.preheader133:                                    ; preds = %._crit_edge153
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !250 ; 12 uses
  %min.iters.check = icmp ult i32 %.2109.lcssa, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader133
  %i.eh = add i32 %.6.lcssa, -1
  %i.ei = sub i32 %.6.lcssa, %.2109.lcssa
  %i.ej = icmp ugt i32 %i.ei, %i.eh
  br i1 %i.ej, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ek = add i32 %.2109.lcssa, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = add i32 %.6.lcssa, -1
  %i.en = zext i32 %i.em to i64
  %i.eo = sub nsw i64 %i.el, %i.en
  %i.ep = shl nsw i64 %i.eo, 3
  %i.eq = add nsw i64 %i.ep, -1
  %diff.check = icmp ult i64 %i.eq, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %.2109.lcssa, -4               ; 3 uses
  %i.er = sub i32 %.6.lcssa, %n.vec               ; 2 uses
  %i.es = and i32 %.2109.lcssa, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = xor i32 %index, -1
  %i.eu = add i32 %.2109.lcssa, %i.et
  %i.ev = xor i32 %index, -1
  %i.ew = add i32 %.6.lcssa, %i.ev
  %i.ex = zext i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ex ; 2 uses
  %i.ez = zext i32 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 -8
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fb, align 4, !tbaa !157
  %wide.load182 = load <2 x i64>, ptr %i.fc, align 4, !tbaa !157
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 -24
  store <2 x i64> %wide.load, ptr %i.fd, align 4, !tbaa !157
  store <2 x i64> %wide.load182, ptr %i.fe, align 4, !tbaa !157
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ff = icmp eq i32 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !939

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.2109.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit134, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader133, %middle.block
  %.8.ph = phi i32 [ %.6.lcssa, %vector.memcheck ], [ %.6.lcssa, %vector.scevcheck ], [ %.6.lcssa, %.preheader133 ], [ %i.er, %middle.block ] ; 2 uses
  %.4111.ph = phi i32 [ %.2109.lcssa, %vector.memcheck ], [ %.2109.lcssa, %vector.scevcheck ], [ %.2109.lcssa, %.preheader133 ], [ %i.es, %middle.block ] ; 4 uses
  %i.fg = add i32 %.4111.ph, -1
  %xtraiter = and i32 %.4111.ph, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.8.prol = phi i32 [ %i.fi, %scalar.ph.prol ], [ %.8.ph, %scalar.ph.preheader ]
  %.4111.prol = phi i32 [ %i.fh, %scalar.ph.prol ], [ %.4111.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fh = add i32 %.4111.prol, -1                 ; 3 uses
  %i.fi = add i32 %.8.prol, -1                    ; 4 uses
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fj
  %i.fl = zext i32 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fl
  %i.fn = load i64, ptr %i.fk, align 4, !tbaa !157
  store i64 %i.fn, ptr %i.fm, align 4, !tbaa !157
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !940

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.fi, %scalar.ph.prol ]
  %.8.unr = phi i32 [ %.8.ph, %scalar.ph.preheader ], [ %i.fi, %scalar.ph.prol ]
  %.4111.unr = phi i32 [ %.4111.ph, %scalar.ph.preheader ], [ %i.fh, %scalar.ph.prol ]
  %i.fo = icmp ult i32 %i.fg, 3
  br i1 %i.fo, label %.loopexit134, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.8 = phi i32 [ %i.gl, %scalar.ph ], [ %.8.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.4111 = phi i32 [ %i.gk, %scalar.ph ], [ %.4111.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fp = add i32 %.4111, -1
  %i.fq = add i32 %.8, -1
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fr
  %i.ft = zext i32 %i.fq to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ft
  %i.fv = load i64, ptr %i.fs, align 4, !tbaa !157
  store i64 %i.fv, ptr %i.fu, align 4, !tbaa !157
  %i.fw = add i32 %.4111, -2
  %i.fx = add i32 %.8, -2
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fy
  %i.ga = zext i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ga
  %i.gc = load i64, ptr %i.fz, align 4, !tbaa !157
  store i64 %i.gc, ptr %i.gb, align 4, !tbaa !157
  %i.gd = add i32 %.4111, -3
  %i.ge = add i32 %.8, -3
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gf
  %i.gh = zext i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gh
  %i.gj = load i64, ptr %i.gg, align 4, !tbaa !157
  store i64 %i.gj, ptr %i.gi, align 4, !tbaa !157
  %i.gk = add i32 %.4111, -4                      ; 3 uses
  %i.gl = add i32 %.8, -4                         ; 3 uses
  %i.gm = zext i32 %i.gk to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gm
  %i.go = zext i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.go
  %i.gq = load i64, ptr %i.gn, align 4, !tbaa !157
  store i64 %i.gq, ptr %i.gp, align 4, !tbaa !157
  %.old1.not.3 = icmp eq i32 %i.gk, 0
  br i1 %.old1.not.3, label %.loopexit134, label %scalar.ph, !llvm.loop !941

.loopexit134:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge153
  %.9 = phi i32 [ %.6.lcssa, %._crit_edge153 ], [ %i.er, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.gl, %scalar.ph ]
  %or.cond4 = select i1 %3, i1 %.lcssa136, i1 false
  br i1 %or.cond4, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit134
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ac
  %.3120 = phi i32 [ %i.he, %bb.ac ], [ %.1118.lcssa, %.preheader ] ; 3 uses
  %.10 = phi i32 [ %i.gw, %bb.ac ], [ %.9, %.preheader ]
  %.4 = phi i32 [ %i.gv, %bb.ac ], [ %.2106.lcssa, %.preheader ]
  %i.gv = add i32 %.4, -1                         ; 3 uses
  %i.gw = add i32 %.10, -1                        ; 2 uses
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !250
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !253
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !250
  %i.hc = zext i32 %i.gw to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !253
  %i.he = add i32 %.3120, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %.3120, ptr %i.hf, align 4, !tbaa !256
  %i.hg = load ptr, ptr %i.gt, align 8, !tbaa !254
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !256
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [72 x i8], ptr %i.hg, i64 %i.hj
  %i.hl = load ptr, ptr %i.gu, align 8, !tbaa !254
  %i.hm = zext i32 %.3120 to i64
  %i.hn = getelementptr inbounds nuw [72 x i8], ptr %i.hl, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hn, ptr noundef nonnull align 8 dereferenceable(72) %i.hk, i64 72, i1 false), !tbaa.struct !318
  %.old3.not = icmp eq i32 %i.gv, 0
  br i1 %.old3.not, label %.loopexit, label %bb.ac

.loopexit:                                        ; preds = %bb.ac, %.loopexit134
  %i.ho = call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.5, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit, %bb.t, %.loopexit
  %i.hp = load i32, ptr %5, align 8, !tbaa !289
  %i.hq = add i32 %i.hp, -1
  %spec.select.i.i.i = icmp ult i32 %i.hq, -2
  br i1 %spec.select.i.i.i, label %bb.ae, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.hr, align 4, !tbaa !284
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !285
  call void @hb_free(ptr noundef %i.ht) #14
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
end_hunk_0
