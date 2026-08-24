Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_fmt_fp:bb.a
bb.q:                                             ; preds = %bb.p
  %.not1907 = icmp samesign ult i64 %i.bm, 1000000000
  br i1 %.not1907, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = trunc nuw i64 %i.bn to i32
  %i.bt = add i32 %.01813, -4                     ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.val1976 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.preheader2081, %bb.r
  %.11814 = phi i32 [ %.01813, %.preheader2081 ], [ %.01813, %bb.q ], [ %i.bt, %bb.r ] ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.21820 = phi i32 [ %.11819, %bb.s ], [ %i.bx, %bb.u ] ; 4 uses
  %i.bw = icmp ult i32 %.11814, %.21820
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = add i32 %.21820, -4                     ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %.val1964 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1964, i64 %i.by
  %.0.copyload.i2005 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2005) #16, !srcloc !22
  %.not1908 = icmp eq i32 %.0.copyload.i2005, 0
  br i1 %.not1908, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.val1963 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1963, i64 %i.f
  %.0.copyload.i2006 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2006) #16, !srcloc !22
  %i.cb = sub i32 %.0.copyload.i2006, %i.be       ; 4 uses
  %.val1975 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.f
  store i32 %i.cb, ptr %i.cc, align 1
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %.preheader2081, label %.loopexit2082

.loopexit2082:                                    ; preds = %bb.v, %bb.n
  %.11851 = phi i32 [ %.01806, %bb.n ], [ %i.cb, %bb.v ] ; 2 uses
  %.11831 = phi i32 [ %i.ay, %bb.n ], [ %.21820, %bb.v ] ; 2 uses
  %.21815 = phi i32 [ %i.ar, %bb.n ], [ %.11814, %bb.v ] ; 2 uses
  %i.ce = icmp slt i32 %.11851, 0
  br i1 %i.ce, label %bb.w, label %.loopexit2080

bb.w:                                             ; preds = %.loopexit2082
  %i.cf = add nuw i32 %i.ao, 25
  %i.cg = udiv i32 %i.cf, 9
  %i.ch = add nuw nsw i32 %i.cg, 1                ; 3 uses
  %i.ci = icmp eq i32 %.01802, 102
  %i.cj = shl nuw nsw i32 %i.ch, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.w
  %.21852 = phi i32 [ %.11851, %bb.w ], [ %i.dh, %bb.ad ]
  %.21832 = phi i32 [ %.11831, %bb.w ], [ %i.dq, %bb.ad ] ; 6 uses
  %.31816 = phi i32 [ %.21815, %bb.w ], [ %i.dk, %bb.ad ] ; 5 uses
  %i.ck = sub i32 0, %.21852
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 9) ; 2 uses
  %.not1910 = icmp ugt i32 %.21832, %.31816
  br i1 %.not1910, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = zext i32 %.31816 to i64
  %.val1962 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1962, i64 %i.cm
  %.0.copyload.i2007 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2007) #16, !srcloc !22
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.co = and i32 %i.cl, 31                       ; 3 uses
  %i.cp = lshr i32 1000000000, %i.co
  %i.cq = shl nsw i32 -1, %i.co
  %i.cr = xor i32 %i.cq, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.31853 = phi i32 [ 0, %bb.z ], [ %i.cy, %bb.aa ]
  %.31821 = phi i32 [ %.31816, %bb.z ], [ %i.cz, %bb.aa ] ; 2 uses
  %i.cs = zext i32 %.31821 to i64                 ; 2 uses
  %.val1961 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1961, i64 %i.cs
  %.0.copyload.i2008 = load i32, ptr %i.ct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2008) #16, !srcloc !22
  %i.cu = lshr i32 %.0.copyload.i2008, %i.co
  %i.cv = add i32 %i.cu, %.31853
  %.val1974 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.cs
  store i32 %i.cv, ptr %i.cw, align 1
  %i.cx = and i32 %.0.copyload.i2008, %i.cr
  %i.cy = mul i32 %i.cx, %i.cp                    ; 3 uses
  %i.cz = add i32 %.31821, 4                      ; 2 uses
  %i.da = icmp ult i32 %i.cz, %.21832
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = zext i32 %.31816 to i64
  %.val1960 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1960, i64 %i.db
  %.0.copyload.i2009 = load i32, ptr %i.dc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2009) #16, !srcloc !22
  %.not1911 = icmp eq i32 %i.cy, 0
  br i1 %.not1911, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = zext i32 %.21832 to i64
  %.val1973 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.dd
  store i32 %i.cy, ptr %i.de, align 1
  %i.df = add i32 %.21832, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.y
  %.31833 = phi i32 [ %.21832, %bb.y ], [ %.21832, %bb.ab ], [ %i.df, %bb.ac ] ; 2 uses
  %.41822 = phi i32 [ %.0.copyload.i2007, %bb.y ], [ %.0.copyload.i2009, %bb.ab ], [ %.0.copyload.i2009, %bb.ac ]
  %.val1959 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1959, i64 %i.f
  %.0.copyload.i2010 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2010) #16, !srcloc !22
  %i.dh = add i32 %.0.copyload.i2010, %i.cl       ; 3 uses
  %.val1972 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.f
  store i32 %i.dh, ptr %i.di, align 1
  %.not1912 = icmp eq i32 %.41822, 0
  %i.dj = select i1 %.not1912, i32 4, i32 0
  %i.dk = add i32 %i.dj, %.31816                  ; 3 uses
  %i.dl = select i1 %i.ci, i32 %i.ar, i32 %i.dk   ; 2 uses
  %i.dm = add i32 %i.dl, %i.cj
  %i.dn = sub i32 %.31833, %i.dl
  %i.do = ashr i32 %i.dn, 2
  %i.dp = icmp sgt i32 %i.do, %i.ch
  %i.dq = select i1 %i.dp, i32 %i.dm, i32 %.31833 ; 2 uses
  %i.dr = icmp slt i32 %i.dh, 0
  br i1 %i.dr, label %bb.x, label %.loopexit2080

.loopexit2080:                                    ; preds = %bb.ad, %.loopexit2082
  %.41834 = phi i32 [ %.11831, %.loopexit2082 ], [ %i.dq, %bb.ad ] ; 5 uses
  %.41817 = phi i32 [ %.21815, %.loopexit2082 ], [ %i.dk, %bb.ad ] ; 9 uses
  %.01800 = phi i32 [ 0, %.loopexit2082 ], [ %i.ch, %bb.ad ]
  %.not1913 = icmp ugt i32 %.41834, %.41817
  br i1 %.not1913, label %bb.ae, label %.loopexit2079

bb.ae:                                            ; preds = %.loopexit2080
  %i.ds = sub i32 %i.ar, %.41817
  %i.dt = ashr i32 %i.ds, 2
  %i.du = mul i32 %i.dt, 9                        ; 2 uses
  %i.dv = zext i32 %.41817 to i64
  %.val1958 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1958, i64 %i.dv
  %.0.copyload.i2011 = load i32, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2011) #16, !srcloc !22
  %i.dx = icmp ult i32 %.0.copyload.i2011, 10
  br i1 %i.dx, label %.loopexit2079, label %.preheader2078

.preheader2078:                                   ; preds = %bb.ae, %.preheader2078
  %.41854 = phi i32 [ %i.dy, %.preheader2078 ], [ %i.du, %bb.ae ]
  %.51823 = phi i32 [ %i.dz, %.preheader2078 ], [ 10, %bb.ae ]
  %i.dy = add i32 %.41854, 1                      ; 2 uses
  %i.dz = mul i32 %.51823, 10                     ; 2 uses
  %.not1914 = icmp ult i32 %.0.copyload.i2011, %i.dz
  br i1 %.not1914, label %.loopexit2079, label %.preheader2078

.loopexit2079:                                    ; preds = %.preheader2078, %bb.ae, %.loopexit2080
  %.51855 = phi i32 [ 0, %.loopexit2080 ], [ %i.du, %bb.ae ], [ %i.dy, %.preheader2078 ] ; 4 uses
  %.not1915 = icmp eq i32 %.01802, 102
  %i.ea = select i1 %.not1915, i32 0, i32 %.51855 ; 2 uses
  %i.eb = sub i32 %i.ao, %i.ea
  %i.ec = icmp eq i32 %.01802, 103                ; 2 uses
  %i.ed = icmp ne i32 %i.ao, 0                    ; 2 uses
  %i.ee = and i1 %i.ec, %i.ed
  %.neg1916 = sext i1 %i.ee to i32                ; 2 uses
  %i.ef = add i32 %i.eb, %.neg1916                ; 2 uses
  %i.eg = sub i32 %.41834, %i.ar
  %i.eh = ashr i32 %i.eg, 2
  %i.ei = mul i32 %i.eh, 9
  %i.ej = add i32 %i.ei, -9
  %i.ek = icmp slt i32 %i.ef, %i.ej
  br i1 %i.ek, label %bb.af, label %bb.at

bb.af:                                            ; preds = %.loopexit2079
  %i.el = select i1 %.inv, i32 4, i32 292
  %i.em = add i32 %i.el, %i.c
  %i.en = add i32 %i.ef, 9216                     ; 2 uses
  %i.eo = sdiv i32 %i.en, 9                       ; 3 uses
  %i.ep = shl nsw i32 %i.eo, 2
  %i.eq = add i32 %i.em, %i.ep                    ; 3 uses
  %i.er = add i32 %i.eq, -4048                    ; 6 uses
  %.neg1917 = mul nsw i32 %i.eo, -9
  %i.es = add i32 %.neg1917, %i.en                ; 3 uses
  %i.et = icmp slt i32 %i.es, 8
  br i1 %i.et, label %.preheader2076.preheader, label %.loopexit2077

.preheader2076.preheader:                         ; preds = %bb.af
  %i.eu = mul i32 %i.eo, 9
  %i.ev = add i32 %i.ea, %i.eu
  %i.ew = add i32 %i.ev, -9208
  %i.ex = add i32 %i.ao, %.neg1916
  %i.ey = sub i32 %i.ew, %i.ex                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.ey, 8
  br i1 %min.iters.check, label %.preheader2076.preheader2229, label %vector.ph

vector.ph:                                        ; preds = %.preheader2076.preheader
  %n.vec = and i32 %i.ey, -8                      ; 3 uses
  %i.ez = add i32 %i.es, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ <i32 10, i32 1, i32 1, i32 1>, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = mul <4 x i32> %reduced.phi, splat (i32 100) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.fa = icmp eq i32 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %i.fb = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ey, %n.vec
  br i1 %cmp.n, label %.loopexit2077, label %.preheader2076.preheader2229

.preheader2076.preheader2229:                     ; preds = %.preheader2076.preheader, %middle.block
  %.61824.ph = phi i32 [ 10, %.preheader2076.preheader ], [ %i.fb, %middle.block ]
  %.01810.ph = phi i32 [ %i.es, %.preheader2076.preheader ], [ %i.ez, %middle.block ]
  br label %.preheader2076

.preheader2076:                                   ; preds = %.preheader2076.preheader2229, %.preheader2076
  %.61824 = phi i32 [ %i.fc, %.preheader2076 ], [ %.61824.ph, %.preheader2076.preheader2229 ]
  %.01810 = phi i32 [ %i.fd, %.preheader2076 ], [ %.01810.ph, %.preheader2076.preheader2229 ]
  %i.fc = mul i32 %.61824, 10                     ; 2 uses
  %i.fd = add i32 %.01810, 1                      ; 2 uses
  %.not1918 = icmp eq i32 %i.fd, 8
  br i1 %.not1918, label %.loopexit2077, label %.preheader2076, !llvm.loop !38

.loopexit2077:                                    ; preds = %.preheader2076, %middle.block, %bb.af
  %.71825 = phi i32 [ 10, %bb.af ], [ %i.fb, %middle.block ], [ %i.fc, %.preheader2076 ] ; 7 uses
  %i.fe = zext i32 %i.er to i64                   ; 3 uses
  %.val1957 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1957, i64 %i.fe
  %.0.copyload.i2012 = load i32, ptr %i.ff, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2012) #16, !srcloc !22
  %i.fg = icmp eq i32 %.71825, 0
  br i1 %i.fg, label %bb.ag, label %bb.ah, !prof !28

bb.ag:                                            ; preds = %.loopexit2077
  tail call void @wasm_rt_trap(i32 noundef 3) #17
  unreachable

bb.ah:                                            ; preds = %.loopexit2077
  %i.fh = udiv i32 %.0.copyload.i2012, %.71825    ; 3 uses
  %i.fi = mul i32 %i.fh, %.71825                  ; 3 uses
  %.recomposed = urem i32 %.0.copyload.i2012, %.71825 ; 2 uses
  %.not1919 = icmp eq i32 %.0.copyload.i2012, %i.fi
  %i.fj = add i32 %i.eq, -4044
  %i.fk = icmp eq i32 %i.fj, %.41834              ; 2 uses
  %i.fl = and i1 %i.fk, %.not1919
  br i1 %i.fl, label %.loopexit2073, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = and i32 %i.fh, 1
  %.not1920 = icmp eq i32 %i.fm, 0
  br i1 %.not1920, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.not1921 = icmp eq i32 %.71825, 1000000000
  %.not1922 = icmp ult i32 %.41817, %i.er
  %or.cond = select i1 %.not1921, i1 %.not1922, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fn = add i32 %i.eq, -4052
  %i.fo = zext i32 %i.fn to i64
  %.val1984 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1984, i64 %i.fo
  %.0.copyload.i2013 = load i8, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2013) #16, !srcloc !33
  %i.fq = and i8 %.0.copyload.i2013, 1
  %.not1923 = icmp eq i8 %i.fq, 0
  br i1 %.not1923, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.al
  %.31846 = phi double [ f0x4340000000000000, %bb.aj ], [ f0x4340000000000001, %bb.al ], [ f0x4340000000000000, %bb.ak ] ; 3 uses
  %i.fr = lshr exact i32 %.71825, 1               ; 2 uses
  %i.fs = icmp eq i32 %.recomposed, %i.fr
  %i.ft = and i1 %i.fk, %i.fs
  %i.fu = select i1 %i.ft, double 1.000000e+00, double 1.500000e+00
  %i.fv = icmp ult i32 %.recomposed, %i.fr
  %i.fw = select i1 %i.fv, double 5.000000e-01, double %i.fu ; 3 uses
  br i1 %.01797, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fx = zext nneg i32 %.01798 to i64
  %.val1983 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1983, i64 %i.fx
  %.0.copyload.i2014 = load i8, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2014) #16, !srcloc !33
  %.not1925 = icmp eq i8 %.0.copyload.i2014, 45
  br i1 %.not1925, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fz = fneg double %i.fw
  %i.ga = fneg double %.31846
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.ao
  %.41847 = phi double [ %.31846, %bb.am ], [ %.31846, %bb.an ], [ %i.ga, %bb.ao ] ; 2 uses
  %.01793 = phi double [ %i.fw, %bb.am ], [ %i.fw, %bb.an ], [ %i.fz, %bb.ao ]
  %.val1971 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.fe
  store i32 %i.fi, ptr %i.gb, align 1
  %i.gc = fadd double %.41847, %.01793
  %i.gd = fcmp oeq double %i.gc, %.41847
  br i1 %i.gd, label %.loopexit2073, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = add i32 %i.fi, %.71825                  ; 2 uses
  %.val1970 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.fe
  store i32 %i.ge, ptr %i.gf, align 1
  %i.gg = icmp ugt i32 %i.ge, 999999999
  br i1 %i.gg, label %.preheader2074, label %.loopexit2075

.preheader2074:                                   ; preds = %bb.aq, %bb.as
  %.5 = phi i32 [ %.6, %bb.as ], [ %.41817, %bb.aq ] ; 3 uses
  %.11807 = phi i32 [ %i.gj, %bb.as ], [ %i.er, %bb.aq ] ; 2 uses
  %i.gh = zext i32 %.11807 to i64
  %.val1969 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.gh
  store i32 0, ptr %i.gi, align 1
  %i.gj = add i32 %.11807, -4                     ; 4 uses
  %i.gk = icmp ugt i32 %.5, %i.gj
  br i1 %i.gk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.preheader2074
  %i.gl = add i32 %.5, -4                         ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %.val1968 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1968, i64 %i.gm
  store i32 0, ptr %i.gn, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.preheader2074
  %.6 = phi i32 [ %i.gl, %bb.ar ], [ %.5, %.preheader2074 ] ; 2 uses
  %i.go = zext i32 %i.gj to i64                   ; 2 uses
  %.val1956 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1956, i64 %i.go
  %.0.copyload.i2015 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2015) #16, !srcloc !22
  %i.gq = add i32 %.0.copyload.i2015, 1           ; 2 uses
  %.val1967 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1967, i64 %i.go
  store i32 %i.gq, ptr %i.gr, align 1
  %i.gs = icmp ugt i32 %i.gq, 999999999
  br i1 %i.gs, label %.preheader2074, label %.loopexit2075

.loopexit2075:                                    ; preds = %bb.as, %bb.aq
  %.7 = phi i32 [ %.41817, %bb.aq ], [ %.6, %bb.as ] ; 4 uses
  %.21808 = phi i32 [ %i.er, %bb.aq ], [ %i.gj, %bb.as ] ; 2 uses
  %i.gt = sub i32 %i.ar, %.7
  %i.gu = ashr i32 %i.gt, 2
  %i.gv = mul i32 %i.gu, 9                        ; 2 uses
  %i.gw = zext i32 %.7 to i64
  %.val1955 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1955, i64 %i.gw
  %.0.copyload.i2016 = load i32, ptr %i.gx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2016) #16, !srcloc !22
  %i.gy = icmp ult i32 %.0.copyload.i2016, 10
  br i1 %i.gy, label %.loopexit2073, label %.preheader2072

.preheader2072:                                   ; preds = %.loopexit2075, %.preheader2072
  %.61856 = phi i32 [ %i.gz, %.preheader2072 ], [ %i.gv, %.loopexit2075 ]
  %.81826 = phi i32 [ %i.ha, %.preheader2072 ], [ 10, %.loopexit2075 ]
  %i.gz = add i32 %.61856, 1                      ; 2 uses
  %i.ha = mul i32 %.81826, 10                     ; 2 uses
  %.not1926 = icmp ult i32 %.0.copyload.i2016, %i.ha
  br i1 %.not1926, label %.loopexit2073, label %.preheader2072

.loopexit2073:                                    ; preds = %.preheader2072, %.loopexit2075, %bb.ap, %bb.ah
  %.71857 = phi i32 [ %.51855, %bb.ah ], [ %.51855, %bb.ap ], [ %i.gv, %.loopexit2075 ], [ %i.gz, %.preheader2072 ]
  %.8 = phi i32 [ %.41817, %bb.ah ], [ %.41817, %bb.ap ], [ %.7, %.loopexit2075 ], [ %.7, %.preheader2072 ]
  %.31809 = phi i32 [ %i.er, %bb.ah ], [ %i.er, %bb.ap ], [ %.21808, %.loopexit2075 ], [ %.21808, %.preheader2072 ]
  %i.hb = add i32 %.31809, 4
  %i.hc = tail call i32 @llvm.umin.i32(i32 %.41834, i32 %i.hb)
  br label %bb.at

bb.at:                                            ; preds = %.loopexit2073, %.loopexit2079
  %.81858 = phi i32 [ %.71857, %.loopexit2073 ], [ %.51855, %.loopexit2079 ] ; 9 uses
  %.51835 = phi i32 [ %i.hc, %.loopexit2073 ], [ %.41834, %.loopexit2079 ]
  %.9 = phi i32 [ %.8, %.loopexit2073 ], [ %.41817, %.loopexit2079 ] ; 5 uses
  %.11801 = phi i32 [ %i.fh, %.loopexit2073 ], [ %.01800, %.loopexit2079 ]
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
end_hunk_0
