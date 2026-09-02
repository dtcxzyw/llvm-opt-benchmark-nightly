Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %wide.gep240 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 96
  %i.pf = fmul fast <4 x float> %i.la, splat (float f0xBE638E39) ; 2 uses
  %i.pg = fmul fast <4 x float> %i.lv, splat (float f0x3E638E39) ; 2 uses
  %i.ph = fmul fast <4 x float> %i.mq, splat (float f0xBE638E39) ; 2 uses
  %i.pi = fsub fast <4 x float> %i.pf, %i.pg
  %i.pj = fadd fast <4 x float> %i.pi, %i.ph
  %i.pk = fadd fast <4 x float> %i.pg, %i.pf
  %i.pl = fadd fast <4 x float> %i.pk, %i.ph
  %i.pm = fmul fast <4 x float> %i.la, splat (float f0x3C360B61) ; 2 uses
  %i.pn = fmul fast <4 x float> %i.lv, splat (float f0x3CB60B61) ; 2 uses
  %i.po = fadd fast <4 x float> %i.pn, %i.pm
  %i.pp = fmul fast <4 x float> %i.mq, splat (float f0x3D360B61) ; 2 uses
  %i.pq = fadd fast <4 x float> %i.po, %i.pp
  %i.pr = fsub fast <4 x float> %i.pm, %i.pn
  %i.ps = fadd fast <4 x float> %i.pr, %i.pp
  %i.pt = fmul fast <4 x float> %i.la, splat (float f0x3CB60B61) ; 2 uses
  %i.pu = fmul fast <4 x float> %i.lv, splat (float f0x3C360B61) ; 2 uses
  %i.pv = fadd fast <4 x float> %i.pu, %i.pt
  %i.pw = fmul fast <4 x float> %i.mq, splat (float f0x3BB60B61) ; 2 uses
  %i.px = fadd fast <4 x float> %i.pv, %i.pw
  %i.py = fsub fast <4 x float> %i.pt, %i.pu
  %i.pz = fadd fast <4 x float> %i.py, %i.pw
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.la, <4 x ptr> align 4 %wide.gep240, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep241 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 100
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pj, <4 x ptr> align 4 %wide.gep241, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep242 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 104
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pl, <4 x ptr> align 4 %wide.gep242, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep243 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 108
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pq, <4 x ptr> align 4 %wide.gep243, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep244 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 112
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ps, <4 x ptr> align 4 %wide.gep244, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep245 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 116
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.px, <4 x ptr> align 4 %wide.gep245, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep246 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 120
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pz, <4 x ptr> align 4 %wide.gep246, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep247 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 124
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mq, <4 x ptr> align 4 %wide.gep247, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep248 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 128
  %i.qa = fmul fast <4 x float> %i.lc, splat (float f0xBE638E39) ; 2 uses
  %i.qb = fmul fast <4 x float> %i.lx, splat (float f0x3E638E39) ; 2 uses
  %i.qc = fmul fast <4 x float> %i.ms, splat (float f0xBE638E39) ; 2 uses
  %i.qd = fsub fast <4 x float> %i.qa, %i.qb
  %i.qe = fadd fast <4 x float> %i.qd, %i.qc
  %i.qf = fadd fast <4 x float> %i.qb, %i.qa
  %i.qg = fadd fast <4 x float> %i.qf, %i.qc
  %i.qh = fmul fast <4 x float> %i.lc, splat (float f0x3C360B61) ; 2 uses
  %i.qi = fmul fast <4 x float> %i.lx, splat (float f0x3CB60B61) ; 2 uses
  %i.qj = fadd fast <4 x float> %i.qi, %i.qh
  %i.qk = fmul fast <4 x float> %i.ms, splat (float f0x3D360B61) ; 2 uses
  %i.ql = fadd fast <4 x float> %i.qj, %i.qk
  %i.qm = fsub fast <4 x float> %i.qh, %i.qi
  %i.qn = fadd fast <4 x float> %i.qm, %i.qk
  %i.qo = fmul fast <4 x float> %i.lc, splat (float f0x3CB60B61) ; 2 uses
  %i.qp = fmul fast <4 x float> %i.lx, splat (float f0x3C360B61) ; 2 uses
  %i.qq = fadd fast <4 x float> %i.qp, %i.qo
  %i.qr = fmul fast <4 x float> %i.ms, splat (float f0x3BB60B61) ; 2 uses
  %i.qs = fadd fast <4 x float> %i.qq, %i.qr
  %i.qt = fsub fast <4 x float> %i.qo, %i.qp
  %i.qu = fadd fast <4 x float> %i.qt, %i.qr
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lc, <4 x ptr> align 4 %wide.gep248, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep249 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 132
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qe, <4 x ptr> align 4 %wide.gep249, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep250 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 136
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qg, <4 x ptr> align 4 %wide.gep250, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep251 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 140
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ql, <4 x ptr> align 4 %wide.gep251, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep252 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 144
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qn, <4 x ptr> align 4 %wide.gep252, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep253 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 148
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qs, <4 x ptr> align 4 %wide.gep253, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep254 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 152
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qu, <4 x ptr> align 4 %wide.gep254, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep255 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 156
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ms, <4 x ptr> align 4 %wide.gep255, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep256 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 160
  %i.qv = fmul fast <4 x float> %i.lh, splat (float f0xBE638E39) ; 2 uses
  %i.qw = fmul fast <4 x float> %i.mc, splat (float f0x3E638E39) ; 2 uses
  %i.qx = fmul fast <4 x float> %i.mx, splat (float f0xBE638E39) ; 2 uses
  %i.qy = fsub fast <4 x float> %i.qv, %i.qw
  %i.qz = fadd fast <4 x float> %i.qy, %i.qx
  %i.ra = fadd fast <4 x float> %i.qw, %i.qv
  %i.rb = fadd fast <4 x float> %i.ra, %i.qx
  %i.rc = fmul fast <4 x float> %i.lh, splat (float f0x3C360B61) ; 2 uses
  %i.rd = fmul fast <4 x float> %i.mc, splat (float f0x3CB60B61) ; 2 uses
  %i.re = fadd fast <4 x float> %i.rd, %i.rc
  %i.rf = fmul fast <4 x float> %i.mx, splat (float f0x3D360B61) ; 2 uses
  %i.rg = fadd fast <4 x float> %i.re, %i.rf
  %i.rh = fsub fast <4 x float> %i.rc, %i.rd
  %i.ri = fadd fast <4 x float> %i.rh, %i.rf
  %i.rj = fmul fast <4 x float> %i.lh, splat (float f0x3CB60B61) ; 2 uses
  %i.rk = fmul fast <4 x float> %i.mc, splat (float f0x3C360B61) ; 2 uses
  %i.rl = fadd fast <4 x float> %i.rk, %i.rj
  %i.rm = fmul fast <4 x float> %i.mx, splat (float f0x3BB60B61) ; 2 uses
  %i.rn = fadd fast <4 x float> %i.rl, %i.rm
  %i.ro = fsub fast <4 x float> %i.rj, %i.rk
  %i.rp = fadd fast <4 x float> %i.ro, %i.rm
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lh, <4 x ptr> align 4 %wide.gep256, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep257 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 164
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qz, <4 x ptr> align 4 %wide.gep257, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep258 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 168
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rb, <4 x ptr> align 4 %wide.gep258, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep259 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 172
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rg, <4 x ptr> align 4 %wide.gep259, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep260 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 176
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ri, <4 x ptr> align 4 %wide.gep260, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep261 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 180
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rn, <4 x ptr> align 4 %wide.gep261, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep262 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 184
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rp, <4 x ptr> align 4 %wide.gep262, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep263 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 188
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mx, <4 x ptr> align 4 %wide.gep263, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep264 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 192
  %i.rq = fmul fast <4 x float> %i.lj, splat (float f0xBE638E39) ; 2 uses
  %i.rr = fmul fast <4 x float> %i.me, splat (float f0x3E638E39) ; 2 uses
  %i.rs = fmul fast <4 x float> %i.mz, splat (float f0xBE638E39) ; 2 uses
  %i.rt = fsub fast <4 x float> %i.rq, %i.rr
  %i.ru = fadd fast <4 x float> %i.rt, %i.rs
  %i.rv = fadd fast <4 x float> %i.rr, %i.rq
  %i.rw = fadd fast <4 x float> %i.rv, %i.rs
  %i.rx = fmul fast <4 x float> %i.lj, splat (float f0x3C360B61) ; 2 uses
  %i.ry = fmul fast <4 x float> %i.me, splat (float f0x3CB60B61) ; 2 uses
  %i.rz = fadd fast <4 x float> %i.ry, %i.rx
  %i.sa = fmul fast <4 x float> %i.mz, splat (float f0x3D360B61) ; 2 uses
  %i.sb = fadd fast <4 x float> %i.rz, %i.sa
  %i.sc = fsub fast <4 x float> %i.rx, %i.ry
  %i.sd = fadd fast <4 x float> %i.sc, %i.sa
  %i.se = fmul fast <4 x float> %i.lj, splat (float f0x3CB60B61) ; 2 uses
  %i.sf = fmul fast <4 x float> %i.me, splat (float f0x3C360B61) ; 2 uses
  %i.sg = fadd fast <4 x float> %i.sf, %i.se
  %i.sh = fmul fast <4 x float> %i.mz, splat (float f0x3BB60B61) ; 2 uses
  %i.si = fadd fast <4 x float> %i.sg, %i.sh
  %i.sj = fsub fast <4 x float> %i.se, %i.sf
  %i.sk = fadd fast <4 x float> %i.sj, %i.sh
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lj, <4 x ptr> align 4 %wide.gep264, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep265 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 196
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ru, <4 x ptr> align 4 %wide.gep265, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep266 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 200
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rw, <4 x ptr> align 4 %wide.gep266, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep267 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 204
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sb, <4 x ptr> align 4 %wide.gep267, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep268 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 208
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sd, <4 x ptr> align 4 %wide.gep268, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep269 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 212
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.si, <4 x ptr> align 4 %wide.gep269, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep270 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 216
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sk, <4 x ptr> align 4 %wide.gep270, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep271 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 220
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mz, <4 x ptr> align 4 %wide.gep271, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep272 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 224
  %i.sl = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3E638E39) ; 2 uses
  %i.sm = fsub fast <4 x float> %i.kr, %i.sl
  %i.sn = fadd fast <4 x float> %i.sm, %i.mh
  %i.so = fadd fast <4 x float> %i.sl, %i.kr
  %i.sp = fadd fast <4 x float> %i.so, %i.mh
  %i.sq = fmul fast <4 x float> %wide.masked.gather204, splat (float f0x3C360B61) ; 2 uses
  %i.sr = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3CB60B61) ; 2 uses
  %i.ss = fadd fast <4 x float> %i.sr, %i.sq
  %i.st = fadd fast <4 x float> %i.ss, %i.mp
  %i.su = fsub fast <4 x float> %i.sq, %i.sr
  %i.sv = fadd fast <4 x float> %i.su, %i.mp
  %i.sw = fmul fast <4 x float> %wide.masked.gather204, splat (float f0x3CB60B61) ; 2 uses
  %i.sx = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3C360B61) ; 2 uses
  %i.sy = fadd fast <4 x float> %i.sx, %i.sw
  %i.sz = fadd fast <4 x float> %i.sy, %i.mw
  %i.ta = fsub fast <4 x float> %i.sw, %i.sx
  %i.tb = fadd fast <4 x float> %i.ta, %i.mw
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.masked.gather204, <4 x ptr> align 4 %wide.gep272, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep273 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 228
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sn, <4 x ptr> align 4 %wide.gep273, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep274 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 232
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sp, <4 x ptr> align 4 %wide.gep274, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep275 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 236
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.st, <4 x ptr> align 4 %wide.gep275, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep276 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 240
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sv, <4 x ptr> align 4 %wide.gep276, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep277 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 244
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sz, <4 x ptr> align 4 %wide.gep277, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep278 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 248
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.tb, <4 x ptr> align 4 %wide.gep278, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep279 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 252
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.masked.gather216, <4 x ptr> align 4 %wide.gep279, <4 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %index.next280 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next281 = add nuw nsw <4 x i64> %vec.ind196, splat (i64 4)
  %ptr.ind282 = getelementptr i8, ptr %pointer.phi197, i64 1024
  %i.tc = icmp eq i64 %index.next280, %n.vec190
  br i1 %i.tc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n283, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec190, %vec.epilog.middle.block ]
  %.118.i.ph = phi ptr [ %.020.i, %iter.check ], [ %.020.i, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.km, %vec.epilog.middle.block ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.118.i = phi ptr [ %i.zt, %.preheader.preheader.i ], [ %.118.i.ph, %.preheader.preheader.i.preheader ] ; 23 uses
  %i.td = add nsw i64 %indvars.iv.i, %i.bb
  %.idx.i = mul nsw i64 %i.td, 36
  %i.te = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i ; 8 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 28
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !39 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !39 ; 3 uses
  %i.to = fmul fast float %i.tl, f0x3E638E39      ; 2 uses
  %i.tp = fmul fast float %i.tl, f0x3CB60B61      ; 2 uses
  %i.tq = fmul fast float %i.tl, f0x3C360B61      ; 2 uses
  %i.tr = fmul fast float %i.tn, f0x3BB60B61      ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %.118.i, i64 8
  %13 = load float, ptr %i.te, align 4, !tbaa !39 ; 3 uses
  %14 = insertelement <4 x float> poison, float %13, i64 0 ; 2 uses
  %15 = load float, ptr %i.tj, align 4, !tbaa !39 ; 4 uses
  %16 = insertelement <4 x float> poison, float %15, i64 0 ; 2 uses
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %18 = fmul fast <4 x float> %17, <float f0xBE638E39, float poison, float poison, float f0x3BB60B61> ; 2 uses
  %19 = extractelement <4 x float> %18, i64 0     ; 3 uses
  %.neg9.2.i = fsub fast float %19, %i.to
  %20 = fadd fast float %i.to, %19
  %i.tt = fmul fast float %15, f0x3C360B61        ; 2 uses
  %21 = fadd fast float %i.tp, %i.tt
  %22 = fsub fast float %i.tt, %i.tp
  %i.tu = fmul fast float %15, f0x3CB60B61        ; 2 uses
  %23 = fadd fast float %i.tq, %i.tu
  %24 = fsub fast float %i.tu, %i.tq
  %25 = extractelement <4 x float> %18, i64 3
  %i.tv = getelementptr inbounds nuw i8, ptr %.118.i, i64 72
  %i.tw = getelementptr inbounds nuw i8, ptr %.118.i, i64 88
  %i.tx = getelementptr inbounds nuw i8, ptr %.118.i, i64 92
  %i.ty = getelementptr inbounds nuw i8, ptr %.118.i, i64 96
  %i.tz = getelementptr inbounds nuw i8, ptr %.118.i, i64 100
  %i.ua = getelementptr inbounds nuw i8, ptr %.118.i, i64 116
  %i.ub = getelementptr inbounds nuw i8, ptr %.118.i, i64 120
  %i.uc = getelementptr inbounds nuw i8, ptr %.118.i, i64 124
  %i.ud = getelementptr inbounds nuw i8, ptr %.118.i, i64 128
  %i.ue = getelementptr inbounds nuw i8, ptr %.118.i, i64 132
  %i.uf = getelementptr inbounds nuw i8, ptr %.118.i, i64 148
  %i.ug = getelementptr inbounds nuw i8, ptr %.118.i, i64 152
  %i.uh = getelementptr inbounds nuw i8, ptr %.118.i, i64 156
  %i.ui = getelementptr inbounds nuw i8, ptr %.118.i, i64 160
  %i.uj = getelementptr inbounds nuw i8, ptr %.118.i, i64 164
  %i.uk = load <4 x float>, ptr %i.tg, align 4, !tbaa !39 ; 7 uses
  %26 = load float, ptr %i.ti, align 4, !tbaa !39 ; 3 uses
  %27 = shufflevector <4 x float> %i.uk, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %28 = shufflevector <4 x float> %14, <4 x float> %i.uk, <2 x i32> <i32 0, i32 5>
  %29 = fmul fast <2 x float> %28, splat (float f0xBE638E39) ; 3 uses
  %30 = extractelement <2 x float> %29, i64 0
  %31 = shufflevector <4 x float> %i.uk, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ul = fmul fast <2 x float> %31, splat (float f0xBE638E39) ; 4 uses
  %i.um = extractelement <4 x float> %i.uk, i64 0
  %32 = fmul fast <2 x float> %31, splat (float f0x3BB60B61) ; 2 uses
  %i.un = fadd fast float %23, %i.tr              ; 3 uses
  %i.uo = fadd fast float %24, %i.tr              ; 3 uses
  %33 = fmul fast <4 x float> %14, <float f0xBE638E39, float poison, float poison, float poison>
  %i.up = load <2 x float>, ptr %i.th, align 4, !tbaa !39 ; 3 uses
  %34 = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uq = insertelement <2 x float> %34, float %13, i64 0 ; 2 uses
  %i.ur = fmul fast <2 x float> %i.uq, splat (float f0x3C360B61) ; 4 uses
  %35 = insertelement <2 x float> %27, float %26, i64 1
  %i.us = fmul fast <2 x float> %35, splat (float f0x3D360B61) ; 2 uses
  %36 = extractelement <2 x float> %i.up, i64 0
  %37 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.tf, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !39 ; 2 uses
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %39 = shufflevector <4 x float> %37, <4 x float> %i.uk, <2 x i32> <i32 0, i32 6>
  %i.ut = fmul fast <2 x float> %39, splat (float f0x3E638E39) ; 2 uses
  %40 = fsub fast <2 x float> %29, %i.ut
  %41 = fadd fast <2 x float> %40, %i.ul          ; 3 uses
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %43 = fmul fast <2 x float> %i.uq, splat (float f0x3CB60B61) ; 4 uses
  %i.uu = fmul fast <2 x float> %38, splat (float f0x3C360B61) ; 2 uses
  %44 = shufflevector <2 x float> %41, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %45 = fmul fast <4 x float> %44, <float f0x3E638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 4 uses
  %46 = fmul fast <4 x float> %42, <float f0xBE638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %47 = fadd fast <4 x float> %46, %45
  %48 = fsub fast <4 x float> %46, %45
  %49 = shufflevector <2 x float> %41, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = fadd fast <2 x float> %i.ut, %29
  %51 = fadd fast <2 x float> %50, %i.ul          ; 3 uses
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %53 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %54 = fmul fast <4 x float> %53, <float f0x3E638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 4 uses
  %55 = fmul fast <4 x float> %52, <float f0xBE638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %foldExtExtBinop = fsub fast <4 x float> %55, %54
  %56 = fadd fast <4 x float> %55, %54
  %57 = fsub fast <4 x float> %55, %54
  %58 = shufflevector <4 x float> %56, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %foldExtExtBinop287 = fsub fast <4 x float> %54, %55
  %59 = shufflevector <2 x float> %51, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %60 = shufflevector <2 x float> %38, <2 x float> %i.up, <2 x i32> <i32 0, i32 3>
  %i.uv = fmul fast <2 x float> %60, splat (float f0x3CB60B61) ; 2 uses
  %61 = fadd fast <2 x float> %i.uv, %i.ur
  %i.uw = fadd fast <2 x float> %61, %i.us        ; 3 uses
  %62 = shufflevector <2 x float> %i.uw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ux = fadd fast <2 x float> %i.uu, %43
  %63 = fadd fast <2 x float> %i.ux, %32          ; 3 uses
  %i.uy = fsub fast <2 x float> %43, %i.uu
  %i.uz = fadd fast <2 x float> %i.uy, %32        ; 3 uses
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %shift.scalar = fmul fast float %36, f0x3E638E39 ; 2 uses
  %i.vb = fsub fast float %30, %shift.scalar
  %64 = fadd fast float %i.vb, %19
  %65 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %66 = insertelement <4 x float> %65, float %shift.scalar, i64 0
  %67 = shufflevector <2 x float> %i.ur, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %68 = shufflevector <4 x float> %66, <4 x float> %67, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %69 = shufflevector <4 x float> %33, <4 x float> %67, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %70 = shufflevector <4 x float> %69, <4 x float> %65, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %71 = fadd fast <4 x float> %68, %70
  %72 = fsub fast <4 x float> %68, %70
  %shift = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fsub fast <2 x float> %43, %shift
  %73 = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %74 = fadd fast float %73, %25
  store float %13, ptr %.118.i, align 4, !tbaa !39
  store float %64, ptr %i.ts, align 4, !tbaa !39
  %75 = insertelement <16 x float> poison, float %74, i64 4
  %76 = insertelement <16 x float> %75, float %15, i64 5
  %77 = shufflevector <16 x float> %76, <16 x float> %49, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %78 = shufflevector <4 x float> %71, <4 x float> %72, <16 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <4 x float> %16, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %80 = fmul fast <16 x float> %79, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.vc = fadd fast <16 x float> %78, %80
  %i.vd = fmul fast <4 x float> %62, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.vf = fsub fast <4 x float> %i.vd, %i.ve
  %i.vg = fadd fast <4 x float> %i.vd, %i.ve
  %i.vh = shufflevector <4 x float> %i.vf, <4 x float> %i.vg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.vi = extractelement <2 x float> %i.uw, i64 0 ; 2 uses
  %i.vj = fmul fast float %i.vi, f0x3CB60B61      ; 2 uses
  %i.vk = extractelement <2 x float> %i.uw, i64 1
  %i.vl = fmul fast float %i.vk, f0x3C360B61      ; 2 uses
  %i.vm = fadd fast float %i.vl, %i.vj
  %i.vn = fsub fast float %i.vj, %i.vl
  store float %i.vi, ptr %i.ty, align 4, !tbaa !39
  %i.vo = fsub fast <2 x float> %i.ur, %i.uv
  %i.vp = fadd fast <2 x float> %i.vo, %i.us      ; 3 uses
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.vr = fmul fast <4 x float> %i.vq, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.vt = fsub fast <4 x float> %i.vr, %i.vs
  %i.vu = fadd fast <4 x float> %i.vr, %i.vs
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> %i.vu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.vw = extractelement <2 x float> %i.vp, i64 0 ; 2 uses
  %i.vx = fmul fast float %i.vw, f0x3CB60B61      ; 2 uses
  %i.vy = extractelement <2 x float> %i.vp, i64 1
  %i.vz = fmul fast float %i.vy, f0x3C360B61      ; 2 uses
  %i.wa = fadd fast float %i.vz, %i.vx
  %i.wb = fsub fast float %i.vx, %i.vz
  store float %i.vw, ptr %i.ud, align 4, !tbaa !39
  %81 = shufflevector <2 x float> %63, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.wc = fmul fast <4 x float> %81, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.wd = insertelement <4 x float> poison, float %i.un, i64 0
  %i.we = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.wf = fsub fast <4 x float> %i.wc, %i.we
  %i.wg = fadd fast <4 x float> %i.wc, %i.we
  %i.wh = extractelement <2 x float> %63, i64 0
  %i.wi = fmul fast <2 x float> %63, <float f0x3CB60B61, float f0x3C360B61> ; 2 uses
  %i.wj = fmul fast float %i.un, f0x3BB60B61
  %i.wk = extractelement <2 x float> %i.wi, i64 0 ; 2 uses
  %i.wl = extractelement <2 x float> %i.wi, i64 1 ; 2 uses
  %i.wm = fsub fast float %i.wk, %i.wl
  %i.wn = fadd fast float %i.wl, %i.wk
  %i.wo = insertelement <16 x float> poison, float %i.wn, i64 0
  %i.wp = insertelement <16 x float> %i.wo, float %i.wm, i64 1
  %i.wq = insertelement <2 x float> poison, float %i.wj, i64 0
  store float %i.wh, ptr %i.ui, align 4, !tbaa !39
  %i.wr = fmul fast <4 x float> %i.va, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ws = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.wt = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.wu = fsub fast <4 x float> %i.wr, %i.wt
  %i.wv = fadd fast <4 x float> %i.wr, %i.wt
  %i.ww = fmul fast <2 x float> %i.uz, <float f0x3CB60B61, float f0x3C360B61> ; 2 uses
  %i.wx = fmul fast float %i.uo, f0x3BB60B61
  %i.wy = extractelement <2 x float> %i.ww, i64 0 ; 2 uses
  %i.wz = extractelement <2 x float> %i.ww, i64 1 ; 2 uses
  %i.xa = fsub fast float %i.wy, %i.wz
  %i.xb = fadd fast float %i.wz, %i.wy
  %i.xc = insertelement <16 x float> poison, float %i.xb, i64 0
  %i.xd = insertelement <16 x float> %i.xc, float %i.xa, i64 1
  %i.xe = insertelement <2 x float> poison, float %i.wx, i64 0
  %i.xf = fmul fast float %i.um, f0x3CB60B61      ; 2 uses
  %i.xg = fmul fast float %26, f0x3C360B61        ; 2 uses
  %i.xh = fadd fast float %i.xg, %i.xf
  %i.xi = fadd fast float %i.xh, %i.tr
  %i.xj = fsub fast float %i.xf, %i.xg
  %i.xk = fadd fast float %i.xj, %i.tr
  %i.xl = insertelement <16 x float> poison, float %i.un, i64 6
  %i.xm = shufflevector <2 x float> %i.uz, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xn = shufflevector <16 x float> %i.xl, <16 x float> %i.xm, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %82 = shufflevector <4 x float> %i.uk, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %83 = shufflevector <16 x float> %i.xn, <16 x float> %82, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16>
  %i.xo = insertelement <16 x float> %83, float %i.uo, i64 14
  %i.xp = shufflevector <4 x float> %i.wf, <4 x float> %i.wg, <16 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xq = shufflevector <4 x float> %i.wd, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xr = fmul fast <16 x float> %i.xq, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.xs = fadd fast <16 x float> %i.xp, %i.xr
  %i.xt = shufflevector <16 x float> %i.xs, <16 x float> %i.xo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.xu = shufflevector <4 x float> %i.wu, <4 x float> %i.wv, <16 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xv = shufflevector <4 x float> %i.ws, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xw = fmul fast <16 x float> %i.xv, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.xx = fadd fast <16 x float> %i.xu, %i.xw
  %i.xy = shufflevector <16 x float> %i.xt, <16 x float> %i.xx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.xz = shufflevector <2 x float> %i.wq, <2 x float> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ya = fadd fast <16 x float> %i.wp, %i.xz
  %i.yb = shufflevector <16 x float> %i.xy, <16 x float> %i.ya, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %i.yc = shufflevector <2 x float> %i.xe, <2 x float> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yd = fadd fast <16 x float> %i.xd, %i.yc
  %i.ye = shufflevector <16 x float> %i.yb, <16 x float> %i.yd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  store <16 x float> %i.ye, ptr %i.uj, align 4, !tbaa !39
  %i.yf = getelementptr inbounds nuw i8, ptr %.118.i, i64 228
  %i.yg = insertelement <4 x float> poison, float %i.tn, i64 0
  %i.yh = shufflevector <4 x float> %i.yg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yi = fmul fast <4 x float> %i.yh, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61> ; 3 uses
  %i.yj = extractelement <4 x float> %i.yi, i64 0 ; 2 uses
  %i.yk = fadd fast float %.neg9.2.i, %i.yj       ; 2 uses
  %i.yl = fadd fast float %20, %i.yj              ; 2 uses
  %i.ym = extractelement <4 x float> %i.yi, i64 2 ; 2 uses
  %i.yn = fadd fast float %21, %i.ym              ; 3 uses
  %i.yo = fadd fast float %22, %i.ym              ; 3 uses
  %i.yp = insertelement <4 x float> poison, float %i.yk, i64 0 ; 2 uses
  %i.yq = fmul fast float %i.yn, f0x3BB60B61      ; 2 uses
  %i.yr = fmul fast float %i.yo, f0x3BB60B61      ; 2 uses
  %84 = shufflevector <4 x float> %46, <4 x float> %45, <2 x i32> <i32 0, i32 7>
  %85 = shufflevector <4 x float> %45, <4 x float> %46, <2 x i32> <i32 0, i32 7>
  %86 = fsub fast <2 x float> %84, %85
  %87 = shufflevector <4 x float> %47, <4 x float> %48, <16 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %88 = shufflevector <4 x float> %i.yp, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %89 = fmul fast <16 x float> %88, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %90 = fadd fast <16 x float> %87, %89
  %91 = insertelement <4 x float> poison, float %i.yl, i64 0
  %92 = shufflevector <4 x float> %91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ys = fmul fast <4 x float> %92, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61> ; 3 uses
  %i.yt = fadd fast <4 x float> %foldExtExtBinop, %i.ys
  %i.yu = fadd fast <4 x float> %58, %i.ys
  %foldExtExtBinop293 = fadd fast <4 x float> %foldExtExtBinop287, %i.ys
  %93 = extractelement <4 x float> %foldExtExtBinop293, i64 3
  %94 = insertelement <4 x float> poison, float %i.yn, i64 0
  %95 = shufflevector <4 x float> %94, <4 x float> poison, <4 x i32> zeroinitializer
  %96 = fmul fast <4 x float> %95, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %97 = shufflevector <2 x float> %86, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %98 = shufflevector <4 x float> %i.yp, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yv = fmul fast <16 x float> %98, <float f0xBE638E39, float poison, float poison, float poison, float poison, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.yw = fadd fast <16 x float> %97, %i.yv
  %99 = shufflevector <16 x float> %77, <16 x float> %i.yw, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 poison, i32 poison, i32 poison>
  %100 = insertelement <16 x float> %99, float %i.yk, i64 13
  %101 = shufflevector <16 x float> %100, <16 x float> %59, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 16, i32 poison>
  %102 = shufflevector <4 x float> %i.yt, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %103 = shufflevector <16 x float> %101, <16 x float> %102, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 16>
  %104 = shufflevector <16 x float> %i.vc, <16 x float> %103, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %105 = shufflevector <16 x float> %104, <16 x float> %90, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  store <16 x float> %105, ptr %12, align 4, !tbaa !39
  store <4 x float> %i.yu, ptr %i.tv, align 4, !tbaa !39
  store float %93, ptr %i.tw, align 4, !tbaa !39
  store float %i.yl, ptr %i.tx, align 4, !tbaa !39
  %i.yx = fadd fast <4 x float> %i.vh, %96
  %i.yy = fadd fast float %i.vm, %i.yq
  %i.yz = fadd fast float %i.vn, %i.yq
  store <4 x float> %i.yx, ptr %i.tz, align 4, !tbaa !39
  store float %i.yy, ptr %i.ua, align 4, !tbaa !39
  store float %i.yz, ptr %i.ub, align 4, !tbaa !39
  store float %i.yn, ptr %i.uc, align 4, !tbaa !39
  %i.za = insertelement <4 x float> poison, float %i.yo, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zc = fmul fast <4 x float> %i.zb, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.zd = fadd fast <4 x float> %i.vv, %i.zc
  %i.ze = fadd fast float %i.wa, %i.yr
  %i.zf = fadd fast float %i.wb, %i.yr
  store <4 x float> %i.zd, ptr %i.ue, align 4, !tbaa !39
  store float %i.ze, ptr %i.uf, align 4, !tbaa !39
  store float %i.zf, ptr %i.ug, align 4, !tbaa !39
  store float %i.yo, ptr %i.uh, align 4, !tbaa !39
  %106 = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %107 = shufflevector <4 x float> %106, <4 x float> %i.uk, <4 x i32> <i32 0, i32 poison, i32 poison, i32 4>
  %i.zg = insertelement <4 x float> poison, float %26, i64 0
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.zi = shufflevector <4 x float> %107, <4 x float> %i.zh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.zj = fmul reassoc nsz arcp contract afn <4 x float> %i.zi, <float 1.000000e+00, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.zk = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> %i.zj, <4 x i32> <i32 5, i32 1, i32 7, i32 6> ; 2 uses
  %i.zm = fsub fast <4 x float> %i.zj, %i.zl
  %i.zn = fadd fast <4 x float> %i.zj, %i.zl
  %i.zo = shufflevector <4 x float> %i.zm, <4 x float> %i.zn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.zp = fadd fast <4 x float> %i.zo, %i.yi
  store <4 x float> %i.zp, ptr %i.yf, align 4, !tbaa !39
  %i.zq = getelementptr inbounds nuw i8, ptr %.118.i, i64 244
  store float %i.xi, ptr %i.zq, align 4, !tbaa !39
  %i.zr = getelementptr inbounds nuw i8, ptr %.118.i, i64 248
  store float %i.xk, ptr %i.zr, align 4, !tbaa !39
  %i.zs = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.tn, ptr %i.zs, align 4, !tbaa !39
  %i.zt = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !645

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.km, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.zt, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %iter.check, !llvm.loop !646

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.zu = sdiv i32 %i.ad, %i.av
  %i.zv = load ptr, ptr %10, align 8, !tbaa !18, !noalias !647
  %i.zw = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !647
  %i.zx = sext i32 %i.zu to i64
  %i.zy = mul i64 %i.zw, %i.zx
  %i.zz = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !647 ; 3 uses
  %i.aaa = mul i64 %i.zy, %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.aaa
  %i.aac = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !647
  %i.aad = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !647
  %i.aae = sdiv i32 %.098, %i.ar
  %i.aaf = sext i32 %i.aae to i64
  store ptr null, ptr %i.t, align 8, !tbaa !11
  store i64 %i.zz, ptr %i.u, align 8, !tbaa !65
  store i32 %i.aac, ptr %i.v, align 8, !tbaa !66
  store ptr %i.aad, ptr %i.w, align 8, !tbaa !17
  %i.aag = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !647
  %i.aah = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !647
  %i.aai = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !647
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = sext i32 %i.aah to i64
  %i.aal = mul nsw i64 %i.aak, %i.aaj             ; 2 uses
  %i.aam = mul i64 %i.zz, %i.aal
  %i.aan = mul i64 %i.aam, %i.aaf
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aan
  store ptr %i.aao, ptr %11, align 8, !tbaa !18
  %i.aap = shufflevector <2 x i32> %i.aag, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aaq = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.aap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.aaq, ptr %i.x, align 8, !tbaa !67
  store i32 1, ptr %i.y, align 8, !tbaa !68
  store i64 %i.aal, ptr %i.z, align 8, !tbaa !20, !alias.scope !650
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 64, i32 noundef %.sroa.speculated66, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.aar = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.aas = add nsw i32 %i.aar, %.098              ; 2 uses
  %i.aat = load i32, ptr %5, align 4, !tbaa !67   ; 2 uses
  %i.aau = icmp slt i32 %i.aas, %i.aat
  br i1 %i.aau, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !653

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.aav = landingpad { ptr, i32 }
          catch ptr null
  %i.aaw = extractvalue { ptr, i32 } %i.aav, 0
  call void @__clang_call_terminate(ptr %i.aaw) #36
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 16, 65) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %3, %1                       ; 16 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %factor.op.mul = mul i64 %i.g, %i.e
  %i.h = icmp sgt i32 %2, 15
  %i.i = icmp sgt i32 %3, 0                       ; 5 uses
  %i.j = sext i32 %i.a to i64                     ; 14 uses
  %i.k = shl nsw i32 %i.a, 1
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  %i.m = mul nsw i32 %i.a, 3
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = shl nsw i32 %i.a, 2
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = mul nsw i32 %i.a, 5
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = mul nsw i32 %i.a, 6
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i32 %i.a, 7
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nsw i32 %i.a, 3
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i32 %i.a, 9
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i32 %i.a, 10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i32 %i.a, 11
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i32 %i.a, 12
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i32 %i.a, 13
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i32 %i.a, 14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i32 %i.a, 15
  %i.al = sext i32 %i.ak to i64
  %i.am = zext nneg i32 %1 to i64                 ; 19 uses
  %i.an = and i32 %2, -16                         ; 3 uses
  %i.ao = zext i32 %i.a to i64
  %i.ap = sext i32 %2 to i64                      ; 5 uses
  %i.aq = or disjoint i32 %i.an, 7
  %i.ar = icmp slt i32 %i.aq, %2
  %invariant.op = add nsw i64 %i.ap, -15
  %invariant.op120 = add nsw i64 %i.ap, -7
  %invariant.op121 = add nsw i64 %i.ap, -3
  %invariant.op122 = add nsw i64 %i.ap, -1
  %xtraiter = and i32 %3, 1
  %i.as = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod132 = trunc i32 %3 to i1
  %xtraiter133 = and i32 %3, 3                    ; 3 uses
  %i.at = icmp ult i32 %3, 4
  %unroll_iter137 = and i32 %3, 2147483644
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  %lcmp.mod136 = icmp ne i32 %xtraiter133, 0
  %xtraiter140 = and i32 %3, 7                    ; 3 uses
  %i.au = icmp ult i32 %3, 8
  %unroll_iter145 = and i32 %3, 2147483640
  %lcmp.mod142.not = icmp eq i32 %xtraiter140, 0
  %lcmp.mod144 = icmp ne i32 %xtraiter140, 0
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge63.split
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge63.split
  %indvars.iv100 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next101, %._crit_edge63.split ] ; 7 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv100
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.reass ; 4 uses
  br i1 %i.h, label %.lr.ph10, label %.preheader3

.lr.ph10:                                         ; preds = %bb.c
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %indvars.iv100
  br i1 %i.i, label %.lr.ph.us, label %.preheader3.thread

.lr.ph.us:                                        ; preds = %.lr.ph10, %._crit_edge.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ 0, %.lr.ph10 ] ; 2 uses
  %.01697.us = phi ptr [ %i.cs, %._crit_edge.us ], [ %i.av, %.lr.ph10 ]
  %i.aw = mul nuw nsw i64 %indvars.iv, %i.ao
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aw
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.d
  %.01666.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ct, %bb.d ]
  %.01675.us = phi ptr [ %gep.us, %.lr.ph.us ], [ %i.cr, %bb.d ] ; 17 uses
  %.11704.us = phi ptr [ %.01697.us, %.lr.ph.us ], [ %i.cs, %bb.d ] ; 17 uses
  %i.ax = load float, ptr %.01675.us, align 4, !tbaa !39
  store float %i.ax, ptr %.11704.us, align 4, !tbaa !39
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.01675.us, i64 %i.j
  %i.az = load float, ptr %i.ay, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.11704.us, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !39
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.01675.us, i64 %i.l
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %.11704.us, i64 8
  store float %i.bc, ptr %i.bd, align 4, !tbaa !39
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.01675.us, i64 %i.n
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %.11704.us, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.01675.us, i64 %i.p
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.11704.us, i64 16
  store float %i.bi, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.01675.us, i64 %i.r
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.bwr = extractelement <2 x i64> %i.bwq, i64 0
  store i64 %i.bwr, ptr %i.bwl, align 1, !tbaa !100
  %i.bws = load i64, ptr %14, align 8, !tbaa !231
  %.idx = shl i64 %i.bws, 2
  %i.bwt = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx
  %i.bwu = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwv = shufflevector <16 x i32> %i.bwu, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bww = lshr <4 x i32> %i.bwv, splat (i32 16)
  %i.bwx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bww, <4 x i32> poison)
  %i.bwy = bitcast <8 x i16> %i.bwx to <2 x i64>
  %i.bwz = extractelement <2 x i64> %i.bwy, i64 0
  store i64 %i.bwz, ptr %i.bwt, align 1, !tbaa !100
  %i.bxa = load i64, ptr %14, align 8, !tbaa !231
  %.idx685 = mul i64 %i.bxa, 6
  %i.bxb = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx685
  %i.bxc = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bxd = shufflevector <16 x i32> %i.bxc, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bxe = lshr <4 x i32> %i.bxd, splat (i32 16)
  %i.bxf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxe, <4 x i32> poison)
  %i.bxg = bitcast <8 x i16> %i.bxf to <2 x i64>
  %i.bxh = extractelement <2 x i64> %i.bxg, i64 0
  store i64 %i.bxh, ptr %i.bxb, align 1, !tbaa !100
  %i.bxi = getelementptr inbounds nuw i8, ptr %.11383, i64 8
  br label %.thread1166

bb.x:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bxj = bitcast <16 x float> %.0.i to <32 x i16> ; 16 uses
  %i.bxk = extractelement <32 x i16> %i.bxj, i64 1
  store i16 %i.bxk, ptr %.11383, align 2, !tbaa !595
  %i.bxl = extractelement <32 x i16> %i.bxj, i64 3
  %i.bxm = load i64, ptr %14, align 8, !tbaa !231 ; 15 uses
  %i.bxn = getelementptr inbounds nuw [2 x i8], ptr %.11383, i64 %i.bxm
  store i16 %i.bxl, ptr %i.bxn, align 2, !tbaa !595
  %i.bxo = extractelement <32 x i16> %i.bxj, i64 5
  %.idx686 = shl i64 %i.bxm, 2
  %i.bxp = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx686
  store i16 %i.bxo, ptr %i.bxp, align 2, !tbaa !595
  %i.bxq = extractelement <32 x i16> %i.bxj, i64 7
  %.idx687 = mul i64 %i.bxm, 6
  %i.bxr = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx687
  store i16 %i.bxq, ptr %i.bxr, align 2, !tbaa !595
  %i.bxs = extractelement <32 x i16> %i.bxj, i64 9
  %.idx688 = shl i64 %i.bxm, 3
  %i.bxt = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx688
  store i16 %i.bxs, ptr %i.bxt, align 2, !tbaa !595
  %i.bxu = extractelement <32 x i16> %i.bxj, i64 11
  %.idx689 = mul i64 %i.bxm, 10
  %i.bxv = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx689
  store i16 %i.bxu, ptr %i.bxv, align 2, !tbaa !595
  %i.bxw = extractelement <32 x i16> %i.bxj, i64 13
  %.idx690 = mul i64 %i.bxm, 12
  %i.bxx = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx690
  store i16 %i.bxw, ptr %i.bxx, align 2, !tbaa !595
  %i.bxy = extractelement <32 x i16> %i.bxj, i64 15
  %.idx691 = mul i64 %i.bxm, 14
  %i.bxz = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx691
  store i16 %i.bxy, ptr %i.bxz, align 2, !tbaa !595
  %i.bya = extractelement <32 x i16> %i.bxj, i64 17
  %.idx692 = shl i64 %i.bxm, 4
  %i.byb = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx692
  store i16 %i.bya, ptr %i.byb, align 2, !tbaa !595
  %i.byc = extractelement <32 x i16> %i.bxj, i64 19
  %.idx693 = mul i64 %i.bxm, 18
  %i.byd = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx693
  store i16 %i.byc, ptr %i.byd, align 2, !tbaa !595
  %i.bye = extractelement <32 x i16> %i.bxj, i64 21
  %.idx694 = mul i64 %i.bxm, 20
  %i.byf = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx694
  store i16 %i.bye, ptr %i.byf, align 2, !tbaa !595
  %i.byg = extractelement <32 x i16> %i.bxj, i64 23
  %.idx695 = mul i64 %i.bxm, 22
  %i.byh = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx695
  store i16 %i.byg, ptr %i.byh, align 2, !tbaa !595
  %i.byi = extractelement <32 x i16> %i.bxj, i64 25
  %.idx696 = mul i64 %i.bxm, 24
  %i.byj = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx696
  store i16 %i.byi, ptr %i.byj, align 2, !tbaa !595
  %i.byk = extractelement <32 x i16> %i.bxj, i64 27
  %.idx697 = mul i64 %i.bxm, 26
  %i.byl = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx697
  store i16 %i.byk, ptr %i.byl, align 2, !tbaa !595
  %i.bym = extractelement <32 x i16> %i.bxj, i64 29
  %.idx698 = mul i64 %i.bxm, 28
  %i.byn = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx698
  store i16 %i.bym, ptr %i.byn, align 2, !tbaa !595
  %i.byo = extractelement <32 x i16> %i.bxj, i64 31
  %.idx699 = mul i64 %i.bxm, 30
  %i.byp = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx699
  store i16 %i.byo, ptr %i.byp, align 2, !tbaa !595
  %i.byq = getelementptr inbounds nuw i8, ptr %.11383, i64 2
  br label %.thread1166

.thread1166:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.v, %.thread, %bb.w, %bb.x
  %.5 = phi ptr [ %i.byq, %bb.x ], [ %.11383, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.bxi, %bb.w ], [ %i.bvo, %.thread ], [ %i.bwd, %bb.v ], [ %.11383, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.byr = add nuw nsw i32 %.05981382, 1          ; 2 uses
  %exitcond1527.not = icmp eq i32 %i.byr, %i.af
  br i1 %exitcond1527.not, label %._crit_edge, label %bb.c, !llvm.loop !3233

._crit_edge1391:                                  ; preds = %._crit_edge1388.split, %_ZN4ncnn3MatD2Ev.exit739.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge1391, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16f32.v16p0(<16 x float>, <16 x ptr>, <16 x i1>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #35

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { noreturn }
attributes #40 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !6, i64 344}
!22 = !{!"_ZTSN4ncnn11ConvolutionE", !23, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !12, i64 272, !6, i64 344, !12, i64 352, !12, i64 424, !12, i64 496, !12, i64 568, !12, i64 640}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !6, i64 268}
!39 = !{!37, !37, i64 0}
!40 = distinct !{null}
!41 = !{!42, !43, i64 712}
!42 = !{!"_ZTSN4ncnn22Convolution_x86_avx512E", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
!43 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!44 = !{!45, !6, i64 4}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!42, !6, i64 720}
!47 = !{!45, !24, i64 30}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!22, !15, i64 368}
!51 = !{!45, !24, i64 32}
!52 = !{!22, !6, i64 212}
!53 = !{!22, !6, i64 216}
!54 = !{!22, !6, i64 260}
!55 = !{!22, !6, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!22, !6, i64 220}
!58 = !{!22, !6, i64 224}
!59 = !{!22, !6, i64 228}
!60 = !{!22, !6, i64 232}
!61 = !{!42, !43, i64 1088}
!62 = !{!22, !6, i64 256}
!63 = distinct !{null}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !15, i64 16}
!66 = !{!12, !6, i64 24}
!67 = !{!6, !6, i64 0}
!68 = !{!12, !6, i64 56}
!69 = !{!45, !24, i64 0}
!70 = !{!45, !24, i64 55}
!71 = !{!45, !24, i64 56}
!72 = !{!45, !24, i64 57}
!73 = !{!45, !24, i64 28}
!74 = !{!36, !36, i64 0}
!75 = !{!12, !6, i64 44}
!76 = !{!12, !6, i64 48}
!77 = !{!22, !6, i64 236}
!78 = !{!22, !6, i64 240}
!79 = !{!22, !6, i64 244}
!80 = !{!22, !6, i64 248}
!81 = !{!45, !24, i64 29}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !83}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !83, !84, !94}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!99 = distinct !{!99, !"_ZN4ncnn3Mat7channelEi"}
!100 = !{!7, !7, i64 0}
!101 = distinct !{!101, !83}
!102 = distinct !{!102, !83}
!103 = distinct !{!103, !83}
!104 = distinct !{!104, !83}
!105 = distinct !{!105, !83}
!106 = distinct !{!106, !83}
!107 = distinct !{!107, !83}
!108 = distinct !{!108, !86}
!109 = distinct !{!109, !83}
!110 = distinct !{!110, !86}
!111 = distinct !{!111, !83}
!112 = distinct !{!112, !83}
!113 = distinct !{!113, !83}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!116 = distinct !{!116, !"_ZN4ncnn3Mat7channelEi"}
!117 = distinct !{!117, !83}
!118 = distinct !{!118, !83}
!119 = distinct !{!119, !83}
!120 = distinct !{!120, !83}
!121 = distinct !{!121, !83}
!122 = distinct !{!122, !83}
!123 = distinct !{!123, !83}
!124 = distinct !{!124, !86}
!125 = distinct !{!125, !83}
!126 = distinct !{!126, !86}
end_hunk_1
