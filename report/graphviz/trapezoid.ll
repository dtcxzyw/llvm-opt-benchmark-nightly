Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/trapezoid?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@add_segment:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.je = load ptr, ptr %2, align 8, !tbaa !8
  %i.jf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.jb) #10
  %i.jg = getelementptr inbounds nuw [96 x i8], ptr %i.je, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !37
  %i.jj = icmp eq i64 %i.ji, %i.gq
  br i1 %i.jj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jk = load ptr, ptr %2, align 8, !tbaa !8
  %i.jl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.jb) #10
  %i.jm = getelementptr inbounds nuw [96 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  store i64 %i.gw, ptr %i.jn, align 8, !tbaa !37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.jo = load ptr, ptr %2, align 8, !tbaa !8
  %i.jp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gw) #10
  %i.jq = getelementptr inbounds nuw [96 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !36 ; 3 uses
  %i.jt = add i64 %i.js, -1
  %i.ju = icmp ult i64 %i.jt, -2
  br i1 %i.ju, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jv = load ptr, ptr %2, align 8, !tbaa !8
  %i.jw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.js) #10
  %i.jx = getelementptr inbounds nuw [96 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !34
  %i.ka = icmp eq i64 %i.jz, %i.gq
  br i1 %i.ka, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kb = load ptr, ptr %2, align 8, !tbaa !8
  %i.kc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.js) #10
  %i.kd = getelementptr inbounds nuw [96 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  store i64 %i.gw, ptr %i.ke, align 8, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.kf = load ptr, ptr %2, align 8, !tbaa !8
  %i.kg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gw) #10
  %i.kh = getelementptr inbounds nuw [96 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !36 ; 3 uses
  %i.kk = add i64 %i.kj, -1
  %i.kl = icmp ult i64 %i.kk, -2
  br i1 %i.kl, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.km = load ptr, ptr %2, align 8, !tbaa !8
  %i.kn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.kj) #10
  %i.ko = getelementptr inbounds nuw [96 x i8], ptr %i.km, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !37
  %i.kr = icmp eq i64 %i.kq, %i.gq
  br i1 %i.kr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ks = load ptr, ptr %2, align 8, !tbaa !8
  %i.kt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.kj) #10
  %i.ku = getelementptr inbounds nuw [96 x i8], ptr %i.ks, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  store i64 %i.gw, ptr %i.kv, align 8, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i8 0, i64 56, i1 false)
  %i.kx = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 56) #10
  %i.ky = load ptr, ptr %3, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw [56 x i8], ptr %i.ky, i64 %i.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kz, ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i64 56, i1 false), !tbaa.struct !17
  %i.la = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %.val.i814 = load i64, ptr %i.la, align 8, !tbaa !20
  %i.lb = add i64 %.val.i814, -1                  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i8 0, i64 56, i1 false)
  %i.lc = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 56) #10
  %i.ld = load ptr, ptr %3, align 8, !tbaa !8
  %i.le = getelementptr inbounds nuw [56 x i8], ptr %i.ld, i64 %i.lc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.le, ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i64 56, i1 false), !tbaa.struct !17
  %.val.i815 = load i64, ptr %i.la, align 8, !tbaa !20
  %i.lf = add i64 %.val.i815, -1                  ; 5 uses
  %i.lg = load ptr, ptr %2, align 8, !tbaa !8
  %i.lh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.li = getelementptr inbounds nuw [96 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !38 ; 7 uses
  %i.ll = load ptr, ptr %3, align 8, !tbaa !8
  %i.lm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lk) #10
  %i.ln = getelementptr inbounds nuw [56 x i8], ptr %i.ll, i64 %i.lm
  store i32 2, ptr %i.ln, align 8, !tbaa !23
  %i.lo = load ptr, ptr %3, align 8, !tbaa !8
  %i.lp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lk) #10
  %i.lq = getelementptr inbounds nuw [56 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !28
  %i.ls = load ptr, ptr %3, align 8, !tbaa !8
  %i.lt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lk) #10
  %i.lu = getelementptr inbounds nuw [56 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i32 %0, ptr %i.lv, align 4, !tbaa !27
  %i.lw = load ptr, ptr %3, align 8, !tbaa !8
  %i.lx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lk) #10
  %i.ly = getelementptr inbounds nuw [56 x i8], ptr %i.lw, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store i64 %i.lf, ptr %i.lz, align 8, !tbaa !26
  %i.ma = load ptr, ptr %3, align 8, !tbaa !8
  %i.mb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lk) #10
  %i.mc = getelementptr inbounds nuw [56 x i8], ptr %i.ma, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  store i64 %i.lb, ptr %i.md, align 8, !tbaa !24
  %i.me = load ptr, ptr %3, align 8, !tbaa !8
  %i.mf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lb) #10
  %i.mg = getelementptr inbounds nuw [56 x i8], ptr %i.me, i64 %i.mf
  store i32 3, ptr %i.mg, align 8, !tbaa !23
  %i.mh = load ptr, ptr %3, align 8, !tbaa !8
  %i.mi = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lb) #10
  %i.mj = getelementptr inbounds nuw [56 x i8], ptr %i.mh, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store i64 %i.gq, ptr %i.mk, align 8, !tbaa !40
  %i.ml = load ptr, ptr %3, align 8, !tbaa !8
  %i.mm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lb) #10
  %i.mn = getelementptr inbounds nuw [56 x i8], ptr %i.ml, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  store i64 %i.lk, ptr %i.mo, align 8, !tbaa !25
  %i.mp = load ptr, ptr %3, align 8, !tbaa !8
  %i.mq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lf) #10
  %i.mr = getelementptr inbounds nuw [56 x i8], ptr %i.mp, i64 %i.mq
  store i32 3, ptr %i.mr, align 8, !tbaa !23
  %i.ms = load ptr, ptr %3, align 8, !tbaa !8
  %i.mt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lf) #10
  %i.mu = getelementptr inbounds nuw [56 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store i64 %i.gw, ptr %i.mv, align 8, !tbaa !40
  %i.mw = load ptr, ptr %3, align 8, !tbaa !8
  %i.mx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.lf) #10
  %i.my = getelementptr inbounds nuw [56 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  store i64 %i.lk, ptr %i.mz, align 8, !tbaa !25
  %i.na = load ptr, ptr %2, align 8, !tbaa !8
  %i.nb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.nc = getelementptr inbounds nuw [96 x i8], ptr %i.na, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  store i64 %i.lb, ptr %i.nd, align 8, !tbaa !38
  %i.ne = load ptr, ptr %2, align 8, !tbaa !8
  %i.nf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gw) #10
  %i.ng = getelementptr inbounds nuw [96 x i8], ptr %i.ne, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  store i64 %i.lf, ptr %i.nh, align 8, !tbaa !38
  br label %bb.ak

bb.ak:                                            ; preds = %bb.t, %bb.aj
  %i.ni = add i64 %.0, -1
  %i.nj = icmp ult i64 %i.ni, -2
  br i1 %i.nj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ak
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.nl = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.nn = getelementptr i8, ptr %2, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.cl
  %.0775854 = phi i64 [ %.0, %.lr.ph ], [ %.1, %bb.cl ] ; 72 uses
  %.0776853 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.cl ] ; 2 uses
  %.0779852 = phi i64 [ 0, %.lr.ph ], [ %.1780, %bb.cl ] ; 2 uses
  %i.np = load ptr, ptr %2, align 8, !tbaa !8
  %i.nq = tail call i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.nr = getelementptr inbounds nuw [96 x i8], ptr %i.np, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %2, align 8, !tbaa !8
  %i.nu = tail call i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.nv = getelementptr inbounds nuw [96 x i8], ptr %i.nt, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load <2 x double>, ptr %i.ns, align 8   ; 3 uses
  %i.ny = load <2 x double>, ptr %i.nw, align 8   ; 3 uses
  %i.nz = extractelement <2 x double> %i.ny, i64 1 ; 2 uses
  %i.oa = fadd double %i.nz, f0x3E7AD7F29ABCAF48
  %i.ob = extractelement <2 x double> %i.nx, i64 1 ; 2 uses
  %i.oc = fcmp ogt double %i.ob, %i.oa
  %i.od = fadd double %i.nz, f0xBE7AD7F29ABCAF48
  %i.oe = fcmp uge double %i.ob, %i.od
  %i.of = extractelement <2 x double> %i.nx, i64 0
  %i.og = extractelement <2 x double> %i.ny, i64 0
  %i.oh = fcmp ogt double %i.of, %i.og
  %narrow.i.i = select i1 %i.oe, i1 %i.oh, i1 false
  %i.oi = select i1 %i.oc, i1 true, i1 %narrow.i.i
  br i1 %i.oi, label %greater_than_equal_to.exit.thread, label %greater_than_equal_to.exit

greater_than_equal_to.exit:                       ; preds = %bb.al
  %i.oj = fsub <2 x double> %i.nx, %i.ny
  %.fr937 = freeze <2 x double> %i.oj
  %5 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr937)
  %6 = fcmp ugt <2 x double> %5, splat (double f0x3E7AD7F29ABCAF48)
  %7 = bitcast <2 x i1> %6 to i2
  %8 = icmp eq i2 %7, 0
  br i1 %8, label %greater_than_equal_to.exit.thread, label %.critedge

greater_than_equal_to.exit.thread:                ; preds = %bb.al, %greater_than_equal_to.exit
  %i.ok = load ptr, ptr %2, align 8, !tbaa !8
  %i.ol = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.om = getelementptr inbounds nuw [96 x i8], ptr %i.ok, i64 %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !38 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nk, i8 0, i64 56, i1 false)
  %i.op = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 56) #10
  %i.oq = load ptr, ptr %3, align 8, !tbaa !8
  %i.or = getelementptr inbounds nuw [56 x i8], ptr %i.oq, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.or, ptr noundef nonnull align 8 dereferenceable(56) %i.nk, i64 56, i1 false), !tbaa.struct !17
  %.val.i816 = load i64, ptr %i.nl, align 8, !tbaa !20
  %i.os = add i64 %.val.i816, -1                  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nk, i8 0, i64 56, i1 false)
  %i.ot = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 56) #10
  %i.ou = load ptr, ptr %3, align 8, !tbaa !8
  %i.ov = getelementptr inbounds nuw [56 x i8], ptr %i.ou, i64 %i.ot
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ov, ptr noundef nonnull align 8 dereferenceable(56) %i.nk, i64 56, i1 false), !tbaa.struct !17
  %.val.i817 = load i64, ptr %i.nl, align 8, !tbaa !20
  %i.ow = add i64 %.val.i817, -1                  ; 5 uses
  %i.ox = load ptr, ptr %3, align 8, !tbaa !8
  %i.oy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.oo) #10
  %i.oz = getelementptr inbounds nuw [56 x i8], ptr %i.ox, i64 %i.oy
  store i32 1, ptr %i.oz, align 8, !tbaa !23
  %i.pa = load ptr, ptr %3, align 8, !tbaa !8
  %i.pb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.oo) #10
  %i.pc = getelementptr inbounds nuw [56 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 %0, ptr %i.pd, align 4, !tbaa !27
  %i.pe = load ptr, ptr %3, align 8, !tbaa !8
  %i.pf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.oo) #10
  %i.pg = getelementptr inbounds nuw [56 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  store i64 %i.os, ptr %i.ph, align 8, !tbaa !26
  %i.pi = load ptr, ptr %3, align 8, !tbaa !8
  %i.pj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.oo) #10
  %i.pk = getelementptr inbounds nuw [56 x i8], ptr %i.pi, i64 %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  store i64 %i.ow, ptr %i.pl, align 8, !tbaa !24
  %i.pm = load ptr, ptr %3, align 8, !tbaa !8
  %i.pn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.os) #10
  %i.po = getelementptr inbounds nuw [56 x i8], ptr %i.pm, i64 %i.pn
  store i32 3, ptr %i.po, align 8, !tbaa !23
  %i.pp = load ptr, ptr %3, align 8, !tbaa !8
  %i.pq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.os) #10
  %i.pr = getelementptr inbounds nuw [56 x i8], ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i64 %.0775854, ptr %i.ps, align 8, !tbaa !40
  %i.pt = load ptr, ptr %3, align 8, !tbaa !8
  %i.pu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.os) #10
  %i.pv = getelementptr inbounds nuw [56 x i8], ptr %i.pt, i64 %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  store i64 %i.oo, ptr %i.pw, align 8, !tbaa !25
  %i.px = load ptr, ptr %3, align 8, !tbaa !8
  %i.py = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.ow) #10
  %i.pz = getelementptr inbounds nuw [56 x i8], ptr %i.px, i64 %i.py
  store i32 3, ptr %i.pz, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.nm, i8 0, i64 96, i1 false)
  %i.qa = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 96) #10
  %i.qb = load ptr, ptr %2, align 8, !tbaa !8
  %i.qc = getelementptr inbounds nuw [96 x i8], ptr %i.qb, i64 %i.qa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qc, ptr noundef nonnull align 8 dereferenceable(96) %i.nm, i64 96, i1 false), !tbaa.struct !16
  %.val.i818 = load i64, ptr %i.nn, align 8, !tbaa !20
  %i.qd = add i64 %.val.i818, -1                  ; 28 uses
  %i.qe = load ptr, ptr %3, align 8, !tbaa !8
  %i.qf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.ow) #10
  %i.qg = getelementptr inbounds nuw [56 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  store i64 %i.qd, ptr %i.qh, align 8, !tbaa !40
  %i.qi = load ptr, ptr %2, align 8, !tbaa !8
  %i.qj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.qk = getelementptr inbounds nuw [96 x i8], ptr %i.qi, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 92
  store i8 1, ptr %i.ql, align 4, !tbaa !39
  %i.qm = load ptr, ptr %3, align 8, !tbaa !8
  %i.qn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %i.ow) #10
  %i.qo = getelementptr inbounds nuw [56 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  store i64 %i.oo, ptr %i.qp, align 8, !tbaa !25
  %i.qq = icmp eq i64 %.0775854, %.0
  %spec.select = select i1 %i.qq, i64 %i.qd, i64 %.0776853 ; 3 uses
  %i.qr = load ptr, ptr %2, align 8, !tbaa !8
  %i.qs = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.qt = getelementptr inbounds nuw [96 x i8], ptr %i.qr, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %2, align 8, !tbaa !8
  %i.qw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.qx = getelementptr inbounds nuw [96 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.qz = load <2 x double>, ptr %i.qu, align 8
  %i.ra = load <2 x double>, ptr %i.qy, align 8
  %i.rb = fsub <2 x double> %i.qz, %i.ra
  %.fr938 = freeze <2 x double> %i.rb
  %9 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr938)
  %10 = fcmp ugt <2 x double> %9, splat (double f0x3E7AD7F29ABCAF48)
  %11 = bitcast <2 x i1> %10 to i2
  %12 = icmp eq i2 %11, 0
  %.1780 = select i1 %12, i64 %i.qd, i64 %.0779852 ; 3 uses
  %i.rc = load ptr, ptr %2, align 8, !tbaa !8
  %i.rd = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.re = getelementptr inbounds nuw [96 x i8], ptr %i.rc, i64 %i.rd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.nm, ptr noundef nonnull align 8 dereferenceable(96) %i.re, i64 96, i1 false), !tbaa.struct !16
  %i.rf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10 ; 2 uses
  %i.rg = load ptr, ptr %i.no, align 8, !tbaa !70 ; 2 uses
  %magicptr795 = ptrtoint ptr %i.rg to i64
  switch i64 %magicptr795, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %greater_than_equal_to.exit.thread
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite793 = tail call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.rh) #11 ; 0 uses
  tail call void @abort() #12
  unreachable

bb.an:                                            ; preds = %greater_than_equal_to.exit.thread
  %i.ri = load ptr, ptr %2, align 8, !tbaa !8
  %i.rj = getelementptr inbounds nuw [96 x i8], ptr %i.ri, i64 %i.rf
  tail call void %i.rg(ptr noundef byval(%struct.trap_t) align 8 %i.rj) #10
  br label %bb.ao

bb.ao:                                            ; preds = %greater_than_equal_to.exit.thread, %bb.an
  %i.rk = load ptr, ptr %2, align 8, !tbaa !8
  %i.rl = getelementptr inbounds nuw [96 x i8], ptr %i.rk, i64 %i.rf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.rl, ptr noundef nonnull align 8 dereferenceable(96) %i.nm, i64 96, i1 false), !tbaa.struct !16
  %i.rm = load ptr, ptr %2, align 8, !tbaa !8
  %i.rn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ro = getelementptr inbounds nuw [96 x i8], ptr %i.rm, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 72
  store i64 %i.os, ptr %i.rp, align 8, !tbaa !38
  %i.rq = load ptr, ptr %2, align 8, !tbaa !8
  %i.rr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.rs = getelementptr inbounds nuw [96 x i8], ptr %i.rq, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 72
  store i64 %i.ow, ptr %i.rt, align 8, !tbaa !38
  %i.ru = load ptr, ptr %2, align 8, !tbaa !8
  %i.rv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.rw = getelementptr inbounds nuw [96 x i8], ptr %i.ru, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 56
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !35
  %i.rz = add i64 %i.ry, -1
  %i.sa = icmp ult i64 %i.rz, -2
  br i1 %i.sa, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sb = load ptr, ptr %2, align 8, !tbaa !8
  %i.sc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.sd = getelementptr inbounds nuw [96 x i8], ptr %i.sb, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !36
  %i.sg = add i64 %i.sf, -1
  %i.sh = icmp ult i64 %i.sg, -2
  br i1 %i.sh, label %bb.aq, label %.thread843

.thread843:                                       ; preds = %bb.ap
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite792 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 19, i64 1, ptr %i.si) #11 ; 0 uses
  br label %.critedge

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.sj = load ptr, ptr %2, align 8, !tbaa !8
  %i.sk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.sl = getelementptr inbounds nuw [96 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !35
  %i.so = add i64 %i.sn, -1
  %i.sp = icmp ult i64 %i.so, -2
  br i1 %i.sp, label %bb.ar, label %bb.bj

bb.ar:                                            ; preds = %bb.aq
  %i.sq = load ptr, ptr %2, align 8, !tbaa !8
  %i.sr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ss = getelementptr inbounds nuw [96 x i8], ptr %i.sq, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  %i.su = load i64, ptr %i.st, align 8, !tbaa !36
  %i.sv = add i64 %i.su, -1
  %i.sw = icmp ult i64 %i.sv, -2
  br i1 %i.sw, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val801 = load double, ptr %i.c, align 8
  %.val802 = load double, ptr %i.e, align 8
  tail call fastcc void @update_trapezoid(double %.val801, double %.val802, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0775854, i64 noundef %i.qd)
  %i.sx = load ptr, ptr %2, align 8, !tbaa !8
  %i.sy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.sz = getelementptr inbounds nuw [96 x i8], ptr %i.sx, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !30
  %i.tc = load ptr, ptr %2, align 8, !tbaa !8
  %i.td = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.te = getelementptr inbounds nuw [96 x i8], ptr %i.tc, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !30
  %i.th = fsub double %i.tb, %i.tg
  %i.ti = tail call double @llvm.fabs.f64(double %i.th)
  %i.tj = fcmp ugt double %i.ti, f0x3E7AD7F29ABCAF48
  br i1 %i.tj, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.tk = load ptr, ptr %2, align 8, !tbaa !8
  %i.tl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.tm = getelementptr inbounds nuw [96 x i8], ptr %i.tk, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load double, ptr %i.tn, align 8, !tbaa !31
  %i.tp = load ptr, ptr %2, align 8, !tbaa !8
  %i.tq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.tr = getelementptr inbounds nuw [96 x i8], ptr %i.tp, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !31
  %i.tu = fsub double %i.to, %i.tt
  %i.tv = tail call double @llvm.fabs.f64(double %i.tu)
  %i.tw = fcmp ole double %i.tv, f0x3E7AD7F29ABCAF48
  %or.cond = and i1 %i.tw, %.0.i812
  br i1 %or.cond, label %bb.au, label %bb.bg

bb.au:                                            ; preds = %bb.at
  %.0784 = load i32, ptr %.pn7.in.in.i806, align 4, !tbaa !9 ; 2 uses
  %i.tx = icmp sgt i32 %.0784, 0
  br i1 %i.tx, label %bb.av, label %is_left_of.exit.thread833

bb.av:                                            ; preds = %bb.au
  %i.ty = zext nneg i32 %.0784 to i64
  %i.tz = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.ty ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load double, ptr %i.ua, align 8         ; 6 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ud = load double, ptr %i.uc, align 8         ; 6 uses
  %i.ue = load double, ptr %i.tz, align 8         ; 6 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ug = load double, ptr %i.uf, align 8         ; 7 uses
  %i.uh = fadd double %i.ug, f0x3E7AD7F29ABCAF48
  %i.ui = fcmp ogt double %i.ud, %i.uh
  %i.uj = fadd double %i.ug, f0xBE7AD7F29ABCAF48
  %i.uk = fcmp uge double %i.ud, %i.uj
  %i.ul = fcmp ogt double %i.ub, %i.ue
  %narrow.i.i819 = select i1 %i.uk, i1 %i.ul, i1 false
  %i.um = select i1 %i.ui, i1 true, i1 %narrow.i.i819
  %i.un = load double, ptr %i.h, align 8, !tbaa !50 ; 5 uses
  %i.uo = fsub double %i.ud, %i.un
  %i.up = tail call double @llvm.fabs.f64(double %i.uo)
  %i.uq = fcmp ugt double %i.up, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.um, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  br i1 %i.uq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ur = load double, ptr %4, align 8, !tbaa !51
  %i.us = fcmp olt double %i.ur, %i.ub
  br i1 %i.us, label %is_left_of.exit.thread, label %is_left_of.exit.thread833

bb.ay:                                            ; preds = %bb.aw
  %i.ut = fsub double %i.ug, %i.un
  %i.uu = tail call double @llvm.fabs.f64(double %i.ut)
  %i.uv = fcmp ugt double %i.uu, f0x3E7AD7F29ABCAF48
  %i.uw = load double, ptr %4, align 8            ; 2 uses
  br i1 %i.uv, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ux = fcmp olt double %i.uw, %i.ue
  br i1 %i.ux, label %is_left_of.exit.thread, label %is_left_of.exit.thread833

bb.ba:                                            ; preds = %bb.ay
  %i.uy = fsub double %i.ub, %i.ue
  %i.uz = fsub double %i.un, %i.ug
  %i.va = fsub double %i.ud, %i.ug
  %i.vb = fsub double %i.uw, %i.ue
  %i.vc = fneg double %i.vb
  %i.vd = fmul double %i.va, %i.vc
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.uy, double %i.uz, double %i.vd)
  br label %is_left_of.exit

bb.bb:                                            ; preds = %bb.av
  br i1 %i.uq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vf = load double, ptr %4, align 8, !tbaa !51
  %i.vg = fcmp olt double %i.vf, %i.ub
  br i1 %i.vg, label %is_left_of.exit.thread, label %is_left_of.exit.thread833

bb.bd:                                            ; preds = %bb.bb
  %i.vh = fsub double %i.ug, %i.un
  %i.vi = tail call double @llvm.fabs.f64(double %i.vh)
  %i.vj = fcmp ugt double %i.vi, f0x3E7AD7F29ABCAF48
  %i.vk = load double, ptr %4, align 8            ; 2 uses
  br i1 %i.vj, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vl = fcmp olt double %i.vk, %i.ue
  br i1 %i.vl, label %is_left_of.exit.thread, label %is_left_of.exit.thread833

bb.bf:                                            ; preds = %bb.bd
  %i.vm = fsub double %i.ue, %i.ub
  %i.vn = fsub double %i.un, %i.ud
  %i.vo = fsub double %i.ug, %i.ud
  %i.vp = fsub double %i.vk, %i.ub
  %i.vq = fneg double %i.vp
end_hunk_0
begin_hunk_1_@add_segment:bb.a
  %i.acn = load double, ptr %4, align 8           ; 2 uses
  br i1 %i.acm, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aco = fcmp olt double %i.acn, %i.abh
  br i1 %i.aco, label %is_left_of.exit827.thread, label %is_left_of.exit827.thread841

bb.by:                                            ; preds = %bb.bw
  %i.acp = fsub double %i.abh, %i.abe
  %i.acq = fsub double %i.abq, %i.abg
  %i.acr = fsub double %i.abj, %i.abg
  %i.acs = fsub double %i.acn, %i.abe
  %i.act = fneg double %i.acs
  %i.acu = fmul double %i.acr, %i.act
  %i.acv = tail call double @llvm.fmuladd.f64(double %i.acp, double %i.acq, double %i.acu)
  br label %is_left_of.exit827

is_left_of.exit827:                               ; preds = %bb.bt, %bb.by
  %.0.i823 = phi double [ %i.ach, %bb.bt ], [ %i.acv, %bb.by ]
  %i.acw = fcmp ogt double %.0.i823, 0.000000e+00
  br i1 %i.acw, label %is_left_of.exit827.thread, label %is_left_of.exit827.thread841

is_left_of.exit827.thread:                        ; preds = %bb.bv, %bb.bx, %bb.bs, %bb.bq, %is_left_of.exit827
  %i.acx = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.acy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.acz = getelementptr inbounds nuw [96 x i8], ptr %i.acx, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 64
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !36
  %i.adc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.adb) #10
  %i.add = getelementptr inbounds nuw [96 x i8], ptr %i.acx, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 40
  store i64 %.0775854, ptr %i.ade, align 8, !tbaa !34
  %i.adf = load ptr, ptr %2, align 8, !tbaa !8
  %i.adg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.adh = getelementptr inbounds nuw [96 x i8], ptr %i.adf, i64 %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 56
  store i64 -1, ptr %i.adi, align 8, !tbaa !35
  %i.adj = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

is_left_of.exit827.thread841:                     ; preds = %bb.bv, %bb.bx, %bb.bs, %bb.bq, %is_left_of.exit827, %bb.bn
  %i.adk = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.adl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.adm = getelementptr inbounds nuw [96 x i8], ptr %i.adk, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 64
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !36
  %i.adp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ado) #10
  %i.adq = getelementptr inbounds nuw [96 x i8], ptr %i.adk, i64 %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 48
  store i64 %i.qd, ptr %i.adr, align 8, !tbaa !37
  %i.ads = load ptr, ptr %2, align 8, !tbaa !8
  %i.adt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.adu = getelementptr inbounds nuw [96 x i8], ptr %i.ads, i64 %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 56
  store i64 -1, ptr %i.adv, align 8, !tbaa !35
  %i.adw = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.bz:                                            ; preds = %bb.bm, %bb.bl
  %i.adx = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ady = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.adz = getelementptr inbounds nuw [96 x i8], ptr %i.adx, i64 %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 64
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !36
  %i.aec = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.aeb) #10
  %i.aed = getelementptr inbounds nuw [96 x i8], ptr %i.adx, i64 %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 40
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !34
  %i.aeg = add i64 %i.aef, -1
  %i.aeh = icmp ult i64 %i.aeg, -2
  br i1 %i.aeh, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aei = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.aej = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aek = getelementptr inbounds nuw [96 x i8], ptr %i.aei, i64 %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 64
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !36
  %i.aen = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.aem) #10
  %i.aeo = getelementptr inbounds nuw [96 x i8], ptr %i.aei, i64 %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 48
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !37
  %i.aer = add i64 %i.aeq, -1
  %i.aes = icmp ult i64 %i.aer, -2
  br i1 %i.aes, label %.sink.split897, label %bb.cb

.sink.split897:                                   ; preds = %bb.ca
  %i.aet = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.aeu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aev = getelementptr inbounds nuw [96 x i8], ptr %i.aet, i64 %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 64
  %i.aex = load i64, ptr %i.aew, align 8, !tbaa !36
  %i.aey = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.aex) #10
  %i.aez = getelementptr inbounds nuw [96 x i8], ptr %i.aet, i64 %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 40
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !34
  %i.afc = icmp eq i64 %i.afb, %.0775854          ; 2 uses
  %i.afd = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.afe = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aff = getelementptr inbounds nuw [96 x i8], ptr %i.afd, i64 %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 64
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !36
  %i.afi = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.afh) #10
  %i.afj = getelementptr inbounds nuw [96 x i8], ptr %i.afd, i64 %i.afi
  %i.afk = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %.933 = select i1 %i.afc, i64 48, i64 40
  %.934 = select i1 %i.afc, i32 1, i32 2
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %.933
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !13
  %i.afn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.afo = getelementptr inbounds nuw [96 x i8], ptr %i.afk, i64 %i.afn
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 64
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !36
  %i.afr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.afq) #10
  %i.afs = getelementptr inbounds nuw [96 x i8], ptr %i.afk, i64 %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 80
  store i64 %i.afm, ptr %i.aft, align 8, !tbaa !52
  %i.afu = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.afv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.afw = getelementptr inbounds nuw [96 x i8], ptr %i.afu, i64 %i.afv
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 64
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !36
  %i.afz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.afy) #10
  %i.aga = getelementptr inbounds nuw [96 x i8], ptr %i.afu, i64 %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 88
  store i32 %.934, ptr %i.agb, align 8, !tbaa !53
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split897, %bb.ca, %bb.bz
  %i.agc = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.agd = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.age = getelementptr inbounds nuw [96 x i8], ptr %i.agc, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 64
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !36
  %i.agh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.agg) #10
  %i.agi = getelementptr inbounds nuw [96 x i8], ptr %i.agc, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 40
  store i64 %.0775854, ptr %i.agj, align 8, !tbaa !34
  %i.agk = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.agl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.agm = getelementptr inbounds nuw [96 x i8], ptr %i.agk, i64 %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !36
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bk, %bb.bj
  %i.agp = load ptr, ptr %2, align 8, !tbaa !8
  %i.agq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.agr = getelementptr inbounds nuw [96 x i8], ptr %i.agp, i64 %i.agq
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 32
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !30
  %i.agu = load double, ptr %i.h, align 8, !tbaa !71 ; 3 uses
  %i.agv = fsub double %i.agt, %i.agu
  %i.agw = tail call double @llvm.fabs.f64(double %i.agv)
  %i.agx = fcmp ugt double %i.agw, f0x3E7AD7F29ABCAF48
  %i.agy = load ptr, ptr %2, align 8, !tbaa !8
  %i.agz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aha = getelementptr inbounds nuw [96 x i8], ptr %i.agy, i64 %i.agz ; 2 uses
  br i1 %i.agx, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !31
  %i.ahd = load double, ptr %4, align 8, !tbaa !72
  %i.ahe = fcmp ogt double %i.ahc, %i.ahd
  %.val.pre = load double, ptr %i.c, align 8
  %.val798.pre = load double, ptr %i.e, align 8
  br label %less_than.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  %i.ahg = load double, ptr %i.e, align 8, !tbaa !73 ; 3 uses
  %i.ahh = fsub double %i.ahg, %i.agu
  %i.ahi = load double, ptr %4, align 8, !tbaa !72 ; 2 uses
  %i.ahj = load double, ptr %i.c, align 8, !tbaa !74 ; 3 uses
  %i.ahk = fsub double %i.ahj, %i.ahi
  %i.ahl = load ptr, ptr %2, align 8, !tbaa !8
  %i.ahm = load double, ptr %i.ahf, align 8, !tbaa !30 ; 4 uses
  %i.ahn = fsub double %i.ahm, %i.agu
  %i.aho = fdiv double %i.ahn, %i.ahh
  %i.ahp = tail call double @llvm.fmuladd.f64(double %i.aho, double %i.ahk, double %i.ahi) ; 2 uses
  %i.ahq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ahr = getelementptr inbounds nuw [96 x i8], ptr %i.ahl, i64 %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24
  %i.aht = load <2 x double>, ptr %i.ahs, align 8 ; 3 uses
  %i.ahu = extractelement <2 x double> %i.aht, i64 1 ; 2 uses
  %i.ahv = fadd double %i.ahu, f0x3E7AD7F29ABCAF48
  %i.ahw = fcmp ogt double %i.ahm, %i.ahv
  %i.ahx = fadd double %i.ahu, f0xBE7AD7F29ABCAF48
  %i.ahy = fcmp uge double %i.ahm, %i.ahx
  %i.ahz = extractelement <2 x double> %i.aht, i64 0
  %i.aia = fcmp ogt double %i.ahp, %i.ahz
  %narrow.i.i.i = select i1 %i.ahy, i1 %i.aia, i1 false
  %i.aib = select i1 %i.ahw, i1 true, i1 %narrow.i.i.i
  br i1 %i.aib, label %less_than.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aic = insertelement <2 x double> poison, double %i.ahp, i64 0
  %i.aid = insertelement <2 x double> %i.aic, double %i.ahm, i64 1
  %i.aie = fsub <2 x double> %i.aid, %i.aht
  %.fr939 = freeze <2 x double> %i.aie
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr939)
  %14 = fcmp ugt <2 x double> %13, splat (double f0x3E7AD7F29ABCAF48)
  %15 = bitcast <2 x i1> %14 to i2
  %.not4.i = icmp ne i2 %15, 0
  br label %less_than.exit

less_than.exit:                                   ; preds = %bb.cf, %bb.ce, %bb.cd
  %.val798 = phi double [ %.val798.pre, %bb.cd ], [ %i.ahg, %bb.ce ], [ %i.ahg, %bb.cf ]
  %.val = phi double [ %.val.pre, %bb.cd ], [ %i.ahj, %bb.ce ], [ %i.ahj, %bb.cf ]
  %.0772 = phi i1 [ %i.ahe, %bb.cd ], [ false, %bb.ce ], [ %.not4.i, %bb.cf ]
  tail call fastcc void @update_trapezoid(double %.val, double %.val798, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0775854, i64 noundef %i.qd)
  %i.aif = load ptr, ptr %2, align 8, !tbaa !8
  %i.aig = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aih = getelementptr inbounds nuw [96 x i8], ptr %i.aif, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 32
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !30
  %i.aik = load ptr, ptr %2, align 8, !tbaa !8
  %i.ail = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.aim = getelementptr inbounds nuw [96 x i8], ptr %i.aik, i64 %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 32
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !30
  %i.aip = fsub double %i.aij, %i.aio
  %i.aiq = tail call double @llvm.fabs.f64(double %i.aip)
  %i.air = fcmp ugt double %i.aiq, f0x3E7AD7F29ABCAF48
  br i1 %i.air, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %less_than.exit
  %i.ais = load ptr, ptr %2, align 8, !tbaa !8
  %i.ait = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aiu = getelementptr inbounds nuw [96 x i8], ptr %i.ais, i64 %i.ait
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !31
  %i.aix = load ptr, ptr %2, align 8, !tbaa !8
  %i.aiy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.aiz = getelementptr inbounds nuw [96 x i8], ptr %i.aix, i64 %i.aiy
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24
  %i.ajb = load double, ptr %i.aja, align 8, !tbaa !31
  %i.ajc = fsub double %i.aiw, %i.ajb
  %i.ajd = tail call double @llvm.fabs.f64(double %i.ajc)
  %i.aje = fcmp ole double %i.ajd, f0x3E7AD7F29ABCAF48
  %or.cond5 = and i1 %i.aje, %.0.i812
  br i1 %or.cond5, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ajf = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ajg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ajh = getelementptr inbounds nuw [96 x i8], ptr %i.ajf, i64 %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 56
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !35
  %i.ajk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ajj) #10
  %i.ajl = getelementptr inbounds nuw [96 x i8], ptr %i.ajf, i64 %i.ajk
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 40
  store i64 %.0775854, ptr %i.ajm, align 8, !tbaa !34
  %i.ajn = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ajo = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ajp = getelementptr inbounds nuw [96 x i8], ptr %i.ajn, i64 %i.ajo
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 56
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !35
  %i.ajs = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ajr) #10
  %i.ajt = getelementptr inbounds nuw [96 x i8], ptr %i.ajn, i64 %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 48
  store i64 -1, ptr %i.aju, align 8, !tbaa !37
  %i.ajv = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ajw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ajx = getelementptr inbounds nuw [96 x i8], ptr %i.ajv, i64 %i.ajw
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 64
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !36
  %i.aka = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ajz) #10
  %i.akb = getelementptr inbounds nuw [96 x i8], ptr %i.ajv, i64 %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 40
  store i64 %i.qd, ptr %i.akc, align 8, !tbaa !34
  %i.akd = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ake = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akf = getelementptr inbounds nuw [96 x i8], ptr %i.akd, i64 %i.ake
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 64
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !36
  %i.aki = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.akh) #10
  %i.akj = getelementptr inbounds nuw [96 x i8], ptr %i.akd, i64 %i.aki
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 48
  store i64 -1, ptr %i.akk, align 8, !tbaa !37
  %i.akl = load ptr, ptr %2, align 8, !tbaa !8
  %i.akm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akn = getelementptr inbounds nuw [96 x i8], ptr %i.akl, i64 %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 64
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !36
  %i.akq = load ptr, ptr %2, align 8, !tbaa !8
  %i.akr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.aks = getelementptr inbounds nuw [96 x i8], ptr %i.akq, i64 %i.akr
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 56
  store i64 %i.akp, ptr %i.akt, align 8, !tbaa !35
  %i.aku = load ptr, ptr %2, align 8, !tbaa !8
  %i.akv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akw = getelementptr inbounds nuw [96 x i8], ptr %i.aku, i64 %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 64
  store i64 -1, ptr %i.akx, align 8, !tbaa !36
  %i.aky = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg, %less_than.exit
  %i.akz = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ala = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alb = getelementptr inbounds nuw [96 x i8], ptr %i.akz, i64 %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 56
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !35
  %i.ale = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ald) #10
  %i.alf = getelementptr inbounds nuw [96 x i8], ptr %i.akz, i64 %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  store i64 %.0775854, ptr %i.alg, align 8, !tbaa !34
  %i.alh = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ali = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alj = getelementptr inbounds nuw [96 x i8], ptr %i.alh, i64 %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 56
  %i.all = load i64, ptr %i.alk, align 8, !tbaa !35
  %i.alm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.all) #10
  %i.aln = getelementptr inbounds nuw [96 x i8], ptr %i.alh, i64 %i.alm
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 48 ; 2 uses
  br i1 %.0772, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.qd, ptr %i.alo, align 8, !tbaa !37
  %i.alp = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.alq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alr = getelementptr inbounds nuw [96 x i8], ptr %i.alp, i64 %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 64
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !36
  %i.alu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.alt) #10
  %i.alv = getelementptr inbounds nuw [96 x i8], ptr %i.alp, i64 %i.alu
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 40
  store i64 %i.qd, ptr %i.alw, align 8, !tbaa !34
  %i.alx = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.aly = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alz = getelementptr inbounds nuw [96 x i8], ptr %i.alx, i64 %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 64
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !36
  %i.amc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amb) #10
  %i.amd = getelementptr inbounds nuw [96 x i8], ptr %i.alx, i64 %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 48
  store i64 -1, ptr %i.ame, align 8, !tbaa !37
  %i.amf = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  store i64 -1, ptr %i.alo, align 8, !tbaa !37
  %i.amg = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ami = getelementptr inbounds nuw [96 x i8], ptr %i.amg, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 64
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !36
  %i.aml = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amk) #10
  %i.amm = getelementptr inbounds nuw [96 x i8], ptr %i.amg, i64 %i.aml
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 40
  store i64 %.0775854, ptr %i.amn, align 8, !tbaa !34
  %i.amo = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.amq = getelementptr inbounds nuw [96 x i8], ptr %i.amo, i64 %i.amp
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 64
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !36
  %i.amt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ams) #10
  %i.amu = getelementptr inbounds nuw [96 x i8], ptr %i.amo, i64 %i.amt
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 48
  store i64 %i.qd, ptr %i.amv, align 8, !tbaa !37
  %i.amw = load ptr, ptr %2, align 8, !tbaa !8
  %i.amx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.amy = getelementptr inbounds nuw [96 x i8], ptr %i.amw, i64 %i.amx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 64
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !36
  %i.anb = load ptr, ptr %2, align 8, !tbaa !8
  %i.anc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.and = getelementptr inbounds nuw [96 x i8], ptr %i.anb, i64 %i.anc
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 56
  store i64 %i.ana, ptr %i.ane, align 8, !tbaa !35
  %i.anf = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cb, %is_left_of.exit827.thread841, %is_left_of.exit827.thread, %bb.bi, %is_left_of.exit.thread833, %is_left_of.exit.thread, %bb.cj, %bb.ck, %bb.ch
  %.sink924.sink = phi i64 [ %i.zl, %bb.bi ], [ %i.qd, %bb.ch ], [ %.0775854, %bb.cj ], [ %i.qd, %bb.ck ], [ %i.qd, %is_left_of.exit.thread ], [ %.0775854, %is_left_of.exit.thread833 ], [ %i.qd, %is_left_of.exit827.thread ], [ %.0775854, %is_left_of.exit827.thread841 ], [ %i.ago, %bb.cb ]
  %.sink922.sink = phi ptr [ %i.zh, %bb.bi ], [ %i.aky, %bb.ch ], [ %i.amf, %bb.cj ], [ %i.anf, %bb.ck ], [ %i.wg, %is_left_of.exit.thread ], [ %i.wt, %is_left_of.exit.thread833 ], [ %i.adj, %is_left_of.exit827.thread ], [ %i.adw, %is_left_of.exit827.thread841 ], [ %i.agk, %bb.cb ]
  %.sink921.sink = phi i64 [ 48, %bb.bi ], [ 64, %bb.ch ], [ 64, %bb.cj ], [ 64, %bb.ck ], [ 64, %is_left_of.exit.thread ], [ 64, %is_left_of.exit.thread833 ], [ 64, %is_left_of.exit827.thread ], [ 64, %is_left_of.exit827.thread841 ], [ 48, %bb.cb ]
  %.sink918.sink = phi i64 [ %i.qd, %bb.bi ], [ -1, %bb.ch ], [ -1, %bb.cj ], [ -1, %bb.ck ], [ -1, %is_left_of.exit.thread ], [ -1, %is_left_of.exit.thread833 ], [ -1, %is_left_of.exit827.thread ], [ -1, %is_left_of.exit827.thread841 ], [ %i.qd, %bb.cb ]
  %.sink926 = phi i64 [ 56, %bb.bi ], [ 64, %bb.ch ], [ 56, %bb.cj ], [ 64, %bb.ck ], [ 56, %is_left_of.exit.thread ], [ 56, %is_left_of.exit.thread833 ], [ 64, %is_left_of.exit827.thread ], [ 64, %is_left_of.exit827.thread841 ], [ 64, %bb.cb ]
  %i.ang = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.sink924.sink) #10
  %i.anh = getelementptr inbounds nuw [96 x i8], ptr %.sink922.sink, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 %.sink921.sink
  store i64 %.sink918.sink, ptr %i.ani, align 8, !tbaa !13
  %i.anj = load ptr, ptr %2, align 8, !tbaa !8
  %i.ank = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.anl = getelementptr inbounds nuw [96 x i8], ptr %i.anj, i64 %i.ank
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 %.sink926
  %.1 = load i64, ptr %i.anm, align 8, !tbaa !13  ; 2 uses
  %i.ann = load ptr, ptr %2, align 8, !tbaa !8
  %i.ano = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.anp = getelementptr inbounds nuw [96 x i8], ptr %i.ann, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 4
  store i32 %0, ptr %i.anq, align 4, !tbaa !32
  %i.anr = load ptr, ptr %2, align 8, !tbaa !8
  %i.ans = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qd) #10
  %i.ant = getelementptr inbounds nuw [96 x i8], ptr %i.anr, i64 %i.ans
  store i32 %0, ptr %i.ant, align 8, !tbaa !33
  %i.anu = add i64 %.1, -1
  %i.anv = icmp ult i64 %i.anu, -2
  br i1 %i.anv, label %bb.al, label %.critedge

.critedge:                                        ; preds = %greater_than_equal_to.exit, %bb.cl, %bb.ak, %.thread843
  %.2781 = phi i64 [ %.1780, %.thread843 ], [ 0, %bb.ak ], [ %.0779852, %greater_than_equal_to.exit ], [ %.1780, %bb.cl ]
  %.2778 = phi i64 [ %spec.select, %.thread843 ], [ 0, %bb.ak ], [ %.0776853, %greater_than_equal_to.exit ], [ %spec.select, %bb.cl ]
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.0, i64 noundef %i.gq, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.2778, i64 noundef %.2781, i32 noundef 2, ptr noundef %2, ptr noundef %3)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.anw, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @locate_endpoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr101 = phi i64 [ %2, %bb.a ], [ %.tr101.be, %tailrecurse.backedge ]
  %i.b = load ptr, ptr %4, align 8, !tbaa !8
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.tr101) #10
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  switch i32 %i.e, label %bb.af [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  ret i64 %i.g

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load <2 x double>, ptr %0, align 8       ; 3 uses
  %i.j = load <2 x double>, ptr %i.h, align 8     ; 3 uses
  %i.k = extractelement <2 x double> %i.j, i64 1  ; 2 uses
  %i.l = fadd double %i.k, f0x3E7AD7F29ABCAF48    ; 2 uses
  %i.m = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.n = fcmp ogt double %i.m, %i.l
  %i.o = fadd double %i.k, f0xBE7AD7F29ABCAF48    ; 2 uses
  %i.p = fcmp uge double %i.m, %i.o
  %i.q = extractelement <2 x double> %i.i, i64 0
  %i.r = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.s = fcmp ogt double %i.q, %i.r
  %narrow.i = select i1 %i.p, i1 %i.s, i1 false
  %i.t = select i1 %i.n, i1 true, i1 %narrow.i
  br i1 %i.t, label %tailrecurse.backedge, label %bb.d

tailrecurse.backedge:                             ; preds = %bb.c, %is_left_of.exit84, %bb.w, %bb.y, %bb.ad, %bb.ab, %is_left_of.exit, %bb.l, %bb.n, %bb.s, %bb.q, %bb.i, %bb.d, %bb.e, %is_left_of.exit.thread90
  %.sink = phi i64 [ 40, %is_left_of.exit84 ], [ %., %bb.e ], [ 48, %bb.c ], [ 40, %is_left_of.exit ], [ %.110, %bb.i ], [ 40, %bb.d ], [ 48, %is_left_of.exit.thread90 ], [ 40, %bb.q ], [ 40, %bb.s ], [ 40, %bb.n ], [ 40, %bb.l ], [ 40, %bb.ab ], [ 40, %bb.ad ], [ 40, %bb.y ], [ 40, %bb.w ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %.tr101.be = load i64, ptr %i.u, align 8, !tbaa !13
  br label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.v = fsub <2 x double> %i.i, %i.j
  %.fr114 = freeze <2 x double> %i.v
  %5 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr114)
  %6 = fcmp ugt <2 x double> %5, splat (double f0x3E7AD7F29ABCAF48)
  %7 = bitcast <2 x i1> %6 to i2
  %8 = icmp eq i2 %7, 0
  br i1 %8, label %bb.e, label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.d
  %i.w = load double, ptr %1, align 8
  %i.x = load double, ptr %i.a, align 8           ; 2 uses
  %i.y = fcmp ogt double %i.x, %i.l
  %i.z = fcmp uge double %i.x, %i.o
  %i.aa = fcmp ogt double %i.w, %i.r
  %narrow.i77 = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = select i1 %i.y, i1 true, i1 %narrow.i77
  %. = select i1 %i.ab, i64 48, i64 40
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %tailrecurse
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [64 x i8], ptr %3, i64 %i.ae ; 4 uses
  %i.ag = load <2 x double>, ptr %0, align 8      ; 9 uses
  %i.ah = load <2 x double>, ptr %i.af, align 8   ; 5 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 1 ; 11 uses
  %i.aj = extractelement <2 x double> %i.ah, i64 0 ; 9 uses
  %i.ak = fsub <2 x double> %i.ag, %i.ah
  %.fr112 = freeze <2 x double> %i.ak             ; 3 uses
  %9 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr112)
  %10 = fcmp ugt <2 x double> %9, splat (double f0x3E7AD7F29ABCAF48)
  %11 = bitcast <2 x i1> %10 to i2
  %12 = icmp eq i2 %11, 0
  br i1 %12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 8   ; 5 uses
  %i.an = fsub <2 x double> %i.ag, %i.am
  %.fr113 = freeze <2 x double> %i.an             ; 3 uses
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr113)
  %14 = fcmp ugt <2 x double> %13, splat (double f0x3E7AD7F29ABCAF48)
  %15 = bitcast <2 x i1> %14 to i2
  %16 = icmp eq i2 %15, 0
  br i1 %16, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = load double, ptr %i.a, align 8, !tbaa !50 ; 6 uses
  %i.ap = extractelement <2 x double> %i.ag, i64 1
  %i.aq = fsub double %i.ap, %i.ao
  %i.ar = tail call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ugt double %i.ar, f0x3E7AD7F29ABCAF48
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load double, ptr %1, align 8, !tbaa !51
  %i.au = extractelement <2 x double> %i.ag, i64 0
  %i.av = fcmp olt double %i.at, %i.au
  %.110 = select i1 %i.av, i64 40, i64 48
  br label %tailrecurse.backedge

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ax = load double, ptr %i.aw, align 8         ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.az = load double, ptr %i.ay, align 8         ; 6 uses
  %i.ba = fadd double %i.ai, f0x3E7AD7F29ABCAF48
  %i.bb = fcmp ogt double %i.az, %i.ba
  %i.bc = fadd double %i.ai, f0xBE7AD7F29ABCAF48
  %i.bd = fcmp uge double %i.az, %i.bc
  %i.be = fcmp ogt double %i.ax, %i.aj
  %narrow.i.i = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = select i1 %i.bb, i1 true, i1 %narrow.i.i
  %i.bg = fsub double %i.az, %i.ao
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ugt double %i.bh, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load double, ptr %1, align 8, !tbaa !51
  %i.bk = fcmp olt double %i.bj, %i.ax
  br i1 %i.bk, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.m:                                             ; preds = %bb.k
  %i.bl = fsub double %i.ai, %i.ao
  %i.bm = tail call double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp ugt double %i.bm, f0x3E7AD7F29ABCAF48
  %i.bo = load double, ptr %1, align 8            ; 2 uses
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = fcmp olt double %i.bo, %i.aj
  br i1 %i.bp, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.o:                                             ; preds = %bb.m
  %i.bq = fsub double %i.ax, %i.aj
  %i.br = fsub double %i.ao, %i.ai
  %i.bs = fsub double %i.az, %i.ai
  %i.bt = fsub double %i.bo, %i.aj
  %i.bu = fneg double %i.bt
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.br, double %i.bv)
  br label %is_left_of.exit

bb.p:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = load double, ptr %1, align 8, !tbaa !51
  %i.by = fcmp olt double %i.bx, %i.ax
  br i1 %i.by, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.r:                                             ; preds = %bb.p
  %i.bz = fsub double %i.ai, %i.ao
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ugt double %i.ca, f0x3E7AD7F29ABCAF48
  %i.cc = load double, ptr %1, align 8            ; 2 uses
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = fcmp olt double %i.cc, %i.aj
  br i1 %i.cd, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.t:                                             ; preds = %bb.r
  %i.ce = fsub double %i.aj, %i.ax
  %i.cf = fsub double %i.ao, %i.az
  %i.cg = fsub double %i.ai, %i.az
  %i.ch = fsub double %i.cc, %i.ax
  %i.ci = fneg double %i.ch
  %i.cj = fmul double %i.cg, %i.ci
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cf, double %i.cj)
  br label %is_left_of.exit

is_left_of.exit:                                  ; preds = %bb.o, %bb.t
  %.0.i = phi double [ %i.bw, %bb.o ], [ %i.ck, %bb.t ]
  %i.cl = fcmp ogt double %.0.i, 0.000000e+00
  br i1 %i.cl, label %tailrecurse.backedge, label %is_left_of.exit.thread90

is_left_of.exit.thread90:                         ; preds = %is_left_of.exit84, %bb.w, %bb.y, %bb.ad, %bb.ab, %bb.q, %bb.s, %bb.n, %bb.l, %is_left_of.exit
  br label %tailrecurse.backedge

bb.u:                                             ; preds = %bb.g
  %i.cm = fadd double %i.ai, f0x3E7AD7F29ABCAF48
  %i.cn = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  %i.co = fcmp ogt double %i.cn, %i.cm
  %i.cp = fadd double %i.ai, f0xBE7AD7F29ABCAF48
  %i.cq = fcmp uge double %i.cn, %i.cp
  %i.cr = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.cs = fcmp ogt double %i.cr, %i.aj
  %narrow.i.i78 = select i1 %i.cq, i1 %i.cs, i1 false
  %i.ct = select i1 %i.co, i1 true, i1 %narrow.i.i78
  %i.cu = extractelement <2 x double> %i.ag, i64 1 ; 3 uses
  %i.cv = fsub double %i.cn, %i.cu
  %i.cw = tail call double @llvm.fabs.f64(double %i.cv)
  %i.cx = fcmp ugt double %i.cw, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.cx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = extractelement <2 x double> %i.ag, i64 0
  %i.cz = fcmp olt double %i.cy, %i.cr
  br i1 %i.cz, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.x:                                             ; preds = %bb.v
  %i.da = fsub double %i.ai, %i.cu
  %i.db = tail call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ugt double %i.db, f0x3E7AD7F29ABCAF48
  br i1 %i.dc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = extractelement <2 x double> %i.ag, i64 0
  %i.de = fcmp olt double %i.dd, %i.aj
  br i1 %i.de, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.z:                                             ; preds = %bb.x
  %i.df = fsub <2 x double> %i.am, %i.ah          ; 2 uses
  %i.dg = extractelement <2 x double> %.fr112, i64 0
  %i.dh = fneg double %i.dg
  %i.di = extractelement <2 x double> %i.df, i64 1
  %i.dj = fmul double %i.di, %i.dh
  %i.dk = extractelement <2 x double> %.fr112, i64 1
  %i.dl = extractelement <2 x double> %i.df, i64 0
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.dj)
  br label %is_left_of.exit84

bb.aa:                                            ; preds = %bb.u
  br i1 %i.cx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = extractelement <2 x double> %i.ag, i64 0
  %i.do = fcmp olt double %i.dn, %i.cr
  br i1 %i.do, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.ac:                                            ; preds = %bb.aa
  %i.dp = fsub double %i.ai, %i.cu
  %i.dq = tail call double @llvm.fabs.f64(double %i.dp)
  %i.dr = fcmp ugt double %i.dq, f0x3E7AD7F29ABCAF48
  br i1 %i.dr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractelement <2 x double> %i.ag, i64 0
  %i.dt = fcmp olt double %i.ds, %i.aj
  br i1 %i.dt, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.ae:                                            ; preds = %bb.ac
  %i.du = fsub <2 x double> %i.ah, %i.am          ; 2 uses
  %i.dv = extractelement <2 x double> %.fr113, i64 0
  %i.dw = fneg double %i.dv
  %i.dx = extractelement <2 x double> %i.du, i64 1
  %i.dy = fmul double %i.dx, %i.dw
  %i.dz = extractelement <2 x double> %.fr113, i64 1
  %i.ea = extractelement <2 x double> %i.du, i64 0
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dz, double %i.dy)
  br label %is_left_of.exit84

is_left_of.exit84:                                ; preds = %bb.z, %bb.ae
  %.0.i80 = phi double [ %i.dm, %bb.z ], [ %i.eb, %bb.ae ]
  %i.ec = fcmp ogt double %.0.i80, 0.000000e+00
  br i1 %i.ec, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.af:                                            ; preds = %tailrecurse
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 307) #13 ; 0 uses
  tail call void @abort() #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_trapezoid(double %.16.val, double %.24.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = add i64 %i.e, -1
  %i.g = icmp ult i64 %i.f, -2
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = add i64 %i.l, -1
  %i.n = icmp ult i64 %i.m, -2
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = add i64 %i.s, -1
  %i.u = icmp ult i64 %i.t, -2
  %i.v = load ptr, ptr %1, align 8, !tbaa !8
  %i.w = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.v, i64 %i.w ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = load ptr, ptr %1, align 8, !tbaa !8
  %i.ah = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 -1, ptr %i.am, align 8, !tbaa !37
  %i.an = load ptr, ptr %1, align 8, !tbaa !8
  %i.ao = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.as = load ptr, ptr %1, align 8, !tbaa !8
  %i.at = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !34
  %i.aw = load ptr, ptr %1, align 8, !tbaa !8
  %i.ax = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink47 = phi i64 [ %i.ba, %bb.f ], [ -1, %bb.e ]
  %.sink42 = phi i64 [ %2, %bb.f ], [ %3, %bb.e ] ; 3 uses
  %.sink39 = phi i64 [ 40, %bb.f ], [ 48, %bb.e ] ; 2 uses
  %.sink23 = phi i64 [ 48, %bb.f ], [ 40, %bb.e ]
  %i.bb = load ptr, ptr %1, align 8, !tbaa !8
  %i.bc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 %.sink47, ptr %i.be, align 8, !tbaa !37
  %i.bf = load ptr, ptr %1, align 8, !tbaa !8
  %i.bg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !52
  %i.bk = load ptr, ptr %1, align 8, !tbaa !8
  %i.bl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.sink42) #10
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sink39
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !13
  %i.bo = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.bp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bq = getelementptr inbounds nuw [96 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.bs) #10
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %2, ptr %i.bv, align 8, !tbaa !35
  %i.bw = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.bx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.sink42) #10
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink23
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.cb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.ca) #10
  %i.cc = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store i64 %.sink42, ptr %i.cd, align 8, !tbaa !35
  %i.ce = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.cf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink39
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.ci) #10
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store i64 %3, ptr %i.cl, align 8, !tbaa !35
  %i.cm = load ptr, ptr %1, align 8, !tbaa !8
  %i.cn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.co = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  store i64 0, ptr %i.cp, align 8, !tbaa !52
  %i.cq = load ptr, ptr %1, align 8, !tbaa !8
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !37
  %i.ct = load ptr, ptr %1, align 8, !tbaa !8
  %i.cu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !34
  %i.cx = load ptr, ptr %1, align 8, !tbaa !8
  %i.cy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i64 -1, ptr %i.da, align 8, !tbaa !37
  %i.db = load ptr, ptr %1, align 8, !tbaa !8
  %i.dc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.dd = getelementptr inbounds nuw [96 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store i64 -1, ptr %i.de, align 8, !tbaa !37
  %i.df = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.dg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !34
  br label %bb.x

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.dk = load ptr, ptr %1, align 8, !tbaa !8
  %i.dl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.dm = getelementptr inbounds nuw [96 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !34 ; 2 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !8
  %i.dq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.do) #10
  %i.dr = getelementptr inbounds nuw [96 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !35 ; 3 uses
  %i.du = add i64 %i.dt, -1
  %i.dv = icmp ult i64 %i.du, -2
  br i1 %i.dv, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.dw = load ptr, ptr %1, align 8, !tbaa !8
  %i.dx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.do) #10
  %i.dy = getelementptr inbounds nuw [96 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eb = add i64 %i.ea, -1
  %i.ec = icmp ult i64 %i.eb, -2
  br i1 %i.ec, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ed = load ptr, ptr %1, align 8, !tbaa !8
  %i.ee = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.dt) #10
end_hunk_1
begin_hunk_2_@update_trapezoid:bb.a
  %i.ek = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.dt) #10
  %i.el = getelementptr inbounds nuw [96 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !32
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [64 x i8], ptr %0, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load double, ptr %i.eq, align 8         ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.et = load double, ptr %i.es, align 8         ; 6 uses
  %i.eu = load double, ptr %i.ep, align 8         ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ew = load double, ptr %i.ev, align 8         ; 7 uses
  %i.ex = fadd double %i.ew, f0x3E7AD7F29ABCAF48
  %i.ey = fcmp ogt double %i.et, %i.ex
  %i.ez = fadd double %i.ew, f0xBE7AD7F29ABCAF48
  %i.fa = fcmp uge double %i.et, %i.ez
  %i.fb = fcmp ogt double %i.er, %i.eu
  %narrow.i.i = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fc = select i1 %i.ey, i1 true, i1 %narrow.i.i
  %i.fd = fsub double %i.et, %.24.val
  %i.fe = tail call double @llvm.fabs.f64(double %i.fd)
  %i.ff = fcmp ugt double %i.fe, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.fc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ff, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = fcmp olt double %.16.val, %i.er
  br i1 %i.fg, label %is_left_of.exit.thread, label %is_left_of.exit.thread6

bb.o:                                             ; preds = %bb.m
  %i.fh = fsub double %i.ew, %.24.val
  %i.fi = tail call double @llvm.fabs.f64(double %i.fh)
  %i.fj = fcmp ugt double %i.fi, f0x3E7AD7F29ABCAF48
  br i1 %i.fj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = fcmp olt double %.16.val, %i.eu
  br i1 %i.fk, label %is_left_of.exit.thread, label %is_left_of.exit.thread6

bb.q:                                             ; preds = %bb.o
  %i.fl = fsub double %i.er, %i.eu
  %i.fm = fsub double %.24.val, %i.ew
  %i.fn = fsub double %i.et, %i.ew
  %i.fo = fsub double %.16.val, %i.eu
  %i.fp = fneg double %i.fo
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fm, double %i.fq)
  br label %is_left_of.exit

bb.r:                                             ; preds = %bb.l
  br i1 %i.ff, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = fcmp olt double %.16.val, %i.er
  br i1 %i.fs, label %is_left_of.exit.thread, label %is_left_of.exit.thread6

bb.t:                                             ; preds = %bb.r
  %i.ft = fsub double %i.ew, %.24.val
  %i.fu = tail call double @llvm.fabs.f64(double %i.ft)
  %i.fv = fcmp ugt double %i.fu, f0x3E7AD7F29ABCAF48
  br i1 %i.fv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = fcmp olt double %.16.val, %i.eu
  br i1 %i.fw, label %is_left_of.exit.thread, label %is_left_of.exit.thread6

bb.v:                                             ; preds = %bb.t
  %i.fx = fsub double %i.eu, %i.er
  %i.fy = fsub double %.24.val, %i.et
  %i.fz = fsub double %i.ew, %i.et
  %i.ga = fsub double %.16.val, %i.er
  %i.gb = fneg double %i.ga
  %i.gc = fmul double %i.fz, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fy, double %i.gc)
  br label %is_left_of.exit

is_left_of.exit:                                  ; preds = %bb.q, %bb.v
  %.0.i = phi double [ %i.fr, %bb.q ], [ %i.gd, %bb.v ]
  %i.ge = fcmp ogt double %.0.i, 0.000000e+00
  br i1 %i.ge, label %is_left_of.exit.thread, label %is_left_of.exit.thread6

is_left_of.exit.thread6:                          ; preds = %bb.s, %bb.u, %bb.p, %bb.n, %is_left_of.exit
  %i.gf = load ptr, ptr %1, align 8, !tbaa !8
  %i.gg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.gh = getelementptr inbounds nuw [96 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 -1, ptr %i.gi, align 8, !tbaa !34
  %i.gj = load ptr, ptr %1, align 8, !tbaa !8
  %i.gk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.gl = getelementptr inbounds nuw [96 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store i64 -1, ptr %i.gm, align 8, !tbaa !37
  %i.gn = load ptr, ptr %1, align 8, !tbaa !8
  %i.go = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.gp = getelementptr inbounds nuw [96 x i8], ptr %i.gn, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store i64 -1, ptr %i.gq, align 8, !tbaa !37
  %i.gr = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.gs = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.gt = getelementptr inbounds nuw [96 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !34
  br label %bb.x

is_left_of.exit.thread:                           ; preds = %bb.s, %bb.u, %bb.p, %bb.n, %is_left_of.exit, %bb.k
  %i.gw = load ptr, ptr %1, align 8, !tbaa !8
  %i.gx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.gy = getelementptr inbounds nuw [96 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store i64 -1, ptr %i.gz, align 8, !tbaa !34
  %i.ha = load ptr, ptr %1, align 8, !tbaa !8
  %i.hb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i64 -1, ptr %i.hd, align 8, !tbaa !37
  %i.he = load ptr, ptr %1, align 8, !tbaa !8
  %i.hf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.hg = getelementptr inbounds nuw [96 x i8], ptr %i.he, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store i64 -1, ptr %i.hh, align 8, !tbaa !37
  %i.hi = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.hj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.hk = getelementptr inbounds nuw [96 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !34
  br label %bb.x

bb.w:                                             ; preds = %bb.j, %bb.i
  %i.hn = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ho = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.hp = getelementptr inbounds nuw [96 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !34
  %i.hs = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.hr) #10
  %i.ht = getelementptr inbounds nuw [96 x i8], ptr %i.hn, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  store i64 %2, ptr %i.hu, align 8, !tbaa !35
  %i.hv = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.hw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.hx = getelementptr inbounds nuw [96 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %is_left_of.exit.thread, %is_left_of.exit.thread6, %bb.g, %bb.h
  %.sink58 = phi i64 [ %i.hz, %bb.w ], [ %i.hm, %is_left_of.exit.thread ], [ %i.gv, %is_left_of.exit.thread6 ], [ %3, %bb.g ], [ %i.dj, %bb.h ]
  %.sink56 = phi ptr [ %i.hv, %bb.w ], [ %i.hi, %is_left_of.exit.thread ], [ %i.gr, %is_left_of.exit.thread6 ], [ %i.cq, %bb.g ], [ %i.df, %bb.h ]
  %.sink55 = phi i64 [ 64, %bb.w ], [ 56, %is_left_of.exit.thread ], [ 64, %is_left_of.exit.thread6 ], [ 80, %bb.g ], [ 56, %bb.h ]
  %.sink52 = phi i64 [ %3, %bb.w ], [ %2, %is_left_of.exit.thread ], [ %3, %is_left_of.exit.thread6 ], [ 0, %bb.g ], [ %3, %bb.h ]
  %i.ia = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.sink58) #10
  %i.ib = getelementptr inbounds nuw [96 x i8], ptr %.sink56, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sink55
  store i64 %.sink52, ptr %i.ic, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 1, 3) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = icmp ult i64 %i.a, -2
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread151
  %.0144154 = phi i64 [ %1, %.lr.ph ], [ %.1145, %.thread151 ] ; 21 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !8
  %i.e = tail call i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %4, align 8, !tbaa !8
  %i.i = tail call i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8 %4, i64 noundef %2) #10
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load <2 x double>, ptr %i.g, align 8     ; 3 uses
  %i.m = load <2 x double>, ptr %i.k, align 8     ; 3 uses
  %i.n = extractelement <2 x double> %i.m, i64 1  ; 2 uses
  %i.o = fadd double %i.n, f0x3E7AD7F29ABCAF48
  %i.p = extractelement <2 x double> %i.l, i64 1  ; 2 uses
  %i.q = fcmp ogt double %i.p, %i.o
  %i.r = fadd double %i.n, f0xBE7AD7F29ABCAF48
  %i.s = fcmp uge double %i.p, %i.r
  %i.t = extractelement <2 x double> %i.l, i64 0
  %i.u = extractelement <2 x double> %i.m, i64 0
  %i.v = fcmp ogt double %i.t, %i.u
  %narrow.i.i = select i1 %i.s, i1 %i.v, i1 false
  %i.w = select i1 %i.q, i1 true, i1 %narrow.i.i
  br i1 %i.w, label %greater_than_equal_to.exit.thread, label %greater_than_equal_to.exit

greater_than_equal_to.exit:                       ; preds = %bb.b
  %i.x = fsub <2 x double> %i.l, %i.m
  %.fr156 = freeze <2 x double> %i.x
  %6 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr156)
  %7 = fcmp ugt <2 x double> %6, splat (double f0x3E7AD7F29ABCAF48)
  %8 = bitcast <2 x i1> %7 to i2
  %9 = icmp eq i2 %8, 0
  br i1 %9, label %greater_than_equal_to.exit.thread, label %.critedge

greater_than_equal_to.exit.thread:                ; preds = %bb.b, %greater_than_equal_to.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !8
  %i.z = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 5 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = icmp ult i64 %i.ad, -2                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %greater_than_equal_to.exit.thread
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %4, align 8, !tbaa !8
  %i.ag = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ac) #10
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = icmp eq i32 %i.aj, %0
  br i1 %i.ak, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = load ptr, ptr %4, align 8, !tbaa !8
  %i.am = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36 ; 5 uses
  %i.aq = add i64 %i.ap, -1
  %i.ar = icmp ult i64 %i.aq, -2
  br i1 %i.ar, label %.split, label %.thread151

.split:                                           ; preds = %bb.e
  %i.as = load ptr, ptr %4, align 8, !tbaa !8
  %i.at = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ap) #10
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ax = icmp eq i32 %i.aw, %0
  br i1 %i.ax, label %.thread, label %.thread151

bb.f:                                             ; preds = %greater_than_equal_to.exit.thread
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %4, align 8, !tbaa !8
  %i.az = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ac) #10
  %i.ba = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !33
  %i.bc = icmp eq i32 %i.bb, %0
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = load ptr, ptr %4, align 8, !tbaa !8
  %i.be = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36 ; 5 uses
  %i.bi = add i64 %i.bh, -1
  %i.bj = icmp ult i64 %i.bi, -2
  br i1 %i.bj, label %bb.i, label %.thread151

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %4, align 8, !tbaa !8
  %i.bl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.bh) #10
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !33
  %i.bo = icmp eq i32 %i.bn, %0
  br i1 %i.bo, label %.thread, label %.thread151

.thread:                                          ; preds = %bb.g, %bb.d, %.split, %bb.i
  %.2148 = phi i64 [ %i.ap, %.split ], [ %i.bh, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.d ] ; 14 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !8
  %i.bq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.br = getelementptr inbounds nuw [96 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !33
  %i.bt = load ptr, ptr %4, align 8, !tbaa !8
  %i.bu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !33
  %i.bx = icmp eq i32 %i.bs, %i.bw
  br i1 %i.bx, label %bb.j, label %.thread151

bb.j:                                             ; preds = %.thread
  %i.by = load ptr, ptr %4, align 8, !tbaa !8
  %i.bz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = load ptr, ptr %4, align 8, !tbaa !8
  %i.ce = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = icmp eq i32 %i.cc, %i.ch
  br i1 %i.ci, label %bb.k, label %.thread151

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %5, align 8, !tbaa !8
  %i.ck = load ptr, ptr %4, align 8, !tbaa !8
  %i.cl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.cp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %i.co) #10
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !8
  %i.cu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %i.cs) #10
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = load ptr, ptr %4, align 8, !tbaa !8
  %i.cz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.da = getelementptr inbounds nuw [96 x i8], ptr %i.cy, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !38
  %i.dd = icmp eq i64 %i.cx, %i.dc
  %i.de = load ptr, ptr %4, align 8, !tbaa !8
  %i.df = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.dj = load ptr, ptr %5, align 8, !tbaa !8
  %i.dk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %i.cs) #10
  %i.dl = getelementptr inbounds nuw [56 x i8], ptr %i.dj, i64 %i.dk
  %. = select i1 %i.dd, i64 40, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.
  store i64 %i.di, ptr %i.dm, align 8, !tbaa !13
  %i.dn = load ptr, ptr %4, align 8, !tbaa !8
  %i.do = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.dn, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !8
  %i.dt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.du = getelementptr inbounds nuw [96 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  store i64 %i.dr, ptr %i.dv, align 8, !tbaa !35
  %i.dw = add i64 %i.dr, -1
  %i.dx = icmp ult i64 %i.dw, -2
  br i1 %i.dx, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.dy = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.dz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.ea = getelementptr inbounds nuw [96 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ed = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ec) #10
  %i.ee = getelementptr inbounds nuw [96 x i8], ptr %i.dy, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !34
  %i.eh = icmp eq i64 %i.eg, %.2148
  %i.ei = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ej = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.ek = getelementptr inbounds nuw [96 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i64, ptr %i.el, align 8, !tbaa !35
  %i.en = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.em) #10
  %i.eo = getelementptr inbounds nuw [96 x i8], ptr %i.ei, i64 %i.en ; 2 uses
  br i1 %i.eh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 %.0144154, ptr %i.ep, align 8, !tbaa !34
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !37
  %i.es = icmp eq i64 %i.er, %.2148
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.eu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.ev = getelementptr inbounds nuw [96 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !35
  %i.ey = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ex) #10
  %i.ez = getelementptr inbounds nuw [96 x i8], ptr %i.et, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i64 %.0144154, ptr %i.fa, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.k
  %i.fb = load ptr, ptr %4, align 8, !tbaa !8
  %i.fc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.2148) #10
  %i.fd = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !36 ; 2 uses
  %i.fg = load ptr, ptr %4, align 8, !tbaa !8
  %i.fh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0144154) #10
  %i.fi = getelementptr inbounds nuw [96 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  store i64 %i.ff, ptr %i.fj, align 8, !tbaa !36
  %i.fk = add i64 %i.ff, -1
end_hunk_2
