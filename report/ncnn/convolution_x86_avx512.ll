Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !59
  %i.ne = icmp eq i32 %i.nd, 1
  br i1 %i.ne, label %bb.em, label %.thread231

bb.em:                                            ; preds = %bb.el
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !60
  %i.nh = icmp eq i32 %i.ng, 1
  br i1 %i.nh, label %bb.en, label %.thread231

bb.en:                                            ; preds = %bb.em
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !73 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !73
  %i.nm = icmp eq ptr %i.nj, %i.nl
  br i1 %i.nm, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !74
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !75
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.eq, label %bb.ey

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !73 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !73
  %i.nx = icmp eq ptr %i.nu, %i.nw
  br i1 %i.nx, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 44
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !74
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !75
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %bb.et, label %.thread579

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !71, !range !49, !noundef !50
  %i.og = trunc nuw i8 %i.of to i1
  %i.oh = icmp slt i32 %i.cn, 33
  %or.cond3 = select i1 %i.og, i1 %i.oh, i1 false
  %i.oi = icmp slt i32 %i.ci, 33
  %or.cond284 = and i1 %i.oi, %or.cond3
  br i1 %or.cond284, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.oj, ptr noundef nonnull align 8 dereferenceable(72) %i.ok, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.ev:                                            ; preds = %bb.et
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !70, !range !49, !noundef !50
  %i.on = trunc nuw i8 %i.om to i1
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br i1 %i.on, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 944
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.op, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.ex:                                            ; preds = %bb.ev
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 872
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.oq, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.ey:                                            ; preds = %bb.ep
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre474 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !73 ; 2 uses
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre476 = load ptr, ptr %.phi.trans.insert475, align 8, !tbaa !73
  %i.or = icmp eq ptr %.pre474, %.pre476
  br i1 %i.or, label %bb.fa, label %.thread579

.thread579:                                       ; preds = %bb.es, %bb.ey
  %i.os = phi ptr [ %.pre474, %bb.ey ], [ %i.nu, %bb.es ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 44
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !74 ; 2 uses
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.thread579
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 48
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !75 ; 2 uses
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.fa, label %bb.fg

bb.fa:                                            ; preds = %bb.ez, %.thread579, %bb.ey
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !74 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !75 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !76 ; 4 uses
  %i.pf = icmp sgt i32 %i.pe, 0
  %.phi.trans.insert478 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre479 = load i32, ptr %.phi.trans.insert478, align 8, !tbaa !77 ; 4 uses
  %i.pg = icmp sgt i32 %.pre479, 0
  %or.cond665 = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %or.cond665, label %._crit_edge477, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !78 ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %._crit_edge477, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !79 ; 3 uses
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %._crit_edge477, label %bb.fd

._crit_edge477:                                   ; preds = %bb.fa, %bb.fc, %bb.fb
  %i.pn = add i32 %i.pe, %i.pa
  %i.po = add i32 %i.pn, %.pre479
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !78
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !79
  %i.pt = add i32 %i.pq, %i.pc
  %i.pu = add i32 %i.pt, %i.ps
  br label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %i.pv = icmp eq i32 %i.pe, -233
  %i.pw = icmp eq i32 %.pre479, -233
  %or.cond154 = and i1 %i.pv, %i.pw
  %i.px = icmp eq i32 %i.pi, -233
  %or.cond155 = and i1 %or.cond154, %i.px
  %i.py = icmp eq i32 %i.pl, -233
  %or.cond156 = and i1 %or.cond155, %i.py
  br i1 %or.cond156, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.pz = icmp eq i32 %i.pe, -234
  %i.qa = icmp eq i32 %.pre479, -234
  %or.cond285 = and i1 %i.pz, %i.qa
  %i.qb = icmp eq i32 %i.pi, -234
  %or.cond286 = and i1 %or.cond285, %i.qb
  %i.qc = icmp eq i32 %i.pl, -234
  %or.cond287 = and i1 %or.cond286, %i.qc
  br i1 %or.cond287, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.qd = add nsw i32 %i.pa, 2
  %i.qe = add nsw i32 %i.pc, 2
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ez
  %i.qf = add nsw i32 %i.ou, 2
  %i.qg = add nsw i32 %i.ox, 2
  br label %bb.fh

bb.fh:                                            ; preds = %._crit_edge477, %bb.ff, %bb.fe, %bb.fg
  %.0118 = phi i32 [ %i.po, %._crit_edge477 ], [ %i.qd, %bb.ff ], [ %i.qf, %bb.fg ], [ %i.pa, %bb.fe ] ; 2 uses
  %.0117 = phi i32 [ %i.pu, %._crit_edge477 ], [ %i.qe, %bb.ff ], [ %i.qg, %bb.fg ], [ %i.pc, %bb.fe ] ; 2 uses
  %i.qh = call fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd63Eiiii(i32 noundef %i.cn, i32 noundef %i.ci, i32 noundef %.0118, i32 noundef %.0117) ; 3 uses
  %i.qi = call fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd23Eiiii(i32 noundef %i.cn, i32 noundef %i.ci, i32 noundef %.0118, i32 noundef %.0117) ; 2 uses
  %spec.select288 = and i1 %i.qi, %i.mi           ; 3 uses
  %spec.select289.v = select i1 %i.qi, i1 %i.mi, i1 %i.qh ; 2 uses
  br i1 %i.qh, label %.split, label %bb.fi

.split:                                           ; preds = %bb.fh
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !71, !range !49, !noundef !50
  %i.ql = trunc nuw i8 %i.qk to i1
  %spec.select159.demorgan = and i1 %spec.select289.v, %i.ql
  br i1 %spec.select159.demorgan, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  br i1 %spec.select289.v, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.split, %bb.fi
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qn = load i8, ptr %i.qm, align 8, !tbaa !70, !range !49, !noundef !50
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %.thread580, label %.split235

.split235:                                        ; preds = %bb.fj
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !71, !range !49, !noundef !50
  %not. = icmp eq i8 %i.qq, 0
  %.0113.shrunk. = or i1 %spec.select288, %not.
  br i1 %.0113.shrunk., label %bb.fl, label %.thread238

bb.fk:                                            ; preds = %.split, %bb.fi
  br i1 %spec.select288, label %bb.fl, label %bb.fn

.thread580:                                       ; preds = %bb.fj
  br i1 %spec.select288, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.thread580, %.split235, %bb.fk
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 872
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.qr, ptr noundef nonnull align 8 dereferenceable(72) %i.qs, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.fm:                                            ; preds = %.thread580
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 944
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.qt, ptr noundef nonnull align 8 dereferenceable(72) %i.qu, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fk
  br i1 %i.qh, label %.thread238, label %bb.fo

.thread238:                                       ; preds = %.split235, %bb.fn
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.qv, ptr noundef nonnull align 8 dereferenceable(72) %i.qw, i32 noundef %i.cn, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fl, %.thread238, %bb.fn, %bb.fm, %bb.eu, %bb.ex, %bb.ew
  %i.qx = load i8, ptr %1, align 8, !tbaa !68, !range !49, !noundef !50
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.fp, label %bb.ly

bb.fp:                                            ; preds = %bb.fo
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !20 ; 2 uses
  %.not.i186 = icmp eq ptr %i.rb, null
  br i1 %.not.i186, label %_ZN4ncnn3Mat7releaseEv.exit188, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.rc = atomicrmw add ptr %i.rb, i32 -1 acq_rel, align 4
  %i.rd = icmp eq i32 %i.rc, 1
  br i1 %i.rd, label %bb.fr, label %_ZN4ncnn3Mat7releaseEv.exit188

bb.fr:                                            ; preds = %bb.fq
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !21 ; 3 uses
  %.not3.i187 = icmp eq ptr %i.rf, null
  %i.rg = load ptr, ptr %i.qz, align 8, !tbaa !22 ; 3 uses
  br i1 %.not3.i187, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !14
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef %i.rg), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit188

bb.ft:                                            ; preds = %bb.fr
  %.not.i194 = icmp eq ptr %i.rg, null
  br i1 %.not.i194, label %_ZN4ncnn3Mat7releaseEv.exit188, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @free(ptr noundef nonnull %i.rg) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit188

_ZN4ncnn3Mat7releaseEv.exit188:                   ; preds = %bb.fu, %bb.ft, %bb.fp, %bb.fq, %bb.fs
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.rl, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qz, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.rk, i8 0, i64 20, i1 false)
  br label %bb.ly

.thread231:                                       ; preds = %bb.eh, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei
  %i.rm = call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.rn = load i32, ptr %i.ch, align 8, !tbaa !55 ; 58 uses
  %i.ro = load <4 x i32>, ptr %i.bz, align 4, !tbaa !66 ; 13 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !59 ; 7 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !60 ; 8 uses
  %i.rt = shl i32 %i.cn, 3
  %i.ru = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.ro)
  %op.rdx972 = mul i32 %i.ru, %i.rn
  %op.rdx973 = mul i32 %i.rq, %i.rs
  %op.rdx974 = mul i32 %op.rdx972, %op.rdx973
  %op.rdx975 = mul i32 %op.rdx974, %i.rt
  %i.rv = icmp sgt i32 %op.rdx975, %i.rm
  %i.rw = icmp sgt i32 %i.cn, 16
  %or.cond23 = select i1 %i.rv, i1 true, i1 %i.rw
  %i.rx = icmp sgt i32 %i.rn, 16
  %spec.select160 = or i1 %i.rx, %or.cond23
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !80, !range !49, !noundef !50
  %i.sa = trunc nuw i8 %i.rz to i1
  %or.cond5 = and i1 %spec.select160, %i.sa
  br i1 %or.cond5, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %.thread231
  %i.sb = extractelement <4 x i32> %i.ro, i64 0   ; 5 uses
  %i.sc = icmp eq i32 %i.sb, 1
  br i1 %i.sc, label %bb.fw, label %bb.ip

bb.fw:                                            ; preds = %bb.fv
  %i.sd = extractelement <4 x i32> %i.ro, i64 1
  %i.se = icmp eq i32 %i.sd, 1
  br i1 %i.se, label %bb.fx, label %.thread242

bb.fx:                                            ; preds = %.thread231, %bb.fw
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.sh = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %shift = shufflevector <4 x i32> %i.ro, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = mul <4 x i32> %shift, %i.ro
  %i.si = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 %i.rn, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.sj = mul nsw i32 %i.si, %i.cn                ; 4 uses
  store i32 %i.sj, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.sk = load i32, ptr %i.bl, align 4, !tbaa !46 ; 2 uses
  %i.sl = call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.sm = ashr i32 %i.sl, 2
  %i.sn = icmp eq i32 %i.sk, 0
  br i1 %i.sn, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.so = call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0120.i.i = phi i32 [ %i.so, %bb.fy ], [ %i.sk, %bb.fx ] ; 3 uses
  %i.sp = add nsw i32 %i.sm, -64
  %i.sq = sdiv i32 %i.sp, 256
  %i.sr = shl nsw i32 %i.sq, 4
  %.sroa.speculated110.i.i = call i32 @llvm.smax.i32(i32 %i.sr, i32 16) ; 3 uses
  %i.ss = add i32 %i.sj, -1                       ; 2 uses
  %i.st = add i32 %.sroa.speculated110.i.i, %i.ss
  %i.su = sdiv i32 %i.st, %.sroa.speculated110.i.i ; 2 uses
  %i.sv = add i32 %i.su, %i.ss
  %i.sw = sdiv i32 %i.sv, %i.su
  %i.sx = add nsw i32 %i.sw, 15
  %i.sy = sdiv i32 %i.sx, 16
  %i.sz = shl nsw i32 %i.sy, 4
  %.sroa.speculated105.i.i = call i32 @llvm.smin.i32(i32 %i.sz, i32 %.sroa.speculated110.i.i)
  store i32 %.sroa.speculated105.i.i, ptr %i.d, align 4, !tbaa !66
  %i.ta = add nsw i32 %i.rn, 63
  %i.tb = sdiv i32 %i.ta, 64                      ; 2 uses
  %i.tc = add i32 %i.rn, -1                       ; 4 uses
  %i.td = add i32 %i.tb, %i.tc
  %i.te = sdiv i32 %i.td, %i.tb
  %i.tf = add nsw i32 %i.te, 15
  %i.tg = sdiv i32 %i.tf, 16
  %i.th = shl nsw i32 %i.tg, 4
  %.sroa.speculated98.i.i = call i32 @llvm.smax.i32(i32 %i.th, i32 16)
  %i.ti = call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93.i.i = call i32 @llvm.smin.i32(i32 %i.ti, i32 %.0120.i.i)
  %i.tj = mul nsw i32 %.sroa.speculated98.i.i, %.sroa.speculated93.i.i ; 3 uses
  %i.tk = add i32 %i.tj, %i.tc
  %i.tl = sdiv i32 %i.tk, %i.tj                   ; 2 uses
  %i.tm = add i32 %i.tl, %i.tc
  %i.tn = sdiv i32 %i.tm, %i.tl
  %i.to = add nsw i32 %i.tn, 15
  %i.tp = sdiv i32 %i.to, 16
  %i.tq = shl nsw i32 %i.tp, 4
  %.sroa.speculated88.i.i = call i32 @llvm.smin.i32(i32 %i.tq, i32 %i.tj) ; 3 uses
  %i.tr = icmp sgt i32 %.0120.i.i, 1
  br i1 %i.tr, label %bb.ga, label %_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i.exit.i

bb.ga:                                            ; preds = %bb.fz
  %i.ts = sdiv i32 %.sroa.speculated88.i.i, %.0120.i.i
  %.sroa.speculated76.i.i = call i32 @llvm.smax.i32(i32 %i.ts, i32 1)
  %i.tt = add nuw nsw i32 %.sroa.speculated76.i.i, 15
  %i.tu = and i32 %i.tt, 2147483632
  %.sroa.speculated83.i.i = call i32 @llvm.smin.i32(i32 %i.tu, i32 %.sroa.speculated88.i.i)
  br label %_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i.exit.i

_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i.exit.i: ; preds = %bb.ga, %bb.fz
  %i.tv = phi i32 [ %.sroa.speculated83.i.i, %bb.ga ], [ %.sroa.speculated88.i.i, %bb.fz ] ; 3 uses
  store i32 %i.tv, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.tw = add i32 %i.tc, %i.tv
  %i.tx = sdiv i32 %i.tw, %i.tv
  store i32 %i.tx, ptr %i.e, align 4, !tbaa !66
  %i.ty = load i8, ptr %i.co, align 1, !tbaa !56, !range !49, !noundef !50
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i.exit.i
  %i.ua = and i32 %i.cn, 15
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
end_hunk_0
begin_hunk_1_@_ZNK4ncnn22Convolution_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.dw:                                            ; preds = %bb.dv
  %i.ls = load ptr, ptr %i.cq, align 16, !tbaa !21 ; 3 uses
  %.not3.i98 = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %6, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i98, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !14
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, ptr noundef %i.lt)
          to label %_ZN4ncnn3MatD2Ev.exit70 unwind label %bb.ea, !inline_history !0

bb.dy:                                            ; preds = %bb.dw
  %.not.i118 = icmp eq ptr %i.lt, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit70, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @free(ptr noundef nonnull %i.lt) #12
  br label %_ZN4ncnn3MatD2Ev.exit70

bb.ea:                                            ; preds = %bb.dx
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit70:                          ; preds = %bb.dv, %.critedge, %bb.dx, %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit161.thread

bb.eb:                                            ; preds = %bb.cp, %bb.du, %_ZN4ncnn3MatD2Ev.exit74
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.cp ], [ %i.eq, %_ZN4ncnn3MatD2Ev.exit74 ], [ %.pn61.pn.pn, %bb.du ]
  %i.lz = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %.not.i101 = icmp eq ptr %i.lz, null
  br i1 %.not.i101, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ma = atomicrmw add ptr %i.lz, i32 -1 acq_rel, align 4
  %i.mb = icmp eq i32 %i.ma, 1
  br i1 %i.mb, label %bb.ed, label %_ZN4ncnn3MatD2Ev.exit69

bb.ed:                                            ; preds = %bb.ec
  %i.mc = load ptr, ptr %i.cq, align 16, !tbaa !21 ; 3 uses
  %.not3.i102 = icmp eq ptr %i.mc, null
  %i.md = load ptr, ptr %6, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i102, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  invoke void %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef %i.md)
          to label %_ZN4ncnn3MatD2Ev.exit69 unwind label %bb.eh, !inline_history !0

bb.ef:                                            ; preds = %bb.ed
  %.not.i116 = icmp eq ptr %i.md, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @free(ptr noundef nonnull %i.md) #12
  br label %_ZN4ncnn3MatD2Ev.exit69

bb.eh:                                            ; preds = %bb.ee
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit69:                          ; preds = %bb.ec, %bb.eb, %bb.ee, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.eo

_ZNK4ncnn3Mat5emptyEv.exit161.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit161, %_ZN4ncnn3MatD2Ev.exit75, %_ZN4ncnn3MatD2Ev.exit70
  %.655 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit75 ], [ %.554, %_ZN4ncnn3MatD2Ev.exit70 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit161 ], [ -100, %bb.b ]
  %i.mj = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not.i105 = icmp eq ptr %i.mj, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.ei

bb.ei:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit161.thread
  %i.mk = atomicrmw add ptr %i.mj, i32 -1 acq_rel, align 4
  %i.ml = icmp eq i32 %i.mk, 1
  br i1 %i.ml, label %bb.ej, label %_ZN4ncnn3MatD2Ev.exit68

bb.ej:                                            ; preds = %bb.ei
  %i.mm = load ptr, ptr %i.p, align 16, !tbaa !21 ; 3 uses
  %.not3.i106 = icmp eq ptr %i.mm, null
  %i.mn = load ptr, ptr %4, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i106, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !14
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  invoke void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef %i.mn)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.en, !inline_history !0

bb.el:                                            ; preds = %bb.ej
  %.not.i114 = icmp eq ptr %i.mn, null
  br i1 %.not.i114, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @free(ptr noundef nonnull %i.mn) #12
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.en:                                            ; preds = %bb.ek
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.ei, %_ZNK4ncnn3Mat5emptyEv.exit161.thread, %bb.ek, %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.655

bb.eo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69, %_ZN4ncnn3MatD2Ev.exit76, %bb.c
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit69 ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit76 ], [ %i.ab, %bb.c ]
  %i.mt = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %.not.i109 = icmp eq ptr %i.mt, null
  br i1 %.not.i109, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mu = atomicrmw add ptr %i.mt, i32 -1 acq_rel, align 4
  %i.mv = icmp eq i32 %i.mu, 1
  br i1 %i.mv, label %bb.eq, label %_ZN4ncnn3MatD2Ev.exit

bb.eq:                                            ; preds = %bb.ep
  %i.mw = load ptr, ptr %i.p, align 16, !tbaa !21 ; 3 uses
  %.not3.i110 = icmp eq ptr %i.mw, null
  %i.mx = load ptr, ptr %4, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i110, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !14
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void %i.na(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.mx)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.eu, !inline_history !0

bb.es:                                            ; preds = %bb.eq
  %.not.i113 = icmp eq ptr %i.mx, null
  br i1 %.not.i113, label %_ZN4ncnn3MatD2Ev.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @free(ptr noundef nonnull %i.mx) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.eu:                                            ; preds = %bb.er
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ep, %bb.eo, %bb.er, %bb.es, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn22Convolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 20 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 20 uses
  %i.g = alloca ptr, align 8                      ; 24 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 8 uses
  %i.u = alloca i32, align 4                      ; 8 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 41 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.z = load i8, ptr %i.y, align 2, !tbaa !48, !range !49, !noundef !50
  %.not271 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load i32, ptr %i.aa, align 8
  %.not = icmp eq i32 %i.ab, 0
  %or.cond273.not = select i1 %.not271, i1 true, i1 %.not
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !51, !range !49, !noundef !50
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %or.cond273.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ae, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit380.thread

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %.not.i378 = icmp eq i32 %i.ag, 0
  br i1 %.not.i378, label %_ZNK4ncnn3Mat8elembitsEv.exit380.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit380

_ZNK4ncnn3Mat8elembitsEv.exit380:                 ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64
  %.tr.i379 = trunc i64 %i.ai to i32
  %i.aj = shl i32 %.tr.i379, 3
  %i.ak = sdiv i32 %i.aj, %i.ag
  %i.al = icmp eq i32 %i.ak, 16
  br i1 %i.al, label %bb.d, label %_ZNK4ncnn3Mat8elembitsEv.exit380.thread

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit380
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %6, align 8, !tbaa !22
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK4ncnn3Mat5emptyEv.exit388.thread, label %_ZNK4ncnn3Mat5emptyEv.exit388

_ZNK4ncnn3Mat5emptyEv.exit388:                    ; preds = %bb.e
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !67
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNK4ncnn3Mat5emptyEv.exit388.thread, label %bb.m

bb.f:                                             ; preds = %bb.m, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit286, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit286

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !21 ; 3 uses
  %.not3.i = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bc)
          to label %_ZN4ncnn3MatD2Ev.exit286 unwind label %bb.l, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %.not.i352 = icmp eq ptr %i.bc, null
  br i1 %.not.i352, label %_ZN4ncnn3MatD2Ev.exit286, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.bc) #12
  br label %_ZN4ncnn3MatD2Ev.exit286

bb.l:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit286:                         ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.kz

bb.m:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit388
  %i.bi = invoke noundef i32 @_ZNK4ncnn22Convolution_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNK4ncnn3Mat5emptyEv.exit388.thread unwind label %bb.f

_ZNK4ncnn3Mat5emptyEv.exit388.thread:             ; preds = %bb.e, %bb.m, %_ZNK4ncnn3Mat5emptyEv.exit388
  %.0201 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit388 ], [ %i.bi, %bb.m ], [ -100, %bb.e ]
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !20 ; 2 uses
  %.not.i287 = icmp eq ptr %i.bj, null
  br i1 %.not.i287, label %_ZN4ncnn3MatD2Ev.exit285, label %bb.n

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit388.thread
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit285

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !21 ; 3 uses
  %.not3.i288 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i288, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bn)
          to label %_ZN4ncnn3MatD2Ev.exit285 unwind label %bb.s, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %.not.i350 = icmp eq ptr %i.bn, null
  br i1 %.not.i350, label %_ZN4ncnn3MatD2Ev.exit285, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.bn) #12
  br label %_ZN4ncnn3MatD2Ev.exit285

bb.s:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit285:                         ; preds = %bb.n, %_ZNK4ncnn3Mat5emptyEv.exit388.thread, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ky

_ZNK4ncnn3Mat8elembitsEv.exit380.thread:          ; preds = %bb.c, %_ZNK4ncnn3Mat8elembitsEv.exit380, %bb.b
  %i.bt = tail call noundef i32 @_ZNK4ncnn22Convolution_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.ky

bb.t:                                             ; preds = %bb.a
  br i1 %i.ae, label %bb.u, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %.not.i377 = icmp eq i32 %i.bv, 0
  br i1 %.not.i377, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !64
  %.tr.i = trunc i64 %i.bx to i32
  %i.by = shl i32 %.tr.i, 3
  %i.bz = sdiv i32 %i.by, %i.bv
  %i.ca = icmp eq i32 %i.bz, 16
  br i1 %i.ca, label %bb.v, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.cb = tail call noundef i32 @_ZNK4ncnn22Convolution_x86_avx51213forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.ky

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.u, %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !90
  %i.ce = icmp eq i32 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 6 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !52 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 1
  %or.cond1017 = select i1 %i.ce, i1 %i.ch, i1 false
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  br i1 %or.cond1017, label %bb.w, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread._ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge_crit_edge

_ZNK4ncnn3Mat8elembitsEv.exit.thread._ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge_crit_edge: ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.ck = add nsw i32 %i.cg, -1
  br label %_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge

bb.w:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cl = icmp eq i32 %i.cj, 1
  br i1 %i.cl, label %bb.x, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread._crit_edge

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  store i64 0, ptr %i.cs, align 16, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cp, i8 0, i64 28, i1 false)
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.cv = and i64 %i.cu, 15
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
end_hunk_1
begin_hunk_2_@_ZN4ncnn11ConvolutionD2Ev:bb.a
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ak, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %.not.i26 = icmp eq ptr %i.ce, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.ce) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit1, %bb.ah, %bb.ai, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 0, ptr %i.cl, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = mul i32 %i.i, %i.g                       ; 89 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = sdiv i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55   ; 53 uses
  %i.p = sdiv i32 %i.m, %i.o                      ; 127 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.r = load i8, ptr %i.q, align 1, !tbaa !69, !range !49, !noundef !50
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i8, ptr %i.t, align 8, !range !49
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %or.cond26 = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond26, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.w = icmp sgt i32 %i.p, 8
  %i.x = icmp sgt i32 %i.o, 8
  %spec.select = or i1 %i.x, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i8, ptr %i.y, align 4, !tbaa !72, !range !49, !noundef !50
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond = select i1 %i.aa, i1 %spec.select, i1 false
  %i.ab = icmp eq i32 %i.g, 3
  %or.cond28 = and i1 %i.ab, %or.cond
  %i.ac = icmp eq i32 %i.i, 3
  %or.cond30 = and i1 %i.ac, %or.cond28
  br i1 %or.cond30, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 944
  tail call fastcc void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i32 noundef %i.p, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call fastcc void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i32 noundef %i.p, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

.thread:                                          ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80, !range !49, !noundef !50
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  br i1 %i.au, label %bb.j, label %bb.cc

bb.j:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ax = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 %i.o, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ay = mul nsw i32 %i.p, %i.j                  ; 4 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46 ; 2 uses
  %i.bb = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0105.i.i = phi i32 [ %i.bd, %bb.k ], [ %i.ba, %bb.j ] ; 3 uses
  %i.be = add nsw i32 %i.bb, -64
  %i.bf = sdiv i32 %i.be, 256
  %i.bg = shl nsw i32 %i.bf, 4
  %.sroa.speculated95.i.i = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 16) ; 3 uses
  %i.bh = add i32 %i.ay, -1                       ; 2 uses
  %i.bi = add i32 %.sroa.speculated95.i.i, %i.bh
  %i.bj = sdiv i32 %i.bi, %.sroa.speculated95.i.i ; 2 uses
  %i.bk = add i32 %i.bj, %i.bh
  %i.bl = sdiv i32 %i.bk, %i.bj
  %i.bm = add nsw i32 %i.bl, 15
  %i.bn = sdiv i32 %i.bm, 16
  %i.bo = shl nsw i32 %i.bn, 4
  %.sroa.speculated91.i.i = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %.sroa.speculated95.i.i)
  store i32 %.sroa.speculated91.i.i, ptr %i.d, align 4, !tbaa !66
  %i.bp = add nsw i32 %i.o, 63
  %i.bq = sdiv i32 %i.bp, 64                      ; 2 uses
  %i.br = add i32 %i.o, -1                        ; 4 uses
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = sdiv i32 %i.bs, %i.bq
  %i.bu = add nsw i32 %i.bt, 15
  %i.bv = sdiv i32 %i.bu, 16
  %i.bw = shl nsw i32 %i.bv, 4
  %.sroa.speculated85.i.i = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 16)
  %i.bx = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated81.i.i = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %.0105.i.i)
  %i.by = mul nsw i32 %.sroa.speculated85.i.i, %.sroa.speculated81.i.i ; 3 uses
  %i.bz = add i32 %i.by, %i.br
  %i.ca = sdiv i32 %i.bz, %i.by                   ; 2 uses
  %i.cb = add i32 %i.ca, %i.br
  %i.cc = sdiv i32 %i.cb, %i.ca
  %i.cd = add nsw i32 %i.cc, 15
  %i.ce = sdiv i32 %i.cd, 16
  %i.cf = shl nsw i32 %i.ce, 4
  %.sroa.speculated77.i.i = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.by) ; 3 uses
  %i.cg = icmp sgt i32 %.0105.i.i, 1
  br i1 %i.cg, label %bb.m, label %_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ch = sdiv i32 %.sroa.speculated77.i.i, %.0105.i.i
  %.sroa.speculated67.i.i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %i.ci = add nuw nsw i32 %.sroa.speculated67.i.i, 15
  %i.cj = and i32 %i.ci, 2147483632
  %.sroa.speculated73.i.i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %.sroa.speculated77.i.i)
  br label %_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i

_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i: ; preds = %bb.m, %bb.l
  %i.ck = phi i32 [ %.sroa.speculated73.i.i, %bb.m ], [ %.sroa.speculated77.i.i, %bb.l ] ; 3 uses
  store i32 %i.ck, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.cl = add i32 %i.br, %i.ck
  %i.cm = sdiv i32 %i.cl, %i.ck
  store i32 %i.cm, ptr %i.e, align 4, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !56, !range !49, !noundef !50
  %.not663 = icmp eq i8 %i.co, 0
  %i.cp = and i32 %i.p, 7
  %5 = icmp ne i32 %i.cp, 0
  %.not664 = or i1 %5, %.not663                   ; 2 uses
  %.062.i = select i1 %.not664, i32 1, i32 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.cx, align 16, !tbaa !23
  %i.cy = icmp eq i32 %i.j, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ct, i8 0, i64 28, i1 false)
  br i1 %i.cy, label %bb.n, label %bb.al

bb.n:                                             ; preds = %_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i32 noundef %i.ay, i32 noundef %i.o, ptr noundef null)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !20 ; 2 uses
  %.not.i116.i = icmp eq ptr %i.da, null
  br i1 %.not.i116.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = atomicrmw add ptr %i.da, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dc = load ptr, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.ct, align 16, !tbaa !21 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %2, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dg)
          to label %bb.w unwind label %bb.ae, !inline_history !1

bb.u:                                             ; preds = %bb.s
  %.not.i18.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i18.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.dg) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !20 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %3, align 16, !tbaa !63
  store <2 x ptr> %i.dl, ptr %2, align 16, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load i64, ptr %i.dm, align 16, !tbaa !64
  store i64 %i.dn, ptr %i.cr, align 16, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !65
  store i32 %i.dp, ptr %i.cs, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !21
  store ptr %i.dr, ptr %i.ct, align 16, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dt = load <4 x i32>, ptr %i.ds, align 8, !tbaa !66
  store <4 x i32> %i.dt, ptr %i.cu, align 8, !tbaa !66
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !67
  store i32 %i.dv, ptr %i.cw, align 8, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dx = load i64, ptr %i.dw, align 16, !tbaa !23
  store i64 %i.dx, ptr %i.cx, align 16, !tbaa !23
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit78.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit78.i

bb.y:                                             ; preds = %bb.x
  %i.ea = load ptr, ptr %i.dq, align 16, !tbaa !21 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %3, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %_ZN4ncnn3MatD2Ev.exit78.i unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i114.i = icmp eq ptr %i.eb, null
  br i1 %.not.i114.i, label %_ZN4ncnn3MatD2Ev.exit78.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.eb) #12
  br label %_ZN4ncnn3MatD2Ev.exit78.i

bb.ac:                                            ; preds = %bb.z
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit78.i:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.bc

bb.ad:                                            ; preds = %bb.n
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit77.i

bb.ae:                                            ; preds = %bb.t
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !20 ; 2 uses
  %.not.i79.i = icmp eq ptr %i.ej, null
  br i1 %.not.i79.i, label %_ZN4ncnn3MatD2Ev.exit77.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = atomicrmw add ptr %i.ej, i32 -1 acq_rel, align 4
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit77.i

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !21 ; 3 uses
  %.not3.i80.i = icmp eq ptr %i.en, null
  %i.eo = load ptr, ptr %3, align 16, !tbaa !22   ; 3 uses
  br i1 %.not3.i80.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef %i.eo)
          to label %_ZN4ncnn3MatD2Ev.exit77.i unwind label %bb.ak, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %.not.i112.i = icmp eq ptr %i.eo, null
  br i1 %.not.i112.i, label %_ZN4ncnn3MatD2Ev.exit77.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.eo) #12
  br label %_ZN4ncnn3MatD2Ev.exit77.i

bb.ak:                                            ; preds = %bb.ah
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit77.i:                        ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ad
  %.pn67.i = phi { ptr, i32 } [ %i.eh, %bb.ad ], [ %i.ei, %bb.aj ], [ %i.ei, %bb.ai ], [ %i.ei, %bb.ah ], [ %i.ei, %bb.af ], [ %i.ei, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.bv

bb.al:                                            ; preds = %_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.o, ptr noundef null)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ay, i32 noundef %i.o, i64 noundef 1, i32 noundef 1, ptr noundef null)
          to label %.preheader126.i unwind label %bb.av

.preheader126.i:                                  ; preds = %bb.am
  %i.eu = icmp sgt i32 %i.o, 0
  br i1 %i.eu, label %.lr.ph.i, label %._crit_edge.split.i

.lr.ph.i:                                         ; preds = %.preheader126.i
  %.not137.i = icmp sle i32 %.062.i, %i.p
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ey = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.ey, %.not137.i
  br i1 %or.cond.i, label %.preheader125.lr.ph.us.preheader.i, label %._crit_edge.split.i

.preheader125.lr.ph.us.preheader.i:               ; preds = %.lr.ph.i
  %i.ez = add nsw i32 %.062.i, -1
  %i.fa = zext nneg i32 %.062.i to i64            ; 3 uses
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = zext nneg i32 %i.p to i64
  %wide.trip.count151.i = zext nneg i32 %i.o to i64
  %wide.trip.count143.i = zext nneg i32 %i.j to i64
  %xtraiter649 = and i64 %i.fa, 1
  %unroll_iter654 = and i64 %i.fa, 8
  %lcmp.mod651.not = icmp eq i64 %xtraiter649, 0
  %lcmp.mod653 = trunc i32 %.062.i to i1
  br label %.preheader125.lr.ph.us.i

.preheader125.lr.ph.us.i:                         ; preds = %._crit_edge133.split.us.us.i, %.preheader125.lr.ph.us.preheader.i
  %indvars.iv148.i = phi i64 [ 0, %.preheader125.lr.ph.us.preheader.i ], [ %indvars.iv.next149.i, %._crit_edge133.split.us.us.i ] ; 5 uses
  %i.fd = load ptr, ptr %2, align 16, !tbaa !22
  %i.fe = load i32, ptr %i.cv, align 4, !tbaa !74
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %indvars.iv148.i, %i.ff
  %i.fh = load i64, ptr %i.cr, align 16, !tbaa !64
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi
  br label %.preheader125.us.us.i

.preheader125.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader125.lr.ph.us.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %._crit_edge.us.us.i ], [ 0, %.preheader125.lr.ph.us.i ] ; 4 uses
  %.052131.us.us.i = phi ptr [ %.lcssa, %._crit_edge.us.us.i ], [ %i.fj, %.preheader125.lr.ph.us.i ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.an, %.preheader125.us.us.i
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %bb.an ], [ 0, %.preheader125.us.us.i ] ; 4 uses
  %.1129.us.us.i = phi ptr [ %.lcssa, %bb.an ], [ %.052131.us.us.i, %.preheader125.us.us.i ] ; 2 uses
  br i1 %.not664, label %_ZN4ncnn3MatD2Ev.exit76.us.us.i.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit76.us.us.i

_ZN4ncnn3MatD2Ev.exit76.us.us.i:                  ; preds = %.preheader.us.us.i, %_ZN4ncnn3MatD2Ev.exit76.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN4ncnn3MatD2Ev.exit76.us.us.i ], [ 0, %.preheader.us.us.i ] ; 3 uses
  %.2127.us.us.i = phi ptr [ %i.gn, %_ZN4ncnn3MatD2Ev.exit76.us.us.i ], [ %.1129.us.us.i, %.preheader.us.us.i ] ; 3 uses
  %niter655 = phi i64 [ %niter655.next.1, %_ZN4ncnn3MatD2Ev.exit76.us.us.i ], [ 0, %.preheader.us.us.i ]
  %i.fk = load i32, ptr %i.ev, align 4, !tbaa !74, !noalias !525
  %i.fl = load ptr, ptr %4, align 8, !tbaa !22, !noalias !525
  %i.fm = load i64, ptr %i.ew, align 8, !tbaa !23, !noalias !525
  %i.fn = mul i64 %i.fm, %indvars.iv148.i
  %i.fo = load i64, ptr %i.ex, align 8, !tbaa !64, !noalias !525 ; 2 uses
  %i.fp = mul i64 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  %i.fr = sext i32 %i.fk to i64
  %i.fs = add nuw nsw i64 %indvars.iv.i, %indvars.iv145.i
  %i.ft = mul nsw i64 %i.fs, %i.fr
  %i.fu = mul i64 %i.ft, %i.fo
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv140.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !85
  store i8 %i.fx, ptr %.2127.us.us.i, align 1, !tbaa !85
  %i.fy = getelementptr inbounds nuw i8, ptr %.2127.us.us.i, i64 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !74, !noalias !525
  %i.ga = load ptr, ptr %4, align 8, !tbaa !22, !noalias !525
  %i.gb = load i64, ptr %i.ew, align 8, !tbaa !23, !noalias !525
  %i.gc = mul i64 %i.gb, %indvars.iv148.i
  %i.gd = load i64, ptr %i.ex, align 8, !tbaa !64, !noalias !525 ; 2 uses
  %i.ge = mul i64 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ge
  %i.gg = sext i32 %i.fz to i64
  %i.gh = add nuw nsw i64 %indvars.iv.next.i, %indvars.iv145.i
  %i.gi = mul nsw i64 %i.gh, %i.gg
  %i.gj = mul i64 %i.gi, %i.gd
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv140.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !85
  store i8 %i.gm, ptr %i.fy, align 1, !tbaa !85
  %i.gn = getelementptr inbounds nuw i8, ptr %.2127.us.us.i, i64 2 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter655.next.1 = add i64 %niter655, 2         ; 2 uses
  %niter655.ncmp.1 = icmp eq i64 %niter655.next.1, %unroll_iter654
  br i1 %niter655.ncmp.1, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit76.us.us.i, !llvm.loop !439

.unr-lcssa:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit76.us.us.i
  br i1 %lcmp.mod651.not, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit76.us.us.i.epil.preheader

_ZN4ncnn3MatD2Ev.exit76.us.us.i.epil.preheader:   ; preds = %.unr-lcssa, %.preheader.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.2127.us.us.i.epil.init = phi ptr [ %.1129.us.us.i, %.preheader.us.us.i ], [ %i.gn, %.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod653)
  %i.go = load i32, ptr %i.ev, align 4, !tbaa !74, !noalias !525
  %i.gp = load ptr, ptr %4, align 8, !tbaa !22, !noalias !525
  %i.gq = load i64, ptr %i.ew, align 8, !tbaa !23, !noalias !525
  %i.gr = mul i64 %i.gq, %indvars.iv148.i
  %i.gs = load i64, ptr %i.ex, align 8, !tbaa !64, !noalias !525 ; 2 uses
  %i.gt = mul i64 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gt
  %i.gv = sext i32 %i.go to i64
  %i.gw = add nuw nsw i64 %indvars.iv.i.epil.init, %indvars.iv145.i
  %i.gx = mul nsw i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, %i.gs
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv140.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !85
  store i8 %i.hb, ptr %.2127.us.us.i.epil.init, align 1, !tbaa !85
  %i.hc = getelementptr inbounds nuw i8, ptr %.2127.us.us.i.epil.init, i64 1
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit76.us.us.i.epil.preheader
  %.lcssa = phi ptr [ %i.gn, %.unr-lcssa ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit76.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count143.i
  br i1 %exitcond144.not.i, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !440

._crit_edge.us.us.i:                              ; preds = %bb.an
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, %i.fa ; 2 uses
  %i.hd = add nuw nsw i64 %indvars.iv.next146.i, %i.fb
  %i.he = icmp samesign ult i64 %i.hd, %i.fc
  br i1 %i.he, label %.preheader125.us.us.i, label %._crit_edge133.split.us.us.i, !llvm.loop !441

._crit_edge133.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %._crit_edge.split.i, label %.preheader125.lr.ph.us.i, !llvm.loop !442

._crit_edge.split.i:                              ; preds = %._crit_edge133.split.us.us.i, %.lr.ph.i, %.preheader126.i
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.hg, null
  br i1 %.not.i87.i, label %_ZN4ncnn3MatD2Ev.exit75.i, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.split.i
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit75.i

bb.ap:                                            ; preds = %bb.ao
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !21 ; 3 uses
  %.not3.i88.i = icmp eq ptr %i.hk, null
  %i.hl = load ptr, ptr %4, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i88.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hl)
          to label %_ZN4ncnn3MatD2Ev.exit75.i unwind label %bb.at, !inline_history !0

bb.ar:                                            ; preds = %bb.ap
  %.not.i108.i = icmp eq ptr %i.hl, null
  br i1 %.not.i108.i, label %_ZN4ncnn3MatD2Ev.exit75.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.hl) #12
  br label %_ZN4ncnn3MatD2Ev.exit75.i

bb.at:                                            ; preds = %bb.aq
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit75.i:                        ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao, %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.bc

bb.au:                                            ; preds = %bb.al
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit74.i

bb.av:                                            ; preds = %bb.am
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !20 ; 2 uses
  %.not.i91.i = icmp eq ptr %i.hu, null
  br i1 %.not.i91.i, label %_ZN4ncnn3MatD2Ev.exit74.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit74.i

bb.ax:                                            ; preds = %bb.aw
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !21 ; 3 uses
  %.not3.i92.i = icmp eq ptr %i.hy, null
  %i.hz = load ptr, ptr %4, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i92.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.hz)
          to label %_ZN4ncnn3MatD2Ev.exit74.i unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i106.i = icmp eq ptr %i.hz, null
  br i1 %.not.i106.i, label %_ZN4ncnn3MatD2Ev.exit74.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.hz) #12
  br label %_ZN4ncnn3MatD2Ev.exit74.i

bb.bb:                                            ; preds = %bb.ay
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit74.i:                        ; preds = %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.ba, %bb.au
  %.pn.pn.i = phi { ptr, i32 } [ %i.hr, %bb.au ], [ %i.hs, %bb.ba ], [ %i.hs, %bb.az ], [ %i.hs, %bb.ay ], [ %i.hs, %bb.aw ], [ %i.hs, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.bv

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit75.i, %_ZN4ncnn3MatD2Ev.exit78.i
  %i.if = load i32, ptr %i.d, align 4, !tbaa !66  ; 4 uses
  %i.ig = icmp sgt i32 %i.if, 3
  br i1 %i.ig, label %bb.bd, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.bc
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !66
  br label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.ih = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd
  %.not.i32 = icmp eq i32 %i.ih, 0
  br i1 %.not.i32, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ii = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
end_hunk_2
