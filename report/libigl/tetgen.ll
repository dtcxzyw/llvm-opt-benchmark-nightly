Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN10tetgenmesh6flip31EPNS_4faceEi:bb.a
  %i.je = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !221
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.gx
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !221
  %.not83.2 = icmp ne ptr %i.jf, %i.jh
  %i.ji = zext i1 %.not83.2 to i32
  %spec.select = xor i32 %i.gv, %i.ji
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.22.0 = phi i64 [ %i.co, %bb.af ], [ 0, %bb.ag ]
  %.sroa.39.0 = phi i32 [ %i.gv, %bb.af ], [ %spec.select, %bb.ag ] ; 3 uses
  %i.jj = ashr i32 %.sroa.39.0, 1
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jk
  store ptr %i.cf, ptr %i.jl, align 8, !tbaa !221
  %i.jm = ptrtoint ptr %i.dw to i64
  %i.jn = sext i32 %.sroa.39.0 to i64
  %i.jo = or i64 %i.jn, %i.jm
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = lshr i32 %.sroa.22117.0, 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18116.0, i64 %i.jr
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !221
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.22.1 = phi i64 [ %i.co, %bb.ae ], [ %.sroa.22.0, %bb.ah ]
  %.sroa.39.1 = phi i32 [ %i.gv, %bb.ae ], [ %.sroa.39.0, %bb.ah ] ; 4 uses
  %.not84.2 = icmp eq i64 %i.cp, 0
  br i1 %.not84.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jt = or i64 %.sroa.22.1, %i.cp
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = ashr i32 %.sroa.39.1, 1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [8 x i8], ptr %i.dw, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 48
  store ptr %i.ju, ptr %i.jy, align 8, !tbaa !221
  %i.jz = ptrtoint ptr %i.dw to i64
  %i.ka = sext i32 %.sroa.39.1 to i64
  %i.kb = or i64 %i.ka, %i.jz
  %i.kc = inttoptr i64 %i.kb to ptr
  store ptr %i.kc, ptr %i.cq, align 8, !tbaa !221
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 68608
  store ptr %i.dw, ptr %i.kd, align 8, !tbaa !225
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 68616
  store i32 %.pre.pre.pre, ptr %i.ke, align 8, !tbaa !226
  %.not80 = icmp eq i32 %2, 0
  br i1 %.not80, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ak
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 6 uses
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !264
  %i.ki = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kh) ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store ptr %i.dw, ptr %i.kj, align 8, !tbaa !225
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 %.sroa.9.1, ptr %i.kk, align 8, !tbaa !226
  %i.kl = sext i32 %.sroa.9.1 to i64              ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !60
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !221
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 88
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !289
  %i.ks = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.kl
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !60
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !221
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !290
  %i.ky = load ptr, ptr %i.kg, align 8, !tbaa !291
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ki, i64 128
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !274
  store ptr %i.ki, ptr %i.kg, align 8, !tbaa !291
  %i.la = load ptr, ptr %i.kf, align 8, !tbaa !264
  %i.lb = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.la) ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.dw, ptr %i.lc, align 8, !tbaa !225
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store i32 %.sroa.24.1, ptr %i.ld, align 8, !tbaa !226
  %i.le = sext i32 %.sroa.24.1 to i64             ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !60
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !221
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 88
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !289
  %i.ll = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.le
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !60
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !221
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 96
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !290
  %i.lr = load ptr, ptr %i.kg, align 8, !tbaa !291
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 128
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !274
  store ptr %i.lb, ptr %i.kg, align 8, !tbaa !291
  %i.lt = load ptr, ptr %i.kf, align 8, !tbaa !264
  %i.lu = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lt) ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store ptr %i.dw, ptr %i.lv, align 8, !tbaa !225
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i32 %.sroa.39.1, ptr %i.lw, align 8, !tbaa !226
  %i.lx = sext i32 %.sroa.39.1 to i64             ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !60
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !221
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 88
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !289
  %i.me = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.lx
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !60
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.mg
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !221
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 96
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !290
  %i.mk = load ptr, ptr %i.kg, align 8, !tbaa !291
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lu, i64 128
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !274
  store ptr %i.lu, ptr %i.kg, align 8, !tbaa !291
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"class.tetgenmesh::triface"], align 16 ; 17 uses
  %7 = alloca %"class.tetgenmesh::triface", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.tetgenmesh::triface", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 16, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i32 0, ptr %i.c, align 8, !tbaa !237
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr null, ptr %.ptr.1, align 16, !tbaa !232
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !237
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr null, ptr %.ptr.2, align 16, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr null, ptr %7, align 8, !tbaa !232
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.g = load ptr, ptr %1, align 8, !tbaa !232    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !237
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !221  ; 11 uses
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.j
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !221  ; 13 uses
  %i.u = icmp sgt i32 %2, 3
  br i1 %i.u, label %.preheader685, label %bb.bh

.preheader685:                                    ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 3 uses
  %i.y = icmp eq i32 %2, 4                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68712
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.ac = add nsw i32 %2, -1                      ; 8 uses
  %i.ad = zext i32 %i.ac to i64                   ; 7 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = add nsw i32 %2, -2
  %i.al = zext i32 %i.ak to i64                   ; 10 uses
  %i.am = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.an = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ao = add nuw nsw i64 %i.al, 1
  %i.ap = add nsw i64 %i.ad, -1
  br label %bb.b

bb.b:                                             ; preds = %.preheader685, %.critedge587
  %indvars.iv = phi i64 [ 0, %.preheader685 ], [ %indvars.iv.next, %.critedge587 ] ; 18 uses
  %.0472736 = phi i32 [ 0, %.preheader685 ], [ %.2474, %.critedge587 ] ; 12 uses
  %.lcssa715731734 = phi ptr [ undef, %.preheader685 ], [ %.lcssa715729, %.critedge587 ] ; 12 uses
  %i.aq = sub nsw i64 %i.ao, %indvars.iv
  %i.ar = sub nsw i64 %i.al, %indvars.iv
  %i.as = sub nsw i64 %i.ad, %indvars.iv
  %i.at = load i32, ptr %i.v, align 4, !tbaa !277
  %.not568 = icmp eq i32 %i.at, 0
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !232 ; 3 uses
  br i1 %.not568, label %._crit_edge864, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !221 ; 2 uses
  %.not569 = icmp eq ptr %i.av, null
  br i1 %.not569, label %._crit_edge864, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !237
  %i.ay = and i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !113
  %.not570 = icmp eq ptr %i.bb, null
  br i1 %.not570, label %._crit_edge864, label %.critedge587

._crit_edge864:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bd = load i32, ptr %i.w, align 4, !tbaa !233
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !60
  %i.bh = icmp sgt i32 %i.bg, 131071
  br i1 %i.bh, label %.critedge587, label %bb.e

bb.e:                                             ; preds = %._crit_edge864
  %i.bi = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %2, %i.bj
  %i.bl = srem i32 %i.bk, %2
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bm ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !232 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.be
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60
  %i.br = icmp sgt i32 %i.bq, 131071
  br i1 %i.br, label %.critedge587, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !237
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !60
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !221 ; 5 uses
  %i.ca = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.an
  %i.cc = select i1 %i.cb, i64 0, i64 %i.ca
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !232
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !237
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !60
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !221 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !237
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !60
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !221 ; 9 uses
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !251 ; 3 uses
  %i.cw = icmp eq ptr %i.cm, %i.cv
  %i.cx = icmp eq ptr %i.cu, %i.cv
  %or.cond582 = or i1 %i.cw, %i.cx
  br i1 %or.cond582, label %.critedge587, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = icmp eq ptr %i.bz, %i.cv                ; 2 uses
  %i.cz = zext i1 %i.cy to i32                    ; 2 uses
  br i1 %i.cy, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.db = fcmp ogt double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.dc = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.bz, ptr noundef %i.o, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.dd = fcmp ogt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.de = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.cm, ptr noundef %i.cu) ; 3 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = fcmp oeq double %i.de, 0.000000e+00
  %or.cond5 = and i1 %i.y, %i.dg
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dh = and i64 %indvars.iv, 3
  %i.di = xor i64 %i.dh, 2
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !232
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !237
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !60
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !221
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !251
  %i.du = icmp eq ptr %i.ds, %i.dt
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.0487 = phi i1 [ false, %bb.j ], [ %i.du, %bb.l ]
  %i.dv = fcmp oeq double %i.de, 0.000000e+00
  br label %bb.r

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.i
  %i.dw = add nsw i32 %.0472736, 1
  br label %.critedge587

bb.o:                                             ; preds = %bb.g
  br i1 %i.y, label %bb.p, label %.critedge587

bb.p:                                             ; preds = %bb.o
  %i.dx = and i64 %indvars.iv, 3
  %i.dy = xor i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !232
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !237
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !60
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !221 ; 2 uses
  %i.ej = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cm, ptr noundef %i.cu, ptr noundef %i.ei, ptr noundef %i.o)
  %i.ek = fcmp olt double %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.q, label %.critedge587

bb.q:                                             ; preds = %bb.p
  %i.el = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef %i.ei, ptr noundef %i.t)
  %i.em = fcmp olt double %i.el, 0.000000e+00
  br i1 %i.em, label %bb.r, label %.critedge587

bb.r:                                             ; preds = %bb.q, %bb.m
  %.2492 = phi i1 [ %i.dv, %bb.m ], [ true, %bb.q ]
  %.1488 = phi i1 [ %.0487, %bb.m ], [ true, %bb.q ]
  %i.en = load i32, ptr %i.z, align 8, !tbaa !293
  %i.eo = icmp ne i32 %i.en, 0
  %or.cond = select i1 %i.eo, i1 %.1488, i1 false
  br i1 %or.cond, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ep = call noundef i32 @_ZN10tetgenmesh7getedgeEPdS0_PNS_7trifaceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef nonnull %7)
  %.not573.not = icmp eq i32 %i.ep, 0
  br i1 %.not573.not, label %.critedge, label %.critedge587

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !295
  %i.eq = call noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f23ERNS_7trifaceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef %i.cm, ptr noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br i1 %i.eq, label %bb.t, label %.critedge587

bb.t:                                             ; preds = %.critedge
  %i.er = load i32, ptr %i.aa, align 8, !tbaa !296
  %.not576 = icmp eq i32 %i.er, 0
  br i1 %.not576, label %.critedge589, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = call noundef i32 @_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 1, ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.critedge589, label %.critedge587

.critedge589:                                     ; preds = %bb.t, %bb.u
  %i.eu = load ptr, ptr %i.bc, align 8, !tbaa !232 ; 2 uses
  store ptr %i.eu, ptr %6, align 16, !tbaa !232
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  br i1 %or.cond3, label %bb.w, label %.critedge602

bb.w:                                             ; preds = %bb.v
  %i.ik = trunc i64 %i.bi to i32
  %i.il = add i32 %i.ac, %i.ik
  %i.im = srem i32 %i.il, %i.ac
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [16 x i8], ptr %1, i64 %i.in ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !232 ; 2 uses
  store ptr %i.ip, ptr %6, align 16, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !237
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12edestoppotblE, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !60 ; 2 uses
  store i32 %i.iu, ptr %i.c, align 8, !tbaa !237
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !60
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !221
  %i.jb = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jc = and i64 %i.jb, -16
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  store ptr %i.jd, ptr %.ptr.1, align 16, !tbaa !232
  %i.je = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.iv
  %i.jf = and i64 %i.jb, 15
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !60 ; 2 uses
  store i32 %i.jh, ptr %i.ab, align 8, !tbaa !237
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !60
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !221
  %i.jo = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jp = and i64 %i.jo, -16
  %i.jq = inttoptr i64 %i.jp to ptr
  store ptr %i.jq, ptr %.ptr.2, align 16, !tbaa !232
  %i.jr = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ji
  %i.js = and i64 %i.jo, 15
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !60
  store i32 %i.ju, ptr %i.aj, align 8, !tbaa !237
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %6, i32 noundef %i.cz, ptr noundef nonnull %5)
  %i.jv = load ptr, ptr %6, align 16, !tbaa !232  ; 2 uses
  %i.jw = load i32, ptr %i.w, align 4, !tbaa !233
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !60 ; 2 uses
  %i.ka = and i32 %i.jz, -65536
  %i.kb = add i32 %i.ka, 65536
  %i.kc = and i32 %i.jz, 65535
  %i.kd = or disjoint i32 %i.kb, %i.kc
  store i32 %i.kd, ptr %i.jy, align 4, !tbaa !60
  %i.ke = load ptr, ptr %.ptr.1, align 16, !tbaa !232 ; 2 uses
  %i.kf = load i32, ptr %i.w, align 4, !tbaa !233
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !60 ; 2 uses
  %i.kj = and i32 %i.ki, -65536
  %i.kk = add i32 %i.kj, 65536
  %i.kl = and i32 %i.ki, 65535
  %i.km = or disjoint i32 %i.kk, %i.kl
  store i32 %i.km, ptr %i.kh, align 4, !tbaa !60
  %.not579718 = icmp samesign ugt i64 %indvars.iv, %i.al
  br i1 %.not579718, label %._crit_edge722, label %.lr.ph721.preheader

.lr.ph721.preheader:                              ; preds = %bb.w
  %xtraiter956 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader, %.lr.ph721.prol
  %indvars.iv830.prol = phi i64 [ %indvars.iv.next831.prol, %.lr.ph721.prol ], [ %i.al, %.lr.ph721.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph721.prol ], [ 0, %.lr.ph721.preheader ]
  %i.kn = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830.prol ; 4 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !232
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !232
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !237
  %i.ks = getelementptr i8, ptr %i.kn, i64 24
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !237
  %indvars.iv.next831.prol = add nsw i64 %indvars.iv830.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter956
  br i1 %prol.iter.cmp.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol, !llvm.loop !605

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader
  %indvars.iv830.unr = phi i64 [ %i.al, %.lr.ph721.preheader ], [ %indvars.iv.next831.prol, %.lr.ph721.prol ]
  %i.kt = icmp ult i64 %i.ar, 3
  br i1 %i.kt, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv830 = phi i64 [ %indvars.iv.next831.3, %.lr.ph721 ], [ %indvars.iv830.unr, %.lr.ph721.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !232
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !232
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !237
  %i.kz = getelementptr i8, ptr %i.ku, i64 24
  store i32 %i.ky, ptr %i.kz, align 8, !tbaa !237
  %i.la = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 -16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !232
  store ptr %i.lc, ptr %i.la, align 8, !tbaa !232
  %i.ld = getelementptr i8, ptr %i.la, i64 -8
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !237
  %i.lf = getelementptr i8, ptr %i.la, i64 8
  store i32 %i.le, ptr %i.lf, align 8, !tbaa !237
  %i.lg = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -32
  %i.li = getelementptr i8, ptr %i.lg, i64 -16
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !232
  store ptr %i.lj, ptr %i.li, align 8, !tbaa !232
  %i.lk = getelementptr i8, ptr %i.lg, i64 -24
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !237
  %i.lm = getelementptr i8, ptr %i.lg, i64 -8
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !237
  %indvars.iv.next831.2 = add nsw i64 %indvars.iv830, -3 ; 2 uses
  %i.ln = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next831.2 ; 4 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !232
  store ptr %i.lp, ptr %i.lo, align 8, !tbaa !232
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !237
  %i.ls = getelementptr i8, ptr %i.ln, i64 24
  store i32 %i.lr, ptr %i.ls, align 8, !tbaa !237
  %indvars.iv.next831.3 = add nsw i64 %indvars.iv830, -4
  %.not579.not.3 = icmp sgt i64 %indvars.iv.next831.2, %indvars.iv
  br i1 %.not579.not.3, label %.lr.ph721, label %._crit_edge722, !llvm.loop !606

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %bb.w
  store ptr %i.ke, ptr %i.bn, align 8, !tbaa !232
  %i.lt = load i32, ptr %i.ab, align 8, !tbaa !237
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !60
  store i32 %i.lw, ptr %i.cn, align 8, !tbaa !237
  store ptr %i.jv, ptr %i.bc, align 8, !tbaa !232
  %i.lx = load i32, ptr %i.c, align 8, !tbaa !237
  store i32 %i.lx, ptr %i.bs, align 8, !tbaa !237
  %i.ly = load i32, ptr %i.ag, align 4, !tbaa !297
  %.not580 = icmp eq i32 %i.ly, 0
  br i1 %.not580, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge722
  %i.lz = load ptr, ptr %i.ah, align 8, !tbaa !267
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !101
  %i.mc = add nsw i64 %i.mb, -2
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !101
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge722
  %.pr = load i32, ptr %i.ai, align 8, !tbaa !298
  %.not581 = icmp eq i32 %.pr, 0
  br i1 %.not581, label %.critedge602.loopexit686.split.loop.exit723, label %.critedge587

.critedge587:                                     ; preds = %bb.n, %bb.q, %bb.o, %bb.p, %bb.s, %.critedge, %bb.y, %bb.u, %bb.f, %._crit_edge864, %bb.e, %bb.d
  %.lcssa715729 = phi ptr [ %.lcssa715731734, %bb.d ], [ %.lcssa715731734, %._crit_edge864 ], [ %.lcssa715731734, %bb.e ], [ %.lcssa715731734, %bb.f ], [ %.lcssa715731734, %.critedge ], [ %.lcssa715731734, %bb.u ], [ %.lcssa715730, %bb.y ], [ %.lcssa715731734, %bb.s ], [ %.lcssa715731734, %bb.n ], [ %.lcssa715731734, %bb.q ], [ %.lcssa715731734, %bb.o ], [ %.lcssa715731734, %bb.p ] ; 2 uses
  %.2474 = phi i32 [ %.0472736, %bb.d ], [ %.0472736, %._crit_edge864 ], [ %.0472736, %bb.e ], [ %.0472736, %bb.f ], [ %.0472736, %.critedge ], [ %.0472736, %bb.u ], [ %.0472736, %bb.y ], [ %.0472736, %bb.s ], [ %i.dw, %bb.n ], [ %.0472736, %bb.q ], [ %.0472736, %bb.o ], [ %.0472736, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond835.not, label %bb.z, label %bb.b, !llvm.loop !607

bb.z:                                             ; preds = %.critedge587
  store ptr %.lcssa715729, ptr %i.a, align 8
  %i.md = icmp sgt i32 %.2474, 0
  br i1 %i.md, label %bb.aa, label %.critedge602

bb.aa:                                            ; preds = %bb.z
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !219
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 188
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !299 ; 2 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 68716
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !300
  %i.ml = icmp slt i32 %3, %i.mk
  br i1 %i.ml, label %.lr.ph785, label %.critedge602

bb.ac:                                            ; preds = %bb.aa
  %i.mm = icmp slt i32 %3, %i.mh
  br i1 %i.mm, label %.lr.ph785, label %.critedge602

.lr.ph785:                                        ; preds = %bb.ab, %bb.ac
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 68696
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ms = add nsw i32 %3, 1
  %i.mt = add nuw nsw i64 %i.al, 1
  %i.mu = add nsw i64 %i.ad, -1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph785, %.thread662
  %indvars.iv848 = phi i64 [ 0, %.lr.ph785 ], [ %indvars.iv.next849, %.thread662 ] ; 15 uses
  %i.mv = sub nsw i64 %i.mt, %indvars.iv848
  %i.mw = sub nsw i64 %i.al, %indvars.iv848
  %i.mx = sub nsw i64 %i.ad, %indvars.iv848
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv848 ; 4 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !232 ; 2 uses
  %i.na = load i32, ptr %i.w, align 4, !tbaa !233
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !60
  %i.ne = icmp sgt i32 %i.nd, 131071
  br i1 %i.ne, label %.thread662, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = add nsw i64 %indvars.iv848, -1          ; 2 uses
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = add i32 %2, %i.ng
  %i.ni = srem i32 %i.nh, %2
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [16 x i8], ptr %1, i64 %i.nj ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !232 ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nb
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !60
  %i.no = icmp sgt i32 %i.nn, 131071
  br i1 %i.no, label %.thread662, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 3 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !237
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !60
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !221 ; 4 uses
  %i.nx = load ptr, ptr %i.x, align 8, !tbaa !251 ; 3 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %.thread662, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %9 = add nuw nsw i64 %indvars.iv848, 1          ; 2 uses
  %10 = icmp eq i64 %9, %i.an
  %11 = select i1 %10, i64 0, i64 %9
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %11 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !232
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !237
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !60
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !221 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !237
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !60
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !221 ; 3 uses
  %i.or = icmp eq ptr %i.oi, %i.nx
  %i.os = icmp eq ptr %i.oq, %i.nx
  %or.cond591 = or i1 %i.or, %i.os
  br i1 %or.cond591, label %.thread662, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ot = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.t, ptr noundef %i.nw, ptr noundef %i.oi, ptr noundef %i.oq)
  %i.ou = fcmp ole double %i.ot, 0.000000e+00     ; 7 uses
  br i1 %i.ou, label %bb.ai, label %.critedge593

.critedge593:                                     ; preds = %bb.ah
  %i.ov = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.nw, ptr noundef %i.o, ptr noundef %i.oi, ptr noundef %i.oq)
  %i.ow = fcmp ugt double %i.ov, 0.000000e+00
  br i1 %i.ow, label %.thread662, label %bb.ai

bb.ai:                                            ; preds = %.critedge593, %bb.ah
  %_ZN10tetgenmesh8enexttblE.sink = phi ptr [ @_ZN10tetgenmesh8enexttblE, %bb.ah ], [ @_ZN10tetgenmesh8eprevtblE, %.critedge593 ]
  %.1469.ph = phi i32 [ 1, %bb.ah ], [ 2, %.critedge593 ] ; 3 uses
  %i.ox = load i32, ptr %i.np, align 8, !tbaa !237
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE.sink, i64 %i.oy
  %.sroa.10621.1.ph = load i32, ptr %i.oz, align 4, !tbaa !60 ; 2 uses
  %.sroa.0616.1.ph = load ptr, ptr %i.my, align 8, !tbaa !232 ; 4 uses
  %i.pa = load i32, ptr %i.mn, align 8, !tbaa !276
  %.not556 = icmp eq i32 %i.pa, 0
  br i1 %.not556, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0616.1.ph, i64 64
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !221 ; 2 uses
  %.not557 = icmp eq ptr %i.pc, null
  br i1 %.not557, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pd = sext i32 %.sroa.10621.1.ph to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !60
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.pg
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !113 ; 2 uses
  %.not558 = icmp eq ptr %i.pi, null
  br i1 %.not558, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pj = load i32, ptr %i.mo, align 8, !tbaa !301
  %.not567 = icmp eq i32 %i.pj, 0
  br i1 %.not567, label %.thread662, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.pk = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.pl = and i64 %i.pk, -8
  %i.pm = inttoptr i64 %i.pl to ptr               ; 2 uses
  %i.pn = load i32, ptr %i.mp, align 8, !tbaa !240
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr [4 x i8], ptr %i.pm, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 4      ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !60 ; 2 uses
  %i.ps = trunc i32 %i.pr to i1
  br i1 %i.ps, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  %i.pt = trunc i64 %i.pk to i32
  %i.pu = and i32 %i.pt, 7
  %i.pv = or disjoint i32 %i.pr, 1
  store i32 %i.pv, ptr %i.pq, align 4, !tbaa !60
  %i.pw = load ptr, ptr %i.mq, align 8, !tbaa !263
  %i.px = call noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr noundef nonnull align 8 dereferenceable(48) %i.pw, ptr noundef nonnull %i.b) ; 0 uses
  %i.py = load ptr, ptr %i.b, align 8, !tbaa !228 ; 2 uses
  store ptr %i.pm, ptr %i.py, align 8, !tbaa !225
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store i32 %i.pu, ptr %i.pz, align 8, !tbaa !226
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %.thread662

bb.ao:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.qa = sext i32 %.sroa.10621.1.ph to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !60 ; 2 uses
  %i.qd = load i32, ptr %i.w, align 4, !tbaa !233
  %i.qe = sext i32 %i.qd to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %indvar = phi i64 [ %indvar.next, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %indvars.iv839 = phi i32 [ %indvars.iv.next840, %bb.ar ], [ 1, %bb.ao ] ; 2 uses
  %i.qf = phi i32 [ %i.rf, %bb.ar ], [ %i.qc, %bb.ao ] ; 2 uses
  %i.qg = phi ptr [ %i.rb, %bb.ar ], [ %.sroa.0616.1.ph, %bb.ao ] ; 3 uses
  %.0467 = phi i32 [ %i.qo, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %.4 = phi i32 [ %i.qs, %bb.ar ], [ 0, %bb.ao ]
  %.0456 = phi i32 [ %.1457, %bb.ar ], [ 0, %bb.ao ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !221 ; 2 uses
  %.not559 = icmp eq ptr %i.qi, null
  br i1 %.not559, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qj = and i32 %i.qf, 3
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !113
  %.not560 = icmp ne ptr %i.qm, null
  %i.qn = zext i1 %.not560 to i32
  %spec.select594 = add nsw i32 %.0456, %i.qn
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1457 = phi i32 [ %.0456, %bb.ap ], [ %spec.select594, %bb.aq ] ; 2 uses
  %i.qo = add nuw nsw i32 %.0467, 1               ; 6 uses
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qe
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !60
  %i.qr = ashr i32 %i.qq, 16
  %i.qs = add nsw i32 %i.qr, %.4                  ; 2 uses
  %i.qt = sext i32 %i.qf to i64                   ; 2 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !60
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.qw
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !221
  %i.qz = ptrtoint ptr %i.qy to i64               ; 2 uses
  %i.ra = and i64 %i.qz, -16
  %i.rb = inttoptr i64 %i.ra to ptr               ; 2 uses
  %i.rc = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.qt
  %i.rd = and i64 %i.qz, 15
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !60
  %i.rg = icmp eq ptr %.sroa.0616.1.ph, %i.rb
  %indvars.iv.next840 = add nuw i32 %indvars.iv839, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.rg, label %bb.as, label %bb.ap, !llvm.loop !608

bb.as:                                            ; preds = %bb.ar
  %i.rh = icmp samesign ult i32 %.0467, 2
  br i1 %i.rh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ri = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.ri, align 16, !tbaa !60
  call void @__cxa_throw(ptr nonnull %i.ri, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.rj = icmp sgt i32 %i.qs, 2
  br i1 %i.rj, label %.thread662, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rk = load i32, ptr %i.mr, align 4, !tbaa !302
  %i.rl = icmp ne i32 %i.rk, 0
  %i.rm = icmp sgt i32 %.1457, 0
  %or.cond7 = select i1 %i.rl, i1 %i.rm, i1 false
  br i1 %or.cond7, label %.thread662, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.rn = load ptr, ptr %i.me, align 8, !tbaa !219
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 192
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !303 ; 2 uses
  %i.rq = icmp slt i32 %i.rp, 1
  %.not561 = icmp slt i32 %.0467, %i.rp
  %or.cond595 = select i1 %i.rq, i1 true, i1 %.not561
  br i1 %or.cond595, label %bb.ax, label %.thread662

bb.ax:                                            ; preds = %bb.aw
  %i.rr = zext nneg i32 %i.qo to i64              ; 2 uses
  %i.rs = shl nuw nsw i64 %i.rr, 4
  %i.rt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.rs) #41 ; 26 uses
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %i.rr
  %i.rv = and i64 %indvar, 1152921504606846975
  %i.rw = add i64 %indvar, 1
  %xtraiter959 = and i64 %i.rw, 7                 ; 2 uses
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ax, %.prol.preheader
  %i.rx = phi ptr [ %i.rz, %.prol.preheader ], [ %i.rt, %bb.ax ] ; 3 uses
  %prol.iter961 = phi i64 [ %prol.iter961.next, %.prol.preheader ], [ 0, %bb.ax ]
  store ptr null, ptr %i.rx, align 8, !tbaa !232
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i32 0, ptr %i.ry, align 8, !tbaa !237
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %prol.iter961.next = add i64 %prol.iter961, 1   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  br label %bb.bd

bb.bd:                                            ; preds = %.split502, %.split
  %.sink = phi i32 [ 2, %.split502 ], [ 1, %.split ]
  %i.xv = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rt, i32 noundef %i.qo, i32 noundef 2, i32 noundef %.sink, ptr noundef nonnull %5) ; 0 uses
  %.not565757 = icmp samesign ugt i64 %indvars.iv848, %i.al
  br i1 %.not565757, label %._crit_edge761, label %.lr.ph760.preheader

.lr.ph760.preheader:                              ; preds = %bb.bd
  %xtraiter968 = and i64 %i.mv, 3                 ; 2 uses
  %lcmp.mod969.not = icmp eq i64 %xtraiter968, 0
  br i1 %lcmp.mod969.not, label %.lr.ph760.prol.loopexit, label %.lr.ph760.prol

.lr.ph760.prol:                                   ; preds = %.lr.ph760.preheader, %.lr.ph760.prol
  %indvars.iv855.prol = phi i64 [ %indvars.iv.next856.prol, %.lr.ph760.prol ], [ %i.al, %.lr.ph760.preheader ] ; 2 uses
  %prol.iter970 = phi i64 [ %prol.iter970.next, %.lr.ph760.prol ], [ 0, %.lr.ph760.preheader ]
  %i.xw = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv855.prol ; 4 uses
  %i.xx = getelementptr i8, ptr %i.xw, i64 16
  %i.xy = load ptr, ptr %i.xw, align 8, !tbaa !232
  store ptr %i.xy, ptr %i.xx, align 8, !tbaa !232
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !237
  %i.yb = getelementptr i8, ptr %i.xw, i64 24
  store i32 %i.ya, ptr %i.yb, align 8, !tbaa !237
  %indvars.iv.next856.prol = add nsw i64 %indvars.iv855.prol, -1 ; 2 uses
  %prol.iter970.next = add i64 %prol.iter970, 1   ; 2 uses
  %prol.iter970.cmp.not = icmp eq i64 %prol.iter970.next, %xtraiter968
  br i1 %prol.iter970.cmp.not, label %.lr.ph760.prol.loopexit, label %.lr.ph760.prol, !llvm.loop !612

.lr.ph760.prol.loopexit:                          ; preds = %.lr.ph760.prol, %.lr.ph760.preheader
  %indvars.iv855.unr = phi i64 [ %i.al, %.lr.ph760.preheader ], [ %indvars.iv.next856.prol, %.lr.ph760.prol ]
  %i.yc = icmp ult i64 %i.mw, 3
  br i1 %i.yc, label %._crit_edge761, label %.lr.ph760

.lr.ph760:                                        ; preds = %.lr.ph760.prol.loopexit, %.lr.ph760
  %indvars.iv855 = phi i64 [ %indvars.iv.next856.3, %.lr.ph760 ], [ %indvars.iv855.unr, %.lr.ph760.prol.loopexit ] ; 5 uses
  %i.yd = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.ye = getelementptr i8, ptr %i.yd, i64 16
  %i.yf = load ptr, ptr %i.yd, align 8, !tbaa !232
  store ptr %i.yf, ptr %i.ye, align 8, !tbaa !232
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yh = load i32, ptr %i.yg, align 8, !tbaa !237
  %i.yi = getelementptr i8, ptr %i.yd, i64 24
  store i32 %i.yh, ptr %i.yi, align 8, !tbaa !237
  %i.yj = getelementptr [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 -16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !232
  store ptr %i.yl, ptr %i.yj, align 8, !tbaa !232
  %i.ym = getelementptr i8, ptr %i.yj, i64 -8
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !237
  %i.yo = getelementptr i8, ptr %i.yj, i64 8
  store i32 %i.yn, ptr %i.yo, align 8, !tbaa !237
  %i.yp = getelementptr [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.yq = getelementptr i8, ptr %i.yp, i64 -32
  %i.yr = getelementptr i8, ptr %i.yp, i64 -16
  %i.ys = load ptr, ptr %i.yq, align 8, !tbaa !232
  store ptr %i.ys, ptr %i.yr, align 8, !tbaa !232
  %i.yt = getelementptr i8, ptr %i.yp, i64 -24
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !237
  %i.yv = getelementptr i8, ptr %i.yp, i64 -8
  store i32 %i.yu, ptr %i.yv, align 8, !tbaa !237
  %indvars.iv.next856.2 = add nsw i64 %indvars.iv855, -3 ; 2 uses
  %i.yw = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next856.2 ; 4 uses
  %i.yx = getelementptr i8, ptr %i.yw, i64 16
  %i.yy = load ptr, ptr %i.yw, align 8, !tbaa !232
  store ptr %i.yy, ptr %i.yx, align 8, !tbaa !232
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !237
  %i.zb = getelementptr i8, ptr %i.yw, i64 24
  store i32 %i.za, ptr %i.zb, align 8, !tbaa !237
  %indvars.iv.next856.3 = add nsw i64 %indvars.iv855, -4
  %.not565.not.3 = icmp sgt i64 %indvars.iv.next856.2, %indvars.iv848
  br i1 %.not565.not.3, label %.lr.ph760, label %._crit_edge761, !llvm.loop !613

._crit_edge761:                                   ; preds = %.lr.ph760.prol.loopexit, %.lr.ph760, %bb.bd
  %i.zc = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !232 ; 3 uses
  store ptr %i.zd, ptr %6, align 16, !tbaa !232
  %i.ze = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !237
  %i.zg = sext i32 %i.zf to i64
  %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE = select i1 %i.ou, ptr @_ZN10tetgenmesh8enexttblE, ptr @_ZN10tetgenmesh8eprevtblE
  %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE = select i1 %i.ou, ptr @_ZN10tetgenmesh8eprevtblE, ptr @_ZN10tetgenmesh8enexttblE
  %i.zh = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !60
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zj
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !60
  store i32 %i.zl, ptr %i.c, align 8, !tbaa !237
  %i.zm = load ptr, ptr %i.rt, align 8, !tbaa !232 ; 3 uses
  store ptr %i.zm, ptr %.ptr.1, align 16, !tbaa !232
  %i.zn = load i32, ptr %i.vm, align 8, !tbaa !237
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !60
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE, i64 %i.zr
  %storemerge906 = load i32, ptr %i.zs, align 4, !tbaa !60
  store i32 %storemerge906, ptr %i.ab, align 8, !tbaa !237
  %i.zt = load i32, ptr %i.w, align 4, !tbaa !233
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.zu ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !60 ; 2 uses
  %i.zx = and i32 %i.zw, -65536
  %i.zy = add i32 %i.zx, 65536
  %i.zz = and i32 %i.zw, 65535
  %i.aaa = or disjoint i32 %i.zy, %i.zz
  store i32 %i.aaa, ptr %i.zv, align 4, !tbaa !60
  %i.aab = load i32, ptr %i.w, align 4, !tbaa !233
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.zm, i64 %i.aac ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !60 ; 2 uses
  %i.aaf = and i32 %i.aae, -65536
  %i.aag = add i32 %i.aaf, 65536
  %i.aah = and i32 %i.aae, 65535
  %i.aai = or disjoint i32 %i.aag, %i.aah
  store i32 %i.aai, ptr %i.aad, align 4, !tbaa !60
  store ptr %i.zd, ptr %i.nk, align 8, !tbaa !232
  %i.aaj = load i32, ptr %i.c, align 8, !tbaa !237
  store i32 %i.aaj, ptr %i.oj, align 8, !tbaa !237
  store ptr %i.zm, ptr %i.my, align 8, !tbaa !232
  %i.aak = load i32, ptr %i.ab, align 8, !tbaa !237
  store i32 %i.aak, ptr %i.np, align 8, !tbaa !237
  call void @_ZdaPv(ptr noundef nonnull %i.rt) #42
  %.pr657 = load i32, ptr %i.ai, align 8, !tbaa !298
  %.not566 = icmp eq i32 %.pr657, 0
  br i1 %.not566, label %.critedge602.loopexit.split.loop.exit763, label %.thread662

bb.be:                                            ; preds = %bb.az
  %i.aal = load i32, ptr %i.ai, align 8, !tbaa !298
  %.not563 = icmp eq i32 %i.aal, 0
  br i1 %.not563, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.aam = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rt, i32 noundef %i.qo, i32 noundef %i.ts, i32 noundef %.1469.ph, ptr noundef nonnull %5) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.aan = icmp sgt i32 %i.ts, 0
  br i1 %i.aan, label %.lr.ph750.preheader, label %._crit_edge751

.lr.ph750.preheader:                              ; preds = %bb.bg
  %wide.trip.count846 = zext nneg i32 %i.ts to i64 ; 2 uses
  %xtraiter962 = and i64 %wide.trip.count846, 1
  %i.aao = icmp eq i32 %i.ts, 1
  br i1 %i.aao, label %.lr.ph750.epil.preheader, label %.lr.ph750.preheader.new

.lr.ph750.preheader.new:                          ; preds = %.lr.ph750.preheader
  %unroll_iter = and i64 %wide.trip.count846, 2147483646
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750, %.lr.ph750.preheader.new
  %indvars.iv843 = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph750 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %niter.next.1, %.lr.ph750 ]
  %i.aap = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %indvars.iv843
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !232
  %i.aar = load i32, ptr %i.w, align 4, !tbaa !233
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.aaq, i64 %i.aas ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !60
  %i.aav = add i32 %i.aau, -65536
  store i32 %i.aav, ptr %i.aat, align 4, !tbaa !60
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %indvars.iv843
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !232
  %i.aaz = load i32, ptr %i.w, align 4, !tbaa !233
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.aba ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !60
  %i.abd = add i32 %i.abc, -65536
  store i32 %i.abd, ptr %i.abb, align 4, !tbaa !60
  %indvars.iv.next844.1 = add nuw nsw i64 %indvars.iv843, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge751.loopexit.unr-lcssa, label %.lr.ph750, !llvm.loop !614

._crit_edge751.loopexit.unr-lcssa:                ; preds = %.lr.ph750
  %lcmp.mod963.not = icmp eq i64 %xtraiter962, 0
  br i1 %lcmp.mod963.not, label %._crit_edge751, label %.lr.ph750.epil.preheader

.lr.ph750.epil.preheader:                         ; preds = %._crit_edge751.loopexit.unr-lcssa, %.lr.ph750.preheader
  %indvars.iv843.epil.init = phi i64 [ 0, %.lr.ph750.preheader ], [ %indvars.iv.next844.1, %._crit_edge751.loopexit.unr-lcssa ]
  %lcmp.mod964 = trunc i32 %i.ts to i1
  call void @llvm.assume(i1 %lcmp.mod964)
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.rt, i64 %indvars.iv843.epil.init
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !232
  %i.abg = load i32, ptr %i.w, align 4, !tbaa !233
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.abf, i64 %i.abh ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !60
  %i.abk = add i32 %i.abj, -65536
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !60
  br label %._crit_edge751

._crit_edge751:                                   ; preds = %.lr.ph750.epil.preheader, %._crit_edge751.loopexit.unr-lcssa, %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.rt) #42
  br label %.thread662

.thread662:                                       ; preds = %._crit_edge761, %._crit_edge751, %bb.aw, %bb.av, %bb.au, %.critedge593, %bb.al, %bb.an, %bb.ag, %bb.af, %bb.ad, %bb.ae
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next849, %i.an
  br i1 %exitcond863.not, label %.critedge602, label %bb.ad, !llvm.loop !615

bb.bh:                                            ; preds = %bb.a
  %i.abl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.j
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !60
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.abn
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !221 ; 7 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !251 ; 3 uses
  %i.abs = icmp eq ptr %i.abp, %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !232
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !237
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !60
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.abu, i64 %i.aca
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !221 ; 7 uses
  br i1 %i.abs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !232
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !237
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ach
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !60
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %i.ack
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !221
  br label %select.unfold

bb.bj:                                            ; preds = %bb.bh
  %i.acn = icmp eq ptr %i.acc, %i.abr
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !232
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !237
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !60
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.acp, i64 %i.acv
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !221 ; 6 uses
  br i1 %i.acn, label %select.unfold, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acy = icmp eq ptr %i.acx, %i.abr
  br i1 %i.acy, label %select.unfold, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.acz = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.acc, ptr noundef %i.abp, ptr noundef %i.acx, ptr noundef %i.o)
  %i.ada = fcmp olt double %i.acz, 0.000000e+00
  br i1 %i.ada, label %bb.bs, label %.critedge602

select.unfold:                                    ; preds = %bb.bj, %bb.bk, %bb.bi
  %.0496.ph = phi ptr [ %i.acc, %bb.bi ], [ %i.abp, %bb.bk ], [ %i.acx, %bb.bj ] ; 6 uses
  %.0495.ph = phi ptr [ %i.acm, %bb.bi ], [ %i.acc, %bb.bk ], [ %i.abp, %bb.bj ] ; 6 uses
  %.0494.ph = phi ptr [ %i.abp, %bb.bi ], [ %i.acx, %bb.bk ], [ %i.acc, %bb.bj ]
  %.cmp = phi i1 [ true, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.0489.ph = phi i32 [ 1, %bb.bi ], [ 3, %bb.bk ], [ 2, %bb.bj ] ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 68712
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !293
  %.not = icmp eq i32 %i.adc, 0
  br i1 %.not, label %bb.bm, label %.critedge599

bb.bm:                                            ; preds = %select.unfold
  %i.add = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %.0496.ph, ptr noundef %.0495.ph)
  %i.ade = fcmp oeq double %i.add, 0.000000e+00
  br i1 %i.ade, label %.critedge599, label %.critedge602

.critedge599:                                     ; preds = %select.unfold, %bb.bm
  %.urem = add nsw i32 %.0489.ph, -3
  %i.adf = select i1 %.cmp, i32 %.0489.ph, i32 %.urem
  %i.adg = zext nneg i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.adg ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !232
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !237
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh11eorgoppotblE, i64 %i.adl
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !60
  %i.ado = sext i32 %i.adn to i64                 ; 2 uses
  %i.adp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !60
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.adi, i64 %i.adr
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !221
  %i.adu = ptrtoint ptr %i.adt to i64             ; 2 uses
  %i.adv = and i64 %i.adu, -16
  %i.adw = inttoptr i64 %i.adv to ptr             ; 2 uses
  %i.adx = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ado
  %i.ady = and i64 %i.adu, 15
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !60 ; 2 uses
  %i.aeb = sext i32 %i.aea to i64                 ; 2 uses
  %i.aec = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !60
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.adw, i64 %i.aee
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !221 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.t
  br i1 %i.aeh, label %.critedge602, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge599, %bb.bq
  %i.aei = phi ptr [ %i.afn, %bb.bq ], [ %i.aeg, %.critedge599 ] ; 3 uses
  %i.aej = phi i64 [ %i.afi, %bb.bq ], [ %i.aeb, %.critedge599 ]
  %i.aek = phi i32 [ %i.afh, %bb.bq ], [ %i.aea, %.critedge599 ]
  %i.ael = phi ptr [ %i.afd, %bb.bq ], [ %i.adw, %.critedge599 ] ; 2 uses
  %.0700 = phi double [ %.1, %bb.bq ], [ 0.000000e+00, %.critedge599 ] ; 4 uses
  %.0454699 = phi ptr [ %.1455, %bb.bq ], [ null, %.critedge599 ] ; 3 uses
  %i.aem = load ptr, ptr %i.abq, align 8, !tbaa !251 ; 2 uses
  %.not538 = icmp eq ptr %i.aei, %i.aem
  br i1 %.not538, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %i.aen = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aej
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !60
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds [8 x i8], ptr %i.ael, i64 %i.aep
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !221 ; 2 uses
  %.not539 = icmp eq ptr %i.aer, %i.aem
  br i1 %.not539, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aes = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef %i.aer, ptr noundef %i.aei)
  %i.aet = fneg double %i.aes                     ; 2 uses
  %i.aeu = fcmp olt double %.0700, %i.aet
  br i1 %i.aeu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bn, %.lr.ph
  %.1455 = phi ptr [ %i.aei, %bb.bp ], [ %.0454699, %bb.bo ], [ %.0454699, %bb.bn ], [ %.0454699, %.lr.ph ] ; 6 uses
  %.1 = phi double [ %i.aet, %bb.bp ], [ %.0700, %bb.bo ], [ %.0700, %bb.bn ], [ %.0700, %.lr.ph ]
  %i.aev = sext i32 %i.aek to i64                 ; 2 uses
  %i.aew = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !60
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.ael, i64 %i.aey
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !221
  %i.afb = ptrtoint ptr %i.afa to i64             ; 2 uses
  %i.afc = and i64 %i.afb, -16
  %i.afd = inttoptr i64 %i.afc to ptr             ; 2 uses
  %i.afe = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aev
  %i.aff = and i64 %i.afb, 15
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !60 ; 2 uses
  %i.afi = sext i32 %i.afh to i64                 ; 2 uses
  %i.afj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !60
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.afl
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !221 ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.t
  br i1 %i.afo, label %._crit_edge, label %.lr.ph, !llvm.loop !616

._crit_edge:                                      ; preds = %bb.bq
  %.not540 = icmp eq ptr %.1455, null
  br i1 %.not540, label %.critedge602, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.afp = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.o)
  %i.afq = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.t)
  %i.afr = fmul double %i.afp, %i.afq
  %i.afs = fcmp ult double %i.afr, 0.000000e+00
  br i1 %i.afs, label %.split679, label %.critedge602

.split679:                                        ; preds = %bb.br
  %i.aft = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0496.ph)
  %i.afu = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0495.ph)
  %i.afv = fmul double %i.aft, %i.afu
  %i.afw = fcmp ult double %i.afv, 0.000000e+00
  br i1 %i.afw, label %bb.bt, label %.critedge602

bb.bs:                                            ; preds = %bb.bl
  %i.afx = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.abp, ptr noundef %i.acc, ptr noundef %i.acx, ptr noundef %i.t)
  %i.afy = fcmp uge double %i.afx, 0.000000e+00
  br i1 %i.afy, label %.critedge602, label %bb.bt

bb.bt:                                            ; preds = %.split679, %bb.bs
  %.0496671683 = phi ptr [ %.0496.ph, %.split679 ], [ %i.abp, %bb.bs ]
  %.0495673682 = phi ptr [ %.0495.ph, %.split679 ], [ %i.acc, %bb.bs ]
  %.0494675681 = phi ptr [ %.0494.ph, %.split679 ], [ %i.acx, %bb.bs ]
  %.0489677680 = phi i32 [ %.0489.ph, %.split679 ], [ 0, %bb.bs ] ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !277
  %.not542 = icmp eq i32 %i.aga, 0
  br i1 %.not542, label %.critedge607, label %.preheader691.preheader

.preheader691.preheader:                          ; preds = %bb.bt
  %i.agb = load ptr, ptr %1, align 8, !tbaa !232
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 72
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !221 ; 2 uses
  %.not552 = icmp eq ptr %i.agd, null
end_hunk_2
