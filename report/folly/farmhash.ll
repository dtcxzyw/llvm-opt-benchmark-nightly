Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/farmhash?download=true
inline.NumInlined: 387
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly8external8farmhash10farmhashcc14Hash32WithSeedEPKcmj:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val34.i21 = load i32, ptr %i.ep, align 1      ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val33.i22 = load i32, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val32.i23 = load i32, ptr %i.es, align 1      ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val31.i24 = load i32, ptr %i.et, align 1      ; 2 uses
  %.val30.i25 = load i32, ptr %0, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val.i26 = load i32, ptr %i.eu, align 1        ; 2 uses
  %i.ev = mul i32 %.val31.i24, -862048943
  %i.ew = add i32 %i.eo, 24
  %i.ex = add i32 %i.ew, %i.ev
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %.val34.i21, i32 %.val34.i21, i32 20)
  %i.ez = add i32 %.val.i26, %i.ey                ; 3 uses
  %i.fa = mul i32 %.val32.i23, -862048943         ; 2 uses
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 15)
  %i.fc = mul i32 %i.fb, 461845907
  %i.fd = xor i32 %i.ex, %i.fc                    ; 2 uses
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.fd, i32 %i.fd, i32 13)
  %i.ff = mul i32 %i.fe, 5
  %i.fg = add i32 %i.ez, -430675100
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 29)
  %i.fj = add i32 %i.fi, %.val32.i23              ; 2 uses
  %i.fk = mul i32 %.val30.i25, -862048943         ; 2 uses
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 15)
  %i.fm = mul i32 %i.fl, 461845907
  %i.fn = xor i32 %i.fh, %i.fm                    ; 2 uses
  %i.fo = tail call i32 @llvm.fshl.i32(i32 %i.fn, i32 %i.fn, i32 13)
  %i.fp = mul i32 %i.fo, 5
  %i.fq = add i32 %i.fj, -430675100
  %i.fr = add i32 %i.fq, %i.fp
  %i.fs = add i32 %i.fj, %.val.i26                ; 2 uses
  %i.ft = tail call i32 @llvm.fshl.i32(i32 %i.fs, i32 %i.fs, i32 20)
  %i.fu = xor i32 %.val33.i22, %i.eo
  %i.fv = mul i32 %i.fu, -862048943               ; 2 uses
  %i.fw = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 15)
  %i.fx = mul i32 %i.fw, 461845907
  %i.fy = xor i32 %i.fr, %i.fx                    ; 2 uses
  %i.fz = tail call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 13)
  %i.ga = mul i32 %i.fz, 5
  %i.gb = add i32 %.val31.i24, -430675100
  %i.gc = add i32 %i.gb, %i.ft
  %i.gd = add i32 %i.gc, %i.ga                    ; 2 uses
  %i.ge = lshr i32 %i.gd, 16
  %i.gf = xor i32 %i.ge, %i.gd
  %i.gg = mul i32 %i.gf, -2048144789              ; 2 uses
  %i.gh = lshr i32 %i.gg, 13
  %i.gi = xor i32 %i.gh, %i.gg
  %i.gj = mul i32 %i.gi, -1028477387              ; 2 uses
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = add i64 %1, -24
  %i.gm = tail call noundef i32 @_ZN5folly8external8farmhash10farmhashcc6Hash32EPKcm(ptr noundef nonnull %i.er, i64 noundef %i.gl)
  %i.gn = add i32 %i.gm, %2
  %i.go = mul i32 %i.gn, -862048943               ; 2 uses
  %i.gp = tail call i32 @llvm.fshl.i32(i32 %i.go, i32 %i.go, i32 15)
  %i.gq = mul i32 %i.gp, 461845907
  %i.gr = xor i32 %i.gq, %i.gk
  %i.gs = xor i32 %i.gr, %i.gj                    ; 2 uses
  %i.gt = tail call i32 @llvm.fshl.i32(i32 %i.gs, i32 %i.gs, i32 13)
  %i.gu = mul i32 %i.gt, 5
  %i.gv = add i32 %i.gu, -430675100
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit, %bb.e, %bb.c
  %.0 = phi i32 [ %i.bc, %bb.c ], [ %i.cs, %bb.e ], [ %i.em, %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit ], [ %i.gv, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i128 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  %i.b = trunc i128 %2 to i64                     ; 7 uses
  %i.c = lshr i128 %2, 64
  %i.d = trunc nuw i128 %i.c to i64               ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %1, 17
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = mul i64 %i.b, -5435081209227447693       ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -5435081209227447693       ; 2 uses
  %i.j = mul i64 %i.d, -5435081209227447693       ; 2 uses
  %i.k = icmp samesign ugt i64 %1, 7
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i64 %1, 3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %1, 1
  %i.n = add nuw nsw i64 %i.m, -7286425919675154353 ; 3 uses
  %.val37.i.i = load i32, ptr %0, align 1
  %i.o = zext i32 %.val37.i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %.val36.i.i = load i32, ptr %i.s, align 1
  %i.t = zext i32 %.val36.i.i to i64              ; 2 uses
  %i.u = xor i64 %i.q, %i.t
  %i.v = mul i64 %i.u, %i.n                       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.w, %i.t
  %i.y = xor i64 %i.x, %i.v
  %i.z = mul i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, %i.n
  br label %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %0, align 1, !tbaa !12
  %i.ae = lshr i64 %1, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = getelementptr i8, ptr %0, i64 %1
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.ad to i64
  %i.al = zext i8 %i.ag to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.am, %i.ak
  %i.ao = zext i8 %i.aj to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = or disjoint i64 %i.ap, %1
  %i.ar = mul i64 %i.an, -7286425919675154353
  %i.as = mul i64 %i.aq, -4348849565147123417
  %i.at = xor i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 47
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -7286425919675154353
  br label %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i

_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.ph.i = phi i64 [ -7286425919675154353, %bb.f ], [ %i.aw, %bb.g ], [ %i.ac, %bb.e ]
  %i.ax = add i64 %.0.i.ph.i, %i.j                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ay = shl nuw nsw i64 %1, 1
  %i.az = add nuw nsw i64 %i.ay, -7286425919675154353 ; 5 uses
  %.val35.i.i = load i64, ptr %0, align 1         ; 2 uses
  %i.ba = add i64 %.val35.i.i, -7286425919675154353 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.val.i.i = load i64, ptr %i.bc, align 1        ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %.val.i.i, i64 %.val.i.i, i64 27)
  %i.be = mul i64 %i.bd, %i.az
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 39)
  %i.bh = add i64 %i.bg, %.val.i.i
  %i.bi = mul i64 %i.bh, %i.az                    ; 2 uses
  %i.bj = xor i64 %i.bi, %i.bf
  %i.bk = mul i64 %i.bj, %i.az                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 47
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = xor i64 %i.bm, %i.bk
  %i.bo = mul i64 %i.bn, %i.az                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 47
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, %i.az
  %i.bs = add i64 %i.br, %i.j
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i
  %i.bt = phi i64 [ %i.bs, %bb.h ], [ %i.ax, %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i ]
  %i.bu = phi i64 [ %.val35.i.i, %bb.h ], [ %i.ax, %_ZN5folly8external8farmhash10farmhashccL12HashLen0to16EPKcm.exit.thread.i ]
  %i.bv = add i64 %i.bu, %i.i                     ; 2 uses
  %i.bw = lshr i64 %i.bv, 47
  %i.bx = xor i64 %i.bw, %i.bv
  br label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

bb.j:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  %.val52.i = load i64, ptr %i.bz, align 1
  %i.ca = add i64 %.val52.i, -5435081209227447693
  %i.cb = xor i64 %i.ca, %i.b
  %i.cc = mul i64 %i.cb, -7070675565921424023     ; 2 uses
  %i.cd = lshr i64 %i.cc, 47
  %i.ce = xor i64 %i.cd, %i.b
  %i.cf = xor i64 %i.ce, %i.cc
  %i.cg = mul i64 %i.cf, -7070675565921424023     ; 2 uses
  %i.ch = lshr i64 %i.cg, 47
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = mul i64 %i.ci, -7070675565921424023     ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.by, i64 -16
  %.val51.i = load i64, ptr %3, align 1
  %4 = add i64 %i.cj, %.val51.i                   ; 2 uses
  %i.ck = add i64 %1, %i.d
  %5 = xor i64 %4, %i.ck
  %6 = mul i64 %5, -7070675565921424023           ; 2 uses
  %7 = lshr i64 %6, 47
  %8 = xor i64 %4, %7
  %9 = xor i64 %8, %6
  %10 = mul i64 %9, -7070675565921424023          ; 2 uses
  %11 = lshr i64 %10, 47
  %12 = xor i64 %11, %10
  %13 = mul i64 %12, -7070675565921424023         ; 2 uses
  %i.cl = add i64 %13, %i.b
  %.049.val.i = load i64, ptr %0, align 1
  %i.cm = mul i64 %.049.val.i, -5435081209227447693 ; 2 uses
  %i.cn = lshr i64 %i.cm, 47
  %14 = xor i64 %i.cn, %i.cm
  %15 = mul i64 %14, -5435081209227447693
  %i.co = xor i64 %15, %i.cl
  %16 = mul i64 %i.co, -5435081209227447693       ; 3 uses
  %i.cp = xor i64 %16, %i.d                       ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %17, align 1
  %i.cq = mul i64 %.val.i, -5435081209227447693   ; 2 uses
  %i.cr = lshr i64 %i.cq, 47
  %18 = xor i64 %i.cr, %i.cq
  %19 = mul i64 %18, -5435081209227447693
  %i.cs = xor i64 %19, %i.cj
  %i.ct = mul i64 %i.cs, -5435081209227447693     ; 3 uses
  %20 = xor i64 %i.ct, %13                        ; 2 uses
  %21 = icmp samesign ugt i64 %1, 32
  br i1 %21, label %22, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

22:                                               ; preds = %bb.j
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.049.val.i.1 = load i64, ptr %23, align 1
  %24 = mul i64 %.049.val.i.1, -5435081209227447693 ; 2 uses
  %25 = lshr i64 %24, 47
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, -5435081209227447693
  %28 = xor i64 %27, %16
  %29 = mul i64 %28, -5435081209227447693         ; 3 uses
  %30 = xor i64 %29, %i.cp                        ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.1 = load i64, ptr %31, align 1
  %32 = mul i64 %.val.i.1, -5435081209227447693   ; 2 uses
  %33 = lshr i64 %32, 47
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -5435081209227447693
  %36 = xor i64 %35, %i.ct
  %37 = mul i64 %36, -5435081209227447693         ; 3 uses
  %38 = xor i64 %37, %20                          ; 2 uses
  %39 = icmp sgt i64 %1, 48
  br i1 %39, label %40, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

40:                                               ; preds = %22
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.049.val.i.2 = load i64, ptr %41, align 1
  %42 = mul i64 %.049.val.i.2, -5435081209227447693 ; 2 uses
  %43 = lshr i64 %42, 47
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -5435081209227447693
  %46 = xor i64 %45, %29
  %47 = mul i64 %46, -5435081209227447693         ; 3 uses
  %48 = xor i64 %47, %30                          ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.2 = load i64, ptr %49, align 1
  %50 = mul i64 %.val.i.2, -5435081209227447693   ; 2 uses
  %51 = lshr i64 %50, 47
  %52 = xor i64 %51, %50
  %53 = mul i64 %52, -5435081209227447693
  %54 = xor i64 %53, %37
  %55 = mul i64 %54, -5435081209227447693         ; 3 uses
  %56 = xor i64 %55, %38                          ; 2 uses
  %57 = icmp sgt i64 %1, 64
  br i1 %57, label %58, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

58:                                               ; preds = %40
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.049.val.i.3 = load i64, ptr %59, align 1
  %60 = mul i64 %.049.val.i.3, -5435081209227447693 ; 2 uses
  %61 = lshr i64 %60, 47
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, -5435081209227447693
  %64 = xor i64 %63, %47
  %65 = mul i64 %64, -5435081209227447693         ; 3 uses
  %66 = xor i64 %65, %48                          ; 2 uses
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.3 = load i64, ptr %67, align 1
  %68 = mul i64 %.val.i.3, -5435081209227447693   ; 2 uses
  %69 = lshr i64 %68, 47
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -5435081209227447693
  %72 = xor i64 %71, %55
  %73 = mul i64 %72, -5435081209227447693         ; 3 uses
  %74 = xor i64 %73, %56                          ; 2 uses
  %75 = icmp sgt i64 %1, 80
  br i1 %75, label %76, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

76:                                               ; preds = %58
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.049.val.i.4 = load i64, ptr %77, align 1
  %78 = mul i64 %.049.val.i.4, -5435081209227447693 ; 2 uses
  %79 = lshr i64 %78, 47
  %80 = xor i64 %79, %78
  %81 = mul i64 %80, -5435081209227447693
  %82 = xor i64 %81, %65
  %83 = mul i64 %82, -5435081209227447693         ; 3 uses
  %84 = xor i64 %83, %66                          ; 2 uses
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.4 = load i64, ptr %85, align 1
  %86 = mul i64 %.val.i.4, -5435081209227447693   ; 2 uses
  %87 = lshr i64 %86, 47
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -5435081209227447693
  %90 = xor i64 %89, %73
  %91 = mul i64 %90, -5435081209227447693         ; 3 uses
  %92 = xor i64 %91, %74                          ; 2 uses
  %93 = icmp sgt i64 %1, 96
  br i1 %93, label %bb.k, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

bb.k:                                             ; preds = %76
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.049.val.i.a = load i64, ptr %94, align 1
  %i.cu = mul i64 %.049.val.i.a, -5435081209227447693 ; 2 uses
  %i.cv = lshr i64 %i.cu, 47
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -5435081209227447693
  %i.cy = xor i64 %i.cx, %83
  %i.cz = mul i64 %i.cy, -5435081209227447693     ; 3 uses
  %i.da = xor i64 %i.cz, %84                      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.a = load i64, ptr %i.db, align 1
  %i.dc = mul i64 %.val.i.a, -5435081209227447693 ; 2 uses
  %i.dd = lshr i64 %i.dc, 47
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, -5435081209227447693
  %i.dg = xor i64 %i.df, %91
  %i.dh = mul i64 %i.dg, -5435081209227447693     ; 3 uses
  %i.di = xor i64 %i.dh, %92                      ; 2 uses
  %95 = icmp sgt i64 %1, 112
  br i1 %95, label %96, label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

96:                                               ; preds = %bb.k
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.049.val.i.6 = load i64, ptr %97, align 1
  %98 = mul i64 %.049.val.i.6, -5435081209227447693 ; 2 uses
  %99 = lshr i64 %98, 47
  %100 = xor i64 %99, %98
  %101 = mul i64 %100, -5435081209227447693
  %102 = xor i64 %101, %i.cz
  %103 = mul i64 %102, -5435081209227447693       ; 2 uses
  %104 = xor i64 %103, %i.da
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.6 = load i64, ptr %105, align 1
  %106 = mul i64 %.val.i.6, -5435081209227447693  ; 2 uses
  %107 = lshr i64 %106, 47
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, -5435081209227447693
  %110 = xor i64 %109, %i.dh
  %111 = mul i64 %110, -5435081209227447693       ; 2 uses
  %112 = xor i64 %111, %i.di
  br label %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit

_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit: ; preds = %bb.j, %22, %40, %58, %76, %bb.k, %96, %bb.i
  %.148.i = phi i64 [ %i.i, %bb.i ], [ %16, %bb.j ], [ %29, %22 ], [ %47, %40 ], [ %65, %58 ], [ %83, %76 ], [ %i.cz, %bb.k ], [ %103, %96 ]
  %.146.i = phi i64 [ %i.d, %bb.i ], [ %i.cp, %bb.j ], [ %30, %22 ], [ %48, %40 ], [ %66, %58 ], [ %84, %76 ], [ %i.da, %bb.k ], [ %104, %96 ] ; 2 uses
  %.144.i = phi i64 [ %i.bt, %bb.i ], [ %i.ct, %bb.j ], [ %37, %22 ], [ %55, %40 ], [ %73, %58 ], [ %91, %76 ], [ %i.dh, %bb.k ], [ %111, %96 ] ; 2 uses
  %.1.i = phi i64 [ %i.bx, %bb.i ], [ %20, %bb.j ], [ %38, %22 ], [ %56, %40 ], [ %74, %58 ], [ %92, %76 ], [ %i.di, %bb.k ], [ %112, %96 ]
  %i.dj = xor i64 %.144.i, %.148.i
  %i.dk = mul i64 %i.dj, -7070675565921424023     ; 2 uses
  %i.dl = lshr i64 %i.dk, 47
  %i.dm = xor i64 %.144.i, %i.dl
  %i.dn = xor i64 %i.dm, %i.dk
  %i.do = mul i64 %i.dn, -7070675565921424023     ; 2 uses
  %i.dp = lshr i64 %i.do, 47
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = mul i64 %i.dq, -7070675565921424023     ; 2 uses
  %i.ds = xor i64 %.1.i, %.146.i
  %i.dt = mul i64 %i.ds, -7070675565921424023     ; 2 uses
  %i.du = lshr i64 %i.dt, 47
  %i.dv = xor i64 %.146.i, %i.du
  %i.dw = xor i64 %i.dv, %i.dt
  %i.dx = mul i64 %i.dw, -7070675565921424023     ; 2 uses
  %i.dy = lshr i64 %i.dx, 47
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, -7070675565921424023
  %i.eb = xor i64 %i.ea, %i.dr                    ; 2 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.ec = mul i64 %1, -5435081209227447693        ; 2 uses
  %i.ed = xor i64 %i.d, -5435081209227447693      ; 2 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 15)
  %i.ef = mul i64 %i.ee, -5435081209227447693
  %.val71 = load i64, ptr %0, align 1
  %i.eg = add i64 %.val71, %i.ef                  ; 3 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 22)
  %i.ei = mul i64 %i.eh, -5435081209227447693
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val70 = load i64, ptr %i.ej, align 1
  %i.ek = add i64 %i.ei, %.val70
  %i.el = add i64 %i.ec, %i.d                     ; 2 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 29)
  %i.en = mul i64 %i.em, -5435081209227447693
  %i.eo = add i64 %i.en, %i.b
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val69 = load i64, ptr %i.ep, align 1
  %i.eq = add i64 %.val69, %i.b                   ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 11)
  %i.es = mul i64 %i.er, -5435081209227447693
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0177 = phi i64 [ %i.ec, %bb.l ], [ %i.gz, %bb.m ]
  %.0175 = phi i64 [ %i.b, %bb.l ], [ %i.hf, %bb.m ]
  %.sroa.16.0 = phi i64 [ %i.es, %bb.l ], [ %i.ih, %bb.m ] ; 2 uses
  %.sroa.0130.0 = phi i64 [ %i.eo, %bb.l ], [ %i.if, %bb.m ] ; 2 uses
  %.sroa.16160.0 = phi i64 [ %i.ek, %bb.l ], [ %i.ht, %bb.m ] ; 2 uses
  %.sroa.0153.0 = phi i64 [ %i.eg, %bb.l ], [ %i.hr, %bb.m ] ; 2 uses
  %.056 = phi ptr [ %0, %bb.l ], [ %i.ii, %bb.m ] ; 17 uses
  %.055 = phi i64 [ %1, %bb.l ], [ %i.ij, %bb.m ] ; 2 uses
  %.053 = phi i64 [ %i.d, %bb.l ], [ %i.hc, %bb.m ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %.val68 = load i64, ptr %i.et, align 1          ; 2 uses
  %i.eu = add i64 %.sroa.0153.0, %.0175
  %i.ev = add i64 %i.eu, %.053
  %i.ew = add i64 %i.ev, %.val68                  ; 2 uses
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 27)
  %i.ey = mul i64 %i.ex, -5435081209227447693
  %i.ez = add i64 %.053, %.sroa.16160.0
  %i.fa = getelementptr inbounds nuw i8, ptr %.056, i64 48
  %.val67 = load i64, ptr %i.fa, align 1          ; 2 uses
  %i.fb = add i64 %i.ez, %.val67                  ; 2 uses
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 22)
  %i.fd = mul i64 %i.fc, -5435081209227447693
  %i.fe = xor i64 %i.ey, %.sroa.16.0              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.056, i64 40
  %.val66 = load i64, ptr %i.ff, align 1          ; 2 uses
  %i.fg = add i64 %.val66, %.sroa.0153.0
  %i.fh = add i64 %i.fg, %i.fd                    ; 3 uses
  %i.fi = add i64 %.sroa.0130.0, %.0177           ; 2 uses
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 31)
  %i.fk = mul i64 %i.fj, -5435081209227447693     ; 2 uses
  %i.fl = mul i64 %.sroa.16160.0, -5435081209227447693
  %.val7.i = load i64, ptr %.056, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %.val5.i = load i64, ptr %i.fm, align 1         ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %.val.i72 = load i64, ptr %i.fn, align 1        ; 2 uses
  %i.fo = add i64 %.val7.i, %i.fl                 ; 3 uses
  %i.fp = add i64 %i.fo, %.sroa.0130.0
  %i.fq = add i64 %i.fp, %i.fe
  %i.fr = add i64 %i.fq, %.val.i72                ; 2 uses
  %i.fs = tail call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 43)
  %i.ft = add i64 %i.fo, %.val68
  %i.fu = add i64 %i.ft, %.val5.i                 ; 3 uses
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 20)
  %i.fw = add i64 %i.fu, %.val.i72                ; 2 uses
  %i.fx = add i64 %i.fv, %i.fo
  %i.fy = add i64 %i.fx, %i.fs                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.ga = add i64 %i.fk, %.sroa.16.0
  %i.gb = add i64 %i.fh, %.val5.i
  %.val7.i73 = load i64, ptr %i.fz, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.056, i64 56
  %.val.i76 = load i64, ptr %i.gc, align 1        ; 2 uses
  %i.gd = add i64 %i.ga, %.val7.i73               ; 3 uses
  %i.ge = add i64 %i.gb, %i.gd
  %i.gf = add i64 %i.ge, %.val.i76                ; 2 uses
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 43)
  %i.gh = add i64 %i.gd, %.val66
  %i.gi = add i64 %i.gh, %.val67                  ; 3 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 20)
  %i.gk = add i64 %i.gi, %.val.i76                ; 2 uses
  %i.gl = add i64 %i.gj, %i.gd
  %i.gm = add i64 %i.gl, %i.gg                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.056, i64 64
  %i.go = add i64 %i.fh, %i.fk
  %i.gp = add i64 %i.go, %i.fw
  %i.gq = getelementptr inbounds nuw i8, ptr %.056, i64 72
  %.val64 = load i64, ptr %i.gq, align 1          ; 2 uses
  %i.gr = add i64 %i.gp, %.val64                  ; 2 uses
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 27)
  %i.gt = mul i64 %i.gs, -5435081209227447693
  %i.gu = add i64 %i.fy, %i.fh
  %i.gv = getelementptr inbounds nuw i8, ptr %.056, i64 112
  %.val63 = load i64, ptr %i.gv, align 1          ; 2 uses
  %i.gw = add i64 %i.gu, %.val63                  ; 2 uses
  %i.gx = tail call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 22)
  %i.gy = mul i64 %i.gx, -5435081209227447693
  %i.gz = xor i64 %i.gt, %i.gm                    ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.056, i64 104
  %.val62 = load i64, ptr %i.ha, align 1          ; 2 uses
  %i.hb = add i64 %.val62, %i.fw
  %i.hc = add i64 %i.hb, %i.gy                    ; 3 uses
  %i.hd = add i64 %i.gk, %i.fe                    ; 2 uses
  %i.he = tail call i64 @llvm.fshl.i64(i64 %i.hd, i64 %i.hd, i64 31)
  %i.hf = mul i64 %i.he, -5435081209227447693     ; 3 uses
  %i.hg = mul i64 %i.fy, -5435081209227447693
  %i.hh = add i64 %i.gz, %i.gk
  %.val7.i79 = load i64, ptr %i.gn, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.056, i64 80
  %.val5.i81 = load i64, ptr %i.hi, align 1       ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.056, i64 88
  %.val.i82 = load i64, ptr %i.hj, align 1        ; 2 uses
  %i.hk = add i64 %.val7.i79, %i.hg               ; 3 uses
  %i.hl = add i64 %i.hh, %i.hk
  %i.hm = add i64 %i.hl, %.val.i82                ; 2 uses
  %i.hn = tail call i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 43)
  %i.ho = add i64 %i.hk, %.val64
  %i.hp = add i64 %i.ho, %.val5.i81               ; 3 uses
  %i.hq = tail call i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 20)
  %i.hr = add i64 %i.hp, %.val.i82                ; 3 uses
  %i.hs = add i64 %i.hq, %i.hk
  %i.ht = add i64 %i.hs, %i.hn                    ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.056, i64 96
  %i.hv = add i64 %i.hf, %i.gm
  %i.hw = add i64 %.val5.i81, %i.hc
  %.val7.i85 = load i64, ptr %i.hu, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.056, i64 120
  %.val.i88 = load i64, ptr %i.hx, align 1        ; 2 uses
  %i.hy = add i64 %i.hv, %.val7.i85               ; 3 uses
  %i.hz = add i64 %i.hw, %i.hy
  %i.ia = add i64 %i.hz, %.val.i88                ; 2 uses
  %i.ib = tail call i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 43)
  %i.ic = add i64 %i.hy, %.val62
  %i.id = add i64 %i.ic, %.val63                  ; 3 uses
  %i.ie = tail call i64 @llvm.fshl.i64(i64 %i.id, i64 %i.id, i64 20)
  %i.if = add i64 %i.id, %.val.i88                ; 4 uses
  %i.ig = add i64 %i.ie, %i.hy
  %i.ih = add i64 %i.ig, %i.ib                    ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.056, i64 128
  %i.ij = add i64 %.055, -128                     ; 4 uses
  %i.ik = icmp ugt i64 %i.ij, 127
  br i1 %i.ik, label %bb.m, label %bb.n, !prof !24, !llvm.loop !22

bb.n:                                             ; preds = %bb.m
  %i.il = add i64 %i.hr, %i.gz                    ; 2 uses
  %i.im = tail call i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 15)
  %i.in = mul i64 %i.im, -4348849565147123417
  %i.io = add i64 %i.in, %i.hf                    ; 2 uses
  %i.ip = mul i64 %i.hc, -4348849565147123417
  %i.iq = tail call i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 27)
  %i.ir = add i64 %i.iq, %i.ip                    ; 2 uses
  %i.is = mul i64 %i.gz, -4348849565147123417
  %i.it = tail call i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 37)
  %i.iu = add i64 %i.it, %i.is                    ; 2 uses
  %i.iv = mul i64 %i.if, 9                        ; 2 uses
  %storemerge190 = mul i64 %i.hr, -4348849565147123417 ; 2 uses
  %.not = icmp eq i64 %i.ij, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.iw = and i64 %1, -128
  %i.ix = getelementptr i8, ptr %0, i64 %i.iw
  %scevgep = getelementptr i8, ptr %i.ix, i64 -128
  %i.iy = getelementptr i8, ptr %scevgep, i64 %.055
  br label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.1178.lcssa = phi i64 [ %i.iu, %bb.n ], [ %i.ks, %bb.o ]
  %.1176.lcssa = phi i64 [ %i.io, %bb.n ], [ %i.kq, %bb.o ]
  %.sroa.16.1.lcssa = phi i64 [ %i.ih, %bb.n ], [ %i.kt, %bb.o ] ; 3 uses
  %.sroa.0130.1.lcssa = phi i64 [ %i.iv, %bb.n ], [ %i.ko, %bb.o ] ; 2 uses
  %.sroa.16160.1.lcssa = phi i64 [ %i.ht, %bb.n ], [ %i.lg, %bb.o ] ; 2 uses
  %.1.lcssa = phi i64 [ %i.ir, %bb.n ], [ %i.kk, %bb.o ]
  %storemerge.lcssa = phi i64 [ %storemerge190, %bb.n ], [ %storemerge, %bb.o ] ; 2 uses
  %i.iz = xor i64 %storemerge.lcssa, %.1176.lcssa
  %i.ja = mul i64 %i.iz, -7070675565921424023     ; 2 uses
  %i.jb = lshr i64 %i.ja, 47
  %i.jc = xor i64 %storemerge.lcssa, %i.jb
  %i.jd = xor i64 %i.jc, %i.ja
  %i.je = mul i64 %i.jd, -7070675565921424023     ; 2 uses
  %i.jf = lshr i64 %i.je, 47
  %i.jg = xor i64 %i.jf, %i.je
  %i.jh = mul i64 %i.jg, -7070675565921424023     ; 2 uses
  %i.ji = add i64 %.1.lcssa, %.1178.lcssa
  %i.jj = xor i64 %i.ji, %.sroa.0130.1.lcssa
  %i.jk = mul i64 %i.jj, -7070675565921424023     ; 2 uses
  %i.jl = lshr i64 %i.jk, 47
  %i.jm = xor i64 %.sroa.0130.1.lcssa, %i.jl
  %i.jn = xor i64 %i.jm, %i.jk
  %i.jo = mul i64 %i.jn, -7070675565921424023     ; 2 uses
  %i.jp = lshr i64 %i.jo, 47
  %i.jq = xor i64 %i.jp, %i.jo                    ; 2 uses
  %i.jr = mul i64 %i.jq, -7070675565921424023
  %i.js = add i64 %i.jh, %.sroa.16160.1.lcssa
  %i.jt = xor i64 %i.js, %.sroa.16.1.lcssa
  %i.ju = mul i64 %i.jt, -7070675565921424023     ; 2 uses
  %i.jv = lshr i64 %i.ju, 47
  %i.jw = xor i64 %.sroa.16.1.lcssa, %i.jv
  %i.jx = xor i64 %i.jw, %i.ju
  %i.jy = mul i64 %i.jx, -7070675565921424023     ; 2 uses
  %i.jz = lshr i64 %i.jy, 47
  %i.ka = xor i64 %i.jz, %i.jy
  %i.kb = add i64 %i.ka, %i.jq
  %i.kc = mul i64 %i.kb, -7070675565921424023
  %i.kd = add i64 %i.jh, %.sroa.16.1.lcssa
  %i.ke = add i64 %i.jr, %.sroa.16160.1.lcssa     ; 2 uses
  %i.kf = xor i64 %i.ke, %i.kd
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %storemerge198 = phi i64 [ %storemerge190, %.lr.ph ], [ %storemerge, %bb.o ] ; 2 uses
  %.0197 = phi i64 [ 0, %.lr.ph ], [ %i.kg, %bb.o ] ; 2 uses
  %.1196 = phi i64 [ %i.ir, %.lr.ph ], [ %i.kk, %bb.o ]
  %.sroa.16160.1195 = phi i64 [ %i.ht, %.lr.ph ], [ %i.lg, %bb.o ] ; 2 uses
  %.sroa.0130.1194 = phi i64 [ %i.iv, %.lr.ph ], [ %i.ko, %bb.o ]
  %.sroa.16.1193 = phi i64 [ %i.ih, %.lr.ph ], [ %i.kt, %bb.o ] ; 2 uses
  %.1176192 = phi i64 [ %i.io, %.lr.ph ], [ %i.kq, %bb.o ] ; 2 uses
  %.1178191 = phi i64 [ %i.iu, %.lr.ph ], [ %i.ks, %bb.o ]
  %i.kg = add nuw nsw i64 %.0197, 32              ; 2 uses
  %i.kh = add i64 %.1196, %.1176192               ; 2 uses
  %i.ki = tail call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 22)
  %i.kj = mul i64 %i.ki, -4348849565147123417
  %i.kk = add i64 %i.kj, %.sroa.16160.1195        ; 2 uses
  %i.kl = sub nuw nsw i64 -32, %.0197
  %i.km = getelementptr inbounds i8, ptr %i.iy, i64 %i.kl ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %.val60 = load i64, ptr %i.kn, align 1          ; 2 uses
  %i.ko = add i64 %.val60, %.sroa.0130.1194       ; 3 uses
  %i.kp = mul i64 %.1176192, -4348849565147123417
  %i.kq = add i64 %i.ko, %i.kp                    ; 2 uses
  %.val = load i64, ptr %i.km, align 1            ; 2 uses
  %i.kr = add i64 %.sroa.16.1193, %.1178191
  %i.ks = add i64 %i.kr, %.val                    ; 3 uses
  %i.kt = add i64 %storemerge198, %.sroa.16.1193  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.val6.i92 = load i64, ptr %i.ku, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %.val.i94 = load i64, ptr %i.kv, align 1        ; 2 uses
  %i.kw = add i64 %.val, %storemerge198
  %i.kx = add i64 %i.kw, %i.ks                    ; 3 uses
  %i.ky = add i64 %.val.i94, %.sroa.16160.1195
  %i.kz = add i64 %i.ky, %i.kx                    ; 2 uses
  %i.la = tail call i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 43)
  %i.lb = add i64 %.val6.i92, %.val60
  %i.lc = add i64 %i.lb, %i.kx                    ; 3 uses
  %i.ld = tail call i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 20)
  %i.le = add i64 %i.lc, %.val.i94
  %i.lf = add i64 %i.ld, %i.kx
  %i.lg = add i64 %i.lf, %i.la                    ; 2 uses
  %storemerge = mul i64 %i.le, -4348849565147123417 ; 2 uses
  %i.lh = icmp samesign ult i64 %i.kg, %i.ij
  br i1 %i.lh, label %bb.o, label %._crit_edge, !llvm.loop !23

bb.p:                                             ; preds = %._crit_edge, %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit
  %.sink252 = phi i64 [ %i.kf, %._crit_edge ], [ %i.eb, %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit ]
  %.sink = phi i64 [ %i.ke, %._crit_edge ], [ %i.dr, %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit ]
  %.sink244 = phi i64 [ %i.kc, %._crit_edge ], [ %i.eb, %_ZN5folly8external8farmhash10farmhashccL10CityMurmurEPKcmo.exit ]
  %i.li = mul i64 %.sink252, -7070675565921424023 ; 2 uses
  %i.lj = lshr i64 %i.li, 47
  %i.lk = xor i64 %.sink, %i.lj
  %i.ll = xor i64 %i.lk, %i.li
  %i.lm = mul i64 %i.ll, -7070675565921424023     ; 2 uses
  %i.ln = lshr i64 %i.lm, 47
  %i.lo = xor i64 %i.ln, %i.lm
  %i.lp = mul i64 %i.lo, -7070675565921424023
  %i.lq = zext i64 %.sink244 to i128
  %i.lr = zext i64 %i.lp to i128
  %i.ls = shl nuw i128 %i.lr, 64
  %i.lt = or disjoint i128 %i.ls, %i.lq
  ret i128 %i.lt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i128 @_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = add i64 %1, -16
  %.val6.i = load i64, ptr %0, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.d, align 1
  %i.e = add i64 %.val.i, -4348849565147123417
  %i.f = zext i64 %.val6.i to i128
  %i.g = zext i64 %i.e to i128
  %i.h = shl nuw i128 %i.g, 64
  %i.i = or disjoint i128 %i.h, %i.f
  %i.j = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef nonnull readonly %i.b, i64 noundef %i.c, i128 noundef %i.i)
  br label %_ZN5folly8external8farmhash10farmhashccL11CityHash128EPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef readonly %0, i64 noundef %1, i128 noundef -100259552086446564280765948702561193689)
  br label %_ZN5folly8external8farmhash10farmhashccL11CityHash128EPKcm.exit

_ZN5folly8external8farmhash10farmhashccL11CityHash128EPKcm.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i128 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i128 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash6Hash32EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly8external8farmhash10farmhashmk6Hash32EPKcm(ptr noundef %0, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash14Hash32WithSeedEPKcmj(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly8external8farmhash10farmhashmk14Hash32WithSeedEPKcmj(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash6Hash64EPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm(ptr noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash4HashEPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash14Hash64WithSeedEPKcmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.b = add i64 %i.a, 7286425919675154353
  %i.c = xor i64 %i.b, %2
  %i.d = mul i64 %i.c, -7070675565921424023       ; 2 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %2, %i.e
  %i.g = xor i64 %i.f, %i.d
  %i.h = mul i64 %i.g, -7070675565921424023       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -7070675565921424023
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash15Hash64WithSeedsEPKcmmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.b = sub i64 %i.a, %2
  %i.c = xor i64 %i.b, %3
  %i.d = mul i64 %i.c, -7070675565921424023       ; 2 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %3, %i.e
  %i.g = xor i64 %i.f, %i.d
  %i.h = mul i64 %i.g, -7070675565921424023       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -7070675565921424023
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i128 @_ZN5folly8external8farmhash7Hash128EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = add i64 %1, -16
  %.val6.i.i = load i64, ptr %0, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.d, align 1
  %i.e = add i64 %.val.i.i, -4348849565147123417
  %i.f = zext i64 %.val6.i.i to i128
  %i.g = zext i64 %i.e to i128
  %i.h = shl nuw i128 %i.g, 64
  %i.i = or disjoint i128 %i.h, %i.f
  %i.j = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef nonnull readonly %i.b, i64 noundef %i.c, i128 noundef %i.i)
  br label %_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef readonly %0, i64 noundef %1, i128 noundef -100259552086446564280765948702561193689)
  br label %_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit

_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i128 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i128 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i128 @_ZN5folly8external8farmhash15Hash128WithSeedEPKcmo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i128 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef %0, i64 noundef %1, i128 noundef %2)
  ret i128 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash13Fingerprint32EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly8external8farmhash10farmhashmk6Hash32EPKcm(ptr noundef %0, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash13Fingerprint64EPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i128 @_ZN5folly8external8farmhash14Fingerprint128EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = add i64 %1, -16
  %.val6.i.i = load i64, ptr %0, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.d, align 1
  %i.e = add i64 %.val.i.i, -4348849565147123417
  %i.f = zext i64 %.val6.i.i to i128
  %i.g = zext i64 %i.e to i128
  %i.h = shl nuw i128 %i.g, 64
  %i.i = or disjoint i128 %i.h, %i.f
  %i.j = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef nonnull readonly %i.b, i64 noundef %i.c, i128 noundef %i.i)
  br label %_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i128 @_ZN5folly8external8farmhash10farmhashcc19CityHash128WithSeedEPKcmo(ptr noundef readonly %0, i64 noundef %1, i128 noundef -100259552086446564280765948702561193689)
  br label %_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit

_ZN5folly8external8farmhash10farmhashcc14Fingerprint128EPKcm.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i128 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i128 %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"bool", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
