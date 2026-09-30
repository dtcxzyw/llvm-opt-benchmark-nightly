Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_fmt_fp:bb.a
  %i.qq = sub i32 %i.pk, %.18                     ; 2 uses
  %i.qr = tail call i32 @llvm.smin.i32(i32 %i.qq, i32 %.21805)
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.18, i32 noundef %i.qr) #16
  %i.qs = sub i32 %.21805, %i.qq                  ; 3 uses
  %i.qt = add i32 %.91827, 4                      ; 2 uses
  %.not1937 = icmp ult i32 %i.qt, %i.pi
  %i.qu = icmp sgt i32 %i.qs, -1
  %or.cond1949 = select i1 %.not1937, i1 %i.qu, i1 false
  br i1 %or.cond1949, label %bb.bx, label %.loopexit2068

.loopexit2068:                                    ; preds = %.loopexit2067, %bb.bv
  %.3 = phi i32 [ %.01803, %bb.bv ], [ %i.qs, %.loopexit2067 ]
  %i.qv = add i32 %.3, 18
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 48, i32 noundef %i.qv, i32 noundef 18, i32 noundef 0) #16
  %i.qw = sub i32 %i.y, %.2
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.2, i32 noundef %i.qw) #16
  br label %.sink.split

bb.cc:                                            ; preds = %bb.bu
  %i.qx = add i32 %.01803, 9
  br label %.loopexit2063

.loopexit2063:                                    ; preds = %.loopexit, %bb.cc
  %.19 = phi i32 [ %i.qx, %bb.cc ], [ %.11804, %.loopexit ]
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 48, i32 noundef %.19, i32 noundef 9, i32 noundef 0) #16
  br label %.sink.split

bb.cd:                                            ; preds = %bb.i, %bb.h
  %.mask = and i32 %6, 32                         ; 2 uses
  %isneg.not = icmp eq i32 %.mask, 0
  %i.qy = select i1 %isneg.not, i32 0, i32 9
  %i.qz = add nuw nsw i32 %.01798, %i.qy          ; 2 uses
  %i.ra = icmp ugt i32 %4, 11
  br i1 %i.ra, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = sub nuw nsw i32 12, %4                  ; 3 uses
  %xtraiter2248 = and i32 %i.rb, 7                ; 2 uses
  %lcmp.mod2249.not = icmp eq i32 %xtraiter2248, 0
  br i1 %lcmp.mod2249.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ce, %.prol.preheader
  %.20.prol = phi i32 [ %i.rd, %.prol.preheader ], [ %i.rb, %bb.ce ]
  %.11794.prol = phi double [ %i.rc, %.prol.preheader ], [ 1.600000e+01, %bb.ce ]
  %prol.iter2250 = phi i32 [ %prol.iter2250.next, %.prol.preheader ], [ 0, %bb.ce ]
  %i.rc = fmul double %.11794.prol, 1.600000e+01  ; 3 uses
  %i.rd = add nsw i32 %.20.prol, -1               ; 2 uses
  %prol.iter2250.next = add i32 %prol.iter2250, 1 ; 2 uses
  %prol.iter2250.cmp.not = icmp eq i32 %prol.iter2250.next, %xtraiter2248
  br i1 %prol.iter2250.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ce
  %.lcssa2216.unr = phi double [ poison, %bb.ce ], [ %i.rc, %.prol.preheader ]
  %.20.unr = phi i32 [ %i.rb, %bb.ce ], [ %i.rd, %.prol.preheader ]
  %.11794.unr = phi double [ 1.600000e+01, %bb.ce ], [ %i.rc, %.prol.preheader ]
  %i.re = icmp ugt i32 %4, 4
  br i1 %i.re, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.20 = phi i32 [ %i.rn, %.new ], [ %.20.unr, %.prol.loopexit ]
  %.11794 = phi double [ %i.rm, %.new ], [ %.11794.unr, %.prol.loopexit ]
  %i.rf = fmul double %.11794, 1.600000e+01
  %i.rg = fmul double %i.rf, 1.600000e+01
  %i.rh = fmul double %i.rg, 1.600000e+01
  %i.ri = fmul double %i.rh, 1.600000e+01
  %i.rj = fmul double %i.ri, 1.600000e+01
  %i.rk = fmul double %i.rj, 1.600000e+01
  %i.rl = fmul double %i.rk, 1.600000e+01
  %i.rm = fmul double %i.rl, 1.600000e+01         ; 2 uses
  %i.rn = add nsw i32 %.20, -8                    ; 2 uses
  %.not1898.7 = icmp eq i32 %i.rn, 0
  br i1 %.not1898.7, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa2216 = phi double [ %.lcssa2216.unr, %.prol.loopexit ], [ %i.rm, %.new ] ; 4 uses
  %i.ro = zext nneg i32 %i.qz to i64
  %.val1982 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rp = getelementptr inbounds nuw i8, ptr %.val1982, i64 %i.ro
  %.0.copyload.i2046 = load i8, ptr %i.rp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2046) #16, !srcloc !33
  %i.rq = icmp eq i8 %.0.copyload.i2046, 45
  br i1 %i.rq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.unr-lcssa
  %i.rr = fneg double %i.ab
  %i.rs = fsub double %i.rr, %.lcssa2216
  %i.rt = fadd double %.lcssa2216, %i.rs
  %i.ru = fneg double %i.rt
  br label %bb.ch

bb.cg:                                            ; preds = %.unr-lcssa
  %i.rv = fadd double %i.ab, %.lcssa2216
  %i.rw = fsub double %i.rv, %.lcssa2216
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cd, %bb.cg, %bb.cf
  %.51848 = phi double [ %i.ab, %bb.cd ], [ %i.ru, %bb.cf ], [ %i.rw, %bb.cg ]
  %.val1952 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.rx = getelementptr inbounds nuw i8, ptr %.val1952, i64 %i.f
  %.0.copyload.i2047 = load i32, ptr %i.rx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2047) #16, !srcloc !22
  %.not.i2048 = icmp eq i32 %.0.copyload.i2047, 0
  br i1 %.not.i2048, label %w2c_hermes_fmt_u.exit2055.thread, label %.preheader.i2049.preheader

.preheader.i2049.preheader:                       ; preds = %bb.ch
  %i.ry = tail call i32 @llvm.abs.i32(i32 %.0.copyload.i2047, i1 false)
  br label %.preheader.i2049

.preheader.i2049:                                 ; preds = %.preheader.i2049.preheader, %.preheader.i2049
  %.2.i2050 = phi i32 [ %i.rz, %.preheader.i2049 ], [ %i.y, %.preheader.i2049.preheader ]
  %.066.i2051 = phi i32 [ %i.sa, %.preheader.i2049 ], [ %i.ry, %.preheader.i2049.preheader ] ; 3 uses
  %i.rz = add i32 %.2.i2050, -1                   ; 4 uses
  %i.sa = udiv i32 %.066.i2051, 10                ; 2 uses
  %.neg72.i2052 = mul i32 %i.sa, 246
  %i.sb = add i32 %.neg72.i2052, %.066.i2051
  %i.sc = zext i32 %i.rz to i64
  %.val.i2053 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sd = trunc i32 %i.sb to i8
  %i.se = or i8 %i.sd, 48
  %i.sf = getelementptr inbounds nuw i8, ptr %.val.i2053, i64 %i.sc
  store i8 %i.se, ptr %i.sf, align 1
  %i.sg = icmp ugt i32 %.066.i2051, 9
  br i1 %i.sg, label %.preheader.i2049, label %w2c_hermes_fmt_u.exit2055

w2c_hermes_fmt_u.exit2055:                        ; preds = %.preheader.i2049
  %i.sh = icmp eq i32 %i.y, %i.rz
  br i1 %i.sh, label %w2c_hermes_fmt_u.exit2055.thread, label %bb.ci

w2c_hermes_fmt_u.exit2055.thread:                 ; preds = %bb.ch, %w2c_hermes_fmt_u.exit2055
  %.val1989 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.si = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.e
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 15
  store i8 48, ptr %i.sj, align 1
  %i.sk = add i32 %i.b, -545
  br label %bb.ci

bb.ci:                                            ; preds = %w2c_hermes_fmt_u.exit2055.thread, %w2c_hermes_fmt_u.exit2055
  %.21 = phi i32 [ %i.sk, %w2c_hermes_fmt_u.exit2055.thread ], [ %i.rz, %w2c_hermes_fmt_u.exit2055 ] ; 2 uses
  %i.sl = or disjoint i32 %.01799, 2              ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i2056 = load i32, ptr %i.sm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2056) #16, !srcloc !22
  %i.sn = add i32 %.21, -2                        ; 3 uses
  %i.so = zext i32 %i.sn to i64
  %.val1988 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sp = trunc i32 %6 to i8
  %i.sq = add i8 %i.sp, 15
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.so
  store i8 %i.sq, ptr %i.sr, align 1
  %i.ss = add i32 %.21, -1
  %i.st = icmp slt i32 %.0.copyload.i2056, 0
  %i.su = zext i32 %i.ss to i64
  %.val1987 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.sv = select i1 %i.st, i8 45, i8 43
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.su
  store i8 %i.sv, ptr %i.sw, align 1
  %i.sx = and i32 %5, 8
  %i.sy = trunc nuw nsw i32 %.mask to i8
  %.not1903 = icmp eq i32 %i.sx, 0
  %i.sz = icmp slt i32 %4, 1
  %or.cond1950.not2061 = and i1 %i.sz, %.not1903
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cp, %bb.ci
  %.61849 = phi double [ %.51848, %bb.ci ], [ %i.tn, %bb.cp ] ; 5 uses
  %.101828 = phi i32 [ %i.y, %bb.ci ], [ %.111829, %bb.cp ] ; 3 uses
  %i.ta = tail call noundef double @llvm.fabs.f64(double %.61849)
  %i.tb = fcmp olt double %i.ta, f0x41E0000000000000
  br i1 %i.tb, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.tc = fcmp ule double %.61849, f0xC1E0000000200000
  %i.td = fcmp uge double %.61849, f0x41E0000000000000
  %.not1901 = or i1 %i.tc, %i.td
  br i1 %.not1901, label %bb.cl, label %bb.cm, !prof !28

bb.cl:                                            ; preds = %bb.ck
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.te = fptosi double %.61849 to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cj, %bb.cm
  %.1 = phi i32 [ %i.te, %bb.cm ], [ -2147483648, %bb.cj ] ; 2 uses
  %i.tf = add i32 %.1, 67168
  %i.tg = zext i32 %i.tf to i64
  %.val1981 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.th = getelementptr inbounds nuw i8, ptr %.val1981, i64 %i.tg
  %.0.copyload.i2057 = load i8, ptr %i.th, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2057) #16, !srcloc !33
  %i.ti = zext i32 %.101828 to i64                ; 2 uses
  %.val1986 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tj = or i8 %.0.copyload.i2057, %i.sy
  %i.tk = getelementptr inbounds nuw i8, ptr %.val1986, i64 %i.ti
  store i8 %i.tj, ptr %i.tk, align 1
  %i.tl = sitofp i32 %.1 to double
  %i.tm = fsub double %.61849, %i.tl
  %i.tn = fmul double %i.tm, 1.600000e+01         ; 3 uses
  %i.to = add i32 %.101828, 1                     ; 2 uses
  %i.tp = sub i32 %i.to, %i.y
  %.not1902 = icmp ne i32 %i.tp, 1
  %i.tq = fcmp oeq double %i.tn, 0.000000e+00
  %or.cond1951 = and i1 %or.cond1950.not2061, %i.tq
  %or.cond2106 = select i1 %.not1902, i1 true, i1 %or.cond1951
  br i1 %or.cond2106, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val1985 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.tr = getelementptr inbounds nuw i8, ptr %.val1985, i64 %i.ti
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store i8 46, ptr %i.ts, align 1
  %i.tt = add i32 %.101828, 2
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.111829 = phi i32 [ %i.to, %bb.cn ], [ %i.tt, %bb.co ] ; 2 uses
  %7 = fcmp une double %i.tn, 0.000000e+00
  br i1 %7, label %bb.cj, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tu = sub i32 %i.y, %i.sn                     ; 2 uses
  %i.tv = add i32 %i.tu, %i.sl                    ; 2 uses
  %i.tw = sub i32 2147483645, %i.tv
  %i.tx = icmp slt i32 %i.tw, %4
  br i1 %i.tx, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ty = add i32 %4, 2
  %i.tz = sub i32 %.111829, %i.y                  ; 4 uses
  %i.ua = add i32 %i.tz, -2
  %i.ub = icmp sge i32 %i.ua, %4
  %.not1904 = icmp eq i32 %4, 0
  %i.uc = select i1 %.not1904, i1 true, i1 %i.ub
  %i.ud = select i1 %i.uc, i32 %i.tz, i32 %i.ty   ; 2 uses
  %i.ue = add i32 %i.ud, %i.tv                    ; 3 uses
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 32, i32 noundef %3, i32 noundef %i.ue, i32 noundef %5) #16
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.qz, i32 noundef %i.sl) #16
  %i.uf = xor i32 %5, 65536
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 48, i32 noundef %3, i32 noundef %i.ue, i32 noundef %i.uf) #16
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.y, i32 noundef %i.tz) #16
  %i.ug = sub i32 %i.ud, %i.tz
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 48, i32 noundef %i.ug, i32 noundef 0, i32 noundef 0) #16
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.sn, i32 noundef %i.tu) #16
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit2068, %.loopexit2063, %bb.f, %bb.cr
  %.sink2191 = phi i32 [ %i.ue, %bb.cr ], [ %i.r, %bb.f ], [ %i.mr, %.loopexit2063 ], [ %i.mr, %.loopexit2068 ] ; 2 uses
  %i.uh = xor i32 %5, 8192
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 32, i32 noundef %3, i32 noundef %.sink2191, i32 noundef %i.uh) #16
  %i.ui = tail call i32 @llvm.smax.i32(i32 %3, i32 %.sink2191)
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split, %bb.cq, %bb.bl, %.loopexit2070, %bb.bi, %bb.bg
  %.21812 = phi i32 [ -1, %.loopexit2070 ], [ -1, %bb.bg ], [ -1, %bb.bi ], [ -1, %bb.bl ], [ -1, %bb.cq ], [ %i.ui, %.sink.split ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.21812
}

declare void @w2c_hermes_pop_arg_long_double(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @w2c_hermes_sn_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_0x5F_stdio_close(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call i32 @w2c_wasi__snapshot__preview1_fd_close(ptr noundef %i.f, i32 noundef %.0.copyload.i) #16
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_0x5F_stdio_write(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.e = zext i32 %1 to i64                       ; 9 uses
  %i.f = add nuw nsw i64 %i.e, 28                 ; 3 uses
  %.val248 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.h = zext i32 %i.c to i64                     ; 5 uses
  %.val261 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.0.copyload.i, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.e, 20                 ; 2 uses
  %.val247 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.k
  %.0.copyload.i263 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i263) #16, !srcloc !22
  %.val260 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %3, ptr %i.n, align 1
  %.val259 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %2, ptr %i.p, align 1
  %i.q = sub i32 %.0.copyload.i263, %.0.copyload.i ; 2 uses
  %.val258 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %i.q, ptr %i.s, align 1
  %i.t = add i32 %i.q, %3                         ; 2 uses
  %i.u = add nuw nsw i64 %i.e, 60                 ; 2 uses
  %.val246 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.u
  %.0.copyload.i264 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i264) #16, !srcloc !22
  %i.w = add i32 %i.b, -16                        ; 3 uses
  %i.x = add i32 %i.b, -20                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = tail call i32 @w2c_wasi__snapshot__preview1_fd_write(ptr noundef %i.z, i32 noundef %.0.copyload.i264, i32 noundef %i.w, i32 noundef 2, i32 noundef %i.x) #16 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.critedge, label %.loopexit297

.critedge:                                        ; preds = %bb.a, %bb.c
  %.0229 = phi i32 [ %i.ak, %bb.c ], [ %i.w, %bb.a ] ; 4 uses
  %.0225 = phi i32 [ %i.ax, %bb.c ], [ %i.t, %bb.a ] ; 2 uses
  %.0222 = phi i32 [ %i.az, %bb.c ], [ 2, %bb.a ] ; 2 uses
  %.val245 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i265 = load i32, ptr %i.ac, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i265) #16, !srcloc !22
  %i.ad = icmp eq i32 %.0225, %.0.copyload.i265
  br i1 %i.ad, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.ae = icmp slt i32 %.0.copyload.i265, 0
  br i1 %i.ae, label %.loopexit274, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = zext i32 %.0229 to i64
  %.val244 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.0.copyload.i266 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i266) #16, !srcloc !22
  %i.ai = icmp ugt i32 %.0.copyload.i265, %.0.copyload.i266 ; 4 uses
  %.neg = sext i1 %i.ai to i32
  %i.aj = select i1 %i.ai, i32 8, i32 0
  %i.ak = add i32 %i.aj, %.0229                   ; 4 uses
  %i.al = select i1 %i.ai, i32 %.0.copyload.i266, i32 0
  %i.am = sub i32 %.0.copyload.i265, %i.al        ; 2 uses
  %i.an = zext i32 %i.ak to i64                   ; 2 uses
  %.val243 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.an
  %.0.copyload.i267 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i267) #16, !srcloc !22
  %i.ap = add i32 %i.am, %.0.copyload.i267
  %.val256 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 1
  %i.ar = select i1 %i.ai, i32 12, i32 4
  %i.as = add i32 %i.ar, %.0229
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %.val242 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.at
  %.0.copyload.i268 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i268) #16, !srcloc !22
  %i.av = sub i32 %.0.copyload.i268, %i.am
  %.val255 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.at
  store i32 %i.av, ptr %i.aw, align 1
  %i.ax = sub i32 %.0225, %.0.copyload.i265       ; 2 uses
  %.val241 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.u
  %.0.copyload.i269 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #16, !srcloc !22
  %i.az = add i32 %.0222, %.neg                   ; 3 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.bb = tail call i32 @w2c_wasi__snapshot__preview1_fd_write(ptr noundef %i.ba, i32 noundef %.0.copyload.i269, i32 noundef %i.ak, i32 noundef %i.az, i32 noundef %i.x) #16 ; 2 uses
  %.not234 = icmp eq i32 %i.bb, 0
  br i1 %.not234, label %.critedge, label %.loopexit297

.loopexit297:                                     ; preds = %bb.c, %bb.a
  %.lcssa.sink = phi i32 [ %i.aa, %bb.a ], [ %i.bb, %bb.c ]
  %.0227 = phi i32 [ %i.w, %bb.a ], [ %i.ak, %bb.c ]
  %.1226 = phi i32 [ %i.t, %bb.a ], [ %i.ax, %bb.c ]
  %.1223 = phi i32 [ 2, %bb.a ], [ %i.az, %bb.c ]
  %.val254 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val254, i64 272032
  store i32 %.lcssa.sink, ptr %i.bc, align 1
  %.not236 = icmp eq i32 %.1226, -1
  br i1 %.not236, label %.loopexit, label %.loopexit274

.loopexit:                                        ; preds = %.critedge, %.loopexit297
  %.val240 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %.0.copyload.i270 = load i32, ptr %i.be, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i270) #16, !srcloc !22
  %.val253 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.f
  store i32 %.0.copyload.i270, ptr %i.bf, align 1
  %.val252 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.k
  store i32 %.0.copyload.i270, ptr %i.bg, align 1
  %.val239 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.0.copyload.i271 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i271) #16, !srcloc !22
  %i.bj = add i32 %.0.copyload.i271, %.0.copyload.i270
end_hunk_0
