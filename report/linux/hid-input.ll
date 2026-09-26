Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-input?download=true
inline.NumInlined: 131
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hidinput_configure_usage:bb.a

bb.ml:                                            ; preds = %bb.mj
  call fastcc void @hid_map_usage(ptr %.val860, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i8 noundef zeroext 3, i32 noundef 40) #13
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ae, %bb.bn, %bb.me, %bb.mh, %bb.mi, %bb.mk, %bb.ml, %bb.n, %bb.m, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.bi, %bb.bg, %bb.bl, %bb.bk, %bb.ce, %bb.cf, %bb.cb, %bb.cc, %bb.bu, %bb.bz, %bb.by, %bb.br, %bb.bs, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.df, %bb.dg, %bb.di, %bb.dj, %bb.dk, %bb.dv, %bb.du, %bb.dt, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dd, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.lk, %bb.lj, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.mb, %bb.ma, %bb.lz, %bb.i
  %i.fy = load ptr, ptr %i.b, align 8
  %.not844 = icmp eq ptr %i.fy, null
  br i1 %.not844, label %thread-pre-split1145.thread, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.fz = load ptr, ptr %i.am, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 120
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not845 = icmp eq ptr %i.gb, null
  br i1 %.not845, label %arch_set_bit.exit, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.gc = call i32 %i.gb(ptr noundef %.val, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %thread-pre-split1145.thread, label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.mo, %bb.mn
  %i.ge = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.gf = getelementptr i8, ptr %i.d, i64 40      ; 3 uses
  %i.gg = load i8, ptr %i.ge, align 4
  %i.gh = zext i8 %i.gg to i64
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gf, i64 range(i64 0, 4294967296) %i.gh) #14, !srcloc !22
  %i.gi = getelementptr i8, ptr %2, i64 14        ; 10 uses
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = zext i16 %i.gj to i32
  %i.gl = load i32, ptr %i.a, align 4
  %.not8461157 = icmp slt i32 %i.gl, %i.gk
  br i1 %.not8461157, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %arch_set_bit.exit
  %i.gm = getelementptr i8, ptr %.val, i64 7172
  %.pre1172 = load ptr, ptr %i.b, align 8
  br label %bb.mp

bb.mp:                                            ; preds = %.lr.ph, %find_next_zero_bit.exit
  %i.gn = phi ptr [ %.pre1172, %.lr.ph ], [ %.pre1171, %find_next_zero_bit.exit ] ; 2 uses
  %i.go = phi i16 [ %i.gj, %.lr.ph ], [ %i.hc, %find_next_zero_bit.exit ]
  %i.gp = zext i16 %i.go to i64
  %i.gq = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gn, i64 range(i64 0, 65536) %i.gp, ptr elementtype(i64) %i.gn) #14, !srcloc !74 ; 2 uses
  %i.gr = icmp ult i8 %i.gq, 2
  call void @llvm.assume(i1 %i.gr)
  %i.gs = trunc nuw i8 %i.gq to i1
  br i1 %i.gs, label %bb.mq, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.mp
  %.pre1174.pre = load i16, ptr %i.gi, align 2
  %.pre1175.pre = load i32, ptr %i.a, align 4
  br label %.critedge

bb.mq:                                            ; preds = %bb.mp
  %i.gt = load i32, ptr %i.gm, align 4
  %i.gu = and i32 %i.gt, 1048576
  %.not852 = icmp eq i32 %i.gu, 0
  br i1 %.not852, label %bb.mr, label %find_next_zero_bit.exit

find_next_zero_bit.exit:                          ; preds = %bb.mq
  %i.gv = load i16, ptr %i.gi, align 2
  %i.gw = zext i16 %i.gv to i64
  %i.gx = load i32, ptr %i.a, align 4
  %i.gy = add i32 %i.gx, 1
  %i.gz = sext i32 %i.gy to i64
  %i.ha = load ptr, ptr %i.b, align 8
  %i.hb = call i64 @_find_next_zero_bit(ptr noundef %i.ha, i64 noundef range(i64 -2147483648, 2147483648) %i.gz, i64 noundef range(i64 0, 65536) %i.gw) #12 ; 2 uses
  %.pre1173 = load i32, ptr %i.a, align 4         ; 2 uses
  %.pre1171 = load ptr, ptr %i.b, align 8
  %i.hc = trunc i64 %i.hb to i16                  ; 3 uses
  store i16 %i.hc, ptr %i.gi, align 2
  %i.hd = trunc i64 %i.hb to i32
  %i.he = and i32 %i.hd, 65535
  %.not846 = icmp slt i32 %.pre1173, %i.he
  br i1 %.not846, label %.critedge, label %bb.mp, !llvm.loop !70

bb.mr:                                            ; preds = %bb.mq
  %i.hf = getelementptr i8, ptr %.val, i64 7160   ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = or i64 %i.hg, 4
  store i64 %i.hh, ptr %i.hf, align 8
  br label %.critedge.thread

.critedge:                                        ; preds = %find_next_zero_bit.exit, %..critedge.loopexit_crit_edge
  %.pre1175 = phi i32 [ %.pre1175.pre, %..critedge.loopexit_crit_edge ], [ %.pre1173, %find_next_zero_bit.exit ]
  %.pre1174 = phi i16 [ %.pre1174.pre, %..critedge.loopexit_crit_edge ], [ %i.hc, %find_next_zero_bit.exit ] ; 2 uses
  %.pre1179 = zext i16 %.pre1174 to i32
  %i.hi = icmp slt i32 %.pre1175, %.pre1179
  br i1 %i.hi, label %.critedge.thread, label %bb.ms

bb.ms:                                            ; preds = %.critedge
  %i.hj = load i8, ptr %i.ge, align 4             ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 3
  br i1 %i.hk, label %bb.mt, label %thread-pre-split1145

bb.mt:                                            ; preds = %bb.ms
  %i.hl = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8
  %i.hn = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = getelementptr i8, ptr %.val, i64 7172
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = and i32 %i.hq, 32
  %.not847 = icmp ne i32 %i.hr, 0
  %switch855 = icmp ult i16 %.pre1174, 2
  %or.cond856 = and i1 %switch855, %.not847
  br i1 %or.cond856, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  store i32 0, ptr %i.hl, align 8
  store i32 255, ptr %i.hn, align 4
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.0803 = phi i32 [ 0, %bb.mu ], [ %i.hm, %bb.mt ] ; 3 uses
  %.0802 = phi i32 [ 255, %bb.mu ], [ %i.ho, %bb.mt ] ; 3 uses
  %i.hs = getelementptr i8, ptr %1, i64 8
  %i.ht = load i32, ptr %i.hs, align 8
  %i.hu = and i32 %i.ht, -2
  %switch858 = icmp eq i32 %i.hu, 65540
  %i.hv = load i16, ptr %i.gi, align 2
  %i.hw = zext i16 %i.hv to i32                   ; 2 uses
  br i1 %switch858, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.hx = sub i32 %.0802, %.0803                  ; 2 uses
  %i.hy = ashr i32 %i.hx, 8
  %i.hz = ashr i32 %i.hx, 4
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.hw, i32 noundef %.0803, i32 noundef %.0802, i32 noundef %i.hy, i32 noundef %i.hz) #12
  br label %bb.my

bb.mx:                                            ; preds = %bb.mv
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.hw, i32 noundef %.0803, i32 noundef %.0802, i32 noundef 0, i32 noundef 0) #12
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.ia = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.ib = call i32 @hidinput_calc_abs_res(ptr noundef %1, i16 noundef zeroext %i.ia) #13
  call void @input_alloc_absinfo(ptr noundef %i.d) #12
  %i.ic = getelementptr i8, ptr %i.d, i64 328
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not.i1138 = icmp eq ptr %i.id, null
  br i1 %.not.i1138, label %input_abs_set_res.exit, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.ie = zext i16 %i.ia to i64
  %i.if = getelementptr [24 x i8], ptr %i.id, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 20
  store i32 %i.ib, ptr %i.ig, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %bb.my, %bb.mz
  %i.ih = load i16, ptr %i.gi, align 2
  %i.ii = icmp eq i16 %i.ih, 53
  br i1 %i.ii, label %bb.na, label %bb.nc

bb.na:                                            ; preds = %input_abs_set_res.exit
  %i.ij = getelementptr i8, ptr %i.d, i64 208     ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  store i32 60, ptr %i.ij, align 8
  br label %bb.nc

bb.nc:                                            ; preds = %input_abs_set_res.exit, %bb.na, %bb.nb
  %.pr = load i8, ptr %i.ge, align 4              ; 2 uses
  %i.im = icmp eq i8 %.pr, 3
  br i1 %i.im, label %bb.nd, label %thread-pre-split1145

bb.nd:                                            ; preds = %bb.nc
  %i.in = getelementptr i8, ptr %2, i64 18
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = getelementptr i8, ptr %2, i64 20
  %i.iq = load i16, ptr %i.ip, align 4
  %i.ir = icmp slt i16 %i.io, %i.iq
  br i1 %i.ir, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.is = getelementptr i8, ptr %2, i64 22
  %i.it = load i16, ptr %i.is, align 2
  %.not848 = icmp eq i16 %i.it, 0
  br i1 %.not848, label %bb.ni, label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %i.iu = load i16, ptr %i.gi, align 2            ; 3 uses
  %i.iv = zext i16 %i.iu to i32
  %i.iw = load i32, ptr %i.a, align 4
  %.not1201 = icmp slt i32 %i.iw, %i.iv
  br i1 %.not1201, label %._crit_edge, label %.lr.ph1161

.lr.ph1161:                                       ; preds = %bb.nf
  %i.ix = getelementptr i8, ptr %i.d, i64 152
  %i.iy = zext i16 %i.iu to i64
  br label %arch_set_bit.exit859

arch_set_bit.exit859:                             ; preds = %.lr.ph1161, %arch_set_bit.exit859
  %indvars.iv = phi i64 [ %i.iy, %.lr.ph1161 ], [ %indvars.iv.next, %arch_set_bit.exit859 ] ; 4 uses
  %i.iz = trunc nuw nsw i64 %indvars.iv to i32
  call void @input_set_abs_params(ptr noundef %i.d, i32 noundef %i.iz, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ix, i64 range(i64 0, 4294967296) %indvars.iv) #14, !srcloc !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ja = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.jb = zext i16 %i.ja to i64
  %4 = add nuw nsw i64 %i.jb, 2
  %5 = icmp samesign ult i64 %indvars.iv.next, %4
  %i.jc = load i32, ptr %i.a, align 4
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv, %i.jd
  %i.jf = select i1 %5, i1 %i.je, i1 false
  br i1 %i.jf, label %arch_set_bit.exit859, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %arch_set_bit.exit859, %bb.nf
  %.lcssa = phi i16 [ %i.iu, %bb.nf ], [ %i.ja, %arch_set_bit.exit859 ]
  %i.jg = getelementptr i8, ptr %2, i64 22
  %i.jh = load i16, ptr %i.jg, align 2
  %.not849 = icmp eq i16 %i.jh, 0
  br i1 %.not849, label %bb.ni, label %bb.ng

bb.ng:                                            ; preds = %._crit_edge
  %i.ji = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 8
  %.not850 = icmp eq i16 %i.jj, 0
  br i1 %.not850, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  store i16 %.lcssa, ptr %i.ji, align 8
  br label %bb.ni

bb.ni:                                            ; preds = %._crit_edge, %bb.ng, %bb.nh, %bb.ne
  %.pr1143 = load i8, ptr %i.ge, align 4          ; 2 uses
  %i.jk = icmp eq i8 %.pr1143, 3
  br i1 %i.jk, label %bb.nj, label %thread-pre-split1145

bb.nj:                                            ; preds = %bb.ni
  %i.jl = load i32, ptr %i.g, align 4
  %i.jm = and i32 %i.jl, 4
  %.not851 = icmp eq i32 %i.jm, 0
  br i1 %.not851, label %thread-pre-split1145.thread, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.jn = load i16, ptr %i.gi, align 2
  %i.jo = icmp eq i16 %i.jn, 32
  br i1 %i.jo, label %bb.nl, label %thread-pre-split1145.thread

bb.nl:                                            ; preds = %bb.nk
  %i.jp = getelementptr i8, ptr %i.d, i64 62      ; 4 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.jp, i32 8, ptr elementtype(i8) %i.jp) #14, !srcloc !72
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.jp, i32 4, ptr elementtype(i8) %i.jp) #14, !srcloc !72
  %.pr1146.pre = load i8, ptr %i.ge, align 4
  br label %thread-pre-split1145

thread-pre-split1145:                             ; preds = %bb.nl, %bb.nc, %bb.ms, %bb.ni
  %i.jq = phi i8 [ %.pr1143, %bb.ni ], [ %i.hj, %bb.ms ], [ %.pr, %bb.nc ], [ %.pr1146.pre, %bb.nl ]
  %i.jr = icmp eq i8 %i.jq, 1
  br i1 %i.jr, label %bb.nm, label %thread-pre-split1145.thread

bb.nm:                                            ; preds = %thread-pre-split1145
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.gf, i32 16, ptr elementtype(i8) %i.gf) #14, !srcloc !72
  %i.js = getelementptr i8, ptr %i.d, i64 160     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.js, i32 16, ptr elementtype(i8) %i.js) #14, !srcloc !72
  br label %thread-pre-split1145.thread

.critedge.thread:                                 ; preds = %arch_set_bit.exit, %bb.d, %.critedge, %bb.md, %bb.ly, %bb.ll, %bb.li, %bb.eo, %bb.dw, %bb.da, %bb.cl, %bb.bo, %bb.bm, %bb.bj, %bb.af, %bb.l, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.b, %bb.a, %bb.mr, %bb.mc, %bb.bh, %bb.i
  %i.jt = getelementptr i8, ptr %2, i64 16
  store i8 0, ptr %i.jt, align 4
  %i.ju = getelementptr i8, ptr %2, i64 14
  store i16 0, ptr %i.ju, align 2
  br label %thread-pre-split1145.thread

.unreachabledefault:                              ; preds = %bb.i
  unreachable

thread-pre-split1145.thread:                      ; preds = %bb.nk, %bb.nj, %thread-pre-split1145, %bb.nm, %bb.mo, %bb.mm, %.critedge.thread, %bb.lh, %bb.lg, %bb.le, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @hid_map_usage_clear(ptr %.24.val, ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i8 noundef zeroext range(i8 1, 4) %3, i16 noundef zeroext %4) unnamed_addr #9 align 16 {
bb.a:
  %i.a = zext i16 %4 to i32                       ; 2 uses
  %i.b = zext nneg i8 %3 to i32
  switch i8 %3, label %default.unreachable3 [
    i8 3, label %bb.d
    i8 2, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink.i = phi i64 [ 144, %bb.b ], [ 152, %bb.a ], [ 48, %bb.c ]
  %.0.i = phi i32 [ 15, %bb.b ], [ 63, %bb.a ], [ 767, %bb.c ] ; 2 uses
  %i.c = getelementptr i8, ptr %.24.val, i64 %.sink.i ; 3 uses
  %i.d = icmp samesign ult i32 %.0.i, %i.a
  %.not.i = icmp eq ptr %i.c, null
  %spec.select.i = select i1 %i.d, i1 true, i1 %.not.i, !prof !24
  br i1 %spec.select.i, label %.thread.i, label %bb.f, !prof !25

default.unreachable3:                             ; preds = %bb.a
  unreachable

.thread.i:                                        ; preds = %bb.d
  %i.e = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #12
  %.not22.i = icmp eq i32 %i.e, 0
  br i1 %.not22.i, label %hid_map_usage.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.f = load ptr, ptr %.24.val, align 8
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %i.f, i32 noundef range(i32 0, 66224) %i.a, i32 noundef %i.b) #16 ; 0 uses
  br label %hid_map_usage.exit.thread

hid_map_usage.exit.thread:                        ; preds = %bb.e, %.thread.i
  store ptr null, ptr %1, align 8
  br label %arch_clear_bit.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 16
  store i8 %3, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 14         ; 2 uses
  store i16 %4, ptr %i.i, align 2
  store i32 %.0.i, ptr %2, align 4
  store ptr %i.c, ptr %1, align 8
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.c, i64 range(i64 0, 4294967296) %i.k) #14, !srcloc !21
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %bb.f, %hid_map_usage.exit.thread
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @hid_map_usage(ptr %.24.val, ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, i8 noundef zeroext range(i8 1, 18) %3, i32 noundef range(i32 0, 66224) %4) unnamed_addr #9 align 16 {
bb.a:
  %i.a = zext nneg i8 %3 to i32
  switch i8 %3, label %.thread [
    i8 3, label %bb.f
    i8 2, label %bb.b
    i8 1, label %bb.c
    i8 17, label %bb.d
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ 160, %bb.e ], [ 168, %bb.d ], [ 48, %bb.c ], [ 144, %bb.b ], [ 152, %bb.a ]
  %.0 = phi i32 [ 7, %bb.e ], [ 15, %bb.d ], [ 767, %bb.c ], [ 15, %bb.b ], [ 63, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.24.val, i64 %.sink ; 2 uses
  %i.c = icmp samesign ugt i32 %4, %.0
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %i.c, i1 true, i1 %.not, !prof !24
  br i1 %spec.select, label %.thread, label %bb.h, !prof !25

.thread:                                          ; preds = %bb.a, %bb.f
  %i.d = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #12
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.e = load ptr, ptr %.24.val, align 8
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %i.e, i32 noundef %4, i32 noundef %i.a) #16 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr i8, ptr %0, i64 16
  store i8 %3, ptr %i.g, align 4
  %i.h = trunc nuw nsw i32 %4 to i16
  %i.i = getelementptr i8, ptr %0, i64 14
  store i16 %i.h, ptr %i.i, align 2
  store i32 %.0, ptr %2, align 4
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.b, %bb.h ], [ null, %bb.g ], [ null, %.thread ]
  store ptr %storemerge, ptr %1, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3
end_hunk_0
