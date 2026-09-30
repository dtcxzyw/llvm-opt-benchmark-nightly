Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__parse_from_json:bb.a

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ba = phi i32 [ %.pre30.i, %bb.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.bb = phi ptr [ %i.az, %bb.i ], [ %.pre.i, %bb.g ]
  %i.bc = add i32 %i.ba, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !62
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.bd ; 5 uses
  store i32 2, ptr %i.be, align 8, !tbaa !118
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 30, ptr %i.bf, align 4, !tbaa !119
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @.str.45, ptr %i.bg, align 8, !tbaa !120
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr @.str.46, ptr %i.bh, align 8, !tbaa !121
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 -1, ptr %i.bi, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 1, ptr %i.bj, align 8, !tbaa !61
  br label %.critedge908

bb.k:                                             ; preds = %tg3__json_is_object.exit.thread, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 29 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !416 ; 3 uses
  %.not750 = icmp eq ptr %i.bl, null
  br i1 %.not750, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !418 ; 2 uses
  %.not751 = icmp eq ptr %i.bm, null
  br i1 %.not751, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !419
  %i.bq = tail call i32 %i.bm(ptr noundef nonnull %i.bn, ptr noundef %i.bp) #28
  %.not752 = icmp eq i32 %i.bq, 1
  br i1 %.not752, label %.critedge908, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call fastcc void @tg3__parse_string_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %i.br, ptr noundef %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 288
  tail call fastcc void @tg3__parse_string_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %i.bt, ptr noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 260 ; 3 uses
  store i32 -1, ptr %i.bv, align 4, !tbaa !114
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.49, ptr noundef %i.bv, i32 noundef 0, ptr noundef nonnull @.str.46)
  %i.bw = load i32, ptr %1, align 8, !tbaa !37
  %.not18.i.i910 = icmp eq i32 %i.bw, 6
  br i1 %.not18.i.i910, label %.preheader.i.i912, label %tg3__json_is_array.exit.thread

.preheader.i.i912:                                ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !34 ; 2 uses
  %.not23.i.i913 = icmp eq i64 %i.by, 0
  br i1 %.not23.i.i913, label %tg3__json_is_array.exit.thread, label %.lr.ph.i.i914

.lr.ph.i.i914:                                    ; preds = %.preheader.i.i912
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i914
  %.01422.i.i915 = phi i64 [ 0, %.lr.ph.i.i914 ], [ %i.cp, %bb.q ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.01422.i.i915 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46
  %i.ce = icmp eq i64 %i.cd, 7
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !45 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = xor i32 %i.cg, 1717990754
  %i.ci = getelementptr i8, ptr %i.cf, i64 3
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = xor i32 %i.cj, 1936876902
  %i.cl = or i32 %i.ch, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %tg3json_object_get.exit918, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cp = add nuw i64 %.01422.i.i915, 1           ; 2 uses
  %exitcond.not.i.i916 = icmp eq i64 %i.cp, %i.by
  br i1 %exitcond.not.i.i916, label %tg3__json_is_array.exit.thread, label %bb.o, !llvm.loop !2

tg3json_object_get.exit918:                       ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47 ; 5 uses
  %.not.i919 = icmp eq ptr %i.cr, null
  br i1 %.not.i919, label %tg3__json_is_array.exit.thread, label %tg3__json_is_array.exit

tg3__json_is_array.exit:                          ; preds = %tg3json_object_get.exit918
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !37
  %.not2152 = icmp eq i32 %i.cs, 5
  br i1 %.not2152, label %tg3json_array_size.exit, label %tg3__json_is_array.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34 ; 4 uses
  %.not754 = icmp eq i64 %i.cu, 0
  br i1 %.not754, label %tg3__json_is_array.exit.thread, label %bb.r

bb.r:                                             ; preds = %tg3json_array_size.exit
  %i.cv = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.cw = mul i64 %i.cu, 112                      ; 6 uses
  %i.cx = icmp eq ptr %i.cv, null
  %i.cy = icmp eq i64 %i.cw, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %tg3__json_is_array.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !130 ; 3 uses
  %.not.i922 = icmp ne i64 %i.da, 0               ; 2 uses
  %i.db = icmp ugt i64 %i.cw, %i.da
  %or.cond28.i = and i1 %.not.i922, %i.db
  br i1 %or.cond28.i, label %tg3__json_is_array.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !148 ; 5 uses
  %.not26.i = icmp eq ptr %i.dd, null
  br i1 %.not26.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !150 ; 3 uses
  %i.dg = add i64 %i.df, %i.cw
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !151
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.v, label %tg3__arena_alloc.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !128
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 range(i64 0, -7) %i.cw) ; 3 uses
  %i.dm = icmp ugt i64 %spec.select.i.i, %i.da
  %or.cond.i.i = select i1 %.not.i922, i1 %i.dm, i1 false
  br i1 %or.cond.i.i, label %tg3__json_is_array.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.dp = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !129
  %i.dt = icmp ugt i64 %i.dq, %i.ds
  br i1 %i.dt, label %tg3__json_is_array.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !153
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !154
  %i.dy = tail call ptr %i.dv(i64 noundef %i.dp, ptr noundef %i.dx) #28, !inline_history !6 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.dy, null
  br i1 %.not37.i.i, label %tg3__json_is_array.exit.thread, label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.x
  store ptr null, ptr %i.dy, align 8, !tbaa !155
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !156
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %spec.select.i.i, ptr %i.eb, align 8, !tbaa !151
  %i.ec = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.ed = add i64 %i.ec, %i.dp
  store i64 %i.ed, ptr %i.dn, align 8, !tbaa !152
  %i.ee = load ptr, ptr %i.dc, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.ee, null
  %..i.i = select i1 %.not38.i.i, ptr %i.cv, ptr %i.ee
  store ptr %i.dy, ptr %..i.i, align 8, !tbaa !157
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !148
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %i.cw, ptr %i.ef, align 8, !tbaa !150
  br label %.preheader2235

tg3__arena_alloc.exit:                            ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre.i923 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !156 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre.i923, i64 %i.df
  %i.ei = add i64 %i.df, %i.cw
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !150
  %.not755 = icmp eq ptr %.pre.i923, null
  br i1 %.not755, label %tg3__json_is_array.exit.thread, label %.preheader2235

.preheader2235:                                   ; preds = %tg3__arena_alloc.exit.thread, %tg3__arena_alloc.exit
  %i.ej = phi ptr [ %i.dz, %tg3__arena_alloc.exit.thread ], [ %i.eh, %tg3__arena_alloc.exit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.y

bb.y:                                             ; preds = %.preheader2235, %bb.dv
  %.06682344 = phi i64 [ 0, %.preheader2235 ], [ %i.ul, %bb.dv ] ; 6 uses
  %i.ev = load i32, ptr %i.cr, align 8, !tbaa !37
  %.not8.i = icmp eq i32 %i.ev, 5
  br i1 %.not8.i, label %bb.z, label %tg3__json_is_object.exit928.thread

bb.z:                                             ; preds = %bb.y
  %i.ew = load i64, ptr %i.ct, align 8, !tbaa !34
  %.not9.i = icmp ult i64 %.06682344, %i.ew
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3__json_is_object.exit928.thread

tg3json_array_get.exit:                           ; preds = %bb.z
  %i.ex = load ptr, ptr %i.ek, align 8, !tbaa !34 ; 2 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %.06682344 ; 6 uses
  %.not.i927 = icmp eq ptr %i.ex, null
  br i1 %.not.i927, label %tg3__json_is_object.exit928.thread, label %tg3__json_is_object.exit928

tg3__json_is_object.exit928:                      ; preds = %tg3json_array_get.exit
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !37
  %.not2153 = icmp eq i32 %i.ez, 6
  br i1 %.not2153, label %bb.aa, label %tg3__json_is_object.exit928.thread

tg3__json_is_object.exit928.thread:               ; preds = %bb.y, %bb.z, %tg3json_array_get.exit, %tg3__json_is_object.exit928
  %i.fa = load ptr, ptr %6, align 8, !tbaa !139
  %i.fb = load ptr, ptr %0, align 8, !tbaa !138
  %i.fc = trunc i64 %.06682344 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.fa, ptr noundef %i.fb, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.50, i32 noundef %i.fc)
  br label %bb.dv

bb.aa:                                            ; preds = %tg3__json_is_object.exit928
  %i.fd = getelementptr inbounds nuw [112 x i8], ptr %i.ej, i64 %.06682344 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i64 0, ptr %i.h, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.fd, i8 0, i64 112, i1 false)
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.fd, i32 noundef 0, ptr noundef nonnull @.str.66)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 2 uses
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull @.str.67, ptr noundef %i.fe, i32 noundef 0, ptr noundef nonnull @.str.66)
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull @.str.68, ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.66)
  %i.ff = load i64, ptr %i.h, align 8, !tbaa !27  ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !160
  %i.fh = load i32, ptr %i.el, align 8, !tbaa !161
  %i.fi = icmp ne i32 %i.fh, 0
  %i.fj = and i64 %.06682344, 4294967295
  %i.fk = icmp eq i64 %i.fj, 0
  %or.cond.i929 = and i1 %i.fk, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !162 ; 11 uses
  %i.fn = icmp eq i32 %i.fm, 0                    ; 2 uses
  br i1 %or.cond.i929, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fn, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load ptr, ptr %i.es, align 8, !tbaa !163 ; 2 uses
  %.not96.i = icmp eq ptr %i.fo, null
  br i1 %.not96.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fp = load i64, ptr %i.et, align 8, !tbaa !164
  %i.fq = icmp ult i64 %i.fp, %i.ff
  br i1 %i.fq, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fr = load ptr, ptr %6, align 8, !tbaa !139   ; 6 uses
  %.not.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i, label %tg3__parse_buffer.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !62 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 12 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !116 ; 3 uses
  %.not27.i.i = icmp ult i32 %i.ft, %i.fv
  %.pre.i.i = load ptr, ptr %i.fr, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not28.i.i = icmp eq i32 %i.fv, 0
  %i.fw = shl i32 %i.fv, 1
  %spec.select.i.i932 = select i1 %.not28.i.i, i32 16, i32 %i.fw ; 2 uses
  %i.fx = zext i32 %spec.select.i.i932 to i64
  %i.fy = shl nuw nsw i64 %i.fx, 5
  %i.fz = call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.fy) #29 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.fz, null
  br i1 %.not29.i.i, label %tg3__parse_buffer.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.fz, ptr %i.fr, align 8, !tbaa !63
  store i32 %spec.select.i.i932, ptr %i.fu, align 4, !tbaa !116
  %.pre30.i.i = load i32, ptr %i.fs, align 8, !tbaa !62
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.ga = phi i32 [ %.pre30.i.i, %bb.ah ], [ %i.ft, %bb.af ] ; 2 uses
  %i.gb = phi ptr [ %i.fz, %bb.ah ], [ %.pre.i.i, %bb.af ]
  %i.gc = add i32 %i.ga, 1
  store i32 %i.gc, ptr %i.fs, align 8, !tbaa !62
  %i.gd = zext i32 %i.ga to i64
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %i.gd ; 5 uses
  store i32 2, ptr %i.ge, align 8, !tbaa !118
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 45, ptr %i.gf, align 4, !tbaa !119
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr @.str.69, ptr %i.gg, align 8, !tbaa !120
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr null, ptr %i.gh, align 8, !tbaa !121
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store i64 -1, ptr %i.gi, align 8, !tbaa !122
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i32 1, ptr %i.gj, align 8, !tbaa !61
  br label %tg3__parse_buffer.exit

bb.aj:                                            ; preds = %bb.ad
  %i.gk = load i32, ptr %i.eu, align 8, !tbaa !420
  %.not97.i = icmp eq i32 %i.gk, 0
  br i1 %.not97.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %i.fo, ptr %i.gl, align 8, !tbaa !165
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i64 %i.ff, ptr %i.gm, align 8, !tbaa !166
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ey, ptr noundef %i.gn)
  br label %tg3__parse_buffer.exit

bb.al:                                            ; preds = %bb.aj
  %i.go = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.gp = icmp eq ptr %i.go, null
  %i.gq = icmp eq i64 %i.ff, 0                    ; 3 uses
  %or.cond.i.i931 = or i1 %i.gq, %i.gp
  br i1 %or.cond.i.i931, label %tg3__arena_alloc.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !130 ; 3 uses
  %.not.i98.i = icmp ne i64 %i.gs, 0              ; 2 uses
  %i.gt = icmp ugt i64 %i.ff, %i.gs
  %or.cond28.i.i = and i1 %.not.i98.i, %i.gt
  br i1 %or.cond28.i.i, label %tg3__arena_alloc.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = add i64 %i.ff, 7
  %i.gv = and i64 %i.gu, -8                       ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !148 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.gx, null
  br i1 %.not26.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !150 ; 2 uses
  %i.ha = add i64 %i.gz, %i.gv
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !151
  %i.hd = icmp ugt i64 %i.ha, %i.hc
  br i1 %i.hd, label %bb.ap, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ao
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.pre.i99.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !156
  br label %bb.as

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !128
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.hf, i64 range(i64 0, -7) %i.gv) ; 3 uses
  %i.hg = icmp ugt i64 %spec.select.i.i.i, %i.gs
  %or.cond.i.i.i = select i1 %.not.i98.i, i1 %i.hg, i1 false
  br i1 %or.cond.i.i.i, label %tg3__arena_alloc.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !152
  %i.hj = add i64 %spec.select.i.i.i, 32          ; 3 uses
  %i.hk = add i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !129
  %i.hn = icmp ugt i64 %i.hk, %i.hm
  br i1 %i.hn, label %tg3__arena_alloc.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !153
  %i.hq = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !154
  %i.hs = call ptr %i.hp(i64 noundef %i.hj, ptr noundef %i.hr) #28, !inline_history !337 ; 9 uses
  %.not37.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not37.i.i.i, label %tg3__arena_alloc.exit.i, label %tg3__arena_new_block.exit.i.i

tg3__arena_new_block.exit.i.i:                    ; preds = %bb.ar
  store ptr null, ptr %i.hs, align 8, !tbaa !155
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !156
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 0, ptr %i.hv, align 8, !tbaa !150
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i64 %spec.select.i.i.i, ptr %i.hw, align 8, !tbaa !151
  %i.hx = load i64, ptr %i.hh, align 8, !tbaa !152
  %i.hy = add i64 %i.hx, %i.hj
  store i64 %i.hy, ptr %i.hh, align 8, !tbaa !152
  %i.hz = load ptr, ptr %i.gw, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.hz, null
  %..i.i.i = select i1 %.not38.i.i.i, ptr %i.go, ptr %i.hz
  store ptr %i.hs, ptr %..i.i.i, align 8, !tbaa !157
  store ptr %i.hs, ptr %i.gw, align 8, !tbaa !148
  br label %bb.as

bb.as:                                            ; preds = %tg3__arena_new_block.exit.i.i, %._crit_edge.i.i
  %i.ia = phi i64 [ 0, %tg3__arena_new_block.exit.i.i ], [ %i.gz, %._crit_edge.i.i ] ; 2 uses
  %i.ib = phi ptr [ %i.ht, %tg3__arena_new_block.exit.i.i ], [ %.pre.i99.i, %._crit_edge.i.i ]
  %.0.i.i = phi ptr [ %i.hs, %tg3__arena_new_block.exit.i.i ], [ %i.gx, %._crit_edge.i.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  %i.ie = add i64 %i.ia, %i.gv
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !150
  br label %tg3__arena_alloc.exit.i

tg3__arena_alloc.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al
  %.020.i.i = phi ptr [ null, %bb.am ], [ null, %bb.al ], [ %i.id, %bb.as ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ar ] ; 3 uses
  %i.if = icmp ne ptr %.020.i.i, null
  %or.cond6.not.i = or i1 %i.gq, %i.if
  br i1 %or.cond6.not.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %tg3__arena_alloc.exit.i
  %i.ig = load ptr, ptr %6, align 8, !tbaa !139   ; 6 uses
  %.not.i1802 = icmp eq ptr %i.ig, null
  br i1 %.not.i1802, label %tg3__parse_buffer.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !62 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !116 ; 3 uses
  %.not27.i1803 = icmp ult i32 %i.ii, %i.ik
  %.pre.i1804 = load ptr, ptr %i.ig, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i1803, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not28.i1805 = icmp eq i32 %i.ik, 0
  %i.il = shl i32 %i.ik, 1
  %spec.select.i1806 = select i1 %.not28.i1805, i32 16, i32 %i.il ; 2 uses
  %i.im = zext i32 %spec.select.i1806 to i64
  %i.in = shl nuw nsw i64 %i.im, 5
  %i.io = call ptr @realloc(ptr noundef %.pre.i1804, i64 noundef %i.in) #29 ; 3 uses
  %.not29.i1807 = icmp eq ptr %i.io, null
  br i1 %.not29.i1807, label %tg3__parse_buffer.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.io, ptr %i.ig, align 8, !tbaa !63
  store i32 %spec.select.i1806, ptr %i.ij, align 4, !tbaa !116
  %.pre30.i1808 = load i32, ptr %i.ih, align 8, !tbaa !62
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.ip = phi i32 [ %.pre30.i1808, %bb.aw ], [ %i.ii, %bb.au ] ; 2 uses
  %i.iq = phi ptr [ %i.io, %bb.aw ], [ %.pre.i1804, %bb.au ]
  %i.ir = add i32 %i.ip, 1
  store i32 %i.ir, ptr %i.ih, align 8, !tbaa !62
  %i.is = zext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.iq, i64 %i.is ; 5 uses
  store i32 2, ptr %i.it, align 8, !tbaa !118
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 50, ptr %i.iu, align 4, !tbaa !119
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr @.str.71, ptr %i.iv, align 8, !tbaa !120
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr null, ptr %i.iw, align 8, !tbaa !121
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i64 -1, ptr %i.ix, align 8, !tbaa !122
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 1, ptr %i.iy, align 8, !tbaa !61
  br label %tg3__parse_buffer.exit

bb.ay:                                            ; preds = %tg3__arena_alloc.exit.i
  br i1 %i.gq, label %tg3__error_push.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iz = load ptr, ptr %i.es, align 8, !tbaa !163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.020.i.i, ptr readonly align 1 %i.iz, i64 %i.ff, i1 false)
  br label %tg3__error_push.exit.i

tg3__error_push.exit.i:                           ; preds = %bb.az, %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %.020.i.i, ptr %i.ja, align 8, !tbaa !165
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i64 %i.ff, ptr %i.jb, align 8, !tbaa !166
  br label %bb.du

bb.ba:                                            ; preds = %bb.aa
  br i1 %i.fn, label %bb.du, label %.thread.i

.thread.i:                                        ; preds = %bb.ba, %bb.ab
  %i.jc = load ptr, ptr %i.fe, align 8, !tbaa !167 ; 13 uses
  %i.jd = icmp ne ptr %i.jc, null                 ; 2 uses
  %i.je = icmp ugt i32 %i.fm, 4
  %or.cond.i100.i = and i1 %i.je, %i.jd
  br i1 %or.cond.i100.i, label %tg3_is_data_uri.exit.i, label %tg3_is_data_uri.exit.thread.i

tg3_is_data_uri.exit.i:                           ; preds = %.thread.i
  %i.jf = load i32, ptr %i.jc, align 1
  %i.jg = xor i32 %i.jf, 1635017060
  %i.jh = getelementptr i8, ptr %i.jc, i64 4
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i32
  %i.jk = xor i32 %i.jj, 58
  %i.jl = or i32 %i.jg, %i.jk
  %i.jm = icmp ne i32 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %.not152.i = icmp eq i32 %i.jn, 0
  br i1 %.not152.i, label %bb.bb, label %tg3_is_data_uri.exit.thread.i

bb.bb:                                            ; preds = %tg3_is_data_uri.exit.i
  %i.jo = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.jp = zext i32 %i.fm to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jp ; 2 uses
  %i.jr = icmp ugt i32 %i.fm, 5
  br i1 %i.jr, label %.lr.ph.i.i.preheader.i, label %tg3__decode_data_uri.exit.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.bb
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 5
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.i.i.preheader.i
  %.041.i.i.i = phi ptr [ %i.ju, %bb.bc ], [ %i.js, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.jt = load i8, ptr %.041.i.i.i, align 1, !tbaa !34
  %.not36.i.i.i = icmp eq i8 %i.jt, 59
  %i.ju = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 1 ; 5 uses
  br i1 %.not36.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.jv = icmp ult ptr %i.ju, %i.jq
  br i1 %i.jv, label %.lr.ph.i.i.i, label %tg3__decode_data_uri.exit.i, !llvm.loop !338

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.jw = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = icmp ult i64 %i.jy, 7
  br i1 %i.jz, label %tg3__decode_data_uri.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ka = load i32, ptr %i.ju, align 1
  %i.kb = xor i32 %i.ka, 1702060386
  %i.kc = getelementptr i8, ptr %i.ju, i64 3
  %i.kd = load i32, ptr %i.kc, align 1
  %i.ke = xor i32 %i.kd, 741619301
  %i.kf = or i32 %i.kb, %i.ke
  %i.kg = icmp ne i32 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %.not38.i.i102.i = icmp eq i32 %i.kh, 0
  br i1 %.not38.i.i102.i, label %bb.bf, label %tg3__decode_data_uri.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 8 ; 3 uses
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.jw, %i.kj                    ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %tg3__decode_data_uri.exit.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %bb.bf, %bb.bg
  %.03649.i.i.i = phi i64 [ %i.kq, %bb.bg ], [ %i.kk, %bb.bf ] ; 3 uses
  %i.km = getelementptr i8, ptr %i.ki, i64 %.03649.i.i.i
  %i.kn = getelementptr i8, ptr %i.km, i64 -1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !34
  %i.kp = icmp eq i8 %i.ko, 61
  br i1 %i.kp, label %bb.bg, label %.critedge.i.i.i

bb.bg:                                            ; preds = %.preheader48.i.i.i
  %i.kq = add i64 %.03649.i.i.i, -1               ; 2 uses
  %.not.i20.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not.i20.i.i, label %.critedge.i.i.i, label %.preheader48.i.i.i, !llvm.loop !339

.critedge.i.i.i:                                  ; preds = %bb.bg, %.preheader48.i.i.i
  %.036.lcssa.i.i.i = phi i64 [ 0, %bb.bg ], [ %.03649.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %i.kr = mul i64 %.036.lcssa.i.i.i, 3
  %i.ks = lshr i64 %i.kr, 2                       ; 2 uses
  %i.kt = icmp eq ptr %i.jo, null
  br i1 %i.kt, label %tg3__decode_data_uri.exit.i, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kv, 0
  %i.kw = add i64 %i.kv, -1
  %or.cond28.i.i.i.i = icmp ult i64 %i.kw, %i.ks
  br i1 %or.cond28.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = add nuw nsw i64 %i.ks, 8
  %i.ky = and i64 %i.kx, 9223372036854775800      ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !148 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not26.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !150 ; 2 uses
  %i.ld = add i64 %i.lc, %i.ky                    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !151
  %i.lg = icmp ugt i64 %i.ld, %i.lf
  br i1 %i.lg, label %bb.bk, label %tg3__arena_alloc.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !128
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.li, i64 range(i64 0, -7) %i.ky) ; 3 uses
  %i.lj = icmp ugt i64 %spec.select.i.i.i.i.i, %i.kv
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.lj, i1 false
  br i1 %or.cond.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 3 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !152
  %i.lm = add i64 %spec.select.i.i.i.i.i, 32      ; 3 uses
  %i.ln = add i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !129
  %i.lq = icmp ugt i64 %i.ln, %i.lp
  br i1 %i.lq, label %tg3__decode_data_uri.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !153
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !154
  %i.lv = call ptr %i.ls(i64 noundef %i.lm, ptr noundef %i.lu) #28, !inline_history !340 ; 8 uses
  %.not37.i.i.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not37.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %tg3__arena_alloc.exit.thread62.i.i.i

tg3__arena_alloc.exit.thread62.i.i.i:             ; preds = %bb.bm
  store ptr null, ptr %i.lv, align 8, !tbaa !155
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !156
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store i64 %spec.select.i.i.i.i.i, ptr %i.ly, align 8, !tbaa !151
  %i.lz = load i64, ptr %i.lk, align 8, !tbaa !152
  %i.ma = add i64 %i.lz, %i.lm
  store i64 %i.ma, ptr %i.lk, align 8, !tbaa !152
  %i.mb = load ptr, ptr %i.kz, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i.i.i.i = icmp eq ptr %i.mb, null
  %..i.i.i.i.i = select i1 %.not38.i.i.i.i.i, ptr %i.jo, ptr %i.mb
  store ptr %i.lv, ptr %..i.i.i.i.i, align 8, !tbaa !157
  store ptr %i.lv, ptr %i.kz, align 8, !tbaa !148
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store i64 %i.ky, ptr %i.mc, align 8, !tbaa !150
  br label %.preheader.i.i.i

tg3__arena_alloc.exit.i.i.i:                      ; preds = %bb.bj
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %i.lc
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !150
  %.not42.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not42.i.i.i, label %tg3__decode_data_uri.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %tg3__arena_alloc.exit.i.i.i, %tg3__arena_alloc.exit.thread62.i.i.i
  %i.me = phi ptr [ %i.lw, %tg3__arena_alloc.exit.thread62.i.i.i ], [ %i.md, %tg3__arena_alloc.exit.i.i.i ] ; 3 uses
  %.not54.i.i.i = icmp eq i64 %.036.lcssa.i.i.i, 0
  br i1 %.not54.i.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bu
  %.053.i.i.i = phi i32 [ %.2.i.i.i, %bb.bu ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.02952.i.i.i = phi i32 [ %.130.i.i.i, %bb.bu ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.03151.i.i.i = phi i64 [ %.233.i.i.i, %bb.bu ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.03450.i.i.i = phi i64 [ %i.mx, %bb.bu ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.03450.i.i.i
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !34  ; 5 uses
  %i.mh = zext i8 %i.mg to i32                    ; 3 uses
  %i.mi = add i8 %i.mg, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.mi, 26
  br i1 %or.cond.i.i.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i19.i.i
  %i.mj = add nsw i32 %i.mh, -65
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i19.i.i
  %i.mk = add i8 %i.mg, -97
  %or.cond5.i.i.i.i = icmp ult i8 %i.mk, 26
  br i1 %or.cond5.i.i.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ml = add nsw i32 %i.mh, -71
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.mm = add i8 %i.mg, -48
  %or.cond8.i.i.i.i = icmp ult i8 %i.mm, 10
  br i1 %or.cond8.i.i.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mn = add nuw nsw i32 %i.mh, 4
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bs:                                            ; preds = %bb.bq
  switch i8 %i.mg, label %bb.bu [
    i8 43, label %tg3__b64_decode_char.exit.thread.i.i.i
    i8 47, label %tg3__b64_decode_char.exit.thread.fold.split.i.i.i
  ]

tg3__b64_decode_char.exit.thread.fold.split.i.i.i: ; preds = %bb.bs
  br label %tg3__b64_decode_char.exit.thread.i.i.i

tg3__b64_decode_char.exit.thread.i.i.i:           ; preds = %tg3__b64_decode_char.exit.thread.fold.split.i.i.i, %bb.bs, %bb.br, %bb.bp, %bb.bn
  %.0.i4347.i.i.i = phi i32 [ 62, %bb.bs ], [ %i.mj, %bb.bn ], [ %i.mn, %bb.br ], [ %i.ml, %bb.bp ], [ 63, %tg3__b64_decode_char.exit.thread.fold.split.i.i.i ]
  %i.mo = shl i32 %.02952.i.i.i, 6
  %i.mp = or i32 %.0.i4347.i.i.i, %i.mo           ; 3 uses
  %i.mq = add nuw nsw i32 %.053.i.i.i, 6
  %i.mr = icmp sgt i32 %.053.i.i.i, 1
  br i1 %i.mr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %tg3__b64_decode_char.exit.thread.i.i.i
  %i.ms = add nsw i32 %.053.i.i.i, -2             ; 2 uses
  %i.mt = lshr i32 %i.mp, %i.ms
  %i.mu = trunc i32 %i.mt to i8
  %i.mv = add i64 %.03151.i.i.i, 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.me, i64 %.03151.i.i.i
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !34
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %tg3__b64_decode_char.exit.thread.i.i.i, %bb.bs
  %.233.i.i.i = phi i64 [ %.03151.i.i.i, %bb.bs ], [ %i.mv, %bb.bt ], [ %.03151.i.i.i, %tg3__b64_decode_char.exit.thread.i.i.i ] ; 2 uses
  %.130.i.i.i = phi i32 [ %.02952.i.i.i, %bb.bs ], [ %i.mp, %bb.bt ], [ %i.mp, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %.2.i.i.i = phi i32 [ %.053.i.i.i, %bb.bs ], [ %i.ms, %bb.bt ], [ %i.mq, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %i.mx = add nuw i64 %.03450.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mx, %.036.lcssa.i.i.i
  br i1 %exitcond.not.i.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i19.i.i, !llvm.loop !341

tg3__decode_data_uri.exit.i:                      ; preds = %bb.bc, %bb.bu, %.preheader.i.i.i, %tg3__arena_alloc.exit.i.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bh, %.critedge.i.i.i, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %storemerge.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.bh ], [ 0, %bb.bd ], [ %.233.i.i.i, %bb.bu ], [ 0, %bb.be ], [ 0, %bb.bb ], [ 0, %tg3__arena_alloc.exit.i.i.i ], [ 0, %bb.bf ], [ 0, %bb.bm ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %.critedge.i.i.i ], [ 0, %bb.bc ]
  %.015.i.i = phi ptr [ %i.me, %.preheader.i.i.i ], [ null, %bb.bh ], [ null, %bb.bd ], [ %i.me, %bb.bu ], [ null, %bb.be ], [ null, %bb.bb ], [ null, %tg3__arena_alloc.exit.i.i.i ], [ null, %bb.bf ], [ null, %bb.bm ], [ null, %bb.bk ], [ null, %bb.bl ], [ null, %.critedge.i.i.i ], [ null, %bb.bc ] ; 2 uses
  %i.my = icmp ne ptr %.015.i.i, null
  %i.mz = icmp eq i64 %i.ff, 0
  %or.cond8.not.i = select i1 %i.my, i1 true, i1 %i.mz
  br i1 %or.cond8.not.i, label %tg3__error_push.exit111.i, label %bb.bv

bb.bv:                                            ; preds = %tg3__decode_data_uri.exit.i
  %i.na = load ptr, ptr %6, align 8, !tbaa !139   ; 6 uses
  %.not.i104.i = icmp eq ptr %i.na, null
  br i1 %.not.i104.i, label %tg3__parse_buffer.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 3 uses
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !62 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 12 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !116 ; 3 uses
  %.not27.i105.i = icmp ult i32 %i.nc, %i.ne
  %.pre.i106.i = load ptr, ptr %i.na, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i105.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not28.i107.i = icmp eq i32 %i.ne, 0
  %i.nf = shl i32 %i.ne, 1
  %spec.select.i108.i = select i1 %.not28.i107.i, i32 16, i32 %i.nf ; 2 uses
  %i.ng = zext i32 %spec.select.i108.i to i64
  %i.nh = shl nuw nsw i64 %i.ng, 5
  %i.ni = call ptr @realloc(ptr noundef %.pre.i106.i, i64 noundef %i.nh) #29 ; 3 uses
  %.not29.i109.i = icmp eq ptr %i.ni, null
  br i1 %.not29.i109.i, label %tg3__parse_buffer.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.ni, ptr %i.na, align 8, !tbaa !63
  store i32 %spec.select.i108.i, ptr %i.nd, align 4, !tbaa !116
  %.pre30.i110.i = load i32, ptr %i.nb, align 8, !tbaa !62
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %i.nj = phi i32 [ %.pre30.i110.i, %bb.by ], [ %i.nc, %bb.bw ] ; 2 uses
  %i.nk = phi ptr [ %i.ni, %bb.by ], [ %.pre.i106.i, %bb.bw ]
  %i.nl = add i32 %i.nj, 1
  store i32 %i.nl, ptr %i.nb, align 8, !tbaa !62
  %i.nm = zext i32 %i.nj to i64
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %i.nk, i64 %i.nm ; 5 uses
  store i32 2, ptr %i.nn, align 8, !tbaa !118
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store i32 51, ptr %i.no, align 4, !tbaa !119
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr @.str.72, ptr %i.np, align 8, !tbaa !120
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store ptr null, ptr %i.nq, align 8, !tbaa !121
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  store i64 -1, ptr %i.nr, align 8, !tbaa !122
  %i.ns = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i32 1, ptr %i.ns, align 8, !tbaa !61
  br label %tg3__parse_buffer.exit

tg3__error_push.exit111.i:                        ; preds = %tg3__decode_data_uri.exit.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %.015.i.i, ptr %i.nt, align 8, !tbaa !165
  %i.nu = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i64 %storemerge.i.i, ptr %i.nu, align 8, !tbaa !166
  br label %bb.du

tg3_is_data_uri.exit.thread.i:                    ; preds = %tg3_is_data_uri.exit.i, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store ptr null, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i64 0, ptr %i.j, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.nv = load ptr, ptr %i.em, align 8, !tbaa !421 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.nv, null
  br i1 %.not.i112.i, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  %i.nw = load ptr, ptr %6, align 8, !tbaa !139   ; 6 uses
  %.not.i.i119.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i119.i, label %tg3__load_external_file.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !62 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 12 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !116 ; 3 uses
  %.not27.i.i.i = icmp ult i32 %i.ny, %i.oa
  %.pre.i.i.i = load ptr, ptr %i.nw, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i.i.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not28.i.i.i = icmp eq i32 %i.oa, 0
  %i.ob = shl i32 %i.oa, 1
  %spec.select.i.i120.i = select i1 %.not28.i.i.i, i32 16, i32 %i.ob ; 2 uses
  %i.oc = zext i32 %spec.select.i.i120.i to i64
  %i.od = shl nuw nsw i64 %i.oc, 5
  %i.oe = call ptr @realloc(ptr noundef %.pre.i.i.i, i64 noundef %i.od) #29 ; 3 uses
  %.not29.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not29.i.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.oe, ptr %i.nw, align 8, !tbaa !63
  store i32 %spec.select.i.i120.i, ptr %i.nz, align 4, !tbaa !116
  %.pre30.i.i.i = load i32, ptr %i.nx, align 8, !tbaa !62
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.of = phi i32 [ %.pre30.i.i.i, %bb.cd ], [ %i.ny, %bb.cb ] ; 2 uses
  %i.og = phi ptr [ %i.oe, %bb.cd ], [ %.pre.i.i.i, %bb.cb ]
  %i.oh = add i32 %i.of, 1
  store i32 %i.oh, ptr %i.nx, align 8, !tbaa !62
  %i.oi = zext i32 %i.of to i64
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %i.oi ; 5 uses
  store i32 2, ptr %i.oj, align 8, !tbaa !118
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store i32 61, ptr %i.ok, align 4, !tbaa !119
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store ptr @.str.77, ptr %i.ol, align 8, !tbaa !120
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store ptr null, ptr %i.om, align 8, !tbaa !121
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  store i64 -1, ptr %i.on, align 8, !tbaa !122
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i32 1, ptr %i.oo, align 8, !tbaa !61
  br label %tg3__load_external_file.exit.thread.i

bb.cf:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  br i1 %i.jd, label %bb.cg, label %.loopexit.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.op = zext i32 %i.fm to i64                   ; 4 uses
  %i.oq = call ptr @memchr(ptr noundef nonnull readonly dereferenceable(1) %i.jc, i32 noundef 0, i64 noundef range(i64 1, 4294967296) %i.op) #31
  %.not.i65.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i65.i.i, label %bb.ch, label %.loopexit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.or = load i8, ptr %i.jc, align 1, !tbaa !34  ; 3 uses
  switch i8 %i.or, label %bb.ci [
    i8 47, label %.loopexit.i.i
    i8 92, label %.loopexit.i.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %.not153.i = icmp eq i32 %i.fm, 1
  br i1 %.not153.i, label %tg3__uri_is_safe.exit.thread82.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.os = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !34  ; 2 uses
  %i.ou = icmp eq i8 %i.ot, 58
  br i1 %i.ou, label %bb.ck, label %.lr.ph.preheader.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.ov = and i8 %i.or, -33
  %i.ow = add i8 %i.ov, -65
  %or.cond48.i.i.i = icmp ult i8 %i.ow, 26
  br i1 %or.cond48.i.i.i, label %.loopexit.i.i, label %.lr.ph.preheader.i.thread.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cj
  %i.ox = add i32 %i.fm, -1                       ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.ox to i64  ; 2 uses
  %i.oy = icmp eq i8 %i.or, 46
  %i.oz = icmp eq i8 %i.ot, 46
  %or.cond.i116.i = and i1 %i.oy, %i.oz
  br i1 %or.cond.i116.i, label %bb.cl, label %.thread.i.i

.lr.ph.preheader.i.thread.i.i:                    ; preds = %bb.ck
  %i.pa = add i32 %i.fm, -1                       ; 2 uses
  %wide.trip.count.i75.i.i = zext i32 %i.pa to i64
  br label %.thread.i.i

bb.cl:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.pb = icmp eq i32 %i.fm, 2
  br i1 %i.pb, label %.loopexit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pc = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !34
  switch i8 %i.pd, label %.lr.ph.peel.next.i.i.i [
    i8 47, label %.loopexit.i.i
    i8 92, label %.loopexit.i.i
  ]

.thread.i.i:                                      ; preds = %.lr.ph.preheader.i.thread.i.i, %.lr.ph.preheader.i.i.i
  %wide.trip.count.i77.i.i = phi i64 [ %wide.trip.count.i75.i.i, %.lr.ph.preheader.i.thread.i.i ], [ %wide.trip.count.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.pe = phi i32 [ %i.pa, %.lr.ph.preheader.i.thread.i.i ], [ %i.ox, %.lr.ph.preheader.i.i.i ]
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.pe, 1
  br i1 %exitcond.peel.not.i.i.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %.thread.i.i, %bb.cm
  %wide.trip.count.i76.i.i = phi i64 [ %wide.trip.count.i77.i.i, %.thread.i.i ], [ %wide.trip.count.i.i.i, %bb.cm ]
  br label %.lr.ph.i.i117.i

.lr.ph.i.i117.i:                                  ; preds = %bb.cr, %.lr.ph.peel.next.i.i.i
  %indvars.iv53.i.i.i = phi i64 [ 1, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next54.i.i.i, %bb.cr ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 2, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.cr ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv53.i.i.i ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !34
  %i.ph = icmp eq i8 %i.pg, 46
  br i1 %i.ph, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %.lr.ph.i.i117.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv.i.i.i
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !34
  %i.pk = icmp eq i8 %i.pj, 46
  br i1 %i.pk, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.pl = getelementptr i8, ptr %i.pf, i64 -1
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !34  ; 3 uses
  %i.pn = icmp eq i8 %i.pm, 47
  %i.po = icmp eq i8 %i.pm, 92
  %spec.select.i66.i.i = or i1 %i.pn, %i.po
  %i.pp = add nuw nsw i64 %indvars.iv53.i.i.i, 2  ; 2 uses
  %i.pq = icmp eq i64 %i.pp, %i.op
  br i1 %i.pq, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pr = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.pp
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !34  ; 2 uses
  %i.pt = icmp eq i8 %i.ps, 47
  br i1 %i.pt, label %bb.cq, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.cp
  %i.pu = icmp eq i8 %i.ps, 92
  %i.pv = and i1 %spec.select.i66.i.i, %i.pu
  br i1 %i.pv, label %.loopexit.i.i, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  switch i8 %i.pm, label %bb.cr [
    i8 92, label %.loopexit.i.i
    i8 47, label %.loopexit.i.i
  ]

bb.cr:                                            ; preds = %bb.cq, %.split.i.i.i, %bb.cn, %.lr.ph.i.i117.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next54.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i118.i = icmp eq i64 %indvars.iv.next54.i.i.i, %wide.trip.count.i76.i.i
  br i1 %exitcond.not.i.i118.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.i.i117.i, !llvm.loop !342

.loopexit.i.i:                                    ; preds = %bb.cq, %bb.cq, %.split.i.i.i, %bb.cm, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.ch, %bb.cg, %bb.cf
  %i.pw = load ptr, ptr %6, align 8, !tbaa !139   ; 6 uses
  %.not.i67.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i67.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %.loopexit.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 3 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !62 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 12 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !116 ; 3 uses
  %.not27.i68.i.i = icmp ult i32 %i.py, %i.qa
  %.pre.i69.i.i = load ptr, ptr %i.pw, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i68.i.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not28.i70.i.i = icmp eq i32 %i.qa, 0
  %i.qb = shl i32 %i.qa, 1
  %spec.select.i71.i.i = select i1 %.not28.i70.i.i, i32 16, i32 %i.qb ; 2 uses
  %i.qc = zext i32 %spec.select.i71.i.i to i64
  %i.qd = shl nuw nsw i64 %i.qc, 5
  %i.qe = call ptr @realloc(ptr noundef %.pre.i69.i.i, i64 noundef %i.qd) #29 ; 3 uses
  %.not29.i72.i.i = icmp eq ptr %i.qe, null
  br i1 %.not29.i72.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.qe, ptr %i.pw, align 8, !tbaa !63
  store i32 %spec.select.i71.i.i, ptr %i.pz, align 4, !tbaa !116
  %.pre30.i73.i.i = load i32, ptr %i.px, align 8, !tbaa !62
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %i.qf = phi i32 [ %.pre30.i73.i.i, %bb.cu ], [ %i.py, %bb.cs ] ; 2 uses
  %i.qg = phi ptr [ %i.qe, %bb.cu ], [ %.pre.i69.i.i, %bb.cs ]
  %i.qh = add i32 %i.qf, 1
  store i32 %i.qh, ptr %i.px, align 8, !tbaa !62
  %i.qi = zext i32 %i.qf to i64
  %i.qj = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.qi ; 5 uses
  store i32 2, ptr %i.qj, align 8, !tbaa !118
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  store i32 33, ptr %i.qk, align 4, !tbaa !119
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr @.str.78, ptr %i.ql, align 8, !tbaa !120
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store ptr null, ptr %i.qm, align 8, !tbaa !121
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i64 -1, ptr %i.qn, align 8, !tbaa !122
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store i32 1, ptr %i.qo, align 8, !tbaa !61
  br label %tg3__load_external_file.exit.thread.i

tg3__uri_is_safe.exit.i.i:                        ; preds = %bb.cr, %.thread.i.i
  %i.qp = icmp ugt i32 %i.fm, 4095
  br i1 %i.qp, label %tg3__load_external_file.exit.thread.i, label %tg3__uri_is_safe.exit.thread82.i.i

tg3__uri_is_safe.exit.thread82.i.i:               ; preds = %tg3__uri_is_safe.exit.i.i, %bb.ci
  %i.qq = load i32, ptr %i.en, align 8, !tbaa !143 ; 6 uses
  %.not57.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not57.i.i, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %tg3__uri_is_safe.exit.thread82.i.i
  %i.qr = zext i32 %i.qq to i64                   ; 3 uses
  %i.qs = sub nuw nsw i64 4095, %i.op
  %.not58.i.i = icmp samesign ugt i64 %i.qs, %i.qr
  br i1 %.not58.i.i, label %bb.cx, label %tg3__load_external_file.exit.thread.i

bb.cx:                                            ; preds = %bb.cw
  %i.qt = load ptr, ptr %i.eo, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %i.qt, i64 %i.qr, i1 false)
  %i.qu = add i32 %i.qq, -1
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !34
  switch i8 %i.qx, label %bb.cy [
    i8 47, label %bb.cz
    i8 92, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.qy = add nuw i32 %i.qq, 1
  %i.qz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.qr
  store i8 47, ptr %i.qz, align 1, !tbaa !34
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cx, %tg3__uri_is_safe.exit.thread82.i.i
  %.0.i114.i = phi i32 [ %i.qy, %bb.cy ], [ %i.qq, %bb.cx ], [ %i.qq, %bb.cx ], [ 0, %tg3__uri_is_safe.exit.thread82.i.i ] ; 2 uses
  %i.ra = add i32 %.0.i114.i, %i.fm               ; 3 uses
  %i.rb = icmp ugt i32 %i.ra, 4095
  br i1 %i.rb, label %tg3__load_external_file.exit.thread.i, label %bb.da
end_hunk_0
