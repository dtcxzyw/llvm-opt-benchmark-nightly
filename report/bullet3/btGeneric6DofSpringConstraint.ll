Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpringConstraint?download=true
inline.NumInlined: 140
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK29btGeneric6DofSpringConstraint9serializeEPvP12btSerializer:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load float, ptr %i.z, align 8, !tbaa !16
  store float %i.ab, ptr %i.aa, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.ad, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load float, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.ag, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load float, ptr %i.al, align 8, !tbaa !16
  store float %i.an, ptr %i.am, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load float, ptr %i.ar, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load float, ptr %i.au, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.av, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load float, ptr %i.ax, align 8, !tbaa !16
  store float %i.az, ptr %i.ay, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.bb, ptr %i.bc, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load float, ptr %i.bd, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.be, ptr %i.bf, align 4, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.bh, ptr %i.bi, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bl = load float, ptr %i.bj, align 8, !tbaa !16
  store float %i.bl, ptr %i.bk, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bn, ptr %i.bo, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.bt, ptr %i.bu, align 4, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bx = load float, ptr %i.bv, align 8, !tbaa !16
  store float %i.bx, ptr %i.bw, align 4, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bz = load float, ptr %i.by, align 4, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.bz, ptr %i.ca, align 4, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.cc, ptr %i.cd, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.cf, ptr %i.cg, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cj = load float, ptr %i.ch, align 8, !tbaa !16
  store float %i.cj, ptr %i.ci, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.cl, ptr %i.cm, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.co = load float, ptr %i.cn, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.co, ptr %i.cp, align 4, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.cr, ptr %i.cs, align 4, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.da = load float, ptr %i.ct, align 4, !tbaa !52
  store float %i.da, ptr %i.cu, align 4, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dc = load float, ptr %i.db, align 8, !tbaa !53
  store float %i.dc, ptr %i.cv, align 4, !tbaa !16
  %i.dd = load float, ptr %i.cw, align 8, !tbaa !16
  store float %i.dd, ptr %i.cx, align 4, !tbaa !16
  %i.de = load float, ptr %i.cy, align 8, !tbaa !16
  store float %i.de, ptr %i.cz, align 4, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.dg = load float, ptr %i.df, align 4, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 244
  store float %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dj = load float, ptr %i.di, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 228
  store float %i.dj, ptr %i.dk, align 4, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float %i.dm, ptr %i.dn, align 4, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.dp = load float, ptr %i.do, align 4, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 196
  store float %i.dp, ptr %i.dq, align 4, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 248
  store float %i.ds, ptr %i.dt, align 4, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.dv = load float, ptr %i.du, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 232
  store float %i.dv, ptr %i.dw, align 4, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 216
  store float %i.dy, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 200
  store float %i.eb, ptr %i.ec, align 4, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1324
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !54, !range !18, !noundef !19
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1325
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !63, !range !18, !noundef !19
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 260
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1333
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.et = load float, ptr %i.el, align 4, !tbaa !16
  store float %i.et, ptr %i.em, align 8, !tbaa !16
  %i.eu = load float, ptr %i.en, align 4, !tbaa !16
  store float %i.eu, ptr %i.eo, align 8, !tbaa !16
  %i.ev = load float, ptr %i.er, align 4, !tbaa !16
  store float %i.ev, ptr %i.es, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 292
  store float %i.ex, ptr %i.ey, align 4, !tbaa !16
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 340
  store float %i.fa, ptr %i.fb, align 4, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 316
  store float %i.fd, ptr %i.fe, align 4, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 296
  store float %i.fg, ptr %i.fh, align 8, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float %i.fj, ptr %i.fk, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 320
  store float %i.fm, ptr %i.fn, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 300
  store float %i.fp, ptr %i.fq, align 4, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 348
  store float %i.fs, ptr %i.ft, align 4, !tbaa !16
  %i.fu = load <4 x i8>, ptr %i.ep, align 1, !tbaa !14
  %.mask = and <4 x i8> %i.fu, splat (i8 1)
  %i.fv = zext nneg <4 x i8> %.mask to <4 x i32>
  store <4 x i32> %i.fv, ptr %i.eq, align 8, !tbaa !65
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 324
  store float %i.fx, ptr %i.fy, align 4, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 304
  store float %i.ga, ptr %i.gb, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 352
  store float %i.gd, ptr %i.ge, align 8, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1337
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14, !range !18, !noundef !19
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 328
  store float %i.gk, ptr %i.gl, align 8, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 308
  store float %i.gn, ptr %i.go, align 4, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !16
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 356
  store float %i.gq, ptr %i.gr, align 4, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1338
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !14, !range !18, !noundef !19
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 332
  store float %i.gx, ptr %i.gy, align 4, !tbaa !16
  ret ptr @.str
}

declare void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr noundef nonnull align 8 dereferenceable(1333)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btGeneric6DofConstraint8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(1333) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  ret i32 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS13btTypedObject", !6, i64 0}
!12 = !{!11, !6, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTS22btRotationalLimitMotor", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !13, i64 44, !15, i64 48, !15, i64 52, !6, i64 56, !15, i64 60}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"p1 _ZTS11btRigidBody", !20, i64 0}
!22 = !{!"p1 _ZTS15btJointFeedback", !20, i64 0}
!23 = !{!"_ZTS17btTypedConstraint", !11, i64 8, !6, i64 12, !5, i64 16, !15, i64 24, !13, i64 28, !13, i64 29, !6, i64 32, !21, i64 40, !21, i64 48, !15, i64 56, !15, i64 60, !22, i64 64}
!24 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!25 = !{!"_ZTS9btVector3", !5, i64 0}
!26 = !{!"_ZTS11btTransform", !24, i64 0, !25, i64 48}
!27 = !{!"_ZTS25btTranslationalLimitMotor", !25, i64 0, !25, i64 16, !25, i64 32, !15, i64 48, !15, i64 52, !15, i64 56, !25, i64 60, !25, i64 76, !25, i64 92, !5, i64 108, !25, i64 112, !25, i64 128, !25, i64 144, !25, i64 160, !5, i64 176}
!28 = !{!"_ZTS23btGeneric6DofConstraint", !23, i64 0, !26, i64 72, !26, i64 136, !5, i64 200, !5, i64 452, !27, i64 704, !5, i64 892, !15, i64 1084, !26, i64 1088, !26, i64 1152, !25, i64 1216, !5, i64 1232, !25, i64 1280, !15, i64 1296, !15, i64 1300, !13, i64 1304, !25, i64 1308, !13, i64 1324, !13, i64 1325, !6, i64 1328, !13, i64 1332}
!29 = !{!17, !13, i64 44}
!30 = !{!"p1 float", !20, i64 0}
!31 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !15, i64 0, !15, i64 4, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !6, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !6, i64 80, !15, i64 84}
!32 = !{!31, !15, i64 0}
!33 = !{!31, !6, i64 80}
!34 = !{!17, !15, i64 8}
!35 = !{!17, !15, i64 12}
!36 = distinct !{!36, i1 true, !"_ZNK11btTransform7inverseEv"}
!37 = distinct !{!37, !36, !"_ZNK11btTransform7inverseEv: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!39 = distinct !{!39, !38, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZNK11btTransform7inverseEv"}
!41 = distinct !{!41, !40, !"_ZNK11btTransform7inverseEv: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!43 = distinct !{!43, !42, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!44 = !{!5, !5, i64 0}
!45 = !{!23, !21, i64 40}
!46 = !{i64 8}
!47 = !{!39, !37}
!48 = !{!37}
!49 = !{!23, !21, i64 48}
!50 = !{!43, !41}
!51 = !{!41}
!52 = !{!17, !15, i64 0}
!53 = !{!17, !15, i64 4}
!54 = !{!28, !13, i64 1324}
!55 = !{!"p1 _ZTS20btRigidBodyFloatData", !20, i64 0}
!56 = !{!"p1 omnipotent char", !20, i64 0}
!57 = !{!"_ZTS21btTypedConstraintData", !55, i64 0, !55, i64 8, !56, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !15, i64 40, !15, i64 44, !6, i64 48, !6, i64 52, !15, i64 56, !6, i64 60}
!58 = !{!"_ZTS20btMatrix3x3FloatData", !5, i64 0}
!59 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!60 = !{!"_ZTS20btTransformFloatData", !58, i64 0, !59, i64 48}
!61 = !{!"_ZTS27btGeneric6DofConstraintData", !57, i64 0, !60, i64 64, !60, i64 128, !59, i64 192, !59, i64 208, !59, i64 224, !59, i64 240, !6, i64 256, !6, i64 260}
!62 = !{!61, !6, i64 256}
!63 = !{!28, !13, i64 1325}
!64 = !{!61, !6, i64 260}
!65 = !{!6, !6, i64 0}
!66 = !{!28, !6, i64 1328}
end_hunk_0
