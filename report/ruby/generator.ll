inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@generate_json_fixnum:bb.a
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1
  store i16 %i.gb, ptr %i.fy, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.gd = icmp samesign ult i64 %.0.i, 429496729600000000
  br i1 %i.gd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ge = mul nuw nsw i64 %i.dn, 1441151881       ; 2 uses
  %i.gf = lshr i64 %i.ge, 57
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr @.str.78, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 1
  store i16 %i.gh, ptr %i.p, align 1
  %i.gi = icmp samesign ult i64 %.0.i, 100000000000000000
  %.neg.i.i = sext i1 %i.gi to i64
  %i.gj = getelementptr inbounds i8, ptr %i.p, i64 %.neg.i.i ; 5 uses
  %i.gk = and i64 %i.ge, 144115188075855871
  %i.gl = mul nuw i64 %i.gk, 100                  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = lshr i64 %i.gl, 57
  %i.go = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 1
  store i16 %i.gp, ptr %i.gm, align 1
  %i.gq = and i64 %i.gl, 144115188075855868
  %i.gr = mul nuw i64 %i.gq, 100                  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gt = lshr i64 %i.gr, 57
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 1
  store i16 %i.gv, ptr %i.gs, align 1
  %i.gw = and i64 %i.gr, 144115188075855856
  %i.gx = mul nuw i64 %i.gw, 100                  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 6
  %i.gz = lshr i64 %i.gx, 57
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 1
  store i16 %i.hb, ptr %i.gy, align 1
  %i.hc = and i64 %i.gx, 144115188075855808
  %i.hd = mul nuw i64 %i.hc, 100
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hf = lshr i64 %i.hd, 57
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 1
  store i16 %i.hh, ptr %i.he, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gj, i64 10
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.hj = urem i64 %i.dn, 100000000
  %i.hk = udiv i64 %.0.i, 10000000000000000       ; 2 uses
  %i.hl = icmp samesign ult i64 %.0.i, 1000000000000000000
  br i1 %i.hl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hk
  %i.hn = load i16, ptr %i.hm, align 1
  store i16 %i.hn, ptr %i.p, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ho = uitofp nneg i64 %i.hk to double
  %i.hp = fmul nnan double %i.ho, f0x41047AE947AE147B
  %i.hq = fptoui double %i.hp to i64              ; 2 uses
  %i.hr = lshr i64 %i.hq, 24
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr @.str.78, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 1
  store i16 %i.ht, ptr %i.p, align 1
  %i.hu = and i64 %i.hq, 16777215
  %i.hv = mul nuw nsw i64 %i.hu, 100
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hx = lshr i64 %i.hv, 24
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 1
  store i16 %i.hz, ptr %i.hw, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i = phi i64 [ 3, %bb.z ], [ 2, %bb.y ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i ; 5 uses
  %i.ib = mul nuw nsw i64 %i.hj, 281474977
  %i.ic = lshr i64 %i.ib, 16
  %i.id = add nuw nsw i64 %i.ic, 1                ; 2 uses
  %i.ie = lshr i64 %i.id, 32
  %i.if = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 1
  store i16 %i.ig, ptr %i.ia, align 1
  %i.ih = and i64 %i.id, 4294967295
  %i.ii = mul nuw nsw i64 %i.ih, 100              ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ik = lshr i64 %i.ii, 32
  %i.il = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 1
  store i16 %i.im, ptr %i.ij, align 1
  %i.in = and i64 %i.ii, 4294967292
  %i.io = mul nuw nsw i64 %i.in, 100              ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.iq = lshr i64 %i.io, 32
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 1
  store i16 %i.is, ptr %i.ip, align 1
  %i.it = and i64 %i.io, 4294967280
  %i.iu = mul nuw nsw i64 %i.it, 100
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 6
  %i.iw = lshr i64 %i.iu, 32
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 1
  store i16 %i.iy, ptr %i.iv, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.u, %bb.s, %bb.r, %bb.o
  %.1.i.i = phi ptr [ %i.dr, %bb.o ], [ %i.ei, %bb.r ], [ %i.fb, %bb.s ], [ %i.gc, %bb.u ], [ %i.hi, %bb.w ], [ %i.iz, %bb.aa ] ; 5 uses
  %i.ja = mul nuw nsw i64 %i.dm, 281474977
  %i.jb = lshr i64 %i.ja, 16
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %i.jd = lshr i64 %i.jc, 32
  %i.je = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 1
  store i16 %i.jf, ptr %.1.i.i, align 1
  %i.jg = and i64 %i.jc, 4294967295
  %i.jh = mul nuw nsw i64 %i.jg, 100              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  %i.jj = lshr i64 %i.jh, 32
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 1
  store i16 %i.jl, ptr %i.ji, align 1
  %i.jm = and i64 %i.jh, 4294967292
  %i.jn = mul nuw nsw i64 %i.jm, 100              ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  %i.jp = lshr i64 %i.jn, 32
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 1
  store i16 %i.jr, ptr %i.jo, align 1
  %i.js = and i64 %i.jn, 4294967280
  %i.jt = mul nuw nsw i64 %i.js, 100
  %i.ju = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 6
  %i.jv = lshr i64 %i.jt, 32
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 1
  store i16 %i.jx, ptr %i.ju, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %fbuffer_append_long.exit

fbuffer_append_long.exit:                         ; preds = %bb.e, %bb.h, %bb.i, %bb.l, %bb.m, %bb.ab
  %.0.i.i = phi ptr [ %i.u, %bb.e ], [ %i.al, %bb.h ], [ %i.be, %bb.i ], [ %i.cg, %bb.l ], [ %i.dl, %bb.m ], [ %i.jy, %bb.ab ]
  %i.jz = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ka = ptrtoint ptr %.0.i.i to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %i.d, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_json_float(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 21 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = tail call double @rb_float_value(i64 noundef %2) #30 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond = fcmp ueq double %i.g, +inf
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 77
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51, !range !48, !noundef !49
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !50, !range !48, !noundef !49
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %2, ptr %i.c, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !10
  %i.q = call i64 @rb_proc_call_with_block(i64 noundef %i.o, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 4) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %.not29 = icmp eq i64 %i.q, %2
  br i1 %.not29, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67   ; 3 uses
  %i.u = add nsw i64 %i.t, 1                      ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %3 = icmp sgt i64 %i.u, %i.w
  %i.x = icmp ne i64 %i.w, 0
  %spec.select.i = and i1 %3, %i.x
  br i1 %spec.select.i, label %bb.g, label %increase_depth.exit, !prof !71

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr @eNestingError, align 8, !tbaa !10
  store i64 %i.t, ptr %i.s, align 8, !tbaa !67
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.80, i64 noundef %i.t) #27
  unreachable

increase_depth.exit:                              ; preds = %bb.f
  call void @generate_json(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.q)
  %i.z = load i64, ptr %i.s, align 8, !tbaa !67
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !67
  br label %bb.bl

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.ac = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.ab, i32 noundef 0) #24
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %2, ptr noundef nonnull @.str.74, i64 noundef %i.ac) #29
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ad = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.ae = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.ad, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !10
  %i.af = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.b) #24
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !10
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40 ; 5 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %fbuffer_append_str.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.j, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.j:                                             ; preds = %bb.i
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.aj)
  %.pre.i.i = load i64, ptr %i.am, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.j, %bb.i
  %i.aq = phi i64 [ %i.an, %bb.i ], [ %.pre.i.i, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr readonly align 1 %i.af, i64 %i.aj, i1 false)
  %i.au = load i64, ptr %i.am, align 8, !tbaa !81
  %i.av = add i64 %i.au, %i.aj
  store i64 %i.av, ptr %i.am, align 8, !tbaa !81
  br label %fbuffer_append_str.exit

fbuffer_append_str.exit:                          ; preds = %bb.h, %fbuffer_append_reserved.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bl

bb.k:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = icmp ult i64 %i.ba, 32
  br i1 %i.bb, label %bb.l, label %fbuffer_inc_capa.exit, !prof !71

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 32)
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !81
  br label %fbuffer_inc_capa.exit

fbuffer_inc_capa.exit:                            ; preds = %bb.k, %bb.l
  %i.bc = phi i64 [ %i.az, %bb.k ], [ %.pre, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bg = bitcast double %i.d to i64              ; 4 uses
  %.not.i30 = icmp slt i64 %i.bg, 0               ; 2 uses
  br i1 %.not.i30, label %bb.m, label %bb.n

bb.m:                                             ; preds = %fbuffer_inc_capa.exit
  store i8 45, ptr %i.bf, align 1, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %fbuffer_inc_capa.exit
  %.016.i = phi i32 [ 1, %bb.m ], [ 0, %fbuffer_inc_capa.exit ] ; 2 uses
  %i.bh = zext nneg i32 %.016.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh ; 25 uses
  %i.bj = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 48, ptr %i.bi, align 1, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 46, ptr %i.bk, align 1, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 48, ptr %i.bl, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = and i64 %i.bg, 9218868437227405312
  %i.bn = icmp eq i64 %i.bm, 9218868437227405312
  %i.bo = and i64 %i.bg, 4503599627370495         ; 4 uses
  br i1 %i.bn, label %bb.q, label %filter_special.exit.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i31 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  br i1 %.not.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 110, ptr %i.bi, align 1, !tbaa !79
  store i8 97, ptr %i.bp, align 1, !tbaa !79
  store i8 110, ptr %i.bq, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

bb.s:                                             ; preds = %bb.q
  store i8 105, ptr %i.bi, align 1, !tbaa !79
  store i8 110, ptr %i.bp, align 1, !tbaa !79
  store i8 102, ptr %i.bq, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

filter_special.exit.i:                            ; preds = %bb.p
  %i.br = lshr i64 %i.bg, 52
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 2047                     ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bt, 0              ; 4 uses
  %i.bu = or disjoint i64 %i.bo, 4503599627370496 ; 2 uses
  %i.bv = add nsw i32 %i.bt, -1075
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 %i.bo, i64 %i.bu ; 3 uses
  %i.bw = shl nuw nsw i64 %.sroa.0.0.i.i.i, 1
  %i.bx = or disjoint i64 %i.bw, 1                ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %get_normalized_boundaries.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %filter_special.exit.i, %.lr.ph.i.i.i
  %storemerge.in28.in.i.i.i = phi i32 [ %storemerge.in28.i.i.i, %.lr.ph.i.i.i ], [ -1074, %filter_special.exit.i ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i.i.i ], [ %i.bx, %filter_special.exit.i ] ; 2 uses
  %storemerge.in28.i.i.i = add nsw i32 %storemerge.in28.in.i.i.i, -1 ; 2 uses
  %i.bz = shl i64 %i.by, 1                        ; 2 uses
  %i.ca = and i64 %i.by, 4503599627370496
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i.i, label %get_normalized_boundaries.exit.i.i

get_normalized_boundaries.exit.i.i:               ; preds = %.lr.ph.i.i.i, %filter_special.exit.i
  %storemerge.in.lcssa.i.i.i = phi i32 [ %i.bv, %filter_special.exit.i ], [ %storemerge.in28.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.lcssa.i.i.i = phi i64 [ %i.bx, %filter_special.exit.i ], [ %i.bz, %.lr.ph.i.i.i ]
  %i.cc = shl i64 %.lcssa.i.i.i, 10               ; 2 uses
  %i.cd = add nsw i32 %storemerge.in.lcssa.i.i.i, -11
  %i.ce = icmp eq i64 %.sroa.0.0.i.i.i, 4503599627370496 ; 2 uses
  %.neg76.i.i = select i1 %i.ce, i32 -2, i32 -1
  %i.cf = select i1 %i.ce, i64 2, i64 1
  %i.cg = shl nuw nsw i64 %.sroa.0.0.i.i.i, %i.cf
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = add nsw i32 %i.bt, -1064
  %.neg62.i.i = select i1 %.not.i.i.i, i32 -1063, i32 %i.ci
  %reass.sub.i.i = add nsw i32 %.neg76.i.i, %.neg62.i.i
  %i.cj = sub i32 %reass.sub.i.i, %storemerge.in.lcssa.i.i.i
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl i64 %i.ch, %i.ck                    ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.i26.i.i, label %normalize.exit.i.i

.lr.ph.i26.i.i:                                   ; preds = %get_normalized_boundaries.exit.i.i, %.lr.ph.i26.i.i
  %i.cm = phi i64 [ %i.cn, %.lr.ph.i26.i.i ], [ %i.bo, %get_normalized_boundaries.exit.i.i ] ; 2 uses
  %i.cn = shl i64 %i.cm, 1                        ; 2 uses
  %i.co = and i64 %i.cm, 2251799813685248
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i26.i.i, label %normalize.exit.i.i

normalize.exit.i.i:                               ; preds = %.lr.ph.i26.i.i, %get_normalized_boundaries.exit.i.i
  %.lcssa.i25.i.i = phi i64 [ %i.bu, %get_normalized_boundaries.exit.i.i ], [ %i.cn, %.lr.ph.i26.i.i ]
  %i.cq = sub nsw i32 -76, %storemerge.in.lcssa.i.i.i
  %i.cr = sitofp i32 %i.cq to double
  %i.cs = fmul nnan double %i.cr, f0x3FD34413509F79FE
  %i.ct = fptosi double %i.cs to i32
  %i.cu = add nsw i32 %i.ct, 348
  %i.cv = sdiv i32 %i.cu, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %normalize.exit.i.i
  %.011.i.i.i = phi i32 [ %i.cv, %normalize.exit.i.i ], [ %i.dd, %bb.v ] ; 3 uses
  %i.cw = sext i32 %.011.i.i.i to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr @powers_ten, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !89 ; 2 uses
  %i.da = add nsw i32 %i.cd, %i.cz                ; 2 uses
  %i.db = icmp slt i32 %i.da, -124
  br i1 %i.db, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp sgt i32 %i.da, -96
  br i1 %i.dc, label %bb.v, label %find_cachedpow10.exit.i.i

end_hunk_0
begin_hunk_1_@generate_json_float:bb.a
  store i8 46, ptr %i.mr, align 1, !tbaa !79
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.mt = zext nneg i32 %i.mq to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ms, i8 48, i64 %i.mt, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.mw = sext i32 %.4.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mv, ptr nonnull readonly align 16 %i.a, i64 %i.mw, i1 false)
  %i.mx = sub nsw i32 2, %.2.i
  br label %fpconv_dtoa.exit

bb.bd:                                            ; preds = %bb.bb
  %i.my = sub nsw i32 0, %.2.i
  %i.mz = zext nneg i32 %i.lz to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull readonly align 16 %i.a, i64 %i.mz, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mz ; 2 uses
  store i8 46, ptr %i.na, align 1, !tbaa !79
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mz
  %i.nd = zext nneg i32 %i.my to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull readonly align 1 %i.nc, i64 %i.nd, i1 false)
  %i.ne = add nsw i32 %.4.i.i.i, 1
  br label %fpconv_dtoa.exit

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.nf = select i1 %.not.i30, i32 17, i32 18
  %i.ng = tail call i32 @llvm.smin.i32(i32 %.4.i.i.i, i32 %i.nf) ; 3 uses
  %i.nh = load i8, ptr %i.a, align 16, !tbaa !79
  store i8 %i.nh, ptr %i.bi, align 1, !tbaa !79
  %i.ni = icmp sgt i32 %.4.i.i.i, 1
  br i1 %i.ni, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 46, ptr %i.nj, align 1, !tbaa !79
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.nm = add nsw i32 %i.ng, -1
  %i.nn = zext nneg i32 %i.nm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nk, ptr nonnull readonly align 1 %i.nl, i64 %i.nn, i1 false)
  %i.no = add nuw nsw i32 %i.ng, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0101.i.i = phi i32 [ %i.no, %bb.bf ], [ 1, %bb.be ] ; 5 uses
  %i.np = zext nneg i32 %.0101.i.i to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.np
  store i8 101, ptr %i.nq, align 1, !tbaa !79
  %i.nr = add nsw i32 %i.ng, %.2.i
  %i.ns = icmp slt i32 %i.nr, 1
  %i.nt = select i1 %i.ns, i8 45, i8 43
  %i.nu = add nuw nsw i32 %.0101.i.i, 2           ; 3 uses
  %i.nv = sext i32 %.0101.i.i to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store i8 %i.nt, ptr %i.nx, align 1, !tbaa !79
  %i.ny = icmp slt i32 %i.md, 100
  br i1 %i.ny, label %bb.bh, label %.thread.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.nz = icmp sgt i32 %i.md, 9
  br i1 %i.nz, label %bb.bi, label %bb.bk

.thread.i.i:                                      ; preds = %bb.bg
  %i.oa = udiv i32 %i.md, 100                     ; 2 uses
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = add i8 %i.ob, 48
  %i.od = add nuw nsw i32 %.0101.i.i, 3           ; 2 uses
  %i.oe = zext nneg i32 %i.nu to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.oe
  store i8 %i.oc, ptr %i.of, align 1, !tbaa !79
  %.neg.i20.i = mul nsw i32 %i.oa, -100
  %i.og = add nsw i32 %.neg.i20.i, %i.md          ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 9
  br i1 %i.oh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread.i.i, %bb.bh
  %.1102119.i.i = phi i32 [ %i.od, %.thread.i.i ], [ %i.nu, %bb.bh ] ; 2 uses
  %.0103117.i.i = phi i32 [ %i.og, %.thread.i.i ], [ %i.md, %bb.bh ] ; 2 uses
  %i.oi = udiv i32 %.0103117.i.i, 10              ; 2 uses
  %i.oj = trunc i32 %i.oi to i8
  %i.ok = add i8 %i.oj, 48
  %i.ol = add nuw nsw i32 %.1102119.i.i, 1
  %i.om = zext nneg i32 %.1102119.i.i to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.om
  store i8 %i.ok, ptr %i.on, align 1, !tbaa !79
  %.neg114.i.i = mul nsw i32 %i.oi, -10
  %i.oo = add nsw i32 %.neg114.i.i, %.0103117.i.i
  br label %bb.bk

bb.bj:                                            ; preds = %.thread.i.i
  %i.op = add nuw nsw i32 %.0101.i.i, 4
  %i.oq = zext nneg i32 %i.od to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.oq
  store i8 48, ptr %i.or, align 1, !tbaa !79
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1104.i.i = phi i32 [ %i.oo, %bb.bi ], [ %i.og, %bb.bj ], [ %i.md, %bb.bh ]
  %.2.i.i = phi i32 [ %i.ol, %bb.bi ], [ %i.op, %bb.bj ], [ %i.nu, %bb.bh ] ; 2 uses
  %i.os = srem i32 %.1104.i.i, 10
  %i.ot = trunc nsw i32 %i.os to i8
  %i.ou = add nsw i8 %i.ot, 48
  %i.ov = add nuw nsw i32 %.2.i.i, 1
  %i.ow = zext nneg i32 %.2.i.i to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ow
  store i8 %i.ou, ptr %i.ox, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

fpconv_dtoa.exit:                                 ; preds = %bb.o, %bb.r, %bb.s, %bb.ay, %bb.bc, %bb.bd, %bb.bk
  %.pn.i = phi i32 [ %i.ne, %bb.bd ], [ %i.mm, %bb.ay ], [ %i.ov, %bb.bk ], [ %i.mx, %bb.bc ], [ 3, %bb.o ], [ 3, %bb.s ], [ 3, %bb.r ]
  %.0.i = add nsw i32 %.pn.i, %.016.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.oy = sext i32 %.0.i to i64
  %i.oz = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.pa = add i64 %i.oz, %i.oy
  store i64 %i.pa, ptr %i.ay, align 8, !tbaa !81
  br label %bb.bl

bb.bl:                                            ; preds = %increase_depth.exit, %fpconv_dtoa.exit, %fbuffer_append_str.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @generate_json_symbol(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 5, 4) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !50, !range !48, !noundef !49
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_sym2str(i64 noundef %2) #24
  %i.g = tail call fastcc i64 @ensure_valid_encoding(ptr noundef nonnull readonly %1, i64 noundef %i.f, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @raw_generate_json_string(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @generate_json_fallback(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_json_bignum(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.c = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef %i.b, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  %i.d = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %fbuffer_append_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.c:                                             ; preds = %bb.b
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.h)
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %i.l, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.d, i64 %i.h, i1 false)
  %i.s = load i64, ptr %i.k, align 8, !tbaa !81
  %i.t = add i64 %i.s, %i.h
  store i64 %i.t, ptr %i.k, align 8, !tbaa !81
  br label %fbuffer_append_str.exit

fbuffer_append_str.exit:                          ; preds = %bb.a, %fbuffer_append_reserved.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_json_object(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.hash_foreach_arg, align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 3 uses
  %i.e = add nsw i64 %i.d, 1                      ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %4 = icmp sgt i64 %i.e, %i.g
  %i.h = icmp ne i64 %i.g, 0
  %spec.select.i = and i1 %4, %i.h
  br i1 %spec.select.i, label %bb.b, label %increase_depth.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr @eNestingError, align 8, !tbaa !10
  store i64 %i.d, ptr %i.c, align 8, !tbaa !67
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.80, i64 noundef %i.d) #27
  unreachable

increase_depth.exit:                              ; preds = %bb.a
  %i.j = tail call i64 @rb_hash_size_num(i64 noundef %2) #24
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81   ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %increase_depth.exit
  %i.p = sub i64 %i.m, %i.o
  %i.q = icmp ult i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %fbuffer_append.exit, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 2)
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !81
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.o, %bb.c ], [ %.pre.i, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i16 32123, ptr %i.u, align 1
  %i.v = load i64, ptr %i.n, align 8, !tbaa !81
  %i.w = add i64 %i.v, 2
  store i64 %i.w, ptr %i.n, align 8, !tbaa !81
  %i.x = load i64, ptr %i.c, align 8, !tbaa !67
  %i.y = add nsw i64 %i.x, -1
  store i64 %i.y, ptr %i.c, align 8, !tbaa !67
  br label %bb.k

bb.e:                                             ; preds = %increase_depth.exit
  %i.z = icmp eq i64 %i.m, %i.o
  br i1 %i.z, label %bb.f, label %fbuffer_append_char.exit, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 1)
  %.pre.i18 = load i64, ptr %i.n, align 8, !tbaa !81
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.e, %bb.f
  %i.aa = phi i64 [ %i.o, %bb.e ], [ %.pre.i18, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 123, ptr %i.ad, align 1, !tbaa !79
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !81
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.n, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %2, ptr %3, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 1, ptr %i.ai, align 4, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.aj, align 1, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 0, ptr %i.ak, align 2
  %i.al = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef nonnull @json_object_i, i64 noundef %i.al) #24
  %i.am = load i64, ptr %i.c, align 8, !tbaa !67
  %i.an = add nsw i64 %i.am, -1                   ; 2 uses
  store i64 %i.an, ptr %i.c, align 8, !tbaa !67
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %fbuffer_append_char.exit
  call fastcc void @fbuffer_append_str(ptr noundef nonnull %0, i64 noundef %i.aq)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %.not17 = icmp eq i64 %i.as, 0
  br i1 %.not17, label %bb.i, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  call fastcc void @fbuffer_append_str_repeat(ptr noundef nonnull %0, i64 noundef %i.as, i64 noundef %i.an)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %fbuffer_append_char.exit
  %i.at = load i64, ptr %i.l, align 8, !tbaa !59
  %i.au = load i64, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.j, label %fbuffer_append_char.exit20, !prof !71

bb.j:                                             ; preds = %bb.i
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 1)
  %.pre.i19 = load i64, ptr %i.n, align 8, !tbaa !81
  br label %fbuffer_append_char.exit20

fbuffer_append_char.exit20:                       ; preds = %bb.i, %bb.j
  %i.aw = phi i64 [ %i.au, %bb.i ], [ %.pre.i19, %bb.j ]
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 125, ptr %i.ay, align 1, !tbaa !79
  %i.az = load i64, ptr %i.n, align 8, !tbaa !81
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.n, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.k:                                             ; preds = %fbuffer_append_char.exit20, %fbuffer_append.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_json_array(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 5 uses
  %i.e = add nsw i64 %i.d, 1                      ; 4 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %3 = icmp sgt i64 %i.e, %i.g
  %i.h = icmp ne i64 %i.g, 0
  %spec.select.i = and i1 %3, %i.h
  br i1 %spec.select.i, label %bb.b, label %increase_depth.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr @eNestingError, align 8, !tbaa !10
  store i64 %i.d, ptr %i.c, align 8, !tbaa !67
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.80, i64 noundef %i.d) #27
  unreachable

increase_depth.exit:                              ; preds = %bb.a
  %i.j = inttoptr i64 %2 to ptr                   ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = and i64 %i.k, 8192
  %.not.i44 = icmp eq i64 %i.l, 0
  br i1 %.not.i44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %increase_depth.exit
  %i.m = lshr i64 %i.k, 15
  %i.n = and i64 %i.m, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %increase_depth.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  %i.q = icmp eq i64 %.0.i, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81   ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %rb_array_len.exit
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %bb.f, label %fbuffer_append.exit, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 2)
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !81
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.u, %bb.e ], [ %.pre.i, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i16 23899, ptr %i.aa, align 1
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, 2
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !81
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !67
  %i.ae = add nsw i64 %i.ad, -1
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !67
  br label %bb.ad

bb.g:                                             ; preds = %rb_array_len.exit
  %i.af = icmp eq i64 %i.s, %i.u
  br i1 %i.af, label %bb.h, label %fbuffer_append_char.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 1)
  %.pre.i45 = load i64, ptr %i.t, align 8, !tbaa !81
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.g, %bb.h
  %i.ag = phi i64 [ %i.u, %bb.g ], [ %.pre.i45, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 91, ptr %i.aj, align 1, !tbaa !79
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !81
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.t, align 8, !tbaa !81
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %.peel.begin, label %bb.i, !prof !27

bb.i:                                             ; preds = %fbuffer_append_char.exit
  tail call fastcc void @fbuffer_append_str(ptr noundef nonnull %0, i64 noundef %i.ao)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.i, %fbuffer_append_char.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !23  ; 3 uses
  %i.as = and i64 %i.ar, 8192
  %.not.i46.peel = icmp eq i64 %i.as, 0
  br i1 %.not.i46.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.peel.begin
  %i.at = lshr i64 %i.ar, 15
  %i.au = and i64 %i.at, 127
  br label %rb_array_len.exit48.peel

bb.k:                                             ; preds = %.peel.begin
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !79
  br label %rb_array_len.exit48.peel

rb_array_len.exit48.peel:                         ; preds = %bb.k, %bb.j
  %.0.i47.peel = phi i64 [ %i.au, %bb.j ], [ %i.av, %bb.k ]
  %i.aw = icmp sgt i64 %.0.i47.peel, 0
  br i1 %i.aw, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %rb_array_len.exit48.peel
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !64
  %.pre57.a = load i64, ptr %.pre, align 8, !tbaa !39 ; 2 uses
  %.not43.peel = icmp eq i64 %.pre57.a, 0
  br i1 %.not43.peel, label %bb.n, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @fbuffer_append_str_repeat(ptr noundef nonnull %0, i64 noundef %.pre57.a, i64 noundef %i.e)
  %.pre58 = load i64, ptr %i.j, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi i64 [ %.pre58, %bb.m ], [ %i.ar, %bb.l ]
  %i.ay = and i64 %i.ax, 8192
  %.not.i51.peel = icmp eq i64 %i.ay, 0
  br i1 %.not.i51.peel, label %bb.o, label %rb_array_const_ptr.exit.peel

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !79
  br label %rb_array_const_ptr.exit.peel

rb_array_const_ptr.exit.peel:                     ; preds = %bb.o, %bb.n
  %.0.i52.peel = phi ptr [ %i.az, %bb.o ], [ %i.ap, %bb.n ]
  %i.ba = load i64, ptr %.0.i52.peel, align 8, !tbaa !10
  tail call void @generate_json(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ba)
  br label %bb.p

bb.p:                                             ; preds = %rb_array_const_ptr.exit, %rb_array_const_ptr.exit.peel
  %indvars.iv = phi i64 [ %indvars.iv.next, %rb_array_const_ptr.exit ], [ 1, %rb_array_const_ptr.exit.peel ] ; 3 uses
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.bc = and i64 %i.bb, 8192
  %.not.i46 = icmp eq i64 %i.bc, 0
  br i1 %.not.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = lshr i64 %i.bb, 15
  %i.be = and i64 %i.bd, 127
  br label %rb_array_len.exit48

bb.r:                                             ; preds = %bb.p
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !79
  br label %rb_array_len.exit48

rb_array_len.exit48:                              ; preds = %bb.q, %bb.r
  %.0.i47 = phi i64 [ %i.be, %bb.q ], [ %i.bf, %bb.r ]
  %i.bg = icmp sgt i64 %.0.i47, %indvars.iv
  br i1 %i.bg, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit48, %rb_array_len.exit48.peel
  store i64 %i.d, ptr %i.c, align 8, !tbaa !67
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %.not39 = icmp eq i64 %i.bj, 0
  br i1 %.not39, label %bb.ab, label %bb.z, !prof !27

bb.s:                                             ; preds = %rb_array_len.exit48
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !59
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !81  ; 2 uses
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.t, label %fbuffer_append_char.exit50, !prof !71

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 1)
  %.pre.i49 = load i64, ptr %i.t, align 8, !tbaa !81
  br label %fbuffer_append_char.exit50

fbuffer_append_char.exit50:                       ; preds = %bb.s, %bb.t
  %i.bn = phi i64 [ %i.bl, %bb.s ], [ %.pre.i49, %bb.t ]
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 44, ptr %i.bp, align 1, !tbaa !79
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !81
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.t, align 8, !tbaa !81
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45 ; 2 uses
  %.not42 = icmp eq i64 %i.bu, 0
  br i1 %.not42, label %bb.v, label %bb.u, !prof !27

bb.u:                                             ; preds = %fbuffer_append_char.exit50
  tail call fastcc void @fbuffer_append_str(ptr noundef nonnull %0, i64 noundef %i.bu)
  br label %bb.v

bb.v:                                             ; preds = %fbuffer_append_char.exit50, %bb.u
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !39 ; 2 uses
  %.not43 = icmp eq i64 %i.bw, 0
  br i1 %.not43, label %bb.x, label %bb.w, !prof !27

bb.w:                                             ; preds = %bb.v
end_hunk_1
