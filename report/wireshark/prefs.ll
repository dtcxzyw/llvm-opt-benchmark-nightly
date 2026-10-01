Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/prefs?download=true
inline.NumInlined: 303
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumUnrolled: 89
begin_hunk_0_@pref_stash:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %0, i64 56
  %i.ap = getelementptr i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(6) %i.ao, ptr noundef align 2 dereferenceable(6) %i.aq, i64 6, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.2, i32 noundef 7, ptr noundef nonnull @.str.3, i64 noundef 2151, ptr noundef nonnull @__func__.pref_stash, ptr noundef nonnull @.str.12) #25
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @pref_unstash(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.ao [
    i32 0, label %bb.b
    i32 16, label %bb.e
    i32 17, label %bb.h
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 14, label %bb.q
    i32 3, label %bb.t
    i32 7, label %bb.t
    i32 12, label %bb.t
    i32 10, label %bb.t
    i32 13, label %bb.t
    i32 15, label %bb.t
    i32 11, label %bb.w
    i32 4, label %bb.ac
    i32 8, label %bb.af
    i32 6, label %bb.ak
    i32 5, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not159 = icmp eq i32 %i.e, %i.g
  br i1 %.not159, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %prefs_get_effect_flags.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4
  br label %prefs_get_effect_flags.exit

prefs_get_effect_flags.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 76       ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, %.0.i
  store i32 %i.n, ptr %i.l, align 4
  %i.o = load i32, ptr %i.f, align 8
  %i.p = load ptr, ptr %i.c, align 8
  store i32 %i.o, ptr %i.p, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not158 = icmp eq i32 %i.s, %i.u
  br i1 %.not158, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %0, null
  br i1 %i.v, label %prefs_get_effect_flags.exit161, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4
  br label %prefs_get_effect_flags.exit161

prefs_get_effect_flags.exit161:                   ; preds = %bb.f, %bb.g
  %.0.i160 = phi i32 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.y = load ptr, ptr %1, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 76       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = or i32 %i.aa, %.0.i160
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = load i32, ptr %i.t, align 8
  %i.ad = load ptr, ptr %i.q, align 8
  store i32 %i.ac, ptr %i.ad, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fcmp une double %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq ptr %0, null
  br i1 %i.ak, label %prefs_get_effect_flags.exit163, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %0, i64 44
  %i.am = load i32, ptr %i.al, align 4
  br label %prefs_get_effect_flags.exit163

prefs_get_effect_flags.exit163:                   ; preds = %bb.i, %bb.j
  %.0.i162 = phi i32 [ %i.am, %bb.j ], [ 0, %bb.i ]
  %i.an = load ptr, ptr %1, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 76     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, %.0.i162
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = load double, ptr %i.ah, align 8
  %i.as = load ptr, ptr %i.ae, align 8
  store double %i.ar, ptr %i.as, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %i.at = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i8, ptr %i.au, align 1, !range !10, !noundef !11
  %i.aw = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !10, !noundef !11
  %.not157 = icmp eq i8 %i.av, %i.ax
  br i1 %.not157, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp eq ptr %0, null
  br i1 %i.ay, label %prefs_get_effect_flags.exit165, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %0, i64 44
  %i.ba = load i32, ptr %i.az, align 4
  br label %prefs_get_effect_flags.exit165

prefs_get_effect_flags.exit165:                   ; preds = %bb.l, %bb.m
  %.0.i164 = phi i32 [ %i.ba, %bb.m ], [ 0, %bb.l ]
  %i.bb = load ptr, ptr %1, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 76     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = or i32 %i.bd, %.0.i164
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = load i8, ptr %i.aw, align 8, !range !10, !noundef !11
  %i.bg = load ptr, ptr %i.at, align 8
  store i8 %i.bf, ptr %i.bg, align 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not156 = icmp eq i32 %i.bj, %i.bl
  br i1 %.not156, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = icmp eq ptr %0, null
  br i1 %i.bm, label %prefs_get_effect_flags.exit167, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %0, i64 44
  %i.bo = load i32, ptr %i.bn, align 4
  br label %prefs_get_effect_flags.exit167

prefs_get_effect_flags.exit167:                   ; preds = %bb.o, %bb.p
  %.0.i166 = phi i32 [ %i.bo, %bb.p ], [ 0, %bb.o ]
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 76     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = or i32 %i.br, %.0.i166
  store i32 %i.bs, ptr %i.bq, align 4
  %i.bt = load i32, ptr %i.bk, align 8
  %i.bu = load ptr, ptr %i.bh, align 8
  store i32 %i.bt, ptr %i.bu, align 4
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.bv = getelementptr i8, ptr %0, i64 56
  %.0140194 = load ptr, ptr %i.bv, align 8        ; 3 uses
  %.not154195 = icmp eq ptr %.0140194, null
  br i1 %.not154195, label %.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.q
  %i.bw = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.bx = icmp eq ptr %0, null
  %i.by = getelementptr i8, ptr %0, i64 44
  br i1 %i.bx, label %.lr.ph198.split.us, label %.lr.ph198.split

.lr.ph198.split.us:                               ; preds = %.lr.ph198, %bb.r
  %.0140196.us = phi ptr [ %.0140.us, %bb.r ], [ %.0140194, %.lr.ph198 ] ; 2 uses
  %i.bz = load ptr, ptr %.0140196.us, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 52     ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 4
  %i.cc = zext i8 %i.cb to i32
  %2 = load ptr, ptr %i.bw, align 8
  %i.cd = load i32, ptr %2, align 4               ; 2 uses
  %.not155.us = icmp eq i32 %i.cd, %i.cc
  br i1 %.not155.us, label %bb.r, label %prefs_get_effect_flags.exit169.us

prefs_get_effect_flags.exit169.us:                ; preds = %.lr.ph198.split.us
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.ca, align 4
  br label %bb.r

bb.r:                                             ; preds = %prefs_get_effect_flags.exit169.us, %.lr.ph198.split.us
  %i.cf = getelementptr i8, ptr %.0140196.us, i64 8
  %.0140.us = load ptr, ptr %i.cf, align 8        ; 2 uses
  %.not154.us = icmp eq ptr %.0140.us, null
  br i1 %.not154.us, label %.loopexit, label %.lr.ph198.split.us, !llvm.loop !24

.lr.ph198.split:                                  ; preds = %.lr.ph198, %bb.s
  %.0140196 = phi ptr [ %.0140, %bb.s ], [ %.0140194, %.lr.ph198 ] ; 2 uses
  %i.cg = load ptr, ptr %.0140196, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 52     ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = zext i8 %i.ci to i32
  %3 = load ptr, ptr %i.bw, align 8
  %i.ck = load i32, ptr %3, align 4
  %.not155 = icmp eq i32 %i.ck, %i.cj
  br i1 %.not155, label %bb.s, label %prefs_get_effect_flags.exit169

prefs_get_effect_flags.exit169:                   ; preds = %.lr.ph198.split
  %i.cl = load i32, ptr %i.by, align 4
  %i.cm = load ptr, ptr %1, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 76     ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = or i32 %i.co, %i.cl
  store i32 %i.cp, ptr %i.cn, align 4
  %i.cq = load ptr, ptr %i.bw, align 8
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = trunc i32 %i.cr to i8
  store i8 %i.cs, ptr %i.ch, align 4
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph198.split, %prefs_get_effect_flags.exit169
  %i.ct = getelementptr i8, ptr %.0140196, i64 8
  %.0140 = load ptr, ptr %i.ct, align 8           ; 2 uses
  %.not154 = icmp eq ptr %.0140, null
  br i1 %.not154, label %.loopexit, label %.lr.ph198.split, !llvm.loop !24

bb.t:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cu = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call i32 @strcmp(ptr noundef %i.cw, ptr noundef %i.cy) #26
  %.not153 = icmp eq i32 %i.cz, 0
  br i1 %.not153, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = icmp eq ptr %0, null
  br i1 %i.da, label %prefs_get_effect_flags.exit171, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr i8, ptr %0, i64 44
  %i.dc = load i32, ptr %i.db, align 4
  br label %prefs_get_effect_flags.exit171

prefs_get_effect_flags.exit171:                   ; preds = %bb.u, %bb.v
  %.0.i170 = phi i32 [ %i.dc, %bb.v ], [ 0, %bb.u ]
  %i.dd = load ptr, ptr %1, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 76     ; 2 uses
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = or i32 %i.df, %.0.i170
  store i32 %i.dg, ptr %i.de, align 4
  %i.dh = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load ptr, ptr %i.cu, align 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void @wmem_free(ptr noundef %i.di, ptr noundef %i.dk)
  %i.dl = load ptr, ptr %i.dh, align 8
  %i.dm = load ptr, ptr %i.cx, align 8
  %i.dn = tail call noalias ptr @wmem_strdup(ptr noundef %i.dl, ptr noundef %i.dm)
  %i.do = load ptr, ptr %i.cu, align 8
  store ptr %i.dn, ptr %i.do, align 8
  br label %.loopexit

bb.w:                                             ; preds = %bb.a
  %i.dp = getelementptr i8, ptr %0, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8            ; 9 uses
  %i.dr = getelementptr i8, ptr %0, i64 48        ; 11 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = tail call zeroext i1 @ranges_are_equal(ptr noundef %i.dt, ptr noundef %i.dv)
  br i1 %i.dw, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = icmp eq ptr %0, null
  br i1 %i.dx, label %prefs_get_effect_flags.exit173, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr i8, ptr %0, i64 44
  %i.dz = load i32, ptr %i.dy, align 4
  br label %prefs_get_effect_flags.exit173

prefs_get_effect_flags.exit173:                   ; preds = %bb.x, %bb.y
  %.0.i172 = phi i32 [ %i.dz, %bb.y ], [ 0, %bb.x ]
  %i.ea = load ptr, ptr %1, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 76     ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = or i32 %i.ec, %.0.i172
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8, !range !10, !noundef !11
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.z, label %.loopexit182

bb.z:                                             ; preds = %prefs_get_effect_flags.exit173
  %i.eh = tail call ptr @find_dissector_table(ptr noundef %i.dq) ; 7 uses
  %.not151 = icmp eq ptr %i.eh, null
  br i1 %.not151, label %.loopexit182, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.ei, align 8
  %i.ej = tail call ptr @dissector_table_get_dissector_handle(ptr noundef nonnull %i.eh, ptr noundef %.val) ; 3 uses
  %.not152 = icmp eq ptr %i.ej, null
  br i1 %.not152, label %.loopexit182, label %.preheader181

.preheader181:                                    ; preds = %bb.aa
  %i.ek = load ptr, ptr %i.dr, align 8
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %.not199 = icmp eq i32 %i.em, 0
  br i1 %.not199, label %.loopexit182, label %.lr.ph186

.lr.ph186:                                        ; preds = %.preheader181, %._crit_edge
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %._crit_edge ], [ 0, %.preheader181 ] ; 5 uses
  %i.en = phi ptr [ %i.fp, %._crit_edge ], [ %i.el, %.preheader181 ] ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv206
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv206
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %i.eu = icmp ult i32 %i.eq, %i.et
  br i1 %i.eu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph186
  %i.ev = zext i32 %i.eq to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ev, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ew = trunc nuw i64 %indvars.iv to i32
  tail call void @dissector_change_uint(ptr noundef %i.dq, i32 noundef %i.ew, ptr noundef null)
  %i.ex = tail call i32 @dissector_table_get_type(ptr noundef nonnull %i.eh)
  %i.ey = inttoptr i64 %indvars.iv to ptr
  tail call void @decode_build_reset_list(ptr noundef %i.dq, i32 noundef %i.ex, ptr noundef %i.ey, ptr noundef null, ptr noundef null)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = load ptr, ptr %i.dr, align 8
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr [8 x i8], ptr %i.fa, i64 %indvars.iv206
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 4            ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph186
  %.lcssa183 = phi i32 [ %i.et, %.lr.ph186 ], [ %i.fd, %.lr.ph ]
  tail call void @dissector_change_uint(ptr noundef %i.dq, i32 noundef %.lcssa183, ptr noundef null)
  %i.fg = tail call i32 @dissector_table_get_type(ptr noundef nonnull %i.eh)
  %i.fh = load ptr, ptr %i.dr, align 8
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %indvars.iv206
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = zext i32 %i.fl to i64
  %i.fn = inttoptr i64 %i.fm to ptr
  tail call void @decode_build_reset_list(ptr noundef %i.dq, i32 noundef %i.fg, ptr noundef %i.fn, ptr noundef null, ptr noundef null)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.fo = load ptr, ptr %i.dr, align 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = zext i32 %i.fq to i64
  %i.fs = icmp samesign ult i64 %indvars.iv.next207, %i.fr
  br i1 %i.fs, label %.lr.ph186, label %.loopexit182, !llvm.loop !26

.loopexit182:                                     ; preds = %._crit_edge, %.preheader181, %bb.aa, %bb.z, %prefs_get_effect_flags.exit173
  %.0142 = phi ptr [ null, %prefs_get_effect_flags.exit173 ], [ null, %bb.z ], [ %i.eh, %bb.aa ], [ %i.eh, %.preheader181 ], [ %i.eh, %._crit_edge ] ; 3 uses
  %.0141 = phi ptr [ null, %prefs_get_effect_flags.exit173 ], [ null, %bb.z ], [ null, %bb.aa ], [ %i.ej, %.preheader181 ], [ %i.ej, %._crit_edge ] ; 3 uses
  %i.ft = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load ptr, ptr %i.dr, align 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void @wmem_free(ptr noundef %i.fu, ptr noundef %i.fw)
  %i.fx = load ptr, ptr %i.ft, align 8
  %i.fy = load ptr, ptr %i.du, align 8
  %i.fz = tail call ptr @range_copy(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = load ptr, ptr %i.dr, align 8
  store ptr %i.fz, ptr %i.ga, align 8
  %i.gb = load i8, ptr %i.ee, align 8, !range !10, !noundef !11
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.loopexit182
  %i.gd = icmp ne ptr %.0142, null
  %i.ge = icmp ne ptr %.0141, null
  %or.cond = and i1 %i.gd, %i.ge
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ab
  %i.gf = load ptr, ptr %i.dr, align 8
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4
  %.not200 = icmp eq i32 %i.gh, 0
  br i1 %.not200, label %.loopexit, label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader, %._crit_edge190
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %._crit_edge190 ], [ 0, %.preheader ] ; 5 uses
  %i.gi = phi ptr [ %i.hk, %._crit_edge190 ], [ %i.gg, %.preheader ] ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 4
  %i.gk = getelementptr [8 x i8], ptr %i.gj, i64 %indvars.iv212
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %i.gi, i64 %indvars.iv212
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = icmp ult i32 %i.gl, %i.go
  br i1 %i.gp, label %.lr.ph189.preheader, label %._crit_edge190

.lr.ph189.preheader:                              ; preds = %.lr.ph193
  %i.gq = zext i32 %i.gl to i64
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %indvars.iv209 = phi i64 [ %i.gq, %.lr.ph189.preheader ], [ %indvars.iv.next210, %.lr.ph189 ] ; 3 uses
  %i.gr = trunc nuw i64 %indvars.iv209 to i32
  tail call void @dissector_change_uint(ptr noundef %i.dq, i32 noundef %i.gr, ptr noundef nonnull %.0141)
  %i.gs = tail call i32 @dissector_table_get_type(ptr noundef nonnull %.0142)
  %i.gt = inttoptr i64 %indvars.iv209 to ptr
  tail call void @decode_build_reset_list(ptr noundef %i.dq, i32 noundef %i.gs, ptr noundef %i.gt, ptr noundef null, ptr noundef null)
end_hunk_0
