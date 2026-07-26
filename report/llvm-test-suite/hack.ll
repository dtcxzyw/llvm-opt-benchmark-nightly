inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@map_output_symbolic:bb.a
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !24
  %i.be = load ptr, ptr %.2130, align 8, !tbaa !49
  %i.bf = call i32 @find_inputs(ptr noundef null, ptr noundef nonnull %0, ptr noundef %i.be, i32 noundef %.0129, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ...) @sf_free(ptr noundef %i.bg) #11
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !24
  store ptr %i.bh, ptr %0, align 8, !tbaa !23
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.bi) #11
  %i.bj = getelementptr inbounds nuw i8, ptr %.2130, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = add nsw i32 %i.bl, %.0129
  %i.bn = getelementptr inbounds nuw i8, ptr %.2130, i64 32
  %.2 = load ptr, ptr %i.bn, align 8, !tbaa !38   ; 2 uses
  %.not99 = icmp eq ptr %.2, null
  br i1 %.not99, label %._crit_edge133.loopexit, label %.lr.ph132

._crit_edge133.loopexit:                          ; preds = %.lr.ph132
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 33
  %i.br = add nsw i32 %i.bp, -1
  %i.bs = lshr i32 %i.br, 3
  %i.bt = and i32 %i.bs, 536870908
  %i.bu = add nuw nsw i32 %i.bt, 8
  %narrow = select i1 %i.bq, i32 8, i32 %i.bu
  %i.bv = zext nneg i32 %narrow to i64
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bv) #13
  %i.bx = load i32, ptr %i.bo, align 4, !tbaa !50
  %i.by = call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.bw, i32 noundef %i.bx) #11 ; 7 uses
  %.3139 = load ptr, ptr %i.n, align 8, !tbaa !38 ; 2 uses
  %.not100140 = icmp eq ptr %.3139, null
  br i1 %.not100140, label %._crit_edge142, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge133.loopexit
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge138
  %.3141 = phi ptr [ %.3139, %.preheader.lr.ph ], [ %.3, %._crit_edge138 ] ; 2 uses
  %.294134 = load ptr, ptr %.3141, align 8, !tbaa !39 ; 2 uses
  %.not103135 = icmp eq ptr %.294134, null
  br i1 %.not103135, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader, %.lr.ph137
  %.294136 = phi ptr [ %.294, %.lr.ph137 ], [ %.294134, %.preheader ] ; 2 uses
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.294136, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !41
  %i.cg = add nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.ch = and i32 %i.cg, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = xor i32 %i.ci, -1
  %i.ck = ashr i32 %i.cg, 5
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = and i32 %i.co, %i.cj
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.294136, i64 8
  %.294 = load ptr, ptr %i.cq, align 8, !tbaa !39 ; 2 uses
  %.not103 = icmp eq ptr %.294, null
  br i1 %.not103, label %._crit_edge138, label %.lr.ph137

._crit_edge138:                                   ; preds = %.lr.ph137, %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.3141, i64 32
  %.3 = load ptr, ptr %i.cr, align 8, !tbaa !38   ; 2 uses
  %.not100 = icmp eq ptr %.3, null
  br i1 %.not100, label %._crit_edge142, label %.preheader

._crit_edge142:                                   ; preds = %._crit_edge138, %._crit_edge133.loopexit
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !50
  %i.cv = call i32 (ptr, ...) @set_ord(ptr noundef %i.by) #11
  %.neg = sub i32 %i.cv, %i.cu
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = add i32 %.neg, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !4
  call void (...) @setdown_cube() #11
  call void (...) @cube_setup() #11
  %i.dc = load ptr, ptr %0, align 8, !tbaa !23
  %i.dd = call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.dc, ptr noundef %i.by) #11
  store ptr %i.dd, ptr %0, align 8, !tbaa !23
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.df = call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.de, ptr noundef %i.by) #11
  store ptr %i.df, ptr %i.c, align 8, !tbaa !25
  %i.dg = load i32, ptr @cube, align 8, !tbaa !30
  %i.dh = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !50
  %.not101 = icmp eq i32 %i.dg, %i.dj
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge142
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.12) #11
  %.pre148 = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge142
  %i.dk = phi ptr [ %.pre148, %bb.g ], [ %i.dh, %._crit_edge142 ]
  %i.dl = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dk) #11
  store ptr %i.dl, ptr %0, align 8, !tbaa !23
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.dn = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dm) #11
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !25
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.h, %.lr.ph145
  %.091143 = phi i32 [ %i.du, %.lr.ph145 ], [ 0, %bb.h ] ; 3 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !23
  %i.dr = call ptr (ptr, i32, ...) @d1merge(ptr noundef %i.dq, i32 noundef %.091143) #11
  store ptr %i.dr, ptr %0, align 8, !tbaa !23
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.dt = call ptr (ptr, i32, ...) @d1merge(ptr noundef %i.ds, i32 noundef %.091143) #11
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !25
  %i.du = add nuw nsw i32 %.091143, 1             ; 2 uses
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph145, label %._crit_edge146

._crit_edge146:                                   ; preds = %.lr.ph145, %bb.h
  %i.dx = load ptr, ptr %0, align 8, !tbaa !23
  %i.dy = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dx) #11
  store ptr %i.dy, ptr %0, align 8, !tbaa !23
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ea = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dz) #11
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !25
  %i.eb = load ptr, ptr %i.ax, align 8, !tbaa !37
  call void (ptr, ...) @sf_free(ptr noundef %i.eb) #11
  %i.ec = load i32, ptr @cube, align 8, !tbaa !30
  %i.ed = call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.ec) #11
  store ptr %i.ed, ptr %i.ax, align 8, !tbaa !37
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.ef = load i32, ptr @cube, align 8, !tbaa !30
  %i.eg = call i32 @symbolic_hack_labels(ptr noundef nonnull %0, ptr noundef %i.ee, ptr noundef %i.by, i32 noundef %i.ef, i32 noundef %i.ah, i32 noundef %.089.lcssa153) ; 0 uses
  %.not102 = icmp eq ptr %i.by, null
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge146
  call void @free(ptr noundef nonnull %i.by) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 undef
}

declare ptr @complement(...) local_unnamed_addr #3

declare ptr @cube2list(...) local_unnamed_addr #3

declare void @fatal(...) local_unnamed_addr #3

declare ptr @sf_addcol(...) local_unnamed_addr #3

declare ptr @sf_new(...) local_unnamed_addr #3

declare ptr @set_fill(...) local_unnamed_addr #3

declare i32 @set_ord(...) local_unnamed_addr #3

declare ptr @sf_compress(...) local_unnamed_addr #3

declare ptr @sf_contain(...) local_unnamed_addr #3

declare ptr @d1merge(...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @find_inputs(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %0, ptr noundef %i.b) #11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = load i32, ptr %i.c, align 8, !tbaa !29
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = add nsw i32 %4, %3                       ; 2 uses
  %i.n = and i32 %i.m, 31
  %i.o = shl nuw i32 1, %i.n
  %i.p = ashr i32 %i.m, 5
  %i.q = sext i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.053 = phi ptr [ %i.e, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %.053, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = or i32 %i.t, %i.o
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = load i32, ptr %i.c, align 8, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.053, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.k
  br i1 %i.y, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %5, align 8, !tbaa !24
  %i.aa = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.z, ptr noundef nonnull %i.c) #11
  store ptr %i.aa, ptr %5, align 8, !tbaa !24
  br label %common.ret56

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !47
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.ac, i32 noundef %i.ak) #11 ; 3 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.al) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.al) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049 = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.ap = shl nsw i32 %4, 1                       ; 2 uses
  %i.aq = tail call i32 @find_inputs(ptr noundef %.049, ptr noundef nonnull %1, ptr noundef %i.ao, i32 noundef %3, i32 noundef %i.ap, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.049) #11
  %i.ar = load ptr, ptr %1, align 8, !tbaa !23
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !47
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ay = add nsw i32 %i.ax, %i.aw
  %i.az = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.ar, i32 noundef %i.ay) #11 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.az) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.az) #11
  br label %bb.h

common.ret56:                                     ; preds = %bb.h, %._crit_edge
  %common.ret56.op = phi i32 [ undef, %._crit_edge ], [ undef, %bb.h ]
  ret i32 %common.ret56.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %bb.f ] ; 2 uses
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.bc = or disjoint i32 %i.ap, 1
  %i.bd = tail call i32 @find_inputs(ptr noundef %.1, ptr noundef nonnull %1, ptr noundef %i.bb, i32 noundef %3, i32 noundef %i.bc, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.1) #11
  br label %common.ret56
}

declare ptr @sf_append(...) local_unnamed_addr #3

declare ptr @cof_output(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @map_symbolic(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.0102134 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not135 = icmp eq ptr %.0102134, null
  br i1 %.not135, label %._crit_edge143, label %.preheader130

.preheader130:                                    ; preds = %bb.a, %._crit_edge
  %.0102136 = phi ptr [ %.0102, %._crit_edge ], [ %.0102134, %bb.a ] ; 2 uses
  %.0104131 = load ptr, ptr %.0102136, align 8, !tbaa !39 ; 2 uses
  %.not118132 = icmp eq ptr %.0104131, null
  br i1 %.not118132, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader130
  %.pre172 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  br label %.lr.ph

.preheader129:                                    ; preds = %._crit_edge
  %.1137.pre = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not112138 = icmp eq ptr %.1137.pre, null
  br i1 %.not112138, label %._crit_edge143, label %.lr.ph142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.b = phi i32 [ %i.e, %bb.c ], [ %.pre172, %.lr.ph.preheader ] ; 2 uses
  %.0104133 = phi ptr [ %.0104, %bb.c ], [ %.0104131, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i32, ptr %.0104133, align 8, !tbaa !53 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  %.not119 = icmp slt i32 %i.c, %i.b
  %or.cond = select i1 %i.d, i1 %.not119, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.13) #11
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %.pre, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0104133, i64 8
  %.0104 = load ptr, ptr %i.f, align 8, !tbaa !39 ; 2 uses
  %.not118 = icmp eq ptr %.0104, null
  br i1 %.not118, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader130
  %i.g = getelementptr inbounds nuw i8, ptr %.0102136, i64 32
  %.0102 = load ptr, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %.0102, null
  br i1 %.not, label %.preheader129, label %.preheader130

.lr.ph142:                                        ; preds = %.preheader129, %.lr.ph142
  %.1141 = phi ptr [ %.1, %.lr.ph142 ], [ %.1137.pre, %.preheader129 ] ; 2 uses
  %.0101140 = phi i32 [ %i.l, %.lr.ph142 ], [ 0, %.preheader129 ]
  %.0103139 = phi i32 [ %i.k, %.lr.ph142 ], [ 0, %.preheader129 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.1141, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = shl nuw i32 1, %i.i
  %i.k = add nsw i32 %i.j, %.0103139              ; 2 uses
  %i.l = add nuw nsw i32 %.0101140, 1             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1141, i64 32
  %.1 = load ptr, ptr %i.m, align 8, !tbaa !38    ; 2 uses
  %.not112 = icmp eq ptr %.1, null
  br i1 %.not112, label %._crit_edge143, label %.lr.ph142

._crit_edge143:                                   ; preds = %.lr.ph142, %bb.a, %.preheader129
  %.0103.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.k, %.lr.ph142 ] ; 8 uses
  %.0101.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.l, %.lr.ph142 ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = add nsw i32 %i.p, %.0103.lcssa           ; 2 uses
  %i.r = icmp slt i32 %i.q, 33
  %i.s = add nsw i32 %i.q, -1
  %i.t = lshr i32 %i.s, 3
  %i.u = and i32 %i.t, 536870908
  %i.v = add nuw nsw i32 %i.u, 8
  %narrow = select i1 %i.r, i32 8, i32 %i.v
  %i.w = zext nneg i32 %narrow to i64
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #13
  %i.y = load i32, ptr %i.o, align 4, !tbaa !50
  %i.z = add nsw i32 %i.y, %.0103.lcssa
  %i.aa = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.x, i32 noundef %i.z) #11 ; 9 uses
  %.2150 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not113151 = icmp eq ptr %.2150, null
  br i1 %.not113151, label %._crit_edge153, label %.preheader

.preheader:                                       ; preds = %._crit_edge143, %._crit_edge149
  %.2152 = phi ptr [ %.2, %._crit_edge149 ], [ %.2150, %._crit_edge143 ] ; 2 uses
  %.1105145 = load ptr, ptr %.2152, align 8, !tbaa !39 ; 2 uses
  %.not117146 = icmp eq ptr %.1105145, null
  br i1 %.not117146, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader, %.lr.ph148
  %.1105147 = phi ptr [ %.1105, %.lr.ph148 ], [ %.1105145, %.preheader ] ; 3 uses
  %i.ab = load i32, ptr %.1105147, align 8, !tbaa !53 ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 30
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = xor i32 %i.ae, -1
  %i.ag = ashr i32 %i.ab, 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.ak, %i.af
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %i.am = load i32, ptr %.1105147, align 8, !tbaa !53 ; 2 uses
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = and i32 %i.an, 30
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = xor i32 %i.ap, -1
  %i.ar = ashr i32 %i.am, 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.aa, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = and i32 %i.av, %i.aq
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.1105147, i64 8
  %.1105 = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %.not117 = icmp eq ptr %.1105, null
  br i1 %.not117, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148, %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.2152, i64 32
  %.2 = load ptr, ptr %i.ay, align 8, !tbaa !38   ; 2 uses
  %.not113 = icmp eq ptr %.2, null
  br i1 %.not113, label %._crit_edge153, label %.preheader

._crit_edge153:                                   ; preds = %._crit_edge149, %._crit_edge143
  %i.az = load ptr, ptr %0, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = add nsw i32 %i.bb, %.0103.lcssa
  %i.bd = tail call i32 (ptr, ...) @set_ord(ptr noundef %i.aa) #11
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = sdiv i32 %i.be, 2                       ; 5 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  %i.bh = sub nsw i32 %i.bg, %i.bf
  %i.bi = add nsw i32 %i.bh, %.0101.lcssa         ; 2 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.bk = sub nsw i32 %i.bj, %i.bf
  %i.bl = load i32, ptr @cube, align 8, !tbaa !30
  %i.bm = shl nsw i32 %i.bf, 1
  %i.bn = sub i32 %.0103.lcssa, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = sext i32 %i.bi to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bq) #13 ; 10 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35 ; 8 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34 ; 3 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %i.bt, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = getelementptr [4 x i8], ptr %i.br, i64 %i.bp
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !4
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.cd = add nsw i32 %i.bv, -1                   ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %._crit_edge153
  %i.cf = sext i32 %i.cc to i64                   ; 5 uses
  %i.cg = sext i32 %i.bf to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.cd to i64
  %i.ch = sext i32 %i.bv to i64                   ; 3 uses
  %i.ci = xor i64 %i.cf, -1
  %i.cj = add nsw i64 %i.ci, %i.ch                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cj, 12
  br i1 %min.iters.check, label %.lr.ph156.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph156.preheader
  %i.ck = shl nsw i64 %i.cg, 2
  %i.cl = add i64 %i.ck, %i.bu
  %i.cm = sub i64 %i.cl, %i.bs
  %diff.check = icmp ugt i64 %i.cm, -32
  br i1 %diff.check, label %.lr.ph156.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, -8                      ; 3 uses
  %i.cn = add nsw i64 %n.vec, %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = add i64 %index, %i.cf                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !4
  %wide.load184 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !4
  %i.cr = sub nsw i64 %i.co, %i.cg
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> %wide.load184, ptr %i.ct, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %._crit_edge157, label %.lr.ph156.preheader185

.lr.ph156.preheader185:                           ; preds = %vector.memcheck, %.lr.ph156.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph156.preheader ], [ %i.cn, %middle.block ] ; 4 uses
  %i.cv = xor i64 %indvars.iv.ph, -1
  %i.cw = add i64 %i.cv, %i.ch
  %i.cx = add nsw i64 %i.ch, -2
  %i.cy = sub nsw i64 %i.cx, %indvars.iv.ph
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader185, %.lr.ph156.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph156.prol ], [ %indvars.iv.ph, %.lr.ph156.preheader185 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader185 ]
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = sub nsw i64 %indvars.iv.prol, %i.cg
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.db
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !55

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader185
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph156.preheader185 ], [ %indvars.iv.next.prol, %.lr.ph156.prol ]
  %i.dd = icmp ult i64 %i.cy, 3
  br i1 %i.dd, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph156 ], [ %indvars.iv.unr, %.lr.ph156.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = sub nsw i64 %indvars.iv, %i.cg
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dg
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = sub nsw i64 %indvars.iv.next, %i.cg
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dk
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next.1
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = sub nsw i64 %indvars.iv.next.1, %i.cg
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.do
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.next.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = sub nsw i64 %indvars.iv.next.2, %i.cg
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ds
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge157, label %.lr.ph156, !llvm.loop !57

._crit_edge157:                                   ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block, %._crit_edge153
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !47
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 4 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !23
  %i.ea = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.dz, i32 noundef %i.dy, i32 noundef %.0103.lcssa) #11
  store ptr %i.ea, ptr %0, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !25
  %i.ed = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.ec, i32 noundef %i.dy, i32 noundef %.0103.lcssa) #11
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !37
  %i.eg = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.ef, i32 noundef %i.dy, i32 noundef %.0103.lcssa) #11
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !37
  %.3158 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not114159 = icmp eq ptr %.3158, null
  br i1 %.not114159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %._crit_edge157
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  %i.ei = xor i32 %i.bf, -1
  %i.ej = add i32 %i.eh, %i.ei
  %i.ek = sext i32 %i.ej to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %map_symbolic_cover.exit127
  %indvars.iv169 = phi i64 [ %i.ek, %.lr.ph164.preheader ], [ %indvars.iv.next170, %map_symbolic_cover.exit127 ] ; 2 uses
  %.3162 = phi ptr [ %.3158, %.lr.ph164.preheader ], [ %.3, %map_symbolic_cover.exit127 ] ; 5 uses
  %.0107160 = phi i32 [ %i.dy, %.lr.ph164.preheader ], [ %i.gk, %map_symbolic_cover.exit127 ] ; 4 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.em = load ptr, ptr %.3162, align 8, !tbaa !49 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !26 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !28
  %i.er = load i32, ptr %i.el, align 8, !tbaa !29
  %i.es = mul nsw i32 %i.er, %i.eq                ; 2 uses
  %i.et = sext i32 %i.es to i64
  %.idx.i = shl nsw i64 %i.et, 2
  %i.eu = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i
  %i.ev = icmp sgt i32 %i.es, 0
  br i1 %i.ev, label %.lr.ph.i, label %map_symbolic_cover.exit

.lr.ph.i:                                         ; preds = %.lr.ph164, %.lr.ph.i
  %.011.i = phi ptr [ %i.ez, %.lr.ph.i ], [ %i.eo, %.lr.ph164 ] ; 2 uses
  %i.ew = tail call i32 @form_bitvector(ptr noundef %.011.i, i32 noundef %.0107160, i32 noundef 0, ptr noundef readonly %i.em) ; 0 uses
  %i.ex = load i32, ptr %i.el, align 8, !tbaa !29
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %.011.i, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %i.ez, %i.eu
  br i1 %i.fa, label %.lr.ph.i, label %map_symbolic_cover.exit.loopexit

map_symbolic_cover.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre174 = load ptr, ptr %.3162, align 8, !tbaa !49
  br label %map_symbolic_cover.exit

map_symbolic_cover.exit:                          ; preds = %map_symbolic_cover.exit.loopexit, %.lr.ph164
  %i.fb = phi ptr [ %.pre174, %map_symbolic_cover.exit.loopexit ], [ %i.em, %.lr.ph164 ] ; 2 uses
  store ptr %i.el, ptr %0, align 8, !tbaa !23
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !25 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !26 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !28
  %i.fh = load i32, ptr %i.fc, align 8, !tbaa !29
  %i.fi = mul nsw i32 %i.fh, %i.fg                ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %.idx.i120 = shl nsw i64 %i.fj, 2
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 %.idx.i120
  %i.fl = icmp sgt i32 %i.fi, 0
  br i1 %i.fl, label %.lr.ph.i121, label %map_symbolic_cover.exit123

.lr.ph.i121:                                      ; preds = %map_symbolic_cover.exit, %.lr.ph.i121
  %.011.i122 = phi ptr [ %i.fp, %.lr.ph.i121 ], [ %i.fe, %map_symbolic_cover.exit ] ; 2 uses
  %i.fm = tail call i32 @form_bitvector(ptr noundef %.011.i122, i32 noundef %.0107160, i32 noundef 0, ptr noundef readonly %i.fb) ; 0 uses
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !29
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.011.i122, i64 %i.fo ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.fk
  br i1 %i.fq, label %.lr.ph.i121, label %map_symbolic_cover.exit123.loopexit

map_symbolic_cover.exit123.loopexit:              ; preds = %.lr.ph.i121
  %.pre175 = load ptr, ptr %.3162, align 8, !tbaa !49
  br label %map_symbolic_cover.exit123

map_symbolic_cover.exit123:                       ; preds = %map_symbolic_cover.exit123.loopexit, %map_symbolic_cover.exit
  %i.fr = phi ptr [ %.pre175, %map_symbolic_cover.exit123.loopexit ], [ %i.fb, %map_symbolic_cover.exit ]
  store ptr %i.fc, ptr %i.eb, align 8, !tbaa !25
  %i.fs = load ptr, ptr %i.ee, align 8, !tbaa !37 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !26 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = load i32, ptr %i.fs, align 8, !tbaa !29
  %i.fy = mul nsw i32 %i.fx, %i.fw                ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %.idx.i124 = shl nsw i64 %i.fz, 2
  %i.ga = getelementptr inbounds i8, ptr %i.fu, i64 %.idx.i124
  %i.gb = icmp sgt i32 %i.fy, 0
  br i1 %i.gb, label %.lr.ph.i125, label %map_symbolic_cover.exit127

.lr.ph.i125:                                      ; preds = %map_symbolic_cover.exit123, %.lr.ph.i125
  %.011.i126 = phi ptr [ %i.gf, %.lr.ph.i125 ], [ %i.fu, %map_symbolic_cover.exit123 ] ; 2 uses
  %i.gc = tail call i32 @form_bitvector(ptr noundef %.011.i126, i32 noundef %.0107160, i32 noundef 0, ptr noundef readonly %i.fr) ; 0 uses
  %i.gd = load i32, ptr %i.fs, align 8, !tbaa !29
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %.011.i126, i64 %i.ge ; 2 uses
  %i.gg = icmp ult ptr %i.gf, %i.ga
  br i1 %i.gg, label %.lr.ph.i125, label %map_symbolic_cover.exit127

map_symbolic_cover.exit127:                       ; preds = %.lr.ph.i125, %map_symbolic_cover.exit123
  store ptr %i.fs, ptr %i.ee, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %.3162, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !44
  %i.gj = shl nuw i32 1, %i.gi                    ; 2 uses
  %i.gk = add nsw i32 %i.gj, %.0107160
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv169
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %.3162, i64 32
  %.3 = load ptr, ptr %i.gm, align 8, !tbaa !38   ; 2 uses
  %.not114 = icmp eq ptr %.3, null
  br i1 %.not114, label %._crit_edge165, label %.lr.ph164

._crit_edge165:                                   ; preds = %map_symbolic_cover.exit127, %._crit_edge157
  %i.gn = load ptr, ptr %0, align 8, !tbaa !23
  %i.go = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.gn, ptr noundef %i.aa) #11
  store ptr %i.go, ptr %0, align 8, !tbaa !23
  %i.gp = load ptr, ptr %i.eb, align 8, !tbaa !25
  %i.gq = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.gp, ptr noundef %i.aa) #11
  store ptr %i.gq, ptr %i.eb, align 8, !tbaa !25
  %i.gr = load ptr, ptr %i.ee, align 8, !tbaa !37
  %i.gs = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.gr, ptr noundef %i.aa) #11
  store ptr %i.gs, ptr %i.ee, align 8, !tbaa !37
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.gu = load i32, ptr @cube, align 8, !tbaa !30
  %i.gv = tail call i32 @symbolic_hack_labels(ptr noundef nonnull %0, ptr noundef %i.gt, ptr noundef %i.aa, i32 noundef %i.bo, i32 noundef %i.gu, i32 noundef %.0103.lcssa) ; 0 uses
  tail call void (...) @setdown_cube() #11
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35 ; 2 uses
  %.not115 = icmp eq ptr %i.gw, null
  br i1 %.not115, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge165
  tail call void @free(ptr noundef nonnull %i.gw) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge165
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  store ptr %i.br, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35
  tail call void (...) @cube_setup() #11
  %.not116 = icmp eq ptr %i.aa, null
  br i1 %.not116, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aa) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @map_symbolic_cover(ptr nofree noundef readonly returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = load i32, ptr %0, align 8, !tbaa !29
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = tail call i32 @form_bitvector(ptr noundef %.011, i32 noundef %2, i32 noundef 0, ptr noundef %1) ; 0 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !29
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.011, i64 %i.l ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.h
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @form_bitvector(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i32, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = ashr i32 %i.a, 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.b, 30
  %i.i = lshr i32 %i.g, %i.h
  %i.j = and i32 %i.i, 3
  switch i32 %i.j, label %default.unreachable50 [
    i32 1, label %bb.d
    i32 2, label %bb.c
    i32 3, label %bb.b
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.k = shl nsw i32 %2, 1                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = tail call i32 @form_bitvector(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.k, ptr noundef %i.m) ; 0 uses
  %i.o = or disjoint i32 %i.k, 1
  br label %tailrecurse.backedge.peel

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.p = shl nsw i32 %2, 1
  %i.q = or disjoint i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %tailrecurse.backedge.peel

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.s = shl nsw i32 %2, 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %tailrecurse.backedge.peel

tailrecurse.backedge.peel:                        ; preds = %bb.d, %bb.c, %bb.b
  %.tr26.be.peel = phi i32 [ %i.s, %bb.d ], [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.tr27.be.in.peel = phi ptr [ %i.t, %bb.d ], [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %.tr27.be.peel = load ptr, ptr %.tr27.be.in.peel, align 8, !tbaa !52 ; 2 uses
  %i.u = icmp eq ptr %.tr27.be.peel, null
  br i1 %i.u, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %tailrecurse.backedge.peel, %bb.a
  %.tr26.lcssa = phi i32 [ %2, %bb.a ], [ %.tr26.be.peel, %tailrecurse.backedge.peel ], [ %.tr26.be, %tailrecurse.backedge ]
  %i.v = add nsw i32 %.tr26.lcssa, %1             ; 2 uses
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = ashr i32 %i.v, 5
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = or i32 %i.ac, %i.x
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !4
  br label %bb.h

.lr.ph:                                           ; preds = %tailrecurse.backedge.peel, %tailrecurse.backedge
  %.tr2740 = phi ptr [ %.tr27.be, %tailrecurse.backedge ], [ %.tr27.be.peel, %tailrecurse.backedge.peel ] ; 4 uses
  %.tr2639 = phi i32 [ %.tr26.be, %tailrecurse.backedge ], [ %.tr26.be.peel, %tailrecurse.backedge.peel ] ; 3 uses
  %i.ae = load i32, ptr %.tr2740, align 8, !tbaa !53 ; 2 uses
  %i.af = shl nsw i32 %i.ae, 1
  %i.ag = ashr i32 %i.ae, 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.af, 30
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = and i32 %i.am, 3
  switch i32 %i.an, label %.lr.ph.unreachabledefault [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 0, label %.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.ao = shl nsw i32 %.tr2639, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2740, i64 8
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.e, %bb.f, %bb.g
  %.tr26.be = phi i32 [ %i.ao, %bb.e ], [ %i.as, %bb.f ], [ %i.ay, %bb.g ] ; 2 uses
  %.tr27.be.in = phi ptr [ %i.ap, %bb.e ], [ %i.at, %bb.f ], [ %i.av, %bb.g ]
  %.tr27.be = load ptr, ptr %.tr27.be.in, align 8, !tbaa !52 ; 2 uses
  %i.aq = icmp eq ptr %.tr27.be, null
  br i1 %i.aq, label %tailrecurse._crit_edge, label %.lr.ph, !llvm.loop !59

bb.f:                                             ; preds = %.lr.ph
  %i.ar = shl nsw i32 %.tr2639, 1
  %i.as = or disjoint i32 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.tr2740, i64 8
  br label %tailrecurse.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.au = shl nsw i32 %.tr2639, 1                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.tr2740, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = tail call i32 @form_bitvector(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.au, ptr noundef %i.aw) ; 0 uses
  %i.ay = or disjoint i32 %i.au, 1
  br label %tailrecurse.backedge

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable50:                            ; preds = %.lr.ph.preheader
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.14) #11
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %tailrecurse._crit_edge
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @symbolic_hack_labels(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #13 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !8
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.preheader84

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = zext nneg i32 %3 to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false), !tbaa !18
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph.preheader, %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !47 ; 3 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43 ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph88, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader84
  %i.p = phi i32 [ %i.k, %.preheader84 ], [ %i.ai, %bb.f ]
  %i.q = phi ptr [ %i.j, %.preheader84 ], [ %i.aj, %bb.f ]
  %.070.lcssa = phi i32 [ 0, %.preheader84 ], [ %.171, %bb.f ] ; 2 uses
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %._crit_edge97, label %.lr.ph96

.lr.ph88:                                         ; preds = %.preheader84, %bb.f
  %i.r = phi i32 [ %i.ai, %bb.f ], [ %i.k, %.preheader84 ] ; 2 uses
  %i.s = phi ptr [ %i.aj, %bb.f ], [ %i.j, %.preheader84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader84 ] ; 4 uses
  %.07087 = phi i32 [ %.171, %bb.f ], [ 0, %.preheader84 ] ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = lshr i64 %indvars.iv, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = and i32 %i.t, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %.not82 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  br i1 %.not82, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph88
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.af = add nsw i32 %.07087, 1
end_hunk_0
begin_hunk_1_@disassemble_fsm:bb.a
  %i.be = add nuw nsw i32 %.0192224, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0192224.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod300 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.bf = add nsw i32 %.0192224.epil.init, %i.y   ; 2 uses
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = ashr i32 %i.bf, 5
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %i.ai, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = or i32 %i.bm, %i.bh
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !47
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 7 uses
  %i.bu = load i32, ptr @cube, align 8, !tbaa !30 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 33
  %i.bw = add nsw i32 %i.bu, -1
  %i.bx = lshr i32 %i.bw, 3
  %i.by = and i32 %i.bx, 536870908
  %i.bz = add nuw nsw i32 %i.by, 8
  %narrow221 = select i1 %i.bv, i32 8, i32 %i.bz
  %i.ca = zext nneg i32 %narrow221 to i64
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.ca) #13
  %i.cc = load i32, ptr @cube, align 8, !tbaa !30
  %i.cd = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cb, i32 noundef %i.cc) #11 ; 7 uses
  br i1 %i.aj, label %.lr.ph227.preheader, label %._crit_edge228

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %xtraiter301 = and i32 %i.m, 1
  %i.ce = icmp eq i32 %i.m, 1
  br i1 %i.ce, label %.lr.ph227.epil.preheader, label %.lr.ph227.preheader.new

.lr.ph227.preheader.new:                          ; preds = %.lr.ph227.preheader
  %unroll_iter304 = and i32 %i.m, 2147483646
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227, %.lr.ph227.preheader.new
  %.1193225 = phi i32 [ 0, %.lr.ph227.preheader.new ], [ %i.cy, %.lr.ph227 ] ; 3 uses
  %niter305 = phi i32 [ 0, %.lr.ph227.preheader.new ], [ %niter305.next.1, %.lr.ph227 ]
  %i.cf = add nsw i32 %.1193225, %i.bt            ; 2 uses
  %i.cg = and i32 %i.cf, 31
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = ashr i32 %i.cf, 5
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = or i32 %i.cm, %i.ch
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !4
  %i.co = or disjoint i32 %.1193225, 1
  %i.cp = add nsw i32 %i.co, %i.bt                ; 2 uses
  %i.cq = and i32 %i.cp, 31
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = ashr i32 %i.cp, 5
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = or i32 %i.cw, %i.cr
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !4
  %i.cy = add nuw nsw i32 %.1193225, 2            ; 2 uses
  %niter305.next.1 = add nuw nsw i32 %niter305, 2 ; 2 uses
  %niter305.ncmp.1 = icmp eq i32 %niter305.next.1, %unroll_iter304
  br i1 %niter305.ncmp.1, label %._crit_edge228.loopexit.unr-lcssa, label %.lr.ph227

._crit_edge228.loopexit.unr-lcssa:                ; preds = %.lr.ph227
  %lcmp.mod302.not = icmp eq i32 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %._crit_edge228, label %.lr.ph227.epil.preheader

.lr.ph227.epil.preheader:                         ; preds = %._crit_edge228.loopexit.unr-lcssa, %.lr.ph227.preheader
  %.1193225.epil.init = phi i32 [ 0, %.lr.ph227.preheader ], [ %i.cy, %._crit_edge228.loopexit.unr-lcssa ]
  %lcmp.mod303 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod303)
  %i.cz = add nsw i32 %.1193225.epil.init, %i.bt  ; 2 uses
  %i.da = and i32 %i.cz, 31
  %i.db = shl nuw i32 1, %i.da
  %i.dc = ashr i32 %i.cz, 5
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [4 x i8], ptr %i.cd, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 4      ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = or i32 %i.dg, %i.db
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !4
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.lr.ph227.epil.preheader, %._crit_edge228.loopexit.unr-lcssa, %._crit_edge
  %i.di = load i32, ptr @cube, align 8, !tbaa !30 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 33
  %i.dk = add nsw i32 %i.di, -1
  %i.dl = lshr i32 %i.dk, 3
  %i.dm = and i32 %i.dl, 536870908
  %i.dn = add nuw nsw i32 %i.dm, 8
  %narrow222 = select i1 %i.dj, i32 8, i32 %i.dn
  %i.do = zext nneg i32 %narrow222 to i64
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #13
  %i.dq = load i32, ptr @cube, align 8, !tbaa !30
  %i.dr = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dp, i32 noundef %i.dq) #11
  %i.ds = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.dr, ptr noundef %i.cd, ptr noundef %i.ai) #11 ; 3 uses
  %i.dt = load i32, ptr @cube, align 8, !tbaa !30
  %i.du = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.dt) #11 ; 2 uses
  br i1 %i.aj, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %._crit_edge228
  %.not218 = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph241, %bb.n
  %.0180239 = phi ptr [ %i.du, %.lr.ph241 ], [ %.1181, %bb.n ] ; 2 uses
  %.2194238 = phi i32 [ 0, %.lr.ph241 ], [ %i.ge, %bb.n ] ; 4 uses
  %i.dv = load i32, ptr @cube, align 8, !tbaa !30
  %i.dw = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.dv) #11 ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !26 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28
  %i.ec = load i32, ptr %i.dx, align 8, !tbaa !29
  %i.ed = mul nsw i32 %i.ec, %i.eb                ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %.idx = shl nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds i8, ptr %i.dz, i64 %.idx
  %i.eg = icmp sgt i32 %i.ed, 0
  br i1 %i.eg, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %bb.f
  %i.eh = add nsw i32 %.2194238, %i.bt            ; 2 uses
  %i.ei = ashr i32 %i.eh, 5
  %i.ej = sext i32 %i.ei to i64
  %i.ek = and i32 %i.eh, 31
  %i.el = shl nuw i32 1, %i.ek
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph232, %bb.j
  %.0230 = phi ptr [ %i.dw, %.lr.ph232 ], [ %.1, %bb.j ] ; 3 uses
  %.0186229 = phi ptr [ %i.dz, %.lr.ph232 ], [ %i.ev, %bb.j ] ; 4 uses
  %i.em = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ai, ptr noundef %.0186229) #11
  %.not219 = icmp eq i32 %i.em, 0
  br i1 %.not219, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.en = getelementptr [4 x i8], ptr %.0186229, i64 %i.ej
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = and i32 %i.ep, %i.el
  %.not220 = icmp eq i32 %i.eq, 0
  br i1 %.not220, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0230, ptr noundef nonnull %.0186229) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi ptr [ %i.er, %bb.i ], [ %.0230, %bb.h ], [ %.0230, %bb.g ] ; 2 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !23
  %i.et = load i32, ptr %i.es, align 8, !tbaa !29
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.0186229, i64 %i.eu ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %i.ef
  br i1 %i.ew, label %bb.g, label %._crit_edge233

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  %.0.lcssa = phi ptr [ %i.dw, %bb.f ], [ %.1, %bb.j ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !28 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge233
  %i.fa = load i32, ptr @cube, align 8, !tbaa !30
  %i.fb = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.fa) #11 ; 2 uses
  %i.fc = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.0.lcssa) #11
  %i.fd = tail call ptr (ptr, ...) @complement(ptr noundef %i.fc) #11 ; 2 uses
  %i.fe = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.0.lcssa, ptr noundef %i.fb, ptr noundef %i.fd) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.fb) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.fd) #11
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !26 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28 ; 2 uses
  %i.fj = load i32, ptr %i.fe, align 8, !tbaa !29
  %i.fk = mul nsw i32 %i.fj, %i.fi                ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %.idx273 = shl nsw i64 %i.fl, 2
  %i.fm = getelementptr inbounds i8, ptr %i.fg, i64 %.idx273
  %i.fn = icmp sgt i32 %i.fk, 0
  br i1 %i.fn, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %bb.k
  %i.fo = add nsw i32 %.2194238, %i.bt            ; 2 uses
  %i.fp = and i32 %i.fo, 31
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = ashr i32 %i.fo, 5
  %i.fs = sext i32 %i.fr to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph236, %bb.l
  %.1187234 = phi ptr [ %i.fg, %.lr.ph236 ], [ %i.fz, %bb.l ] ; 2 uses
  %i.ft = getelementptr [4 x i8], ptr %.1187234, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4      ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.fw = or i32 %i.fv, %i.fq
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !4
  %i.fx = load i32, ptr %i.fe, align 8, !tbaa !29
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %.1187234, i64 %i.fy ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.fm
  br i1 %i.ga, label %bb.l, label %._crit_edge237.loopexit

._crit_edge237.loopexit:                          ; preds = %bb.l
  %.pre284 = load i32, ptr %i.fh, align 4, !tbaa !28
  br label %._crit_edge237

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit, %bb.k
  %i.gb = phi i32 [ %.pre284, %._crit_edge237.loopexit ], [ %i.fi, %bb.k ]
  %i.gc = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180239, ptr noundef nonnull %i.fe) #11 ; 2 uses
  br i1 %.not218, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge237
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.2194238, i32 noundef %i.ey, i32 noundef %i.gb) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge233, %bb.m, %._crit_edge237
  %.1181 = phi ptr [ %i.gc, %bb.m ], [ %i.gc, %._crit_edge237 ], [ %.0180239, %._crit_edge233 ] ; 2 uses
  %i.ge = add nuw nsw i32 %.2194238, 1            ; 2 uses
  %exitcond279.not = icmp eq i32 %i.ge, %i.m
  br i1 %exitcond279.not, label %._crit_edge242, label %bb.f

._crit_edge242:                                   ; preds = %bb.n, %._crit_edge228
  %.0180.lcssa = phi ptr [ %i.du, %._crit_edge228 ], [ %.1181, %bb.n ]
  %i.gf = load i32, ptr @cube, align 8, !tbaa !30
  %i.gg = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.gf) #11 ; 2 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !26 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !28
  %i.gm = load i32, ptr %i.gh, align 8, !tbaa !29
  %i.gn = mul nsw i32 %i.gm, %i.gl                ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %.idx274 = shl nsw i64 %i.go, 2
  %i.gp = getelementptr inbounds i8, ptr %i.gj, i64 %.idx274
  %i.gq = icmp sgt i32 %i.gn, 0
  br i1 %i.gq, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %._crit_edge242, %bb.p
  %.0184245 = phi ptr [ %.1185, %bb.p ], [ %i.gg, %._crit_edge242 ] ; 2 uses
  %.2188244 = phi ptr [ %i.gw, %bb.p ], [ %i.gj, %._crit_edge242 ] ; 3 uses
  %i.gr = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %.2188244, ptr noundef %i.cd) #11
  %.not217 = icmp eq i32 %i.gr, 0
  br i1 %.not217, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph247
  %i.gs = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0184245, ptr noundef %.2188244) #11
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph247, %bb.o
  %.1185 = phi ptr [ %i.gs, %bb.o ], [ %.0184245, %.lr.ph247 ] ; 2 uses
  %i.gt = load ptr, ptr %0, align 8, !tbaa !23
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !29
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %.2188244, i64 %i.gv ; 2 uses
  %i.gx = icmp ult ptr %i.gw, %i.gp
  br i1 %i.gx, label %.lr.ph247, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.p, %._crit_edge242
  %.0184.lcssa = phi ptr [ %i.gg, %._crit_edge242 ], [ %.1185, %bb.p ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0184.lcssa, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.hb = tail call ptr (ptr, i32, i32, ...) @unravel_range(ptr noundef %.0184.lcssa, i32 noundef %i.ha, i32 noundef %i.ha) #11 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !28
  %i.he = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180.lcssa, ptr noundef %i.hb) #11 ; 2 uses
  %.not208 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not208, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge248
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gz, i32 noundef %i.hd) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge248
  br i1 %i.aj, label %.preheader.us, label %._crit_edge267

.preheader.us:                                    ; preds = %bb.r, %._crit_edge263.us
  %.2182266.us = phi ptr [ %.4.us, %._crit_edge263.us ], [ %i.he, %bb.r ]
  %.3195265.us = phi i32 [ %i.kq, %._crit_edge263.us ], [ 0, %bb.r ] ; 3 uses
  %i.hg = add nsw i32 %.3195265.us, %i.y          ; 2 uses
  %i.hh = ashr i32 %i.hg, 5
  %i.hi = add nsw i32 %i.hh, 1
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = and i32 %i.hg, 31
  %i.hl = shl nuw i32 1, %i.hk                    ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader.us, %bb.ab
  %.3183261.us = phi ptr [ %.2182266.us, %.preheader.us ], [ %.4.us, %bb.ab ] ; 2 uses
  %.0191260.us = phi i32 [ 0, %.preheader.us ], [ %i.ke, %bb.ab ] ; 4 uses
  %i.hm = load i32, ptr @cube, align 8, !tbaa !30
  %i.hn = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.hm) #11 ; 2 uses
  %i.ho = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !28
  %i.ht = load i32, ptr %i.ho, align 8, !tbaa !29
  %i.hu = mul nsw i32 %i.ht, %i.hs                ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %.idx275 = shl nsw i64 %i.hv, 2
  %i.hw = getelementptr inbounds i8, ptr %i.hq, i64 %.idx275
  %i.hx = icmp sgt i32 %i.hu, 0
  br i1 %i.hx, label %.lr.ph253.us, label %._crit_edge254.us

bb.t:                                             ; preds = %.lr.ph253.us, %bb.x
  %.2251.us = phi ptr [ %i.hn, %.lr.ph253.us ], [ %.3.us, %bb.x ] ; 4 uses
  %.3189250.us = phi ptr [ %i.hq, %.lr.ph253.us ], [ %i.ja, %bb.x ] ; 6 uses
  %i.hy = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ai, ptr noundef %.3189250.us) #11
  %.not213.us = icmp eq i32 %i.hy, 0
  br i1 %.not213.us, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.hz = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.hj
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4
  %i.ib = and i32 %i.ia, %i.hl
  %.not214.us = icmp eq i32 %i.ib, 0
  br i1 %.not214.us, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.ki
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4
  %i.ie = and i32 %i.id, %i.kk
  %.not215.us = icmp eq i32 %i.ie, 0
  br i1 %.not215.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = load i32, ptr %.3189250.us, align 4, !tbaa !4
  %i.ig = shl i32 %i.if, 5
  %i.ih = and i32 %i.ig, 32736                    ; 2 uses
  %i.ii = icmp samesign ult i32 %i.ih, 33
  %i.ij = add nsw i32 %i.ih, -32
  %i.ik = lshr exact i32 %i.ij, 3
  %i.il = add nuw nsw i32 %i.ik, 8
  %narrow223.us = select i1 %i.ii, i32 8, i32 %i.il
  %i.im = zext nneg i32 %narrow223.us to i64
  %i.in = tail call noalias ptr @malloc(i64 noundef %i.im) #13
  %i.io = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.in, ptr noundef nonnull %.3189250.us) #11 ; 6 uses
  %i.ip = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.io, ptr noundef %i.io, ptr noundef %i.ds) #11 ; 0 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.hj ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = or i32 %i.ir, %i.hl
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !4
  %i.it = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ki ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = or i32 %i.iu, %i.kk
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !4
  %i.iw = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.2251.us, ptr noundef %i.io) #11
  tail call void @free(ptr noundef %i.io) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.3.us = phi ptr [ %.2251.us, %bb.t ], [ %i.iw, %bb.w ], [ %.2251.us, %bb.u ], [ %.2251.us, %bb.v ] ; 2 uses
  %i.ix = load ptr, ptr %0, align 8, !tbaa !23
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !29
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %.3189250.us, i64 %i.iz ; 2 uses
  %i.jb = icmp ult ptr %i.ja, %i.hw
  br i1 %i.jb, label %bb.t, label %._crit_edge254.us

._crit_edge254.us:                                ; preds = %bb.x, %bb.s
  %.2.lcssa.us = phi ptr [ %i.hn, %bb.s ], [ %.3.us, %bb.x ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2.lcssa.us, i64 12
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !28 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %._crit_edge254.us
  %i.jf = load i32, ptr @cube, align 8, !tbaa !30
  %i.jg = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.jf) #11 ; 2 uses
  %i.jh = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.2.lcssa.us) #11
  %i.ji = tail call ptr (ptr, ...) @complement(ptr noundef %i.jh) #11 ; 2 uses
  %i.jj = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.2.lcssa.us, ptr noundef %i.jg, ptr noundef %i.ji) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.jg) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ji) #11
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !26 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 12 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !28 ; 2 uses
  %i.jo = load i32, ptr %i.jj, align 8, !tbaa !29
  %i.jp = mul nsw i32 %i.jo, %i.jn                ; 2 uses
  %i.jq = sext i32 %i.jp to i64
  %.idx276 = shl nsw i64 %i.jq, 2
  %i.jr = getelementptr inbounds i8, ptr %i.jl, i64 %.idx276
  %i.js = icmp sgt i32 %i.jp, 0
  br i1 %i.js, label %.lr.ph258.us, label %._crit_edge259.us

bb.z:                                             ; preds = %.lr.ph258.us, %bb.z
  %.4190256.us = phi ptr [ %i.jl, %.lr.ph258.us ], [ %i.jz, %bb.z ] ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %.4190256.us, i64 %i.kp
  %i.ju = getelementptr i8, ptr %i.jt, i64 4      ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4
  %i.jw = or i32 %i.jv, %i.kn
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !4
  %i.jx = load i32, ptr %i.jj, align 8, !tbaa !29
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %.4190256.us, i64 %i.jy ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %i.jr
  br i1 %i.ka, label %bb.z, label %._crit_edge259.us.loopexit

._crit_edge259.us.loopexit:                       ; preds = %bb.z
  %.pre285 = load i32, ptr %i.jm, align 4, !tbaa !28
  br label %._crit_edge259.us

._crit_edge259.us:                                ; preds = %._crit_edge259.us.loopexit, %bb.y
  %i.kb = phi i32 [ %.pre285, %._crit_edge259.us.loopexit ], [ %i.jn, %bb.y ]
  %i.kc = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.3183261.us, ptr noundef nonnull %i.jj) #11 ; 2 uses
  br i1 %.not208, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge259.us
  %i.kd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.3195265.us, i32 noundef %.0191260.us, i32 noundef %i.jd, i32 noundef %i.kb) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge259.us, %._crit_edge254.us
  %.4.us = phi ptr [ %i.kc, %bb.aa ], [ %i.kc, %._crit_edge259.us ], [ %.3183261.us, %._crit_edge254.us ] ; 3 uses
  %i.ke = add nuw nsw i32 %.0191260.us, 1         ; 2 uses
  %exitcond280.not = icmp eq i32 %i.ke, %i.m
  br i1 %exitcond280.not, label %._crit_edge263.us, label %bb.s

.lr.ph253.us:                                     ; preds = %bb.s
  %i.kf = add nsw i32 %.0191260.us, %i.bt         ; 2 uses
  %i.kg = ashr i32 %i.kf, 5
  %i.kh = add nsw i32 %i.kg, 1
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = and i32 %i.kf, 31
  %i.kk = shl nuw i32 1, %i.kj                    ; 2 uses
  br label %bb.t

.lr.ph258.us:                                     ; preds = %bb.y
  %i.kl = add nsw i32 %.0191260.us, %i.bt         ; 2 uses
  %i.km = and i32 %i.kl, 31
  %i.kn = shl nuw i32 1, %i.km
  %i.ko = ashr i32 %i.kl, 5
  %i.kp = sext i32 %i.ko to i64
  br label %bb.z

._crit_edge263.us:                                ; preds = %bb.ab
  %i.kq = add nuw nsw i32 %.3195265.us, 1         ; 2 uses
  %exitcond281.not = icmp eq i32 %i.kq, %i.m
  br i1 %exitcond281.not, label %._crit_edge267, label %.preheader.us

._crit_edge267:                                   ; preds = %._crit_edge263.us, %bb.r
  %.2182.lcssa = phi ptr [ %i.he, %bb.r ], [ %.4.us, %._crit_edge263.us ]
  %.not209 = icmp eq ptr %i.ds, null
  br i1 %.not209, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge267
  tail call void @free(ptr noundef nonnull %i.ds) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge267
  %.not210 = icmp eq ptr %i.ai, null
  br i1 %.not210, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ai) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not211 = icmp eq ptr %i.cd, null
  br i1 %.not211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.cd) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kr = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ...) @sf_free(ptr noundef %i.kr) #11
  store ptr %.2182.lcssa, ptr %0, align 8, !tbaa !23
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !25
  tail call void (ptr, ...) @sf_free(ptr noundef %i.kt) #11
  %i.ku = load i32, ptr @cube, align 8, !tbaa !30
  %i.kv = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.ku) #11
  store ptr %i.kv, ptr %i.ks, align 8, !tbaa !25
  tail call void (...) @setdown_cube() #11
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35 ; 2 uses
  %.not212 = icmp eq ptr %i.kw, null
  br i1 %.not212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.kw) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.kx = add nsw i32 %i.i, 3                     ; 2 uses
  store i32 %i.kx, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  %i.ky = sext i32 %i.kx to i64
  %i.kz = shl nsw i64 %i.ky, 2
  %i.la = tail call noalias ptr @malloc(i64 noundef %i.kz) #13 ; 2 uses
  store ptr %i.la, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lc ; 3 uses
  store i32 %i.m, ptr %i.ld, align 4, !tbaa !4
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  store i32 %i.m, ptr %i.le, align 4, !tbaa !4
  %i.lf = sub nsw i32 %i.q, %i.m
  %i.lg = getelementptr i8, ptr %i.ld, i64 8
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !4
  tail call void (...) @cube_setup() #11
  %i.lh = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !26 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = load i32, ptr %i.lh, align 8, !tbaa !29
  %i.ln = mul nsw i32 %i.lm, %i.ll                ; 2 uses
  %i.lo = sext i32 %i.ln to i64
  %.idx277 = shl nsw i64 %i.lo, 2
  %i.lp = getelementptr inbounds i8, ptr %i.lj, i64 %.idx277
  %i.lq = icmp sgt i32 %i.ln, 0
  br i1 %i.lq, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.aj, %.lr.ph271
  %.5269 = phi ptr [ %i.lw, %.lr.ph271 ], [ %i.lj, %bb.aj ] ; 2 uses
  %i.lr = load ptr, ptr @stdout, align 8, !tbaa !66
  %i.ls = tail call i32 (ptr, ptr, ptr, ptr, ...) @kiss_print_cube(ptr noundef %i.lr, ptr noundef nonnull %0, ptr noundef %.5269, ptr noundef nonnull @.str.23) #11 ; 0 uses
  %i.lt = load ptr, ptr %0, align 8, !tbaa !23
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !29
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.5269, i64 %i.lv ; 2 uses
  %i.lx = icmp ult ptr %i.lw, %i.lp
  br i1 %i.lx, label %.lr.ph271, label %._crit_edge272

._crit_edge272:                                   ; preds = %.lr.ph271, %bb.aj
  ret i32 undef
}

declare ptr @set_clear(...) local_unnamed_addr #3

declare ptr @set_or(...) local_unnamed_addr #3

declare i32 @setp_implies(...) local_unnamed_addr #3

declare ptr @sf_addset(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @setp_disjoint(...) local_unnamed_addr #3

declare ptr @unravel_range(...) local_unnamed_addr #3

declare ptr @set_diff(...) local_unnamed_addr #3

declare i32 @kiss_print_cube(...) local_unnamed_addr #3

declare ptr @espresso(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !15, i64 56}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !17, i64 64, !17, i64 72}
!10 = !{!"p1 _ZTS10set_family", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"p1 _ZTS11pair_struct", !11, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 _ZTS15symbolic_struct", !11, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !21, i64 72, !21, i64 80, !13, i64 88, !13, i64 96, !5, i64 104, !5, i64 108, !13, i64 112, !5, i64 120, !5, i64 124}
!21 = !{!"p2 int", !16, i64 0}
!22 = !{!20, !13, i64 88}
!23 = !{!9, !10, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!9, !10, i64 8}
!26 = !{!27, !13, i64 24}
!27 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !10, i64 32}
!28 = !{!27, !5, i64 12}
!29 = !{!27, !5, i64 0}
!30 = !{!20, !5, i64 0}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!20, !5, i64 4}
!35 = !{!20, !13, i64 32}
!36 = distinct !{!36, !33, !32}
!37 = !{!9, !10, i64 16}
!38 = !{!17, !17, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS20symbolic_list_struct", !11, i64 0}
!41 = !{!42, !5, i64 4}
!42 = !{!"symbolic_list_struct", !5, i64 0, !5, i64 4, !40, i64 8}
!43 = !{!20, !5, i64 124}
!44 = !{!45, !5, i64 8}
!45 = !{!"symbolic_struct", !40, i64 0, !5, i64 8, !46, i64 16, !5, i64 24, !17, i64 32}
!46 = !{!"p1 _ZTS21symbolic_label_struct", !11, i64 0}
!47 = !{!20, !13, i64 16}
!48 = !{}
!49 = !{!45, !40, i64 0}
!50 = !{!27, !5, i64 4}
!51 = !{!9, !17, i64 72}
!52 = !{!42, !40, i64 8}
!53 = !{!42, !5, i64 0}
!54 = distinct !{!54, !32, !33}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !32}
!58 = !{!9, !17, i64 64}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.peeled.count", i32 1}
!61 = !{!45, !46, i64 16}
!62 = !{!63, !12, i64 0}
!63 = !{!"symbolic_label_struct", !12, i64 0, !46, i64 8}
!64 = !{!63, !46, i64 8}
!65 = !{!45, !17, i64 32}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
end_hunk_1
