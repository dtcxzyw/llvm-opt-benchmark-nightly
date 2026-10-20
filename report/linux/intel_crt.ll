Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_crt?download=true
inline.NumInlined: 120
inline.NumDeleted: 23
begin_hunk_0_@intel_crt_load_detect:bb.a
  %i.ah = getelementptr i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef %i.ag, i32 %i.af, i1 noundef zeroext true) #5, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.af) #5
  %i.ak = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 80     ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.al, align 4
  %i.ap = getelementptr i8, ptr %i.ak, i64 48
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add i32 %i.an, 393232
  %i.as = sub i32 %i.ar, %i.ao
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.at) #5
  %.val.i156 = load ptr, ptr %i.b, align 8
  %i.au = tail call ptr @to_intel_uncore(ptr noundef %.val.i156) #5 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 %i.aw(ptr noundef %i.au, i32 %i.at, i1 noundef zeroext true) #5, !inline_history !0 ; 4 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.at) #5
  %i.ay = lshr i32 %i.aj, 16                      ; 3 uses
  %i.az = and i32 %i.aj, 65535                    ; 4 uses
  %i.ba = lshr i32 %i.ax, 16                      ; 3 uses
  %i.bb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 80     ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.j
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load i32, ptr %i.bc, align 4
  %i.bg = getelementptr i8, ptr %i.bb, i64 48
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.be, 393248
  %i.bj = sub i32 %i.bi, %i.bf
  %i.bk = add i32 %i.bj, %i.bh                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.bk) #5
  %.val.i157 = load ptr, ptr %i.b, align 8
  %i.bl = tail call ptr @to_intel_uncore(ptr noundef %.val.i157) #5 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef %i.bl, i32 %i.bk, i32 noundef 5242960, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.bk) #5
  %i.bo = getelementptr i8, ptr %i.b, i64 1168
  %i.bp = load i16, ptr %i.bo, align 8
  %.not149 = icmp eq i16 %i.bp, 2
  br i1 %.not149, label %bb.f, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.bq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 52     ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.j
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = load i32, ptr %i.br, align 4
  %i.bv = getelementptr i8, ptr %i.bq, i64 48
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bt, 458760
  %i.by = sub i32 %i.bx, %i.bu
  %i.bz = add i32 %i.by, %i.bw                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.bz) #5
  %.val.i158 = load ptr, ptr %i.b, align 8
  %i.ca = tail call ptr @to_intel_uncore(ptr noundef %.val.i158) #5 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call i32 %i.cc(ptr noundef %i.ca, i32 %i.bz, i1 noundef zeroext true) #5, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.bz) #5
  %i.ce = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 52     ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.j
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = load i32, ptr %i.cf, align 4
  %i.cj = getelementptr i8, ptr %i.ce, i64 48
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ch, 458760
  %i.cm = sub i32 %i.cl, %i.ci
  %i.cn = add i32 %i.cm, %i.ck                    ; 3 uses
  %i.co = or i32 %i.cd, 33554432
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.cn) #5
  %.val.i159 = load ptr, ptr %i.b, align 8
  %i.cp = tail call ptr @to_intel_uncore(ptr noundef %.val.i159) #5 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 176
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef %i.cp, i32 %i.cn, i32 noundef %i.co, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.cn) #5
  %i.cs = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 52     ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %i.j
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = load i32, ptr %i.ct, align 4
  %i.cx = getelementptr i8, ptr %i.cs, i64 48
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = add i32 %i.cv, 458760
  %i.da = sub i32 %i.cz, %i.cw
  %i.db = add i32 %i.da, %i.cy                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.db) #5
  %.val.i160 = load ptr, ptr %i.b, align 8
  %i.dc = tail call ptr @to_intel_uncore(ptr noundef %.val.i160) #5 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 144
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 %i.de(ptr noundef %i.dc, i32 %i.db, i1 noundef zeroext false) #5, !inline_history !2 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.db) #5
  %i.dg = tail call ptr @intel_crtc_for_pipe(ptr noundef %i.b, i32 noundef %0) #5
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.dg) #5
  %i.dh = tail call zeroext i8 @intel_vga_read(ptr noundef %i.b, i16 noundef zeroext 962, i1 noundef zeroext true) #5
  %i.di = and i8 %i.dh, 16
  %.not1 = icmp eq i8 %i.di, 0
  %i.dj = select i1 %.not1, i32 2, i32 1
  %i.dk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 52     ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.j
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = load i32, ptr %i.dl, align 4
  %i.dp = getelementptr i8, ptr %i.dk, i64 48
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i32 %i.dn, 458760
  %i.ds = sub i32 %i.dr, %i.do
  %i.dt = add i32 %i.ds, %i.dq                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.dt) #5
  %.val.i161 = load ptr, ptr %i.b, align 8
  %i.du = tail call ptr @to_intel_uncore(ptr noundef %.val.i161) #5 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 176
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef %i.du, i32 %i.dt, i32 noundef %i.cd, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.dt) #5
  br label %bb.m

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.dx = and i32 %i.ax, 65535                    ; 2 uses
  %.not150 = icmp samesign ule i32 %i.dx, %i.az
  %.not151 = icmp samesign uge i32 %i.ba, %i.ay
  %or.cond.not = select i1 %.not150, i1 %.not151, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 80     ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.dz, i64 %i.j
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = load i32, ptr %i.dz, align 4
  %i.ed = getelementptr i8, ptr %i.dy, i64 48
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add i32 %i.eb, 393236
  %i.eg = sub i32 %i.ef, %i.ec
  %i.eh = add i32 %i.eg, %i.ee                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.eh) #5
  %.val.i162 = load ptr, ptr %i.b, align 8
  %i.ei = tail call ptr @to_intel_uncore(ptr noundef %.val.i162) #5 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 144
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call i32 %i.ek(ptr noundef %i.ei, i32 %i.eh, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.eh) #5
  %i.em = and i32 %i.el, 65535                    ; 2 uses
  %i.en = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 80     ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.j
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = load i32, ptr %i.eo, align 4
  %i.es = getelementptr i8, ptr %i.en, i64 48
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = add i32 %i.eq, 393232
  %i.ev = sub i32 %i.eu, %i.er
  %i.ew = add i32 %i.ev, %i.et                    ; 3 uses
  %i.ex = and i32 %i.ax, -65536
  %i.ey = or disjoint i32 %i.em, %i.ex
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.ew) #5
  %.val.i163 = load ptr, ptr %i.b, align 8
  %i.ez = tail call ptr @to_intel_uncore(ptr noundef %.val.i163) #5 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 176
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void %i.fb(ptr noundef %i.ez, i32 %i.ew, i32 noundef %i.ey, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.ew) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0140.in = phi i32 [ %i.em, %bb.g ], [ %i.dx, %bb.f ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.fc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 52     ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.j
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = load i32, ptr %i.fd, align 4
  %i.fh = getelementptr i8, ptr %i.fc, i64 48
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = add i32 %i.ff, 458752
  %i.fk = sub i32 %i.fj, %i.fg
  %i.fl = add i32 %i.fk, %i.fi                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.fl) #5
  %.val.i164 = load ptr, ptr %i.b, align 8
  %i.fm = tail call ptr @to_intel_uncore(ptr noundef %.val.i164) #5 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call i32 %i.fo(ptr noundef %i.fm, i32 %i.fl, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.fl) #5
  %.not153.not = icmp ugt i32 %i.fp, %i.az
  br i1 %.not153.not, label %bb.i, label %.preheader17.preheader, !llvm.loop !42

.preheader17.preheader:                           ; preds = %bb.i
  %i.fq = sub nsw i32 %.0140.in, %i.az
  %i.fr = sub nsw i32 %i.ay, %i.ba
  %.not152 = icmp ult i32 %i.fq, %i.fr
  %i.fs = add nuw nsw i32 %.0140.in, %i.az
  %i.ft = add nuw nsw i32 %i.ba, %i.ay
  %.0.in.in = select i1 %.not152, i32 %i.ft, i32 %i.fs
  %.0.in.a = add nuw nsw i32 %.0.in.in, 2
  %.0 = lshr i32 %.0.in.a, 1
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.preheader, %.preheader17
  %i.fu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 52     ; 2 uses
  %i.fw = getelementptr [4 x i8], ptr %i.fv, i64 %i.j
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = load i32, ptr %i.fv, align 4
  %i.fz = getelementptr i8, ptr %i.fu, i64 48
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = add i32 %i.fx, 458752
  %i.gc = sub i32 %i.gb, %i.fy
  %i.gd = add i32 %i.gc, %i.ga                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.gd) #5
  %.val.i165 = load ptr, ptr %i.b, align 8
  %i.ge = tail call ptr @to_intel_uncore(ptr noundef %.val.i165) #5 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 144
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call i32 %i.gg(ptr noundef %i.ge, i32 %i.gd, i1 noundef zeroext true) #5, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.gd) #5
  %.not154 = icmp ugt i32 %i.gh, %.0
  br i1 %.not154, label %.preheader, label %.preheader17, !llvm.loop !43

.preheader:                                       ; preds = %.preheader17, %.preheader
  %.0142 = phi i32 [ %i.gi, %.preheader ], [ 0, %.preheader17 ]
  %.0141 = phi i32 [ %spec.select, %.preheader ], [ 0, %.preheader17 ]
  %i.gi = add i32 %.0142, 1                       ; 2 uses
  %i.gj = tail call zeroext i8 @intel_vga_read(ptr noundef %i.b, i16 noundef zeroext 962, i1 noundef zeroext true) #5
  %i.gk = lshr i8 %i.gj, 4
  %i.gl = and i8 %i.gk, 1
  %i.gm = zext nneg i8 %i.gl to i32
  %spec.select = add i32 %.0141, %i.gm            ; 2 uses
  %i.gn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 52     ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %i.j
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = load i32, ptr %i.go, align 4
  %i.gs = getelementptr i8, ptr %i.gn, i64 48
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = add i32 %i.gq, 458752
  %i.gv = sub i32 %i.gu, %i.gr
  %i.gw = add i32 %i.gv, %i.gt                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.gw) #5
  %.val.i166 = load ptr, ptr %i.b, align 8
  %i.gx = tail call ptr @to_intel_uncore(ptr noundef %.val.i166) #5 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 144
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = tail call i32 %i.gz(ptr noundef %i.gx, i32 %i.gw, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.gw) #5
  %i.hb = icmp eq i32 %i.ha, %i.gh
  br i1 %i.hb, label %.preheader, label %bb.j, !llvm.loop !44

bb.j:                                             ; preds = %.preheader
  br i1 %or.cond.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 80     ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.j
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = load i32, ptr %i.hd, align 4
  %i.hh = getelementptr i8, ptr %i.hc, i64 48
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add i32 %i.hf, 393232
  %i.hk = sub i32 %i.hj, %i.hg
  %i.hl = add i32 %i.hk, %i.hi                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.hl) #5
  %.val.i167 = load ptr, ptr %i.b, align 8
  %i.hm = tail call ptr @to_intel_uncore(ptr noundef %.val.i167) #5 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 176
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.ho(ptr noundef %i.hm, i32 %i.hl, i32 noundef %i.ax, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.hl) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hp = shl i32 %spec.select, 2
  %i.hq = mul i32 %i.gi, 3
  %i.hr = icmp sgt i32 %i.hp, %i.hq
  %i.hs = select i1 %i.hr, i32 1, i32 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.0144 = phi i32 [ %i.dj, %bb.e ], [ %i.hs, %bb.l ]
  %i.ht = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 80     ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %i.j
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = load i32, ptr %i.hu, align 4
  %i.hy = getelementptr i8, ptr %i.ht, i64 48
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = add i32 %i.hw, 393248
  %i.ib = sub i32 %i.ia, %i.hx
  %i.ic = add i32 %i.ib, %i.hz                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.b, i32 %i.ic) #5
  %.val.i168 = load ptr, ptr %i.b, align 8
  %i.id = tail call ptr @to_intel_uncore(ptr noundef %.val.i168) #5 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 176
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef %i.id, i32 %i.ic, i32 noundef %i.v, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.b, i32 %i.ic) #5
  ret i32 %.0144
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_load_detect_release_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_hotplug_interrupt_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_clear_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_hpd_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_hpd_clear_and_unblock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_digital(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_crtc_for_pipe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_vga_read(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cpu_transcoder_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ilk_get_lanes_required(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #7 = { noredzone "no-builtin-wcslen" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{null, null, null}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 6927}
!18 = !{i64 2161354846, i64 2161354873, i64 2161355254, i64 2161355287, i64 2161355322, i64 2161355338, i64 2161356179, i64 2161356237, i64 2161356286, i64 2161356096, i64 2161355397, i64 2161355429}
!19 = !{i64 2161352963}
!20 = !{i64 2161366431, i64 2161366458, i64 2161366839, i64 2161366872, i64 2161366907, i64 2161366923, i64 2161367764, i64 2161367822, i64 2161367871, i64 2161367681, i64 2161366982, i64 2161367014}
!21 = !{i64 2161364548}
!22 = !{i64 2161382077, i64 2161382104, i64 2161382485, i64 2161382518, i64 2161382553, i64 2161382569, i64 2161383410, i64 2161383468, i64 2161383517, i64 2161383327, i64 2161382628, i64 2161382660}
!23 = !{i64 2161380194}
!24 = !{i64 10305}
!25 = !{i64 2161332942, i64 2161332969, i64 2161333350, i64 2161333383, i64 2161333418, i64 2161333434, i64 2161334275, i64 2161334333, i64 2161334382, i64 2161334192, i64 2161333493, i64 2161333525}
!26 = !{i64 2161331051}
!27 = !{i64 2161344619, i64 2161344646, i64 2161345027, i64 2161345060, i64 2161345095, i64 2161345111, i64 2161345952, i64 2161346010, i64 2161346059, i64 2161345869, i64 2161345170, i64 2161345202}
!28 = !{i64 2161342728}
!29 = distinct !{ptr @intel_crt_port_enabled, null, null}
!30 = !{i64 10782}
!31 = !{i64 27641}
!32 = !{i64 27871}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, null, null, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null, null, null, null}
!38 = distinct !{null, null, null}
!39 = distinct !{null, null, null}
!40 = !{i64 25938}
!41 = !{i64 26658}
!42 = distinct !{!42, !45}
!43 = distinct !{!43, !45}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
end_hunk_0
