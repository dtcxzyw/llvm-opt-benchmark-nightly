Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/merge-ort?download=true
inline.NumInlined: 332
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@strmap_init_with_options
declare void @strmap_init_with_options(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @strmap_init(ptr noundef) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #4

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #4

declare ptr @repo_parse_tree_indirect(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @shift_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @shift_tree_by(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @setup_traverse_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 8) i32 @collect_merge_info_callback(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.traverse_info, align 8      ; 10 uses
  %6 = alloca [3 x %struct.tree_desc], align 16   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2416 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1512 ; 8 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 7                           ; 2 uses
  %i.j = xor i64 %2, -1
  %i.k = and i64 %1, %i.j                         ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 10 uses
  %i.m = trunc i64 %1 to i32                      ; 7 uses
  %i.n = and i32 %i.m, 1
  %i.o = xor i32 %i.n, 1                          ; 2 uses
  %i.p = and i64 %1, 2
  %.not234 = icmp eq i64 %i.p, 0                  ; 3 uses
  %i.q = and i64 %1, 4
  %.not235 = icmp eq i64 %i.q, 0                  ; 2 uses
  %i.r = and i64 %1, 3
  %or.cond.not = icmp eq i64 %i.r, 3
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !180
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !180
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.y = load i128, ptr %3, align 1
  %i.z = load i128, ptr %i.x, align 1
  %i.aa = xor i128 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %3, i64 16
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i128, ptr %i.ab, align 1
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = or i128 %i.aa, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %bcmp.i.fr = freeze i32 %i.ai
  %.not.i = icmp eq i32 %bcmp.i.fr, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.fr = phi i1 [ false, %bb.b ], [ %.not.i, %bb.c ], [ false, %bb.a ] ; 5 uses
  %i.aj = and i64 %1, 5
  %or.cond3.not = icmp eq i64 %i.aj, 5
  br i1 %or.cond3.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !180
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.an = load i32, ptr %i.am, align 4, !tbaa !180
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.aq = load i128, ptr %3, align 1
  %i.ar = load i128, ptr %i.ap, align 1
  %i.as = xor i128 %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %3, i64 16
  %i.au = getelementptr i8, ptr %i.ap, i64 16
  %i.av = load i128, ptr %i.at, align 1
  %i.aw = load i128, ptr %i.au, align 1
  %i.ax = xor i128 %i.av, %i.aw
  %i.ay = or i128 %i.as, %i.ax
  %i.az = icmp ne i128 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i245 = icmp eq i32 %i.ba, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bb = phi i1 [ false, %bb.e ], [ %.not.i245, %bb.f ], [ false, %bb.d ] ; 7 uses
  %i.bc = and i64 %1, 6
  %or.cond5.not = icmp eq i64 %i.bc, 6
  br i1 %or.cond5.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !180
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !180
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bk = load i128, ptr %i.bj, align 1
  %i.bl = load i128, ptr %i.bi, align 1
  %i.bm = xor i128 %i.bk, %i.bl
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %i.bo = getelementptr i8, ptr %i.bi, i64 16
  %i.bp = load i128, ptr %i.bn, align 1
  %i.bq = load i128, ptr %i.bo, align 1
  %i.br = xor i128 %i.bp, %i.bq
  %i.bs = or i128 %i.bm, %i.br
  %i.bt = icmp ne i128 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %.not.i247 = icmp eq i32 %i.bu, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bv = phi i1 [ false, %bb.h ], [ %.not.i247, %bb.i ], [ false, %bb.g ] ; 4 uses
  %i.bw = icmp ne i32 %i.l, 0
  %i.bx = icmp ne i64 %2, 0                       ; 2 uses
  %i.by = and i1 %i.bx, %i.bw
  %.not236 = icmp eq i32 %0, 3
  br i1 %.not236, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.100) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bz = load i128, ptr %3, align 1
  %i.ca = getelementptr i8, ptr %3, i64 16
  %i.cb = load i128, ptr %i.ca, align 1
  %i.cc = or i128 %i.bz, %i.cb
  %i.cd = icmp ne i128 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %.not.i249 = icmp eq i32 %i.ce, 0
  %i.cf = zext i1 %.not.i249 to i32
  %i.cg = icmp eq i32 %i.o, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_merge_info_callback) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.ci = load i128, ptr %i.ch, align 1
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %i.ck = load i128, ptr %i.cj, align 1
  %i.cl = or i128 %i.ci, %i.ck
  %i.cm = icmp ne i128 %i.cl, 0                   ; 2 uses
  %i.cn = zext i1 %i.cm to i32                    ; 0 uses
  %i.co = xor i1 %.not234, %i.cm
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str, i32 noundef 1316, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_merge_info_callback) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.cq = load i128, ptr %i.cp, align 1
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = or i128 %i.cq, %i.cs
  %i.cu = icmp ne i128 %i.ct, 0                   ; 2 uses
  %i.cv = zext i1 %i.cu to i32                    ; 0 uses
  %i.cw = xor i1 %.not235, %i.cu
  br i1 %i.cw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str, i32 noundef 1317, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_merge_info_callback) #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cx = and i64 %1, 7
  %or.cond9 = icmp eq i64 %i.cx, 0
  br i1 %or.cond9, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str, i32 noundef 1318, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_merge_info_callback) #23
  unreachable

bb.t:                                             ; preds = %bb.r
  %or.cond11 = icmp ult i64 %1, 8
  br i1 %or.cond11, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, i32 noundef 1319, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_merge_info_callback) #23
  unreachable

.preheader:                                       ; preds = %bb.t, %.preheader
  %.0221 = phi ptr [ %i.da, %.preheader ], [ %3, %bb.t ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0221, i64 52
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !180
  %.not = icmp eq i32 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.0221, i64 56
  br i1 %.not, label %.preheader, label %bb.v, !llvm.loop !273

bb.v:                                             ; preds = %.preheader
  %i.db = select i1 %i.bb, i32 7, i32 3
  %spec.select = select i1 %i.bv, i32 6, i32 0
  %spec.select243 = select i1 %i.bb, i32 5, i32 %spec.select
  %.0220 = select i1 %.fr, i32 %i.db, i32 %spec.select243 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0221, i64 48 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !274
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr i8, ptr %4, i64 40        ; 6 uses
  %.val = load i64, ptr %i.df, align 8, !tbaa !140 ; 2 uses
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val, i64 range(i64 -2147483648, 2147483648) %i.de) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  br i1 %i.dh, label %bb.w, label %traverse_path_len.exit

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.114, i64 noundef %.val, i64 noundef range(i64 -2147483648, 2147483648) %i.de) #23
  unreachable

traverse_path_len.exit:                           ; preds = %bb.v
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.dk = add i64 %i.di, 1                        ; 2 uses
  %i.dl = tail call ptr @mem_pool_alloc(ptr noundef nonnull %i.dj, i64 noundef %i.dk) #22 ; 17 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0221, i64 40 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !275
  %i.do = load i32, ptr %i.dc, align 8, !tbaa !274
  %i.dp = sext i32 %i.do to i64
  %i.dq = tail call ptr @make_traverse_path(ptr noundef %i.dl, i64 noundef %i.dk, ptr noundef nonnull %4, ptr noundef %i.dn, i64 noundef %i.dp) #22 ; 0 uses
  %or.cond13 = select i1 %.fr, i1 %i.bb, i1 false
  br i1 %or.cond13, label %setup_path_info.exit, label %bb.x

setup_path_info.exit:                             ; preds = %traverse_path_len.exit
  %i.dr = load i64, ptr %i.df, align 8, !tbaa !140
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  %i.du = tail call ptr @mem_pool_calloc(ptr noundef nonnull %i.dt, i64 noundef 1, i64 noundef 64) #22 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  store ptr %i.f, ptr %i.dv, align 8, !tbaa !173
  %sext266 = shl i64 %i.dr, 32
  %i.dw = ashr exact i64 %sext266, 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !175
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = or i8 %i.dz, 2                          ; 2 uses
  store i8 %i.ea, ptr %i.dy, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !180
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  store i16 %i.ed, ptr %i.ee, align 4, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull readonly align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !79
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !79
  %i.ei = trunc nuw nsw i32 %i.o to i8
  %i.ej = and i8 %i.ea, -2
  %i.ek = or disjoint i8 %i.ej, %i.ei
  store i8 %i.ek, ptr %i.dy, align 8
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.em = tail call ptr @strmap_put(ptr noundef %i.el, ptr noundef %i.dl, ptr noundef nonnull %i.du) #22 ; 0 uses
  br label %bb.br

bb.x:                                             ; preds = %traverse_path_len.exit
  %i.en = icmp eq i32 %i.l, 7                     ; 3 uses
  %or.cond15 = and i1 %i.en, %i.bv
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !80  ; 7 uses
  br i1 %or.cond15, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ep = load i64, ptr %i.df, align 8, !tbaa !140
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.er = tail call ptr @mem_pool_calloc(ptr noundef nonnull %i.eq, i64 noundef 1, i64 noundef 64) #22 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store ptr %i.f, ptr %i.es, align 8, !tbaa !173
  %sext265 = shl i64 %i.ep, 32
  %i.et = ashr exact i64 %sext265, 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !175
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 8
  %i.ex = or i8 %i.ew, 2                          ; 2 uses
  store i8 %i.ex, ptr %i.ev, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !180
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  store i16 %i.fa, ptr %i.fb, align 4, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ch, i64 32, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !79
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !79
  %i.ff = zext i1 %.not234 to i8
  %i.fg = and i8 %i.ex, -2
  %i.fh = or disjoint i8 %i.fg, %i.ff
  store i8 %i.fh, ptr %i.ev, align 8
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.fj = tail call ptr @strmap_put(ptr noundef %i.fi, ptr noundef %i.dl, ptr noundef nonnull %i.er) #22 ; 0 uses
  br label %bb.br

bb.z:                                             ; preds = %bb.x
  %or.cond17 = and i1 %i.en, %.fr
  br i1 %or.cond17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fk = load i64, ptr %i.df, align 8, !tbaa !140
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.fm = tail call ptr @mem_pool_calloc(ptr noundef nonnull %i.fl, i64 noundef 1, i64 noundef 64) #22 ; 7 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  store ptr %i.f, ptr %i.fn, align 8, !tbaa !173
  %sext264 = shl i64 %i.fk, 32
  %i.fo = ashr exact i64 %sext264, 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !175
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 8
  %i.fs = or i8 %i.fr, 2                          ; 2 uses
  store i8 %i.fs, ptr %i.fq, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !180
  %i.fv = trunc i32 %i.fu to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  store i16 %i.fv, ptr %i.fw, align 4, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fm, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !79
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !79
  %i.ga = zext i1 %.not235 to i8
  %i.gb = and i8 %i.fs, -2
  %i.gc = or disjoint i8 %i.gb, %i.ga
  store i8 %i.gc, ptr %i.fq, align 8
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.ge = tail call ptr @strmap_put(ptr noundef %i.gd, ptr noundef %i.dl, ptr noundef nonnull %i.fm) #22 ; 0 uses
  br label %bb.br

bb.ab:                                            ; preds = %bb.z
  %or.cond19 = and i1 %i.en, %i.bb
  br i1 %or.cond19, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gf = load i64, ptr %i.df, align 8, !tbaa !140
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.gh = tail call ptr @mem_pool_calloc(ptr noundef nonnull %i.gg, i64 noundef 1, i64 noundef 64) #22 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store ptr %i.f, ptr %i.gi, align 8, !tbaa !173
  %sext263 = shl i64 %i.gf, 32
  %i.gj = ashr exact i64 %sext263, 32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !175
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 8
  %i.gn = or i8 %i.gm, 2                          ; 2 uses
  store i8 %i.gn, ptr %i.gl, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !180
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store i16 %i.gq, ptr %i.gr, align 4, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ch, i64 32, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !79
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store i32 %i.gt, ptr %i.gu, align 8, !tbaa !79
  %i.gv = zext i1 %.not234 to i8
  %i.gw = and i8 %i.gn, -2
  %i.gx = or disjoint i8 %i.gw, %i.gv
  store i8 %i.gx, ptr %i.gl, align 8
  %i.gy = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.gz = tail call ptr @strmap_put(ptr noundef %i.gy, ptr noundef %i.dl, ptr noundef nonnull %i.gh) #22 ; 0 uses
  br label %bb.br

bb.ad:                                            ; preds = %bb.ab
  %i.ha = trunc i64 %2 to i32                     ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eo, i64 1512 ; 6 uses
  %i.hc = load i8, ptr %i.hb, align 8             ; 3 uses
  %i.hd = and i8 %i.hc, 7                         ; 3 uses
  %i.he = zext nneg i8 %i.hd to i32
  %.not.i254 = icmp eq i8 %i.hd, 7
  br i1 %.not.i254, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i32 %i.ha, label %bb.am [
    i32 5, label %bb.af
end_hunk_0
