Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/JoinVerticesProcess?download=true
inline.NumInlined: 844
inline.NumDeleted: 461
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNKSt8__detail15_Hashtable_baseIN6Assimp6VertexESt4pairIKS2_iENS_10_Select1stEN12_GLOBAL__N_126CompareVerticesAlmostEqualENS7_10HashVertexENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE:bb.a
  %i.im = fmul float %i.ib, %i.ib
  %i.in = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.im)
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.ig, float %i.in)
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.io)
  %i.iq = fcmp ogt float %i.ip, f0x2EDBE6FE
  br i1 %i.iq, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.it = load float, ptr %i.ir, align 4
  %i.iu = load float, ptr %i.is, align 8
  %i.iv = fsub float %i.it, %i.iu                 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ix = load float, ptr %i.iw, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.iz = load float, ptr %i.iy, align 4
  %i.ja = fsub float %i.ix, %i.iz                 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jc = load float, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.je = load float, ptr %i.jd, align 8
  %i.jf = fsub float %i.jc, %i.je                 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.jj = load float, ptr %i.ji, align 4
  %i.jk = fsub float %i.jh, %i.jj                 ; 2 uses
  %i.jl = fmul float %i.ja, %i.ja
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.iv, float %i.jl)
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.jm)
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.jk, float %i.jn)
  %i.jp = fcmp ogt float %i.jo, f0x2EDBE6FE
  br i1 %i.jp, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.js = load float, ptr %i.jq, align 4
  %i.jt = load float, ptr %i.jr, align 8
  %i.ju = fsub float %i.js, %i.jt                 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.jw = load float, ptr %i.jv, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.jy = load float, ptr %i.jx, align 4
  %i.jz = fsub float %i.jw, %i.jy                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kb = load float, ptr %i.ka, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.kd = load float, ptr %i.kc, align 8
  %i.ke = fsub float %i.kb, %i.kd                 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.kg = load float, ptr %i.kf, align 4
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ki = load float, ptr %i.kh, align 4
  %i.kj = fsub float %i.kg, %i.ki                 ; 2 uses
  %i.kk = fmul float %i.jz, %i.jz
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.kk)
  %i.km = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.kl)
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.km)
  %i.ko = fcmp ogt float %i.kn, f0x2EDBE6FE
  br i1 %i.ko, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.kr = load float, ptr %i.kp, align 4
  %i.ks = load float, ptr %i.kq, align 8
  %i.kt = fsub float %i.kr, %i.ks                 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.kx = load float, ptr %i.kw, align 4
  %i.ky = fsub float %i.kv, %i.kx                 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.la = load float, ptr %i.kz, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.lc = load float, ptr %i.lb, align 8
  %i.ld = fsub float %i.la, %i.lc                 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.lf = load float, ptr %i.le, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = fsub float %i.lf, %i.lh                 ; 2 uses
  %i.lj = fmul float %i.ky, %i.ky
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.kt, float %i.lj)
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.lk)
  %i.lm = tail call noundef float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.ll)
  %i.ln = fcmp ogt float %i.lm, f0x2EDBE6FE
  br i1 %i.ln, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.lq = load float, ptr %i.lo, align 4
  %i.lr = load float, ptr %i.lp, align 8
  %i.ls = fsub float %i.lq, %i.lr                 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.lu = load float, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.lw = load float, ptr %i.lv, align 4
  %i.lx = fsub float %i.lu, %i.lw                 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lz = load float, ptr %i.ly, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.mb = load float, ptr %i.ma, align 8
  %i.mc = fsub float %i.lz, %i.mb                 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.me = load float, ptr %i.md, align 4
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.mg = load float, ptr %i.mf, align 4
  %i.mh = fsub float %i.me, %i.mg                 ; 2 uses
  %i.mi = fmul float %i.lx, %i.lx
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.mi)
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.mc, float %i.mj)
  %i.ml = tail call noundef float @llvm.fmuladd.f32(float %i.mh, float %i.mh, float %i.mk)
  %i.mm = fcmp ogt float %i.ml, f0x2EDBE6FE
  br i1 %i.mm, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.mp = load float, ptr %i.mn, align 4
  %i.mq = load float, ptr %i.mo, align 8
  %i.mr = fsub float %i.mp, %i.mq                 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.mt = load float, ptr %i.ms, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.mv = load float, ptr %i.mu, align 4
  %i.mw = fsub float %i.mt, %i.mv                 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.my = load float, ptr %i.mx, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.na = load float, ptr %i.mz, align 8
  %i.nb = fsub float %i.my, %i.na                 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.nd = load float, ptr %i.nc, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.nf = load float, ptr %i.ne, align 4
  %i.ng = fsub float %i.nd, %i.nf                 ; 2 uses
  %i.nh = fmul float %i.mw, %i.mw
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.mr, float %i.mr, float %i.nh)
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nb, float %i.ni)
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float %i.ng, float %i.nj)
  %i.nl = fcmp ogt float %i.nk, f0x2EDBE6FE
  br i1 %i.nl, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.no = load float, ptr %i.nm, align 4
  %i.np = load float, ptr %i.nn, align 8
  %i.nq = fsub float %i.no, %i.np                 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ns = load float, ptr %i.nr, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = fsub float %i.ns, %i.nu                 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.nx = load float, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.nz = load float, ptr %i.ny, align 8
  %i.oa = fsub float %i.nx, %i.nz                 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.oe = load float, ptr %i.od, align 4
  %i.of = fsub float %i.oc, %i.oe                 ; 2 uses
  %i.og = fmul float %i.nv, %i.nv
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.nq, float %i.og)
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.oa, float %i.oa, float %i.oh)
  %i.oj = tail call noundef float @llvm.fmuladd.f32(float %i.of, float %i.of, float %i.oi)
  %i.ok = fcmp ogt float %i.oj, f0x2EDBE6FE
  br i1 %i.ok, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.on = load float, ptr %i.ol, align 4
  %i.oo = load float, ptr %i.om, align 8
  %i.op = fsub float %i.on, %i.oo                 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.or = load float, ptr %i.oq, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.ot = load float, ptr %i.os, align 4
  %i.ou = fsub float %i.or, %i.ot                 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ow = load float, ptr %i.ov, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.oy = load float, ptr %i.ox, align 8
  %i.oz = fsub float %i.ow, %i.oy                 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.pb = load float, ptr %i.pa, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.pd = load float, ptr %i.pc, align 4
  %i.pe = fsub float %i.pb, %i.pd                 ; 2 uses
  %i.pf = fmul float %i.ou, %i.ou
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.op, float %i.op, float %i.pf)
  %i.ph = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.oz, float %i.pg)
  %i.pi = tail call noundef float @llvm.fmuladd.f32(float %i.pe, float %i.pe, float %i.ph)
  %2 = fcmp ogt float %i.pi, f0x2EDBE6FE
  br i1 %2, label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit, label %3

3:                                                ; preds = %bb.r
  br label %_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit

_ZNK12_GLOBAL__N_126CompareVerticesAlmostEqualclERKN6Assimp6VertexES4_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %.preheader10.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.preheader.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %3
  %.2.i = phi i1 [ false, %bb.o ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %3 ], [ false, %.preheader.i ], [ false, %bb.l ], [ false, %bb.r ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %.preheader10.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZNKSt8__detail15_Hash_code_baseIN6Assimp6VertexESt4pairIKS2_iENS_10_Select1stEN12_GLOBAL__N_110HashVertexENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(272) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %.val5.i = load float, ptr %0, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float %.val5.i, ptr %i.c, align 4
  %i.d = fcmp une float %.val5.i, 0.000000e+00
  br i1 %i.d, label %bb.b, label %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i64 noundef 4, i64 noundef 3339675911)
          to label %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #22
  unreachable

_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val4.i = load float, ptr %i.i, align 4        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %.val4.i, ptr %i.b, align 4
  %i.j = fcmp une float %.val4.i, 0.000000e+00
  br i1 %i.j, label %bb.d, label %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i
  %i.k = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 3339675911)
          to label %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i: ; preds = %bb.d, %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i
  %i.n = phi i64 [ 0, %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit.i ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load float, ptr %i.o, align 4         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.val.i, ptr %i.a, align 4
  %i.p = fcmp une float %.val.i, 0.000000e+00
  br i1 %i.p, label %bb.f, label %_ZNK12_GLOBAL__N_110HashVertexclERKN6Assimp6VertexE.exit

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i
  %i.q = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 3339675911)
          to label %_ZNK12_GLOBAL__N_110HashVertexclERKN6Assimp6VertexE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable

_ZNK12_GLOBAL__N_110HashVertexclERKN6Assimp6VertexE.exit: ; preds = %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i, %bb.f
  %i.t = phi i64 [ 0, %_ZNK12_GLOBAL__N_110HashVertex12hash_combineERmRKf.exit6.i ], [ %i.q, %bb.f ]
  %i.u = add i64 %i.h, 2654435769                 ; 3 uses
  %i.v = shl i64 %i.u, 6
  %i.w = lshr i64 %i.u, 2
  %i.x = add i64 %i.v, 2654435769
  %i.y = add i64 %i.x, %i.w
  %i.z = add i64 %i.y, %i.n
  %i.aa = xor i64 %i.z, %i.u                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = shl i64 %i.aa, 6
  %i.ac = lshr i64 %i.aa, 2
  %i.ad = add i64 %i.ab, 2654435769
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %i.t
  %i.ag = xor i64 %i.af, %i.aa
  ret i64 %i.ag
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA3_KcPS2_RA15_S2_RjRA7_S2_mRA5_S2_fRA2_S2_ES8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSI_SJ_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(7) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(5) %10, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 1 dereferenceable(2) %12) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %13, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJPKcRA15_S2_RjRA7_S2_mRA5_S2_fRA2_S2_ERA3_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSI_SJ_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %13, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(7) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(5) %10, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 1 dereferenceable(2) %12)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %13, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %13, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #18
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %13) #18
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJPKcRA15_S2_RjRA7_S2_mRA5_S2_fRA2_S2_ERA3_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSI_SJ_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(7) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(5) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(2) %11) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #18
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %12, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA15_KcRjRA7_S2_mRA5_S2_fRA2_S2_EPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSG_SH_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(7) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(5) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(2) %11)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %12, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %12, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #18
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %12) #18
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA15_KcRjRA7_S2_mRA5_S2_fRA2_S2_EPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSG_SH_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(7) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(5) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(2) %10) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
