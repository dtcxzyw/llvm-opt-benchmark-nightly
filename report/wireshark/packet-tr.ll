Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tr?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@capture_tr:bb.a
  %i.cg = getelementptr i8, ptr %0, i64 8
  %i.ch = getelementptr i8, ptr %i.cc, i64 8
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = load i8, ptr %i.ch, align 1
  %i.ck = zext i8 %i.ci to i64
  %i.cl = zext i8 %i.cj to i64
  %i.cm = xor i64 %i.ck, %i.cl
  %i.cn = or i64 %i.cf, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %check_for_old_linux.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr i8, ptr %0, i64 10        ; 2 uses
  %i.cs = load i64, ptr %0, align 1
  %i.ct = load i64, ptr %i.cr, align 1
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = getelementptr i8, ptr %0, i64 8
  %i.cw = getelementptr i8, ptr %i.cr, i64 8
  %i.cx = load i16, ptr %i.cv, align 1
  %i.cy = load i16, ptr %i.cw, align 1
  %i.cz = zext i16 %i.cx to i64
  %i.da = zext i16 %i.cy to i64
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = or i64 %i.cu, %i.db
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %check_for_old_linux.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr i8, ptr %0, i64 11        ; 2 uses
  %i.dh = load i64, ptr %0, align 1
  %i.di = load i64, ptr %i.dg, align 1
  %i.dj = xor i64 %i.dh, %i.di
  %i.dk = getelementptr i8, ptr %0, i64 3
  %i.dl = getelementptr i8, ptr %i.dg, i64 3
  %i.dm = load i64, ptr %i.dk, align 1
  %i.dn = load i64, ptr %i.dl, align 1
  %i.do = xor i64 %i.dm, %i.dn
  %i.dp = or i64 %i.dj, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %check_for_old_linux.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.du = load i64, ptr %0, align 1
  %i.dv = load i64, ptr %i.dt, align 1
  %i.dw = xor i64 %i.du, %i.dv
  %i.dx = getelementptr i8, ptr %0, i64 8
  %i.dy = getelementptr i8, ptr %i.dt, i64 8
  %i.dz = load i32, ptr %i.dx, align 1
  %i.ea = load i32, ptr %i.dy, align 1
  %i.eb = zext i32 %i.dz to i64
  %i.ec = zext i32 %i.ea to i64
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = or i64 %i.dw, %i.ed
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %check_for_old_linux.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr i8, ptr %0, i64 13        ; 2 uses
  %i.ej = load i64, ptr %0, align 1
  %i.ek = load i64, ptr %i.ei, align 1
  %i.el = xor i64 %i.ej, %i.ek
  %i.em = getelementptr i8, ptr %0, i64 5
  %i.en = getelementptr i8, ptr %i.ei, i64 5
  %i.eo = load i64, ptr %i.em, align 1
  %i.ep = load i64, ptr %i.en, align 1
  %i.eq = xor i64 %i.eo, %i.ep
  %i.er = or i64 %i.el, %i.eq
  %i.es = icmp ne i64 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %check_for_old_linux.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr i8, ptr %0, i64 14        ; 2 uses
  %i.ew = load i64, ptr %0, align 1
  %i.ex = load i64, ptr %i.ev, align 1
  %i.ey = xor i64 %i.ew, %i.ex
  %i.ez = getelementptr i8, ptr %0, i64 6
  %i.fa = getelementptr i8, ptr %i.ev, i64 6
  %i.fb = load i64, ptr %i.ez, align 1
  %i.fc = load i64, ptr %i.fa, align 1
  %i.fd = xor i64 %i.fb, %i.fc
  %i.fe = or i64 %i.ey, %i.fd
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %check_for_old_linux.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fi = getelementptr i8, ptr %0, i64 15        ; 2 uses
  %i.fj = load i64, ptr %0, align 1
  %i.fk = load i64, ptr %i.fi, align 1
  %i.fl = xor i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %0, i64 7
  %i.fn = getelementptr i8, ptr %i.fi, i64 7
  %i.fo = load i64, ptr %i.fm, align 1
  %i.fp = load i64, ptr %i.fn, align 1
  %i.fq = xor i64 %i.fo, %i.fp
  %i.fr = or i64 %i.fl, %i.fq
  %i.fs = icmp ne i64 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %check_for_old_linux.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = getelementptr i8, ptr %0, i64 16
  %i.fw = load i128, ptr %0, align 1
  %i.fx = load i128, ptr %i.fv, align 1
  %i.fy = icmp ne i128 %i.fw, %i.fx
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %check_for_old_linux.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gb = getelementptr i8, ptr %0, i64 17        ; 2 uses
  %i.gc = load i128, ptr %0, align 1
  %i.gd = load i128, ptr %i.gb, align 1
  %i.ge = xor i128 %i.gc, %i.gd
  %i.gf = getelementptr i8, ptr %0, i64 16
  %i.gg = getelementptr i8, ptr %i.gb, i64 16
  %i.gh = load i8, ptr %i.gf, align 1
  %i.gi = load i8, ptr %i.gg, align 1
  %i.gj = zext i8 %i.gh to i128
  %i.gk = zext i8 %i.gi to i128
  %i.gl = xor i128 %i.gj, %i.gk
  %i.gm = or i128 %i.ge, %i.gl
  %i.gn = icmp ne i128 %i.gm, 0
  %i.go = zext i1 %i.gn to i32
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %check_for_old_linux.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = getelementptr i8, ptr %0, i64 18        ; 2 uses
  %i.gr = load i128, ptr %0, align 1
  %i.gs = load i128, ptr %i.gq, align 1
  %i.gt = xor i128 %i.gr, %i.gs
  %i.gu = getelementptr i8, ptr %0, i64 16
  %i.gv = getelementptr i8, ptr %i.gq, i64 16
  %i.gw = load i16, ptr %i.gu, align 1
  %i.gx = load i16, ptr %i.gv, align 1
  %i.gy = zext i16 %i.gw to i128
  %i.gz = zext i16 %i.gx to i128
  %i.ha = xor i128 %i.gy, %i.gz
  %i.hb = or i128 %i.gt, %i.ha
  %i.hc = icmp ne i128 %i.hb, 0
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  %spec.select.i = select i1 %i.he, i32 18, i32 0
  br label %check_for_old_linux.exit

check_for_old_linux.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.07.i = phi i32 [ 1, %bb.b ], [ 10, %bb.k ], [ 2, %bb.c ], [ %spec.select.i, %bb.s ], [ 3, %bb.d ], [ 14, %bb.o ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 11, %bb.l ], [ 6, %bb.g ], [ 16, %bb.q ], [ 7, %bb.h ], [ 13, %bb.n ], [ 8, %bb.i ], [ 15, %bb.p ], [ 9, %bb.j ], [ 12, %bb.m ]
  %i.hf = add i32 %.07.i, %1                      ; 23 uses
  %i.hg = add i32 %i.hf, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr i8, ptr %0, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = add i32 %i.hf, 8                        ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr i8, ptr %0, i64 %i.hl
  %i.hn = lshr i8 %i.hj, 6                        ; 2 uses
  %i.ho = load i8, ptr %i.hm, align 1
  %i.hp = and i8 %i.ho, -128                      ; 2 uses
  %i.hq = add i32 %i.hf, 14
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr i8, ptr %0, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1             ; 2 uses
  %i.hu = and i8 %i.ht, 31                        ; 4 uses
  %i.hv = load i8, ptr @fix_linux_botches, align 1, !range !6, !noundef !7
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = icmp eq i8 %i.hp, 0                     ; 2 uses
  br i1 %i.hw, label %bb.t, label %bb.y

bb.t:                                             ; preds = %check_for_old_linux.exit
  %i.hy = zext nneg i8 %i.hu to i32               ; 2 uses
  %i.hz = icmp ne i8 %i.hu, 0
  %or.cond = select i1 %i.hx, i1 %i.hz, i1 false
  br i1 %or.cond, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ia = add i32 %i.hf, 15
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %0, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %.not95 = icmp eq i8 %i.ht, %i.id
  br i1 %.not95, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ie = add i32 %i.hf, 224
  %i.if = add i32 %i.ie, %i.hy
  %i.ig = sext i32 %i.if to i64
  %5 = getelementptr i8, ptr %0, i64 %i.ig        ; 2 uses
  %.val = load i8, ptr %5, align 1
  %i.ih = getelementptr i8, ptr %5, i64 1
  %.val101 = load i8, ptr %i.ih, align 1
  %6 = zext i8 %.val to i16
  %7 = shl nuw i16 %6, 8
  %8 = zext i8 %.val101 to i16
  %9 = or disjoint i16 %7, %8
  switch i16 %9, label %bb.z [
    i16 -21846, label %bb.w
    i16 -7968, label %bb.x
    i16 -8022, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ii = add i32 %i.hf, 16
  %i.ij = add i32 %i.ii, %i.hy
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr i8, ptr %0, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = icmp eq i8 %i.im, 3
  br i1 %i.in, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  br label %bb.z

bb.y:                                             ; preds = %check_for_old_linux.exit
  %. = select i1 %i.hx, i8 0, i8 %i.hu
  br label %bb.ai

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.x, %bb.u
  %.083.shrunk.ph = phi i8 [ 0, %bb.v ], [ %i.hp, %bb.t ], [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %bb.x ]
  %.not116 = icmp eq i8 %.083.shrunk.ph, 0        ; 2 uses
  %.103 = select i1 %.not116, i8 0, i8 %i.hu      ; 7 uses
  %i.io = icmp eq i8 %.103, 2
  %i.ip = icmp eq i8 %i.hn, 1
  %i.iq = select i1 %.not116, i1 true, i1 %i.io
  %or.cond98 = select i1 %i.iq, i1 %i.ip, i1 false
  br i1 %or.cond98, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ir = add i32 %i.hf, 32
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr i8, ptr %0, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1
  switch i8 %i.iu, label %.thread107 [
    i8 -86, label %bb.ab
    i8 -32, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.iv = add i32 %i.hf, 33
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr i8, ptr %0, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = icmp eq i8 %i.iy, -86
  br i1 %i.iz, label %bb.ac, label %.thread107

bb.ac:                                            ; preds = %bb.ab
  %i.ja = add i32 %i.hf, 34
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr i8, ptr %0, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = icmp eq i8 %i.jd, 3
  br i1 %i.je, label %.thread109, label %.thread107

bb.ad:                                            ; preds = %bb.aa
  %i.jf = add i32 %i.hf, 33
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr i8, ptr %0, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = icmp eq i8 %i.ji, -32
  br i1 %i.jj, label %.thread109, label %.thread107

.thread107:                                       ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.jk = add i32 %i.hf, 35
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr i8, ptr %0, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = icmp eq i8 %i.jn, 0
  br i1 %i.jo, label %bb.ae, label %.thread109

bb.ae:                                            ; preds = %.thread107
  %i.jp = add i32 %i.hf, 36
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr i8, ptr %0, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.af, label %.thread109

bb.af:                                            ; preds = %bb.ae
  %i.ju = add i32 %i.hf, 37
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr i8, ptr %0, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %bb.ag, label %.thread109

bb.ag:                                            ; preds = %bb.af
  %i.jz = add i32 %i.hf, 38
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr i8, ptr %0, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %bb.ah, label %.thread109

bb.ah:                                            ; preds = %bb.ag
  %i.ke = add i32 %i.hf, 39
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr i8, ptr %0, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = icmp eq i8 %i.kh, 17                    ; 2 uses
  %spec.select99 = select i1 %i.ki, i32 %i.hk, i32 %i.hf
  %spec.select100 = select i1 %i.ki, i8 18, i8 %.103
  br label %.thread109

bb.ai:                                            ; preds = %bb.y, %bb.z
  %.1 = phi i8 [ %., %bb.y ], [ %.103, %bb.z ]
  %cond = icmp eq i8 %i.hn, 1
  br i1 %cond, label %.thread109, label %bb.aj

.thread109:                                       ; preds = %bb.ag, %bb.af, %bb.ae, %.thread107, %bb.ad, %bb.ac, %bb.ah, %bb.ai
  %.1114 = phi i8 [ %.1, %bb.ai ], [ 18, %bb.ad ], [ %.103, %.thread107 ], [ %.103, %bb.ae ], [ %.103, %bb.af ], [ %.103, %bb.ag ], [ %spec.select100, %bb.ah ], [ 18, %bb.ac ]
  %.186113 = phi i32 [ %i.hf, %bb.ai ], [ %i.hf, %bb.ad ], [ %i.hf, %.thread107 ], [ %i.hf, %bb.ae ], [ %i.hf, %bb.af ], [ %i.hf, %bb.ag ], [ %spec.select99, %bb.ah ], [ %i.hf, %bb.ac ]
  %i.kj = zext nneg i8 %.1114 to i32
  %i.kk = add nuw nsw i32 %i.kj, 14
  %i.kl = add i32 %i.kk, %.186113
  %i.km = load ptr, ptr @llc_cap_handle, align 8
  %i.kn = tail call zeroext i1 @call_capture_dissector(ptr noundef %i.km, ptr noundef %0, i32 noundef %i.kl, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.a, %.thread109
  %.084 = phi i1 [ %i.kn, %.thread109 ], [ false, %bb.a ], [ false, %bb.ai ]
  ret i1 %.084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_tr() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_tr, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.56, i32 noundef %i.a)
  store ptr %i.b, ptr @trmac_handle, align 8
  %i.c = load i32, ptr @proto_tr, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.57, i32 noundef %i.c)
  store ptr %i.d, ptr @llc_handle, align 8
  %i.e = load ptr, ptr @tr_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef %i.e)
  %i.f = load ptr, ptr @tr_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.59, i32 noundef 3, ptr noundef %i.f)
  %i.g = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.52) ; 3 uses
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef %i.g)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.60, i32 noundef 3, ptr noundef %i.g)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.60, i32 noundef 5, ptr noundef %i.g)
  %i.h = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.57)
  store ptr %i.h, ptr @llc_cap_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_capture_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ether(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @add_conversation_table_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @tr_conv_get_filter_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #6 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi ptr [ @.str.96, %bb.e ], [ @.str.20, %bb.b ], [ @.str.17, %bb.c ], [ @.str.23, %bb.d ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @add_endpoint_table_data(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @tr_endpoint_get_filter_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @.str.96, %bb.c ], [ @.str.23, %bb.b ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @call_capture_dissector(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { allocsize(1) }
attributes #10 = { nounwind }
attributes #11 = { nounwind returns_twice }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
