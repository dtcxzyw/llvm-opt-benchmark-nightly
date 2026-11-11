Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hack?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@map_output_symbolic:bb.a
  %i.bd = call ptr (i32, i32, ...) @sf_new(i32 noundef 100, i32 noundef %i.bc) #11
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !47
  %i.be = load ptr, ptr %.294130, align 8, !tbaa !67
  %i.bf = call i32 @find_inputs(ptr noundef null, ptr noundef nonnull %0, ptr noundef %i.be, i32 noundef %.0129, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !46
  call void (ptr, ...) @sf_free(ptr noundef %i.bg) #11
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !47
  store ptr %i.bh, ptr %0, align 8, !tbaa !46
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !47
  call void (ptr, ...) @sf_free(ptr noundef %i.bi) #11
  %i.bj = getelementptr inbounds nuw i8, ptr %.294130, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !65
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = add nsw i32 %i.bl, %.0129
  %i.bn = getelementptr inbounds nuw i8, ptr %.294130, i64 32
  %.294 = load ptr, ptr %i.bn, align 8, !tbaa !57 ; 2 uses
  %.not99 = icmp eq ptr %.294, null
  br i1 %.not99, label %._crit_edge133.loopexit, label %.lr.ph132

._crit_edge133.loopexit:                          ; preds = %.lr.ph132
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !68 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 33
  %i.br = add nsw i32 %i.bp, -1
  %i.bs = lshr i32 %i.br, 3
  %i.bt = and i32 %i.bs, 536870908
  %i.bu = add nuw nsw i32 %i.bt, 8
  %narrow = select i1 %i.bq, i32 8, i32 %i.bu
  %i.bv = zext nneg i32 %narrow to i64
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bv) #13
  %i.bx = load i32, ptr %i.bo, align 4, !tbaa !68
  %i.by = call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.bw, i32 noundef %i.bx) #11 ; 7 uses
  %.3139 = load ptr, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  %.not100140 = icmp eq ptr %.3139, null
  br i1 %.not100140, label %._crit_edge142, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge133.loopexit
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge138
  %.3141 = phi ptr [ %.3139, %.preheader.lr.ph ], [ %.3, %._crit_edge138 ] ; 2 uses
  %.2134 = load ptr, ptr %.3141, align 8, !tbaa !59 ; 2 uses
  %.not103135 = icmp eq ptr %.2134, null
  br i1 %.not103135, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader, %.lr.ph137
  %.2136 = phi ptr [ %.2, %.lr.ph137 ], [ %.2134, %.preheader ] ; 2 uses
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.2136, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !61
  %i.cg = add nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.ch = and i32 %i.cg, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = xor i32 %i.ci, -1
  %i.ck = ashr i32 %i.cg, 5
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = and i32 %i.co, %i.cj
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.2136, i64 8
  %.2 = load ptr, ptr %i.cq, align 8, !tbaa !59   ; 2 uses
  %.not103 = icmp eq ptr %.2, null
  br i1 %.not103, label %._crit_edge138, label %.lr.ph137

._crit_edge138:                                   ; preds = %.lr.ph137, %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.3141, i64 32
  %.3 = load ptr, ptr %i.cr, align 8, !tbaa !57   ; 2 uses
  %.not100 = icmp eq ptr %.3, null
  br i1 %.not100, label %._crit_edge142, label %.preheader

._crit_edge142:                                   ; preds = %._crit_edge138, %._crit_edge133.loopexit
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !68
  %i.cv = call i32 (ptr, ...) @set_ord(ptr noundef %i.by) #11
  %.neg = sub i32 %i.cv, %i.cu
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = add i32 %.neg, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !7
  call void (...) @setdown_cube() #11
  call void (...) @cube_setup() #11
  %i.dc = load ptr, ptr %0, align 8, !tbaa !46
  %i.dd = call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.dc, ptr noundef %i.by) #11
  store ptr %i.dd, ptr %0, align 8, !tbaa !46
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.df = call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.de, ptr noundef %i.by) #11
  store ptr %i.df, ptr %i.c, align 8, !tbaa !48
  %i.dg = load i32, ptr @cube, align 8, !tbaa !53
  %i.dh = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !68
  %.not101 = icmp eq i32 %i.dg, %i.dj
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge142
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.12) #11
  %.pre148 = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge142
  %i.dk = phi ptr [ %.pre148, %bb.g ], [ %i.dh, %._crit_edge142 ]
  %i.dl = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dk) #11
  store ptr %i.dl, ptr %0, align 8, !tbaa !46
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.dn = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dm) #11
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !48
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.h, %.lr.ph145
  %.090143 = phi i32 [ %i.du, %.lr.ph145 ], [ 0, %bb.h ] ; 3 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !46
  %i.dr = call ptr (ptr, i32, ...) @d1merge(ptr noundef %i.dq, i32 noundef %.090143) #11
  store ptr %i.dr, ptr %0, align 8, !tbaa !46
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.dt = call ptr (ptr, i32, ...) @d1merge(ptr noundef %i.ds, i32 noundef %.090143) #11
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !48
  %i.du = add nuw nsw i32 %.090143, 1             ; 2 uses
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph145, label %._crit_edge146

._crit_edge146:                                   ; preds = %.lr.ph145, %bb.h
  %i.dx = load ptr, ptr %0, align 8, !tbaa !46
  %i.dy = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dx) #11
  store ptr %i.dy, ptr %0, align 8, !tbaa !46
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ea = call ptr (ptr, ...) @sf_contain(ptr noundef %i.dz) #11
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !48
  %i.eb = load ptr, ptr %i.ax, align 8, !tbaa !56
  call void (ptr, ...) @sf_free(ptr noundef %i.eb) #11
  %i.ec = load i32, ptr @cube, align 8, !tbaa !53
  %i.ed = call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.ec) #11
  store ptr %i.ed, ptr %i.ax, align 8, !tbaa !56
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ef = load i32, ptr @cube, align 8, !tbaa !53
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
define dso_local i32 @find_inputs(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !guid !76 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !46
  %i.c = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %0, ptr noundef %i.b) #11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %i.h = load i32, ptr %i.c, align 8, !tbaa !52
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %7 = zext nneg i32 %i.i to i64
  %.idx = shl nuw nsw i64 %7, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = add nsw i32 %4, %3                       ; 2 uses
  %i.m = and i32 %i.l, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = ashr i32 %i.l, 5
  %i.p = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.053 = phi ptr [ %i.e, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %.053, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = or i32 %i.s, %i.n
  store i32 %i.t, ptr %i.r, align 4, !tbaa !7
  %i.u = load i32, ptr %i.c, align 8, !tbaa !52
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.053, i64 %i.v ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.j
  br i1 %i.x, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %5, align 8, !tbaa !47
  %i.z = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.y, ptr noundef nonnull %i.c) #11
  store ptr %i.z, ptr %5, align 8, !tbaa !47
  br label %common.ret56

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !66
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.ab, i32 noundef %i.aj) #11 ; 3 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.ak) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ak) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049 = phi ptr [ %i.al, %bb.e ], [ %i.ak, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = shl nsw i32 %4, 1                       ; 2 uses
  %i.ap = tail call i32 @find_inputs(ptr noundef %.049, ptr noundef nonnull %1, ptr noundef %i.an, i32 noundef %3, i32 noundef %i.ao, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.049) #11
  %i.aq = load ptr, ptr %1, align 8, !tbaa !46
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !66
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.ax = add nsw i32 %i.aw, %i.av
  %i.ay = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.aq, i32 noundef %i.ax) #11 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = tail call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef nonnull %0, ptr noundef %i.ay) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ay) #11
  br label %bb.h

common.ret56:                                     ; preds = %bb.h, %._crit_edge
  %common.ret56.op = phi i32 [ undef, %._crit_edge ], [ undef, %bb.h ]
  ret i32 %common.ret56.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.az, %bb.g ], [ %i.ay, %bb.f ] ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.bb = or disjoint i32 %i.ao, 1
  %i.bc = tail call i32 @find_inputs(ptr noundef %.1, ptr noundef nonnull %1, ptr noundef %i.ba, i32 noundef %3, i32 noundef %i.bb, ptr noundef %5, ptr noundef %6) ; 0 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %.1) #11
  br label %common.ret56
}

declare ptr @sf_append(...) local_unnamed_addr #3

declare ptr @cof_output(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @map_symbolic(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !79 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.0106134 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not135 = icmp eq ptr %.0106134, null
  br i1 %.not135, label %._crit_edge143, label %.preheader130

.preheader130:                                    ; preds = %bb.a, %._crit_edge
  %.0106136 = phi ptr [ %.0106, %._crit_edge ], [ %.0106134, %bb.a ] ; 2 uses
  %.0105131 = load ptr, ptr %.0106136, align 8, !tbaa !59 ; 2 uses
  %.not118132 = icmp eq ptr %.0105131, null
  br i1 %.not118132, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader130
  %.pre172 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  br label %.lr.ph

.preheader129:                                    ; preds = %._crit_edge
  %.1107137.pre = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not112138 = icmp eq ptr %.1107137.pre, null
  br i1 %.not112138, label %._crit_edge143, label %.lr.ph142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.b = phi i32 [ %i.e, %bb.c ], [ %.pre172, %.lr.ph.preheader ] ; 2 uses
  %.0105133 = phi ptr [ %.0105, %bb.c ], [ %.0105131, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i32, ptr %.0105133, align 8, !tbaa !70 ; 2 uses
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
  %i.f = getelementptr inbounds nuw i8, ptr %.0105133, i64 8
  %.0105 = load ptr, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %.not118 = icmp eq ptr %.0105, null
  br i1 %.not118, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader130
  %i.g = getelementptr inbounds nuw i8, ptr %.0106136, i64 32
  %.0106 = load ptr, ptr %i.g, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %.0106, null
  br i1 %.not, label %.preheader129, label %.preheader130

.lr.ph142:                                        ; preds = %.preheader129, %.lr.ph142
  %.1107141 = phi ptr [ %.1107, %.lr.ph142 ], [ %.1107137.pre, %.preheader129 ] ; 2 uses
  %.0101140 = phi i32 [ %i.l, %.lr.ph142 ], [ 0, %.preheader129 ]
  %.0102139 = phi i32 [ %i.k, %.lr.ph142 ], [ 0, %.preheader129 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.1107141, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65
  %i.j = shl nuw i32 1, %i.i
  %i.k = add nsw i32 %i.j, %.0102139              ; 2 uses
  %i.l = add nuw nsw i32 %.0101140, 1             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1107141, i64 32
  %.1107 = load ptr, ptr %i.m, align 8, !tbaa !57 ; 2 uses
  %.not112 = icmp eq ptr %.1107, null
  br i1 %.not112, label %._crit_edge143, label %.lr.ph142

._crit_edge143:                                   ; preds = %.lr.ph142, %bb.a, %.preheader129
  %.0102.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.k, %.lr.ph142 ] ; 8 uses
  %.0101.lcssa = phi i32 [ 0, %.preheader129 ], [ 0, %bb.a ], [ %i.l, %.lr.ph142 ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68
  %i.q = add nsw i32 %i.p, %.0102.lcssa           ; 2 uses
  %i.r = icmp slt i32 %i.q, 33
  %i.s = add nsw i32 %i.q, -1
  %i.t = lshr i32 %i.s, 3
  %i.u = and i32 %i.t, 536870908
  %i.v = add nuw nsw i32 %i.u, 8
  %narrow = select i1 %i.r, i32 8, i32 %i.v
  %i.w = zext nneg i32 %narrow to i64
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #13
  %i.y = load i32, ptr %i.o, align 4, !tbaa !68
  %i.z = add nsw i32 %i.y, %.0102.lcssa
  %i.aa = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.x, i32 noundef %i.z) #11 ; 9 uses
  %.2150 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not113151 = icmp eq ptr %.2150, null
  br i1 %.not113151, label %._crit_edge153, label %.preheader

.preheader:                                       ; preds = %._crit_edge143, %._crit_edge149
  %.2152 = phi ptr [ %.2, %._crit_edge149 ], [ %.2150, %._crit_edge143 ] ; 2 uses
  %.1145 = load ptr, ptr %.2152, align 8, !tbaa !59 ; 2 uses
  %.not117146 = icmp eq ptr %.1145, null
  br i1 %.not117146, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader, %.lr.ph148
  %.1147 = phi ptr [ %.1, %.lr.ph148 ], [ %.1145, %.preheader ] ; 3 uses
  %i.ab = load i32, ptr %.1147, align 8, !tbaa !70 ; 2 uses
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 30
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = xor i32 %i.ae, -1
  %i.ag = ashr i32 %i.ab, 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = and i32 %i.ak, %i.af
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !7
  %i.am = load i32, ptr %.1147, align 8, !tbaa !70 ; 2 uses
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = and i32 %i.an, 30
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = xor i32 %i.ap, -1
  %i.ar = ashr i32 %i.am, 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.aa, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = and i32 %i.av, %i.aq
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.1147, i64 8
  %.1 = load ptr, ptr %i.ax, align 8, !tbaa !59   ; 2 uses
  %.not117 = icmp eq ptr %.1, null
  br i1 %.not117, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148, %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.2152, i64 32
  %.2 = load ptr, ptr %i.ay, align 8, !tbaa !57   ; 2 uses
  %.not113 = icmp eq ptr %.2, null
  br i1 %.not113, label %._crit_edge153, label %.preheader

._crit_edge153:                                   ; preds = %._crit_edge149, %._crit_edge143
  %i.az = load ptr, ptr %0, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !68
  %i.bc = add nsw i32 %i.bb, %.0102.lcssa
  %i.bd = tail call i32 (ptr, ...) @set_ord(ptr noundef %i.aa) #11
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = sdiv i32 %i.be, 2                       ; 5 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54 ; 4 uses
  %i.bh = sub nsw i32 %i.bg, %i.bf
  %i.bi = add nsw i32 %i.bh, %.0101.lcssa         ; 2 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !45 ; 3 uses
  %i.bk = sub nsw i32 %i.bj, %i.bf
  %i.bl = load i32, ptr @cube, align 8, !tbaa !53
  %i.bm = shl nsw i32 %i.bf, 1
  %i.bn = sub i32 %.0102.lcssa, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = sext i32 %i.bi to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bq) #13 ; 5 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55 ; 3 uses
  %i.bt = sext i32 %i.bg to i64
  %i.bu = getelementptr [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr [4 x i8], ptr %i.br, i64 %i.bp
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !7
  %i.bz = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.ca = icmp slt i32 %i.bj, %i.bz
  br i1 %i.ca, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %._crit_edge153
  %i.cb = sext i32 %i.bj to i64                   ; 4 uses
  %i.cc = sext i32 %i.bf to i64                   ; 2 uses
  %wide.trip.count = sext i32 %i.bz to i64
  %i.cd = sext i32 %i.bg to i64
  %i.ce = xor i64 %i.cb, -1
  %i.cf = add nsw i64 %i.ce, %i.cd                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check, label %.lr.ph156.preheader185, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph156.preheader
  %n.vec = and i64 %i.cf, -8                      ; 3 uses
  %i.cg = add nsw i64 %n.vec, %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = add i64 %index, %i.cb                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !7
  %wide.load184 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !7
  %i.ck = sub nsw i64 %i.ch, %i.cc
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load, ptr %i.cl, align 4, !tbaa !7
  store <4 x i32> %wide.load184, ptr %i.cm, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge157, label %.lr.ph156.preheader185

.lr.ph156.preheader185:                           ; preds = %.lr.ph156.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cb, %.lr.ph156.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader185, %.lr.ph156
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph156 ], [ %indvars.iv.ph, %.lr.ph156.preheader185 ] ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = sub nsw i64 %indvars.iv, %i.cc
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cq
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !78

._crit_edge157:                                   ; preds = %.lr.ph156, %middle.block, %._crit_edge153
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !66
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7  ; 4 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !46
  %i.cy = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.cx, i32 noundef %i.cw, i32 noundef %.0102.lcssa) #11
  store ptr %i.cy, ptr %0, align 8, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.db = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.da, i32 noundef %i.cw, i32 noundef %.0102.lcssa) #11
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56
  %i.de = tail call ptr (ptr, i32, i32, ...) @sf_addcol(ptr noundef %i.dd, i32 noundef %i.cw, i32 noundef %.0102.lcssa) #11
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !56
  %.3158 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not114159 = icmp eq ptr %.3158, null
  br i1 %.not114159, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %._crit_edge157
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  %i.dg = xor i32 %i.bf, -1
  %i.dh = add i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %map_symbolic_cover.exit127
  %indvars.iv169 = phi i64 [ %i.di, %.lr.ph164.preheader ], [ %indvars.iv.next170, %map_symbolic_cover.exit127 ] ; 2 uses
  %.3162 = phi ptr [ %.3158, %.lr.ph164.preheader ], [ %.3, %map_symbolic_cover.exit127 ] ; 5 uses
  %.0103160 = phi i32 [ %i.cw, %.lr.ph164.preheader ], [ %i.ff, %map_symbolic_cover.exit127 ] ; 4 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.dk = load ptr, ptr %.3162, align 8, !tbaa !67 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !50 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !51
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !52
  %i.dq = mul nsw i32 %i.dp, %i.do                ; 2 uses
  %1 = zext nneg i32 %i.dq to i64
  %.idx.i = shl nuw nsw i64 %1, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i
  %i.ds = icmp sgt i32 %i.dq, 0
  br i1 %i.ds, label %.lr.ph.i, label %map_symbolic_cover.exit

.lr.ph.i:                                         ; preds = %.lr.ph164, %.lr.ph.i
  %.011.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.dm, %.lr.ph164 ] ; 2 uses
  %i.dt = tail call i32 @form_bitvector(ptr noundef %.011.i, i32 noundef %.0103160, i32 noundef 0, ptr noundef readonly %i.dk) ; 0 uses
  %i.du = load i32, ptr %i.dj, align 8, !tbaa !52
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.011.i, i64 %i.dv ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.dr
  br i1 %i.dx, label %.lr.ph.i, label %map_symbolic_cover.exit.loopexit

map_symbolic_cover.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre174 = load ptr, ptr %.3162, align 8, !tbaa !67
  br label %map_symbolic_cover.exit

map_symbolic_cover.exit:                          ; preds = %map_symbolic_cover.exit.loopexit, %.lr.ph164
  %i.dy = phi ptr [ %.pre174, %map_symbolic_cover.exit.loopexit ], [ %i.dk, %.lr.ph164 ] ; 2 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !46
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !48 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !51
  %i.ee = load i32, ptr %i.dz, align 8, !tbaa !52
  %i.ef = mul nsw i32 %i.ee, %i.ed                ; 2 uses
  %2 = zext nneg i32 %i.ef to i64
  %.idx.i120 = shl nuw nsw i64 %2, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i120
  %i.eh = icmp sgt i32 %i.ef, 0
  br i1 %i.eh, label %.lr.ph.i121, label %map_symbolic_cover.exit123

.lr.ph.i121:                                      ; preds = %map_symbolic_cover.exit, %.lr.ph.i121
  %.011.i122 = phi ptr [ %i.el, %.lr.ph.i121 ], [ %i.eb, %map_symbolic_cover.exit ] ; 2 uses
  %i.ei = tail call i32 @form_bitvector(ptr noundef %.011.i122, i32 noundef %.0103160, i32 noundef 0, ptr noundef readonly %i.dy) ; 0 uses
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !52
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.011.i122, i64 %i.ek ; 2 uses
  %i.em = icmp ult ptr %i.el, %i.eg
  br i1 %i.em, label %.lr.ph.i121, label %map_symbolic_cover.exit123.loopexit

map_symbolic_cover.exit123.loopexit:              ; preds = %.lr.ph.i121
  %.pre175 = load ptr, ptr %.3162, align 8, !tbaa !67
  br label %map_symbolic_cover.exit123

map_symbolic_cover.exit123:                       ; preds = %map_symbolic_cover.exit123.loopexit, %map_symbolic_cover.exit
  %i.en = phi ptr [ %.pre175, %map_symbolic_cover.exit123.loopexit ], [ %i.dy, %map_symbolic_cover.exit ]
  store ptr %i.dz, ptr %i.cz, align 8, !tbaa !48
  %i.eo = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !50 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !51
  %i.et = load i32, ptr %i.eo, align 8, !tbaa !52
  %i.eu = mul nsw i32 %i.et, %i.es                ; 2 uses
  %3 = zext nneg i32 %i.eu to i64
  %.idx.i124 = shl nuw nsw i64 %3, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i124
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %.lr.ph.i125, label %map_symbolic_cover.exit127

.lr.ph.i125:                                      ; preds = %map_symbolic_cover.exit123, %.lr.ph.i125
  %.011.i126 = phi ptr [ %i.fa, %.lr.ph.i125 ], [ %i.eq, %map_symbolic_cover.exit123 ] ; 2 uses
  %i.ex = tail call i32 @form_bitvector(ptr noundef %.011.i126, i32 noundef %.0103160, i32 noundef 0, ptr noundef readonly %i.en) ; 0 uses
  %i.ey = load i32, ptr %i.eo, align 8, !tbaa !52
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.011.i126, i64 %i.ez ; 2 uses
  %i.fb = icmp ult ptr %i.fa, %i.ev
  br i1 %i.fb, label %.lr.ph.i125, label %map_symbolic_cover.exit127

map_symbolic_cover.exit127:                       ; preds = %.lr.ph.i125, %map_symbolic_cover.exit123
  store ptr %i.eo, ptr %i.dc, align 8, !tbaa !56
  %i.fc = getelementptr inbounds nuw i8, ptr %.3162, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !65
  %i.fe = shl nuw i32 1, %i.fd                    ; 2 uses
  %i.ff = add nsw i32 %i.fe, %.0103160
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv169
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !7
  %i.fh = getelementptr inbounds nuw i8, ptr %.3162, i64 32
  %.3 = load ptr, ptr %i.fh, align 8, !tbaa !57   ; 2 uses
  %.not114 = icmp eq ptr %.3, null
  br i1 %.not114, label %._crit_edge165, label %.lr.ph164

._crit_edge165:                                   ; preds = %map_symbolic_cover.exit127, %._crit_edge157
  %i.fi = load ptr, ptr %0, align 8, !tbaa !46
  %i.fj = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.fi, ptr noundef %i.aa) #11
  store ptr %i.fj, ptr %0, align 8, !tbaa !46
  %i.fk = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.fl = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.fk, ptr noundef %i.aa) #11
  store ptr %i.fl, ptr %i.cz, align 8, !tbaa !48
  %i.fm = load ptr, ptr %i.dc, align 8, !tbaa !56
  %i.fn = tail call ptr (ptr, ptr, ...) @sf_compress(ptr noundef %i.fm, ptr noundef %i.aa) #11
  store ptr %i.fn, ptr %i.dc, align 8, !tbaa !56
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.fp = load i32, ptr @cube, align 8, !tbaa !53
  %i.fq = tail call i32 @symbolic_hack_labels(ptr noundef nonnull %0, ptr noundef %i.fo, ptr noundef %i.aa, i32 noundef %i.bo, i32 noundef %i.fp, i32 noundef %.0102.lcssa) ; 0 uses
  tail call void (...) @setdown_cube() #11
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55 ; 2 uses
  %.not115 = icmp eq ptr %i.fr, null
  br i1 %.not115, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge165
  tail call void @free(ptr noundef nonnull %i.fr) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge165
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !45
  store ptr %i.br, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55
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
define dso_local noundef ptr @map_symbolic_cover(ptr nofree noundef readonly returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 !guid !83 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = load i32, ptr %0, align 8, !tbaa !52
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %3 = zext nneg i32 %i.f to i64
  %.idx = shl nuw nsw i64 %3, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = tail call i32 @form_bitvector(ptr noundef %.011, i32 noundef %2, i32 noundef 0, ptr noundef %1) ; 0 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !52
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.011, i64 %i.k ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.g
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @form_bitvector(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 !guid !85 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i32, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = ashr i32 %i.a, 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
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
  %.tr27.be.peel = load ptr, ptr %.tr27.be.in.peel, align 8, !tbaa !69 ; 2 uses
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = or i32 %i.ac, %i.x
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !7
  br label %bb.h

.lr.ph:                                           ; preds = %tailrecurse.backedge.peel, %tailrecurse.backedge
  %.tr2740 = phi ptr [ %.tr27.be, %tailrecurse.backedge ], [ %.tr27.be.peel, %tailrecurse.backedge.peel ] ; 4 uses
  %.tr2639 = phi i32 [ %.tr26.be, %tailrecurse.backedge ], [ %.tr26.be.peel, %tailrecurse.backedge.peel ] ; 3 uses
  %i.ae = load i32, ptr %.tr2740, align 8, !tbaa !70 ; 2 uses
  %i.af = shl nsw i32 %i.ae, 1
  %i.ag = ashr i32 %i.ae, 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
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
  %.tr27.be = load ptr, ptr %.tr27.be.in, align 8, !tbaa !69 ; 2 uses
  %i.aq = icmp eq ptr %.tr27.be, null
  br i1 %i.aq, label %tailrecurse._crit_edge, label %.lr.ph, !llvm.loop !84

bb.f:                                             ; preds = %.lr.ph
  %i.ar = shl nsw i32 %.tr2639, 1
  %i.as = or disjoint i32 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.tr2740, i64 8
  br label %tailrecurse.backedge

bb.g:                                             ; preds = %.lr.ph
  %i.au = shl nsw i32 %.tr2639, 1                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.tr2740, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69
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
define dso_local noundef i32 @symbolic_hack_labels(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !guid !87 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #13 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !41
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.preheader84

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = zext nneg i32 %3 to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false), !tbaa !42
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph.preheader, %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !66 ; 3 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !62 ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = and i32 %i.t, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %.not82 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  br i1 %.not82, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph88
end_hunk_0
begin_hunk_1_@disassemble_fsm:bb.a
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = or i32 %i.ax, %i.as
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !7
  %i.az = add nuw nsw i32 %.0192227, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0192227.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod303 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod303)
  %i.ba = add nsw i32 %.0192227.epil.init, %i.u   ; 2 uses
  %i.bb = and i32 %i.ba, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = ashr i32 %i.ba, 5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %i.ad, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4      ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = or i32 %i.bh, %i.bc
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !66
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !45
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 7 uses
  %i.bp = load i32, ptr @cube, align 8, !tbaa !53 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 33
  %i.br = add nsw i32 %i.bp, -1
  %i.bs = lshr i32 %i.br, 3
  %i.bt = and i32 %i.bs, 536870908
  %i.bu = add nuw nsw i32 %i.bt, 8
  %narrow224 = select i1 %i.bq, i32 8, i32 %i.bu
  %i.bv = zext nneg i32 %narrow224 to i64
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #13
  %i.bx = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bw, i32 noundef %i.bp) #11 ; 7 uses
  br i1 %i.ae, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %._crit_edge
  %xtraiter304 = and i32 %i.k, 1
  %i.by = icmp eq i32 %i.k, 1
  br i1 %i.by, label %.lr.ph230.epil.preheader, label %.lr.ph230.preheader.new

.lr.ph230.preheader.new:                          ; preds = %.lr.ph230.preheader
  %unroll_iter307 = and i32 %i.k, 2147483646
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230, %.lr.ph230.preheader.new
  %.1193228 = phi i32 [ 0, %.lr.ph230.preheader.new ], [ %i.cs, %.lr.ph230 ] ; 3 uses
  %niter308 = phi i32 [ 0, %.lr.ph230.preheader.new ], [ %niter308.next.1, %.lr.ph230 ]
  %i.bz = add nsw i32 %.1193228, %i.bo            ; 2 uses
  %i.ca = and i32 %i.bz, 31
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = ashr i32 %i.bz, 5
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 4      ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = or i32 %i.cg, %i.cb
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !7
  %i.ci = or disjoint i32 %.1193228, 1
  %i.cj = add nsw i32 %i.ci, %i.bo                ; 2 uses
  %i.ck = and i32 %i.cj, 31
  %i.cl = shl nuw i32 1, %i.ck
  %i.cm = ashr i32 %i.cj, 5
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.bx, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4      ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = or i32 %i.cq, %i.cl
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !7
  %i.cs = add nuw nsw i32 %.1193228, 2            ; 2 uses
  %niter308.next.1 = add nuw nsw i32 %niter308, 2 ; 2 uses
  %niter308.ncmp.1 = icmp eq i32 %niter308.next.1, %unroll_iter307
  br i1 %niter308.ncmp.1, label %._crit_edge231.loopexit.unr-lcssa, label %.lr.ph230

._crit_edge231.loopexit.unr-lcssa:                ; preds = %.lr.ph230
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %._crit_edge231, label %.lr.ph230.epil.preheader

.lr.ph230.epil.preheader:                         ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.preheader
  %.1193228.epil.init = phi i32 [ 0, %.lr.ph230.preheader ], [ %i.cs, %._crit_edge231.loopexit.unr-lcssa ]
  %lcmp.mod306 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod306)
  %i.ct = add nsw i32 %.1193228.epil.init, %i.bo  ; 2 uses
  %i.cu = and i32 %i.ct, 31
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = ashr i32 %i.ct, 5
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.bx, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = or i32 %i.da, %i.cv
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !7
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.lr.ph230.epil.preheader, %._crit_edge231.loopexit.unr-lcssa, %._crit_edge
  %i.dc = load i32, ptr @cube, align 8, !tbaa !53 ; 3 uses
  %i.dd = icmp slt i32 %i.dc, 33
  %i.de = add nsw i32 %i.dc, -1
  %i.df = lshr i32 %i.de, 3
  %i.dg = and i32 %i.df, 536870908
  %i.dh = add nuw nsw i32 %i.dg, 8
  %narrow225 = select i1 %i.dd, i32 8, i32 %i.dh
  %i.di = zext nneg i32 %narrow225 to i64
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.di) #13
  %i.dk = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.dj, i32 noundef %i.dc) #11
  %i.dl = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.dk, ptr noundef %i.bx, ptr noundef %i.ad) #11 ; 3 uses
  %i.dm = load i32, ptr @cube, align 8, !tbaa !53
  %i.dn = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.dm) #11 ; 2 uses
  br i1 %i.ae, label %.lr.ph244, label %._crit_edge245

.lr.ph244:                                        ; preds = %._crit_edge231
  %.not221 = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph244, %bb.n
  %.0180242 = phi ptr [ %i.dn, %.lr.ph244 ], [ %.1181, %bb.n ] ; 2 uses
  %.2194241 = phi i32 [ 0, %.lr.ph244 ], [ %i.fw, %bb.n ] ; 4 uses
  %i.do = load i32, ptr @cube, align 8, !tbaa !53
  %i.dp = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.do) #11 ; 2 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.dv = load i32, ptr %i.dq, align 8, !tbaa !52
  %i.dw = mul nsw i32 %i.dv, %i.du                ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %.idx = shl nsw i64 %i.dx, 2
  %i.dy = getelementptr inbounds i8, ptr %i.ds, i64 %.idx
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph235, label %._crit_edge236

.lr.ph235:                                        ; preds = %bb.f
  %i.ea = add nsw i32 %.2194241, %i.bo            ; 2 uses
  %i.eb = ashr i32 %i.ea, 5
  %i.ec = sext i32 %i.eb to i64
  %i.ed = and i32 %i.ea, 31
  %i.ee = shl nuw i32 1, %i.ed
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph235, %bb.j
  %.0233 = phi ptr [ %i.dp, %.lr.ph235 ], [ %.1, %bb.j ] ; 3 uses
  %.0186232 = phi ptr [ %i.ds, %.lr.ph235 ], [ %i.eo, %bb.j ] ; 4 uses
  %i.ef = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ad, ptr noundef %.0186232) #11
  %.not222 = icmp eq i32 %i.ef, 0
  br i1 %.not222, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eg = getelementptr [4 x i8], ptr %.0186232, i64 %i.ec
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7
  %i.ej = and i32 %i.ei, %i.ee
  %.not223 = icmp eq i32 %i.ej, 0
  br i1 %.not223, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0233, ptr noundef nonnull %.0186232) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi ptr [ %i.ek, %bb.i ], [ %.0233, %bb.h ], [ %.0233, %bb.g ] ; 2 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !46
  %i.em = load i32, ptr %i.el, align 8, !tbaa !52
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %.0186232, i64 %i.en ; 2 uses
  %i.ep = icmp ult ptr %i.eo, %i.dy
  br i1 %i.ep, label %bb.g, label %._crit_edge236

._crit_edge236:                                   ; preds = %bb.j, %bb.f
  %.0.lcssa = phi ptr [ %i.dp, %bb.f ], [ %.1, %bb.j ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !51 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge236
  %i.et = load i32, ptr @cube, align 8, !tbaa !53
  %i.eu = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.et) #11 ; 2 uses
  %i.ev = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.0.lcssa) #11
  %i.ew = tail call ptr (ptr, ...) @complement(ptr noundef %i.ev) #11 ; 2 uses
  %i.ex = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.0.lcssa, ptr noundef %i.eu, ptr noundef %i.ew) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.eu) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ew) #11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !50 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !51 ; 2 uses
  %i.fc = load i32, ptr %i.ex, align 8, !tbaa !52
  %i.fd = mul nsw i32 %i.fc, %i.fb                ; 2 uses
  %2 = zext nneg i32 %i.fd to i64
  %.idx276 = shl nuw nsw i64 %2, 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx276
  %i.ff = icmp sgt i32 %i.fd, 0
  br i1 %i.ff, label %.lr.ph239, label %._crit_edge240

.lr.ph239:                                        ; preds = %bb.k
  %i.fg = add nsw i32 %.2194241, %i.bo            ; 2 uses
  %i.fh = and i32 %i.fg, 31
  %i.fi = shl nuw i32 1, %i.fh
  %i.fj = ashr i32 %i.fg, 5
  %i.fk = sext i32 %i.fj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph239, %bb.l
  %.1187237 = phi ptr [ %i.ez, %.lr.ph239 ], [ %i.fr, %bb.l ] ; 2 uses
  %i.fl = getelementptr [4 x i8], ptr %.1187237, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 4      ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = or i32 %i.fn, %i.fi
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !7
  %i.fp = load i32, ptr %i.ex, align 8, !tbaa !52
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.1187237, i64 %i.fq ; 2 uses
  %i.fs = icmp ult ptr %i.fr, %i.fe
  br i1 %i.fs, label %bb.l, label %._crit_edge240.loopexit

._crit_edge240.loopexit:                          ; preds = %bb.l
  %.pre287 = load i32, ptr %i.fa, align 4, !tbaa !51
  br label %._crit_edge240

._crit_edge240:                                   ; preds = %._crit_edge240.loopexit, %bb.k
  %i.ft = phi i32 [ %.pre287, %._crit_edge240.loopexit ], [ %i.fb, %bb.k ]
  %i.fu = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180242, ptr noundef nonnull %i.ex) #11 ; 2 uses
  br i1 %.not221, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge240
  %i.fv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.2194241, i32 noundef %i.er, i32 noundef %i.ft) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge236, %bb.m, %._crit_edge240
  %.1181 = phi ptr [ %i.fu, %bb.m ], [ %i.fu, %._crit_edge240 ], [ %.0180242, %._crit_edge236 ] ; 2 uses
  %i.fw = add nuw nsw i32 %.2194241, 1            ; 2 uses
  %exitcond282.not = icmp eq i32 %i.fw, %i.k
  br i1 %exitcond282.not, label %._crit_edge245, label %bb.f

._crit_edge245:                                   ; preds = %bb.n, %._crit_edge231
  %.0180.lcssa = phi ptr [ %i.dn, %._crit_edge231 ], [ %.1181, %bb.n ]
  %i.fx = load i32, ptr @cube, align 8, !tbaa !53
  %i.fy = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.fx) #11 ; 2 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !51
  %i.ge = load i32, ptr %i.fz, align 8, !tbaa !52
  %i.gf = mul nsw i32 %i.ge, %i.gd                ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %.idx277 = shl nsw i64 %i.gg, 2
  %i.gh = getelementptr inbounds i8, ptr %i.gb, i64 %.idx277
  %i.gi = icmp sgt i32 %i.gf, 0
  br i1 %i.gi, label %.lr.ph250, label %._crit_edge251

.lr.ph250:                                        ; preds = %._crit_edge245, %bb.p
  %.0184248 = phi ptr [ %.1185, %bb.p ], [ %i.fy, %._crit_edge245 ] ; 2 uses
  %.2188247 = phi ptr [ %i.go, %bb.p ], [ %i.gb, %._crit_edge245 ] ; 3 uses
  %i.gj = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %.2188247, ptr noundef %i.bx) #11
  %.not220 = icmp eq i32 %i.gj, 0
  br i1 %.not220, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph250
  %i.gk = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.0184248, ptr noundef %.2188247) #11
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph250, %bb.o
  %.1185 = phi ptr [ %i.gk, %bb.o ], [ %.0184248, %.lr.ph250 ] ; 2 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !46
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !52
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %.2188247, i64 %i.gn ; 2 uses
  %i.gp = icmp ult ptr %i.go, %i.gh
  br i1 %i.gp, label %.lr.ph250, label %._crit_edge251

._crit_edge251:                                   ; preds = %bb.p, %._crit_edge245
  %.0184.lcssa = phi ptr [ %i.fy, %._crit_edge245 ], [ %.1185, %bb.p ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0184.lcssa, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !51
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !45 ; 2 uses
  %i.gt = tail call ptr (ptr, i32, i32, ...) @unravel_range(ptr noundef %.0184.lcssa, i32 noundef %i.gs, i32 noundef %i.gs) #11 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !51
  %i.gw = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.0180.lcssa, ptr noundef %i.gt) #11 ; 2 uses
  %.not211 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not211, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge251
  %i.gx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gr, i32 noundef %i.gv) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge251
  br i1 %i.ae, label %.preheader.us, label %._crit_edge270

.preheader.us:                                    ; preds = %bb.r, %._crit_edge266.us
  %.2182269.us = phi ptr [ %.4.us, %._crit_edge266.us ], [ %i.gw, %bb.r ]
  %.3195268.us = phi i32 [ %i.kh, %._crit_edge266.us ], [ 0, %bb.r ] ; 3 uses
  %i.gy = add nsw i32 %.3195268.us, %i.u          ; 2 uses
  %i.gz = ashr i32 %i.gy, 5
  %i.ha = add nsw i32 %i.gz, 1
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = and i32 %i.gy, 31
  %i.hd = shl nuw i32 1, %i.hc                    ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader.us, %bb.ab
  %.3183264.us = phi ptr [ %.2182269.us, %.preheader.us ], [ %.4.us, %bb.ab ] ; 2 uses
  %.0191263.us = phi i32 [ 0, %.preheader.us ], [ %i.jv, %bb.ab ] ; 4 uses
  %i.he = load i32, ptr @cube, align 8, !tbaa !53
  %i.hf = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 10, i32 noundef %i.he) #11 ; 2 uses
  %i.hg = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !50 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !51
  %i.hl = load i32, ptr %i.hg, align 8, !tbaa !52
  %i.hm = mul nsw i32 %i.hl, %i.hk                ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %.idx278 = shl nsw i64 %i.hn, 2
  %i.ho = getelementptr inbounds i8, ptr %i.hi, i64 %.idx278
  %i.hp = icmp sgt i32 %i.hm, 0
  br i1 %i.hp, label %.lr.ph256.us, label %._crit_edge257.us

bb.t:                                             ; preds = %.lr.ph256.us, %bb.x
  %.2254.us = phi ptr [ %i.hf, %.lr.ph256.us ], [ %.3.us, %bb.x ] ; 4 uses
  %.3189253.us = phi ptr [ %i.hi, %.lr.ph256.us ], [ %i.is, %bb.x ] ; 6 uses
  %i.hq = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ad, ptr noundef %.3189253.us) #11
  %.not216.us = icmp eq i32 %i.hq, 0
  br i1 %.not216.us, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds [4 x i8], ptr %.3189253.us, i64 %i.hb
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !7
  %i.ht = and i32 %i.hs, %i.hd
  %.not217.us = icmp eq i32 %i.ht, 0
  br i1 %.not217.us, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hu = getelementptr inbounds [4 x i8], ptr %.3189253.us, i64 %i.jz
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !7
  %i.hw = and i32 %i.hv, %i.kb
  %.not218.us = icmp eq i32 %i.hw, 0
  br i1 %.not218.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load i32, ptr %.3189253.us, align 4, !tbaa !7
  %i.hy = shl i32 %i.hx, 5
  %i.hz = and i32 %i.hy, 32736                    ; 2 uses
  %i.ia = icmp samesign ult i32 %i.hz, 33
  %i.ib = add nsw i32 %i.hz, -32
  %i.ic = lshr exact i32 %i.ib, 3
  %i.id = add nuw nsw i32 %i.ic, 8
  %narrow226.us = select i1 %i.ia, i32 8, i32 %i.id
  %i.ie = zext nneg i32 %narrow226.us to i64
  %i.if = tail call noalias ptr @malloc(i64 noundef %i.ie) #13
  %i.ig = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.if, ptr noundef nonnull %.3189253.us) #11 ; 6 uses
  %i.ih = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.ig, ptr noundef %i.ig, ptr noundef %i.dl) #11 ; 0 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.hb ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !7
  %i.ik = or i32 %i.ij, %i.hd
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !7
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.jz ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !7
  %i.in = or i32 %i.im, %i.kb
  store i32 %i.in, ptr %i.il, align 4, !tbaa !7
  %i.io = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.2254.us, ptr noundef %i.ig) #11
  tail call void @free(ptr noundef %i.ig) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.3.us = phi ptr [ %.2254.us, %bb.t ], [ %i.io, %bb.w ], [ %.2254.us, %bb.u ], [ %.2254.us, %bb.v ] ; 2 uses
  %i.ip = load ptr, ptr %0, align 8, !tbaa !46
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !52
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %.3189253.us, i64 %i.ir ; 2 uses
  %i.it = icmp ult ptr %i.is, %i.ho
  br i1 %i.it, label %bb.t, label %._crit_edge257.us

._crit_edge257.us:                                ; preds = %bb.x, %bb.s
  %.2.lcssa.us = phi ptr [ %i.hf, %bb.s ], [ %.3.us, %bb.x ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.2.lcssa.us, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !51 ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %._crit_edge257.us
  %i.ix = load i32, ptr @cube, align 8, !tbaa !53
  %i.iy = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.ix) #11 ; 2 uses
  %i.iz = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %.2.lcssa.us) #11
  %i.ja = tail call ptr (ptr, ...) @complement(ptr noundef %i.iz) #11 ; 2 uses
  %i.jb = tail call ptr (ptr, ptr, ptr, ...) @espresso(ptr noundef nonnull %.2.lcssa.us, ptr noundef %i.iy, ptr noundef %i.ja) #11 ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef %i.iy) #11
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ja) #11
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !50 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 12 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !51 ; 2 uses
  %i.jg = load i32, ptr %i.jb, align 8, !tbaa !52
  %i.jh = mul nsw i32 %i.jg, %i.jf                ; 2 uses
  %3 = zext nneg i32 %i.jh to i64
  %.idx279 = shl nuw nsw i64 %3, 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.idx279
  %i.jj = icmp sgt i32 %i.jh, 0
  br i1 %i.jj, label %.lr.ph261.us, label %._crit_edge262.us

bb.z:                                             ; preds = %.lr.ph261.us, %bb.z
  %.4190259.us = phi ptr [ %i.jd, %.lr.ph261.us ], [ %i.jq, %bb.z ] ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %.4190259.us, i64 %i.kg
  %i.jl = getelementptr i8, ptr %i.jk, i64 4      ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !7
  %i.jn = or i32 %i.jm, %i.ke
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !7
  %i.jo = load i32, ptr %i.jb, align 8, !tbaa !52
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %.4190259.us, i64 %i.jp ; 2 uses
  %i.jr = icmp ult ptr %i.jq, %i.ji
  br i1 %i.jr, label %bb.z, label %._crit_edge262.us.loopexit

._crit_edge262.us.loopexit:                       ; preds = %bb.z
  %.pre288 = load i32, ptr %i.je, align 4, !tbaa !51
  br label %._crit_edge262.us

._crit_edge262.us:                                ; preds = %._crit_edge262.us.loopexit, %bb.y
  %i.js = phi i32 [ %.pre288, %._crit_edge262.us.loopexit ], [ %i.jf, %bb.y ]
  %i.jt = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.3183264.us, ptr noundef nonnull %i.jb) #11 ; 2 uses
  br i1 %.not211, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge262.us
  %i.ju = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.3195268.us, i32 noundef %.0191263.us, i32 noundef %i.iv, i32 noundef %i.js) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge262.us, %._crit_edge257.us
  %.4.us = phi ptr [ %i.jt, %bb.aa ], [ %i.jt, %._crit_edge262.us ], [ %.3183264.us, %._crit_edge257.us ] ; 3 uses
  %i.jv = add nuw nsw i32 %.0191263.us, 1         ; 2 uses
  %exitcond283.not = icmp eq i32 %i.jv, %i.k
  br i1 %exitcond283.not, label %._crit_edge266.us, label %bb.s

.lr.ph256.us:                                     ; preds = %bb.s
  %i.jw = add nsw i32 %.0191263.us, %i.bo         ; 2 uses
  %i.jx = ashr i32 %i.jw, 5
  %i.jy = add nsw i32 %i.jx, 1
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = and i32 %i.jw, 31
  %i.kb = shl nuw i32 1, %i.ka                    ; 2 uses
  br label %bb.t

.lr.ph261.us:                                     ; preds = %bb.y
  %i.kc = add nsw i32 %.0191263.us, %i.bo         ; 2 uses
  %i.kd = and i32 %i.kc, 31
  %i.ke = shl nuw i32 1, %i.kd
  %i.kf = ashr i32 %i.kc, 5
  %i.kg = sext i32 %i.kf to i64
  br label %bb.z

._crit_edge266.us:                                ; preds = %bb.ab
  %i.kh = add nuw nsw i32 %.3195268.us, 1         ; 2 uses
  %exitcond284.not = icmp eq i32 %i.kh, %i.k
  br i1 %exitcond284.not, label %._crit_edge270, label %.preheader.us

._crit_edge270:                                   ; preds = %._crit_edge266.us, %bb.r
  %.2182.lcssa = phi ptr [ %i.gw, %bb.r ], [ %.4.us, %._crit_edge266.us ]
  %.not212 = icmp eq ptr %i.dl, null
  br i1 %.not212, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge270
  tail call void @free(ptr noundef nonnull %i.dl) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge270
  %.not213 = icmp eq ptr %i.ad, null
  br i1 %.not213, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ad) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not214 = icmp eq ptr %i.bx, null
  br i1 %.not214, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.bx) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ki = load ptr, ptr %0, align 8, !tbaa !46
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ki) #11
  store ptr %.2182.lcssa, ptr %0, align 8, !tbaa !46
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !48
  tail call void (ptr, ...) @sf_free(ptr noundef %i.kk) #11
  %i.kl = load i32, ptr @cube, align 8, !tbaa !53
  %i.km = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.kl) #11
  store ptr %i.km, ptr %i.kj, align 8, !tbaa !48
  tail call void (...) @setdown_cube() #11
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55 ; 2 uses
  %.not215 = icmp eq ptr %i.kn, null
  br i1 %.not215, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.kn) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !45
  %i.ko = add nsw i32 %i.g, 3                     ; 2 uses
  store i32 %i.ko, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !54
  %i.kp = sext i32 %i.ko to i64
  %i.kq = shl nsw i64 %i.kp, 2
  %i.kr = tail call noalias ptr @malloc(i64 noundef %i.kq) #13 ; 2 uses
  store ptr %i.kr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !55
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.i ; 3 uses
  store i32 %i.k, ptr %i.ks, align 4, !tbaa !7
  %i.kt = getelementptr i8, ptr %i.ks, i64 4
  store i32 %i.k, ptr %i.kt, align 4, !tbaa !7
  %i.ku = sub nsw i32 %i.o, %i.k
  %i.kv = getelementptr i8, ptr %i.ks, i64 8
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !7
  tail call void (...) @cube_setup() #11
  %i.kw = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !50 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !51
  %i.lb = load i32, ptr %i.kw, align 8, !tbaa !52
  %i.lc = mul nsw i32 %i.lb, %i.la                ; 2 uses
  %4 = zext nneg i32 %i.lc to i64
  %.idx280 = shl nuw nsw i64 %4, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx280
  %i.le = icmp sgt i32 %i.lc, 0
  br i1 %i.le, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.aj, %.lr.ph274
  %.5272 = phi ptr [ %i.lk, %.lr.ph274 ], [ %i.ky, %bb.aj ] ; 2 uses
  %i.lf = load ptr, ptr @stdout, align 8, !tbaa !95
  %i.lg = tail call i32 (ptr, ptr, ptr, ptr, ...) @kiss_print_cube(ptr noundef %i.lf, ptr noundef nonnull %0, ptr noundef %.5272, ptr noundef nonnull @.str.23) #11 ; 0 uses
  %i.lh = load ptr, ptr %0, align 8, !tbaa !46
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !52
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %.5272, i64 %i.lj ; 2 uses
  %i.ll = icmp ult ptr %i.lk, %i.ld
  br i1 %i.ll, label %.lr.ph274, label %._crit_edge275

._crit_edge275:                                   ; preds = %.lr.ph274, %bb.aj
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 7251942727525073716}
!9 = !{i64 -2233945813429584555}
!10 = !{i64 -2861301398458806537}
!11 = !{i64 -968572705386657903}
!12 = !{i64 5562924717031871436}
!13 = !{i64 -8652257355959072578}
!14 = !{i64 -5739825015072389535}
!15 = !{i64 -5670467923977860973}
!16 = !{i64 1473789339294212677}
!17 = !{i64 1802053492064991526}
!18 = !{i64 -7748597347058736977}
!19 = !{i64 -2579844409875840575}
!20 = !{i64 -476340984830630795}
!21 = !{i64 -5029073711954962065}
!22 = !{i64 -438104766031460772}
!23 = !{i64 -3032987117897932367}
!24 = !{i64 5569846053050681576}
!25 = !{i64 3705540141924965207}
!26 = !{i64 -3237968272039920272}
!27 = !{i64 1198032603092147776}
!28 = !{i64 8474037566935532441}
!29 = !{i64 -2067751395601210361}
!30 = !{i64 -7111419118842561915}
!31 = !{i64 329731312663183573}
!32 = !{!"any pointer", !5, i64 0}
!33 = !{!"p1 _ZTS10set_family", !32, i64 0}
!34 = !{!"p1 omnipotent char", !32, i64 0}
!35 = !{!"p1 int", !32, i64 0}
!36 = !{!"p1 _ZTS11pair_struct", !32, i64 0}
!37 = !{!"any p2 pointer", !32, i64 0}
!38 = !{!"p2 omnipotent char", !37, i64 0}
!39 = !{!"p1 _ZTS15symbolic_struct", !32, i64 0}
!40 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !34, i64 24, !6, i64 32, !35, i64 40, !36, i64 48, !38, i64 56, !39, i64 64, !39, i64 72}
!41 = !{!40, !38, i64 56}
!42 = !{!34, !34, i64 0}
!43 = !{!"p2 int", !37, i64 0}
!44 = !{!"cube_struct", !6, i64 0, !6, i64 4, !6, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !43, i64 72, !43, i64 80, !35, i64 88, !35, i64 96, !6, i64 104, !6, i64 108, !35, i64 112, !6, i64 120, !6, i64 124}
!45 = !{!44, !6, i64 8}
!46 = !{!40, !33, i64 0}
!47 = !{!33, !33, i64 0}
!48 = !{!40, !33, i64 8}
!49 = !{!"set_family", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !35, i64 24, !33, i64 32}
!50 = !{!49, !35, i64 24}
!51 = !{!49, !6, i64 12}
!52 = !{!49, !6, i64 0}
!53 = !{!44, !6, i64 0}
!54 = !{!44, !6, i64 4}
!55 = !{!44, !35, i64 32}
!56 = !{!40, !33, i64 16}
!57 = !{!39, !39, i64 0}
!58 = !{!"p1 _ZTS20symbolic_list_struct", !32, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"symbolic_list_struct", !6, i64 0, !6, i64 4, !58, i64 8}
!61 = !{!60, !6, i64 4}
!62 = !{!44, !6, i64 124}
!63 = !{!"p1 _ZTS21symbolic_label_struct", !32, i64 0}
!64 = !{!"symbolic_struct", !58, i64 0, !6, i64 8, !63, i64 16, !6, i64 24, !39, i64 32}
!65 = !{!64, !6, i64 8}
!66 = !{!44, !35, i64 16}
!67 = !{!64, !58, i64 0}
!68 = !{!49, !6, i64 4}
!69 = !{!60, !58, i64 8}
!70 = !{!60, !6, i64 0}
!71 = !{i64 8836702505088510669}
!72 = !{!44, !35, i64 88}
!73 = !{i64 -5874415842196666406}
!74 = !{}
!75 = !{!40, !39, i64 72}
!76 = !{i64 8217728956762260197}
!77 = distinct !{!77, !80, !81}
!78 = distinct !{!78, !81, !80}
!79 = !{i64 3493092475745680203}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!40, !39, i64 64}
!83 = !{i64 -2924982693544865910}
!84 = distinct !{!84, !86}
!85 = !{i64 2584025240879151822}
!86 = !{!"llvm.loop.peeled.count", i32 1}
!87 = !{i64 817985452969639567}
!88 = !{!64, !63, i64 16}
!89 = !{!"symbolic_label_struct", !34, i64 0, !63, i64 8}
!90 = !{!89, !34, i64 0}
!91 = !{!89, !63, i64 8}
!92 = !{!64, !39, i64 32}
!93 = !{i64 -1302212792230063194}
!94 = !{!"p1 _ZTS8_IO_FILE", !32, i64 0}
!95 = !{!94, !94, i64 0}
end_hunk_1
