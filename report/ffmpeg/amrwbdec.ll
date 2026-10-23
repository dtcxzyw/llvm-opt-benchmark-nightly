Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrwbdec?download=true
inline.NumInlined: 56
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@decode_4p_track
define internal fastcc void @decode_4p_track(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 0, 1073790976) %1, i32 noundef range(i32 3, 5) %2, i32 noundef range(i32 1, 10) %3) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 13 uses
  %i.b = shl nuw nsw i32 1, %i.a                  ; 7 uses
  %i.c = shl nuw nsw i32 %2, 2                    ; 2 uses
  %i.d = add nsw i32 %i.c, -2
  %i.e = lshr i32 %1, %i.d
  %i.f = and i32 %i.e, 3
  switch i32 %i.f, label %default.unreachable81 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.c, -3
  %i.h = lshr i32 %1, %i.g
  %i.i = and i32 %i.h, 1
  %i.j = shl nuw nsw i32 %i.i, %i.a
  %i.k = shl nuw nsw i32 %2, 1                    ; 3 uses
  %i.l = add nsw i32 %i.k, -3                     ; 2 uses
  %i.m = lshr i32 %1, %i.l
  %i.n = and i32 %i.m, 1
  %i.o = add nsw i32 %2, -2                       ; 4 uses
  %i.p = shl nuw nsw i32 %i.n, %i.o
  %notmask.i64 = shl nsw i32 -1, %i.l
  %i.q = xor i32 %notmask.i64, -1
  %i.r = and i32 %1, %i.q                         ; 3 uses
  %i.s = add nuw nsw i32 %i.j, %3                 ; 3 uses
  %i.t = add nuw nsw i32 %i.s, %i.p               ; 2 uses
  %i.u = lshr i32 %i.r, %i.o
  %notmask.i21.i = shl nsw i32 -1, %i.o
  %i.v = xor i32 %notmask.i21.i, -1               ; 2 uses
  %i.w = and i32 %i.u, %i.v                       ; 2 uses
  %i.x = add nuw nsw i32 %i.t, %i.w               ; 2 uses
  %i.y = and i32 %i.r, %i.v                       ; 2 uses
  %i.z = add nuw nsw i32 %i.t, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.o, 1
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = and i32 %i.r, %i.ab
  %.not.i = icmp eq i32 %i.ac, 0                  ; 2 uses
  %i.ad = sub nsw i32 0, %i.x
  %i.ae = select i1 %.not.i, i32 %i.x, i32 %i.ad
  store i32 %i.ae, ptr %0, align 4, !tbaa !30
  %i.af = sub nsw i32 0, %i.z
  %i.ag = select i1 %.not.i, i32 %i.z, i32 %i.af  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = icmp samesign ugt i32 %i.w, %i.y
  %i.aj = sub nsw i32 0, %i.ag
  %i.ak = select i1 %i.ai, i32 %i.aj, i32 %i.ag
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = add nsw i32 %i.k, -2
  %i.an = lshr i32 %1, %i.am
  %i.ao = add nsw i32 %i.k, -1
  %notmask.i63 = shl nsw i32 -1, %i.ao
  %i.ap = xor i32 %notmask.i63, -1
  %i.aq = and i32 %i.an, %i.ap                    ; 3 uses
  %i.ar = lshr i32 %i.aq, %i.a
  %notmask.i21.i65 = shl nsw i32 -1, %i.a
  %i.as = xor i32 %notmask.i21.i65, -1            ; 2 uses
  %i.at = and i32 %i.ar, %i.as                    ; 2 uses
  %i.au = add nuw nsw i32 %i.at, %i.s             ; 2 uses
  %i.av = and i32 %i.aq, %i.as                    ; 2 uses
  %i.aw = add nuw nsw i32 %i.s, %i.av             ; 2 uses
  %i.ax = shl nuw nsw i32 %i.a, 1
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.aq, %i.ay
  %.not.i66 = icmp eq i32 %i.az, 0                ; 2 uses
  %i.ba = sub nsw i32 0, %i.au
  %i.bb = select i1 %.not.i66, i32 %i.au, i32 %i.ba
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !30
  %i.bc = sub nsw i32 0, %i.aw
  %i.bd = select i1 %.not.i66, i32 %i.aw, i32 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = icmp samesign ugt i32 %i.at, %i.av
  %i.bg = sub nsw i32 0, %i.bd
  %i.bh = select i1 %i.bf, i32 %i.bg, i32 %i.bd
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !30
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bi = mul nuw nsw i32 %2, 3
  %i.bj = add nsw i32 %i.bi, -2                   ; 2 uses
  %i.bk = lshr i32 %1, %i.bj
  %notmask.i62 = shl nsw i32 -1, %2
  %i.bl = xor i32 %notmask.i62, -1
  %i.bm = and i32 %i.bk, %i.bl                    ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.a
  %i.bn = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.bo = and i32 %i.bm, %i.bn
  %i.bp = add nuw nsw i32 %i.bo, %3               ; 2 uses
  %i.bq = and i32 %i.bm, %i.b
  %.not.i67 = icmp eq i32 %i.bq, 0
  %i.br = sub nsw i32 0, %i.bp
  %i.bs = select i1 %.not.i67, i32 %i.bp, i32 %i.br
  store i32 %i.bs, ptr %0, align 4, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %notmask.i61 = shl nsw i32 -1, %i.bj
  %i.bu = xor i32 %notmask.i61, -1
  %i.bv = and i32 %1, %i.bu                       ; 3 uses
  %i.bw = add nuw nsw i32 %i.b, %3                ; 2 uses
  %i.bx = shl nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.bz = lshr i32 %i.bv, %i.by
  %i.ca = and i32 %i.bz, 1
  %i.cb = add nsw i32 %2, -2                      ; 4 uses
  %i.cc = shl nuw nsw i32 %i.ca, %i.cb
  %notmask.i14.i = shl nsw i32 -1, %i.by
  %i.cd = xor i32 %notmask.i14.i, -1
  %i.ce = and i32 %i.bv, %i.cd                    ; 3 uses
  %i.cf = add nuw nsw i32 %i.cc, %i.bw            ; 2 uses
  %i.cg = lshr i32 %i.ce, %i.cb
  %notmask.i21.i.i = shl nsw i32 -1, %i.cb
  %i.ch = xor i32 %notmask.i21.i.i, -1            ; 2 uses
  %i.ci = and i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = add nuw nsw i32 %i.cf, %i.ci            ; 2 uses
  %i.ck = and i32 %i.ce, %i.ch                    ; 2 uses
  %i.cl = add nuw nsw i32 %i.cf, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.cb, 1
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = and i32 %i.ce, %i.cn
  %.not.i.i = icmp eq i32 %i.co, 0                ; 2 uses
  %i.cp = sub nsw i32 0, %i.cj
  %i.cq = select i1 %.not.i.i, i32 %i.cj, i32 %i.cp
  store i32 %i.cq, ptr %i.bt, align 4, !tbaa !30
  %i.cr = sub nsw i32 0, %i.cl
  %i.cs = select i1 %.not.i.i, i32 %i.cl, i32 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = icmp samesign ugt i32 %i.ci, %i.ck
  %i.cv = sub nsw i32 0, %i.cs
  %i.cw = select i1 %i.cu, i32 %i.cv, i32 %i.cs
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cy = lshr i32 %i.bv, %i.bx
  %notmask.i.i68 = shl i32 2147483647, %2
  %i.cz = xor i32 %notmask.i.i68, -1
  %i.da = and i32 %i.cy, %i.cz                    ; 2 uses
  %i.db = and i32 %i.da, %i.bn
  %i.dc = add nuw nsw i32 %i.db, %i.bw            ; 2 uses
  %i.dd = and i32 %i.da, %i.b
  %.not.i15.i = icmp eq i32 %i.dd, 0
  %i.de = sub nsw i32 0, %i.dc
  %i.df = select i1 %.not.i15.i, i32 %i.dc, i32 %i.de
  store i32 %i.df, ptr %i.cx, align 4, !tbaa !30
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.dg = shl nuw nsw i32 %2, 1
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  %i.di = lshr i32 %1, %i.dh
  %notmask.i60 = shl nsw i32 -1, %i.dh
  %i.dj = xor i32 %notmask.i60, -1                ; 2 uses
  %i.dk = and i32 %i.di, %i.dj                    ; 3 uses
  %i.dl = lshr i32 %i.dk, %i.a
  %notmask.i21.i69 = shl nsw i32 -1, %i.a
  %i.dm = xor i32 %notmask.i21.i69, -1            ; 4 uses
  %i.dn = and i32 %i.dl, %i.dm                    ; 2 uses
  %i.do = add nuw nsw i32 %i.dn, %3               ; 2 uses
  %i.dp = and i32 %i.dk, %i.dm                    ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, %3               ; 2 uses
  %i.dr = shl nuw nsw i32 %i.a, 1
  %i.ds = shl nuw nsw i32 1, %i.dr                ; 2 uses
  %i.dt = and i32 %i.dk, %i.ds
  %.not.i70 = icmp eq i32 %i.dt, 0                ; 2 uses
  %i.du = sub nsw i32 0, %i.do
  %i.dv = select i1 %.not.i70, i32 %i.do, i32 %i.du
  store i32 %i.dv, ptr %0, align 4, !tbaa !30
  %i.dw = sub nsw i32 0, %i.dq
  %i.dx = select i1 %.not.i70, i32 %i.dq, i32 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dz = icmp samesign ugt i32 %i.dn, %i.dp
  %i.ea = sub nsw i32 0, %i.dx
  %i.eb = select i1 %i.dz, i32 %i.ea, i32 %i.dx
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = and i32 %1, %i.dj                       ; 3 uses
  %i.ee = add nuw nsw i32 %i.b, %3                ; 2 uses
  %i.ef = lshr i32 %i.ed, %i.a
  %i.eg = and i32 %i.ef, %i.dm                    ; 2 uses
  %i.eh = add nuw nsw i32 %i.eg, %i.ee            ; 2 uses
  %i.ei = and i32 %i.ed, %i.dm                    ; 2 uses
  %i.ej = add nuw nsw i32 %i.ei, %i.ee            ; 2 uses
  %i.ek = and i32 %i.ed, %i.ds
  %.not.i72 = icmp eq i32 %i.ek, 0                ; 2 uses
  %i.el = sub nsw i32 0, %i.eh
  %i.em = select i1 %.not.i72, i32 %i.eh, i32 %i.el
  store i32 %i.em, ptr %i.ec, align 4, !tbaa !30
  %i.en = sub nsw i32 0, %i.ej
  %i.eo = select i1 %.not.i72, i32 %i.ej, i32 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eq = icmp samesign ugt i32 %i.eg, %i.ei
  %i.er = sub nsw i32 0, %i.eo
  %i.es = select i1 %i.eq, i32 %i.er, i32 %i.eo
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.et = lshr i32 %1, %2
  %4 = icmp eq i32 %2, 3
  %notmask.i58.finite = select i1 %4, i32 -128, i32 -1024
  %i.eu = xor i32 %notmask.i58.finite, -1
  %i.ev = and i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = shl nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  %i.ey = lshr i32 %i.ev, %i.ex
  %i.ez = and i32 %i.ey, 1
  %i.fa = add nsw i32 %2, -2                      ; 4 uses
  %i.fb = shl nuw nsw i32 %i.ez, %i.fa
  %notmask.i14.i73 = shl nsw i32 -1, %i.ex
  %i.fc = xor i32 %notmask.i14.i73, -1
  %i.fd = and i32 %i.ev, %i.fc                    ; 3 uses
  %i.fe = add nuw nsw i32 %i.fb, %3               ; 2 uses
  %i.ff = lshr i32 %i.fd, %i.fa
  %notmask.i21.i.i74 = shl nsw i32 -1, %i.fa
  %i.fg = xor i32 %notmask.i21.i.i74, -1          ; 2 uses
  %i.fh = and i32 %i.ff, %i.fg                    ; 2 uses
  %i.fi = add nuw nsw i32 %i.fe, %i.fh            ; 2 uses
  %i.fj = and i32 %i.fd, %i.fg                    ; 2 uses
  %i.fk = add nuw nsw i32 %i.fe, %i.fj            ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fa, 1
  %i.fm = shl nuw nsw i32 1, %i.fl
  %i.fn = and i32 %i.fd, %i.fm
  %.not.i.i75 = icmp eq i32 %i.fn, 0              ; 2 uses
  %i.fo = sub nsw i32 0, %i.fi
  %i.fp = select i1 %.not.i.i75, i32 %i.fi, i32 %i.fo
  store i32 %i.fp, ptr %0, align 4, !tbaa !30
  %i.fq = sub nsw i32 0, %i.fk
  %i.fr = select i1 %.not.i.i75, i32 %i.fk, i32 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ft = icmp samesign ugt i32 %i.fh, %i.fj
  %i.fu = sub nsw i32 0, %i.fr
  %i.fv = select i1 %i.ft, i32 %i.fu, i32 %i.fr
  store i32 %i.fv, ptr %i.fs, align 4, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = lshr i32 %i.ev, %i.ew
  %notmask.i.i76 = shl i32 2147483647, %2
  %i.fy = xor i32 %notmask.i.i76, -1
  %i.fz = and i32 %i.fx, %i.fy                    ; 2 uses
  %notmask.i.i.i77 = shl nsw i32 -1, %i.a
  %i.ga = xor i32 %notmask.i.i.i77, -1            ; 2 uses
  %i.gb = and i32 %i.fz, %i.ga
  %i.gc = add nuw nsw i32 %i.gb, %3               ; 2 uses
  %i.gd = and i32 %i.fz, %i.b
  %.not.i15.i78 = icmp eq i32 %i.gd, 0
  %i.ge = sub nsw i32 0, %i.gc
  %i.gf = select i1 %.not.i15.i78, i32 %i.gc, i32 %i.ge
  store i32 %i.gf, ptr %i.fw, align 4, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %notmask.i = shl nsw i32 -1, %2
  %i.gh = xor i32 %notmask.i, -1
  %i.gi = and i32 %1, %i.gh                       ; 2 uses
  %i.gj = add nuw nsw i32 %i.b, %3
  %i.gk = and i32 %i.gi, %i.ga
  %i.gl = add nuw nsw i32 %i.gj, %i.gk            ; 2 uses
  %i.gm = and i32 %i.b, %i.gi
  %.not.i80 = icmp eq i32 %i.gm, 0
  %i.gn = sub nsw i32 0, %i.gl
  %i.go = select i1 %.not.i80, i32 %i.gl, i32 %i.gn
  store i32 %i.go, ptr %i.gg, align 4, !tbaa !30
  br label %bb.f

default.unreachable81:                            ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @ff_celp_circ_addf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_scale_vector_to_given_sum_of_squares(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 356}
!30 = !{!6, !6, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"short", !5, i64 0}
!33 = !{!"AMRWBFrame", !32, i64 0, !5, i64 2, !5, i64 16}
!34 = !{!"p1 float", !9, i64 0}
!35 = !{!"AVLFG", !5, i64 0, !6, i64 256}
!36 = !{!"ACELPFContext", !9, i64 0, !9, i64 8}
!37 = !{!"ACELPVContext", !9, i64 0}
!38 = !{!"CELPFContext", !9, i64 0, !9, i64 8}
!39 = !{!"CELPMContext", !9, i64 0}
!40 = !{!"AMRWBContext", !33, i64 0, !6, i64 112, !5, i64 116, !5, i64 120, !5, i64 184, !5, i64 248, !5, i64 312, !5, i64 824, !5, i64 952, !5, i64 1208, !5, i64 1209, !5, i64 1212, !34, i64 2464, !5, i64 2472, !5, i64 2728, !5, i64 2984, !5, i64 3000, !5, i64 3024, !16, i64 3032, !16, i64 3036, !5, i64 3040, !16, i64 3044, !5, i64 3048, !5, i64 3368, !5, i64 3720, !5, i64 4120, !5, i64 4128, !5, i64 4136, !5, i64 4140, !5, i64 4260, !35, i64 4380, !5, i64 4640, !36, i64 4648, !37, i64 4664, !38, i64 4672, !39, i64 4688}
!41 = !{!40, !34, i64 2464}
!42 = !{!40, !5, i64 4640}
!43 = !{!16, !16, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !44}
!48 = !{!9, !9, i64 0}
!49 = !{!27, !6, i64 344}
!50 = !{!27, !6, i64 348}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}
!53 = distinct !{null}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !44, !45, !46}
!58 = distinct !{!58, !44, !45}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !44, !45, !46}
!65 = distinct !{!65, !44, !45}
!66 = distinct !{null}
!67 = distinct !{!67, i1 false, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !44, !45, !46}
!71 = distinct !{!71, !44, !45}
!72 = distinct !{!72, !44}
!73 = distinct !{null}
!74 = distinct !{!74, !44}
!75 = distinct !{null}
!76 = distinct !{!76, !44}
end_hunk_0
