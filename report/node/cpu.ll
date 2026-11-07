Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cpu?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN2v84base3CPUC2Ev:bb.a
  %i.az = icmp sgt i32 %i.aw, 0
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 1) #2, !srcloc !7 ; 2 uses
  %i.bb = extractvalue { i32, i32, i32, i32 } %i.ba, 0
  %i.bc = extractvalue { i32, i32, i32, i32 } %i.ba, 3
  %i.bd = trunc i32 %i.bb to i8
  %i.be = lshr i8 %i.bd, 4
  %i.bf = and i8 %i.be, 1
  %i.bg = trunc i32 %i.bc to i8
  %i.bh = lshr i8 %i.bg, 5
  %i.bi = and i8 %i.bh, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.523.0 = phi i32 [ %i.ax, %bb.d ], [ %i.ax, %bb.c ], [ 0, %bb.b ]
  %.sroa.724.0 = phi i32 [ %i.ay, %bb.d ], [ %i.ay, %bb.c ], [ 0, %bb.b ]
  %.sroa.020.0 = phi i8 [ %i.bf, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sroa.7.0 = phi i8 [ %i.bi, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bj = and i32 %i.ar, 15                       ; 10 uses
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = lshr i32 %i.ar, 4
  %i.bl = and i32 %i.bk, 15
  %i.bm = lshr i32 %i.ar, 12                      ; 2 uses
  %i.bn = and i32 %i.bm, 240
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4
  %i.bp = lshr i32 %i.ar, 8
  %i.bq = and i32 %i.bp, 15                       ; 2 uses
  store i32 %i.bq, ptr %i.d, align 4
  %i.br = and i32 %i.bm, 3
  store i32 %i.br, ptr %i.f, align 4
  %i.bs = lshr i32 %i.ar, 16
  %i.bt = and i32 %i.bs, 15
  store i32 %i.bt, ptr %i.c, align 4
  %i.bu = lshr i32 %i.ar, 20
  %i.bv = and i32 %i.bu, 255
  store i32 %i.bv, ptr %i.e, align 4
  %i.bw = trunc i32 %i.at to i8
  %i.bx = and i8 %i.bw, 1
  store i8 %i.bx, ptr %i.j, align 4
  %i.by = lshr i32 %i.at, 15
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  store i8 %i.ca, ptr %i.k, align 1
  %i.cb = lshr i32 %i.at, 23
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = and i8 %i.cc, 1
  store i8 %i.cd, ptr %i.m, align 1
  %i.ce = lshr i32 %i.at, 25
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 1
  store i8 %i.cg, ptr %i.n, align 4
  %i.ch = lshr i32 %i.at, 26
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  store i8 %i.cj, ptr %i.o, align 1
  %i.ck = trunc i32 %i.as to i8
  %i.cl = and i8 %i.ck, 1
  store i8 %i.cl, ptr %i.p, align 2
  %i.cm = lshr i32 %i.as, 9
  %i.cn = trunc i32 %i.cm to i8
  %i.co = and i8 %i.cn, 1
  store i8 %i.co, ptr %i.q, align 1
  %i.cp = lshr i32 %i.as, 19
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = and i8 %i.cq, 1
  store i8 %i.cr, ptr %i.r, align 4
  %i.cs = lshr i32 %i.as, 20
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = and i8 %i.ct, 1
  store i8 %i.cu, ptr %i.s, align 1
  %i.cv = lshr i32 %i.as, 23
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = and i8 %i.cw, 1
  store i8 %i.cx, ptr %i.af, align 1
  %i.cy = lshr i32 %i.as, 27
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = and i8 %i.cz, 1
  store i8 %i.da, ptr %i.v, align 1
  %i.db = lshr i32 %i.as, 28
  %i.dc = trunc nuw nsw i32 %i.db to i8
  %i.dd = and i8 %i.dc, 1
  store i8 %i.dd, ptr %i.w, align 2
  %i.de = trunc i32 %.sroa.523.0 to i8
  %i.df = lshr i8 %i.de, 5
  %i.dg = and i8 %i.df, 1
  store i8 %i.dg, ptr %i.x, align 1
  store i8 %.sroa.020.0, ptr %i.y, align 4
  store i8 %.sroa.7.0, ptr %i.z, align 1
  %i.dh = lshr i32 %i.as, 12
  %i.di = trunc i32 %i.dh to i8
  %i.dj = and i8 %i.di, 1
  store i8 %i.dj, ptr %i.aa, align 2
  %i.dk = lshr i32 %i.as, 29
  %i.dl = trunc nuw nsw i32 %i.dk to i8
  %i.dm = and i8 %i.dl, 1
  store i8 %i.dm, ptr %i.ab, align 1
  %i.dn = and i32 %.sroa.724.0, 128
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = zext i1 %i.do to i8
  store i8 %i.dq, ptr %i.dp, align 4
  %.lobit = lshr i32 %i.as, 31
  %i.dr = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.dr, ptr %i.ah, align 2
  %i.ds = icmp eq i32 %i.bq, 6
  br i1 %i.ds, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %trunc = trunc nuw i32 %i.bo to i8              ; 2 uses
  switch i8 %trunc, label %bb.o [
    i8 28, label %bb.g
    i8 38, label %bb.g
    i8 54, label %bb.g
    i8 39, label %bb.g
    i8 53, label %bb.g
    i8 55, label %bb.g
    i8 74, label %bb.g
    i8 77, label %bb.g
    i8 76, label %bb.g
    i8 110, label %bb.g
    i8 78, label %bb.h
    i8 85, label %bb.i
    i8 94, label %bb.j
    i8 -114, label %bb.k
    i8 -98, label %bb.l
    i8 -90, label %bb.m
    i8 -82, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 1, ptr %i.t, align 2
  switch i8 %trunc, label %bb.o [
    i8 78, label %bb.h
    i8 85, label %bb.i
    i8 94, label %bb.j
  ]

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dt = icmp eq i32 %i.bj, 3
  br label %.sink.split

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.du = icmp eq i32 %i.bj, 4
  %i.dv = icmp eq i32 %i.bj, 7
  %narrow46 = or i1 %i.du, %i.dv
  br label %.sink.split

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.dw = icmp eq i32 %i.bj, 3
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.dx = add nsw i32 %i.bj, -9
  %narrow45 = icmp ult i32 %i.dx, 4
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %.off18 = add nsw i32 %i.bj, -9
  %switch19 = icmp ult i32 %.off18, 3
  %i.dy = icmp eq i32 %i.bj, 13
  %narrow = or i1 %i.dy, %switch19
  br label %.sink.split

bb.m:                                             ; preds = %bb.f
  %i.dz = icmp eq i32 %i.bj, 0
  br label %.sink.split

bb.n:                                             ; preds = %bb.f
  %i.ea = icmp eq i32 %i.bj, 10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sink49 = phi i1 [ %i.ea, %bb.n ], [ %i.dz, %bb.m ], [ %narrow, %bb.l ], [ %narrow45, %bb.k ], [ %i.dw, %bb.j ], [ %narrow46, %bb.i ], [ %i.dt, %bb.h ]
  %i.eb = zext i1 %.sink49 to i8
  store i8 %i.eb, ptr %i.u, align 1
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.f, %bb.e, %bb.g
  br i1 %i.au, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ec = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !6
  %i.ed = extractvalue { i32, i32, i32, i32 } %i.ec, 1 ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = lshr i8 %i.ee, 3
  %i.eg = and i8 %i.ef, 1
  store i8 %i.eg, ptr %i.ac, align 4
  %i.eh = lshr i32 %i.ed, 8
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = and i8 %i.ei, 1
  store i8 %i.ej, ptr %i.ad, align 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.p, %bb.o
  %i.ek = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #2, !srcloc !6
  %i.el = extractvalue { i32, i32, i32, i32 } %i.ek, 0 ; 3 uses
  %i.em = icmp ugt i32 %i.el, -2147483648
  br i1 %i.em, label %bb.q, label %.thread43

bb.q:                                             ; preds = %.thread
  %i.en = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #2, !srcloc !6
  %i.eo = extractvalue { i32, i32, i32, i32 } %i.en, 2
  %i.ep = trunc i32 %i.eo to i8                   ; 2 uses
  %i.eq = lshr i8 %i.ep, 5
  %i.er = and i8 %i.eq, 1
  store i8 %i.er, ptr %i.ae, align 2
  %i.es = and i8 %i.ep, 1
  store i8 %i.es, ptr %i.l, align 2
  %i.et = icmp samesign ugt i32 %i.el, -2147483642
  br i1 %i.et, label %bb.r, label %.thread43

bb.r:                                             ; preds = %bb.q
  %i.eu = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483641, i32 0) #2, !srcloc !6
  %i.ev = extractvalue { i32, i32, i32, i32 } %i.eu, 3
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = and i8 %i.ex, 1
  store i8 %i.ey, ptr %i.ag, align 1
  %.not47 = icmp eq i32 %i.el, -2147483641
  br i1 %.not47, label %.thread43, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483640, i32 0) #2, !srcloc !6
  %i.fa = extractvalue { i32, i32, i32, i32 } %i.ez, 0
  %i.fb = lshr i32 %i.fa, 8
  %i.fc = and i32 %i.fb, 255
  store i32 %i.fc, ptr %i.i, align 4
  br label %.thread43

.thread43:                                        ; preds = %.thread, %bb.q, %bb.s, %bb.r
  %1 = load i8, ptr %i.ag, align 1, !range !8, !noundef !9
  %i.fd = trunc nuw i8 %1 to i1
  br i1 %i.fd, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread43
  %i.fe = load i8, ptr %i.ah, align 2, !range !8, !noundef !9
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fg = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1073741824, i32 0) #2, !srcloc !6 ; 3 uses
  %i.fh = extractvalue { i32, i32, i32, i32 } %i.fg, 1
  %i.fi = extractvalue { i32, i32, i32, i32 } %i.fg, 2
  %i.fj = extractvalue { i32, i32, i32, i32 } %i.fg, 3
  %i.fk = icmp eq i32 %i.fh, 1919117645
  %i.fl = icmp eq i32 %i.fi, 1718580079
  %or.cond = select i1 %i.fk, i1 %i.fl, i1 false
  %i.fm = icmp eq i32 %i.fj, 1984438388
  %or.cond5 = select i1 %or.cond, i1 %i.fm, i1 false
  br i1 %or.cond5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.ag, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t, %.thread43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{i64 -4479474156350850729}
!6 = !{i64 1849, i64 1858}
!7 = !{i64 2843, i64 2852}
!8 = !{i8 0, i8 2}
!9 = !{}
end_hunk_0
