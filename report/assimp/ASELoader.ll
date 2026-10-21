Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp11ASEImporter15BuildAnimationsERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EE:bb.a
.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dz = load i64, ptr %i.cm, align 8            ; 5 uses
  %i.ea = icmp ugt i64 %i.dz, 1023
  %.pre166 = load ptr, ptr %2, align 8            ; 3 uses
  br i1 %i.ea, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.eb = trunc nuw nsw i64 %i.dz to i32
  store i32 %i.eb, ptr %i.da, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 1 %.pre166, i64 %i.dz, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz
  store i8 0, ptr %i.ed, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %bb.s
  %i.ee = icmp eq ptr %.pre166, %i.cl
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ef = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.ef)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eg = load i64, ptr %i.cl, align 8
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %.pre166, i64 noundef %i.eh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ei = load ptr, ptr %i.cp, align 8
  %i.ej = load ptr, ptr %i.co, align 8
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = sdiv exact i64 %i.em, 24                ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 1028 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = and i64 %i.en, 4294967295               ; 3 uses
  %i.er = mul nuw nsw i64 %i.eq, 24
  %i.es = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #26 ; 4 uses
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %.loopexit137, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.eq
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %i.ev = phi ptr [ %i.es, %bb.t ], [ %i.ex, %bb.u ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.eu
  br i1 %i.ey, label %.loopexit137, label %bb.u

.loopexit137:                                     ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 1032
  store ptr %i.es, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %i.co, align 8
  %i.fb = load i32, ptr %i.ep, align 4
  %i.fc = zext i32 %i.fb to i64
  %i.fd = mul nuw nsw i64 %i.fc, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.fa, i64 %i.fd, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %.loopexit137, %bb.p, %bb.o
  %.4 = phi i32 [ %i.df, %.loopexit137 ], [ %.3154, %bb.p ], [ %.3154, %bb.o ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cn, i64 200 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cn, i64 208 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.fe, align 8
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 24
  %i.fm = icmp ugt i64 %i.fl, 1
  br i1 %i.fm, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cn, i64 176
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load ptr, ptr %i.fn, align 8
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = icmp ugt i64 %i.ft, 32
  br i1 %i.fu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cn, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %i.fv, align 8
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 24
  %i.gd = icmp ugt i64 %i.gc, 1
  br i1 %i.gd, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ge = call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #26 ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1048 ; 4 uses
  store ptr null, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1056 ; 3 uses
  store i32 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ge, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.bq, align 8
  %i.gj = add i32 %.4, 1                          ; 2 uses
  %i.gk = zext i32 %.4 to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gk
  store ptr %i.ge, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.gn = load i64, ptr %i.gm, align 8            ; 4 uses
  %i.go = icmp ugt i64 %i.gn, 1023
  br i1 %i.go, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gq = trunc nuw nsw i64 %i.gn to i32
  store i32 %i.gq, ptr %i.ge, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gs = load ptr, ptr %i.gp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 1 %i.gs, i64 %i.gn, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gn
  store i8 0, ptr %i.gt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76: ; preds = %bb.y, %bb.z
  %i.gu = load ptr, ptr %i.ff, align 8
  %i.gv = load ptr, ptr %i.fe, align 8
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 24                ; 3 uses
  %i.ha = icmp ugt i64 %i.gz, 1
  br i1 %i.ha, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
  %i.hb = trunc i64 %i.gz to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 1028 ; 2 uses
  store i32 %i.hb, ptr %i.hc, align 4
  %i.hd = and i64 %i.gz, 4294967295               ; 3 uses
  %i.he = mul nuw nsw i64 %i.hd, 24
  %i.hf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.he) #26 ; 4 uses
  %i.hg = icmp eq i64 %i.hd, 0
  br i1 %i.hg, label %.loopexit136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.hd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.hi = phi ptr [ %i.hf, %bb.ab ], [ %i.hk, %bb.ac ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.hh
  br i1 %i.hl, label %.loopexit136, label %bb.ac

.loopexit136:                                     ; preds = %bb.ac, %bb.aa
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1032
  store ptr %i.hf, ptr %i.hm, align 8
  %i.hn = load ptr, ptr %i.fe, align 8
  %i.ho = load i32, ptr %i.hc, align 4
  %i.hp = zext i32 %i.ho to i64
  %i.hq = mul nuw nsw i64 %i.hp, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.hn, i64 %i.hq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit136, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = load ptr, ptr %i.hr, align 8
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 5                 ; 4 uses
  %i.hz = icmp ugt i64 %i.hy, 1
  br i1 %i.hz, label %bb.ae, label %.loopexit134

bb.ae:                                            ; preds = %bb.ad
  %i.ia = trunc i64 %i.hy to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ge, i64 1040 ; 3 uses
  store i32 %i.ia, ptr %i.ib, align 8
  %i.ic = and i64 %i.hy, 4294967295               ; 4 uses
  %i.id = shl nuw nsw i64 %i.ic, 5
  %i.ie = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #26 ; 7 uses
  %i.if = icmp eq i64 %i.ic, 0
  br i1 %i.if, label %.loopexit135, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.ic
  %i.ih = add nuw nsw i64 %i.ic, 576460752303423487
  %i.ii = and i64 %i.ih, 576460752303423487
  %xtraiter = and i64 %i.hy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.af, %.prol.preheader
  %i.ij = phi ptr [ %i.im, %.prol.preheader ], [ %i.ie, %bb.af ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.af ]
  store double 0.000000e+00, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i32 1, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !99

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.af
  %.unr = phi ptr [ %i.ie, %bb.af ], [ %i.im, %.prol.preheader ]
  %i.in = icmp samesign ult i64 %i.ii, 7
  br i1 %i.in, label %.loopexit135, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.io = phi ptr [ %i.jm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i32 1, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store double 0.000000e+00, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store i32 1, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  store double 0.000000e+00, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 88
  store i32 1, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  store double 0.000000e+00, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 120
  store i32 1, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 128
  store double 0.000000e+00, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 152
  store i32 1, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 160
  store double 0.000000e+00, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 184
  store i32 1, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.io, i64 192
  store double 0.000000e+00, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.io, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.io, i64 216
  store i32 1, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.io, i64 224
  store double 0.000000e+00, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.io, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.io, i64 248
  store i32 1, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.io, i64 256 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.ig
  br i1 %i.jn, label %.loopexit135, label %.new

.loopexit135:                                     ; preds = %.prol.loopexit, %.new, %bb.ae
  store ptr %i.ie, ptr %i.gf, align 8
  %i.jo = load i32, ptr %i.ib, align 8            ; 2 uses
  %.not157 = icmp eq i32 %i.jo, 0
  br i1 %.not157, label %.loopexit134, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.loopexit135
  %i.jp = load ptr, ptr %i.hr, align 8            ; 4 uses
  %.sroa.0.0.copyload77.peel = load double, ptr %i.jp, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.4.0.copyload.peel = load <2 x float>, ptr %.sroa.4.0..sroa_idx.peel, align 8 ; 6 uses
  %.sroa.8.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %.sroa.8.0.copyload.peel = load <2 x float>, ptr %.sroa.8.0..sroa_idx.peel, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jq = load i64, ptr %.sroa.11.0..sroa_idx.peel, align 8
  %.sroa.11.sroa.0.0.extract.trunc161 = trunc i64 %i.jq to i32
  %i.jr = load ptr, ptr %i.cb, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 184
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = icmp ugt i32 %i.jt, 110
  br i1 %i.ju, label %bb.ag, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

bb.ag:                                            ; preds = %.lr.ph151.preheader
  %.pre169 = extractelement <2 x float> %.sroa.4.0.copyload.peel, i64 1 ; 2 uses
  %.pre171 = extractelement <2 x float> %.sroa.8.0.copyload.peel, i64 1 ; 2 uses
  %.pre172 = extractelement <2 x float> %.sroa.4.0.copyload.peel, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.8.0.copyload.peel, %.sroa.8.0.copyload.peel
  %i.jv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jw = call float @llvm.fmuladd.f32(float %.pre169, float %.pre169, float %i.jv)
  %i.jx = call float @llvm.fmuladd.f32(float %.pre171, float %.pre171, float %i.jw)
  %i.jy = call float @llvm.fmuladd.f32(float %.pre172, float %.pre172, float %i.jx)
  %i.jz = call noundef float @sqrtf(float noundef %i.jy) #23 ; 2 uses
  %i.ka = fcmp une float %i.jz, 0.000000e+00
  br i1 %i.ka, label %bb.ah, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

bb.ah:                                            ; preds = %bb.ag
  %i.kb = fdiv float 1.000000e+00, %i.jz
  %i.kc = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ke = fmul <2 x float> %.sroa.8.0.copyload.peel, %i.kd ; 2 uses
  %i.kf = fmul <2 x float> %.sroa.4.0.copyload.peel, %i.kd ; 2 uses
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %bb.ah, %bb.ag, %.lr.ph151.preheader
  %.sroa.14.1.peel = phi <2 x float> [ zeroinitializer, %.lr.ph151.preheader ], [ %i.ke, %bb.ah ], [ %.sroa.8.0.copyload.peel, %bb.ag ]
  %.sroa.086.1.peel = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph151.preheader ], [ %i.kf, %bb.ah ], [ %.sroa.4.0.copyload.peel, %bb.ag ]
  %.sroa.8.0.peel = phi <2 x float> [ %.sroa.8.0.copyload.peel, %.lr.ph151.preheader ], [ %i.ke, %bb.ah ], [ %.sroa.8.0.copyload.peel, %bb.ag ]
  %.sroa.4.0.peel = phi <2 x float> [ %.sroa.4.0.copyload.peel, %.lr.ph151.preheader ], [ %i.kf, %bb.ah ], [ %.sroa.4.0.copyload.peel, %bb.ag ] ; 2 uses
  store double %.sroa.0.0.copyload77.peel, ptr %i.ie, align 8
  %.sroa.4.0..sroa_idx79.peel = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %3 = shufflevector <2 x float> %.sroa.4.0.peel, <2 x float> %.sroa.8.0.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %.sroa.4.0..sroa_idx79.peel, align 8
  %.sroa.11.0..sroa_idx85.peel = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i32 %.sroa.11.sroa.0.0.extract.trunc161, ptr %.sroa.11.0..sroa_idx85.peel, align 8
  %i.kg = extractelement <2 x float> %.sroa.4.0.peel, i64 0
  %i.kh = fneg float %i.kg
  store float %i.kh, ptr %.sroa.4.0..sroa_idx79.peel, align 8
  %.not193 = icmp eq i32 %i.jo, 1
  br i1 %.not193, label %.loopexit134, label %.lr.ph151

.lr.ph151:                                        ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.086.0148 = phi <2 x float> [ %.sroa.086.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.086.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %.sroa.14.0147 = phi <2 x float> [ %.sroa.14.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.14.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 6 uses
  %i.ki = load ptr, ptr %i.hr, align 8
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.ki, i64 %indvars.iv ; 4 uses
  %.sroa.0.0.copyload77 = load double, ptr %i.kj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kk = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.0.0.extract.trunc = trunc i64 %i.kk to i32
  %i.kl = load ptr, ptr %i.cb, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 184
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = icmp ugt i32 %i.kn, 110
  br i1 %i.ko, label %bb.ai, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.ai:                                            ; preds = %.lr.ph151
  %i.kp = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.14.12.vec.extract = extractelement <2 x float> %.sroa.14.0147, i64 1
  %i.kq = shufflevector <2 x float> %.sroa.086.0148, <2 x float> %.sroa.14.0147, <2 x i32> <i32 1, i32 2>
  %i.kr = fneg <2 x float> %i.kq                  ; 2 uses
  %i.ks = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %.sroa.14.0147, %i.ks
  %i.ku = shufflevector <2 x float> %.sroa.086.0148, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %.sroa.8.0.copyload, <2 x float> %i.kt)
  %i.kw = shufflevector <2 x float> %.sroa.14.0147, <2 x float> %.sroa.086.0148, <2 x i32> <i32 1, i32 3>
  %i.kx = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.kx, <2 x float> %i.kv)
  %i.kz = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.kz, <2 x float> %i.ky) ; 6 uses
  %i.lb = fneg float %.sroa.14.12.vec.extract
  %i.lc = shufflevector <2 x float> %.sroa.086.0148, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ld = fneg <2 x float> %.sroa.4.0.copyload
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.lf = fmul <2 x float> %i.lc, %i.le
  %i.lg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %.sroa.4.0.copyload, <2 x float> %i.lf)
  %i.lh = shufflevector <2 x float> %i.kr, <2 x float> %.sroa.14.0147, <2 x i32> <i32 1, i32 2>
  %i.li = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %.sroa.8.0.copyload, <2 x float> %i.lg)
  %i.lj = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.kp, <2 x float> %i.li) ; 5 uses
  %foldExtExtBinop199 = fmul <2 x float> %i.la, %i.la
  %i.lm = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.ln = extractelement <2 x float> %i.ll, i64 1 ; 2 uses
  %i.lo = call float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lm)
  %i.lp = extractelement <2 x float> %i.la, i64 1 ; 2 uses
  %i.lq = call float @llvm.fmuladd.f32(float %i.lp, float %i.lp, float %i.lo)
  %i.lr = extractelement <2 x float> %i.ll, i64 0 ; 2 uses
  %i.ls = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %i.lq)
  %i.lt = call noundef float @sqrtf(float noundef %i.ls) #23 ; 2 uses
  %i.lu = fcmp une float %i.lt, 0.000000e+00
  br i1 %i.lu, label %bb.aj, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.lv = fdiv float 1.000000e+00, %i.lt
  %i.lw = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ly = fmul <2 x float> %i.la, %i.lx           ; 2 uses
  %i.lz = fmul <2 x float> %i.ll, %i.lx           ; 2 uses
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.aj, %bb.ai, %.lr.ph151
  %.sroa.14.1 = phi <2 x float> [ %.sroa.14.0147, %.lr.ph151 ], [ %i.ly, %bb.aj ], [ %i.la, %bb.ai ]
  %.sroa.086.1 = phi <2 x float> [ %.sroa.086.0148, %.lr.ph151 ], [ %i.lz, %bb.aj ], [ %i.ll, %bb.ai ]
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.0.copyload, %.lr.ph151 ], [ %i.ly, %bb.aj ], [ %i.la, %bb.ai ]
  %.sroa.4.0 = phi <2 x float> [ %.sroa.4.0.copyload, %.lr.ph151 ], [ %i.lz, %bb.aj ], [ %i.ll, %bb.ai ]
  %i.ma = load ptr, ptr %i.gf, align 8
  %i.mb = getelementptr inbounds nuw [32 x i8], ptr %i.ma, i64 %indvars.iv ; 3 uses
  store double %.sroa.0.0.copyload77, ptr %i.mb, align 8
  %.sroa.4.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %4 = shufflevector <2 x float> %.sroa.4.0, <2 x float> %.sroa.8.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %.sroa.4.0..sroa_idx79, align 8
  %.sroa.11.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  store i32 %.sroa.11.sroa.0.0.extract.trunc, ptr %.sroa.11.0..sroa_idx85, align 8
  %i.mc = load ptr, ptr %i.gf, align 8
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.mc, i64 %indvars.iv
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load float, ptr %i.me, align 8
  %i.mg = fneg float %i.mf
  store float %i.mg, ptr %i.me, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mh = load i32, ptr %i.ib, align 8
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv.next, %i.mi
  br i1 %i.mj, label %.lr.ph151, label %.loopexit134, !llvm.loop !100

.loopexit134:                                     ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit135, %bb.ad
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cn, i64 224 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = load ptr, ptr %i.mk, align 8
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = sdiv exact i64 %i.mq, 24                ; 3 uses
  %i.ms = icmp ugt i64 %i.mr, 1
  br i1 %i.ms, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit134
  %i.mt = trunc i64 %i.mr to i32
  store i32 %i.mt, ptr %i.gg, align 8
  %i.mu = and i64 %i.mr, 4294967295               ; 3 uses
  %i.mv = mul nuw nsw i64 %i.mu, 24
  %i.mw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #26 ; 4 uses
  %i.mx = icmp eq i64 %i.mu, 0
  br i1 %i.mx, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %i.mu
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %i.mz = phi ptr [ %i.mw, %bb.al ], [ %i.nb, %bb.am ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.na, align 4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 24 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.my
  br i1 %i.nc, label %.loopexit, label %bb.am

.loopexit:                                        ; preds = %bb.am, %bb.ak
  store ptr %i.mw, ptr %i.gh, align 8
  %i.nd = load ptr, ptr %i.mk, align 8
  %i.ne = load i32, ptr %i.gg, align 8
  %i.nf = zext i32 %i.ne to i64
  %i.ng = mul nuw nsw i64 %i.nf, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mw, ptr nonnull align 8 %i.nd, i64 %i.ng, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %.loopexit134, %.loopexit, %bb.x
  %.5 = phi i32 [ %.4, %bb.x ], [ %i.gj, %.loopexit ], [ %i.gj, %.loopexit134 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0119.1153, i64 8 ; 2 uses
  %i.ni = load ptr, ptr %i.b, align 8
  %.not133 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not133, label %.loopexit138, label %bb.o, !llvm.loop !101

.loopexit138:                                     ; preds = %bb.an, %bb.a, %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter12BuildCamerasEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 360
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i32 %i.l, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #26
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store ptr %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load i32, ptr %i.y, align 8
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 0, %bb.b ] ; 3 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #26 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1044
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1084) %i.aa, i8 0, i64 1044, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1060
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1064
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1068
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1072
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.ac, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1076
  store <2 x float> zeroinitializer, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.m, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [360 x i8], ptr %i.an, i64 %indvars.iv ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 348
  %i.aq = load float, ptr %i.ap, align 4
  store float %i.aq, ptr %i.af, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.as = load float, ptr %i.ar, align 8          ; 2 uses
  %i.at = fcmp une float %i.as, 0.000000e+00
  %i.au = select i1 %i.at, float %i.as, float 1.000000e-01
  store float %i.au, ptr %i.ae, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 340
  %i.aw = load float, ptr %i.av, align 4
  store float %i.aw, ptr %i.ad, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load i64, ptr %i.ax, align 8            ; 4 uses
  %i.az = icmp ugt i64 %i.ay, 1023
  br i1 %i.az, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = trunc nuw nsw i64 %i.ay to i32
  store i32 %i.bb, ptr %i.aa, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 1 %i.bd, i64 %i.ay, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay
  store i8 0, ptr %i.be, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter11BuildLightsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 368
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %i.l, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #26
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
end_hunk_0
