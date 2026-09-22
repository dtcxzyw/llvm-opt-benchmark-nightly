Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crypt?download=true
inline.NumInlined: 110
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9CryptData14EncryptBlock20EPh:bb.a
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = or disjoint i32 %i.ej, %i.eq
  %i.es = lshr i32 %i.dw, 24
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !12
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 24
  %i.ey = or disjoint i32 %i.er, %i.ex
  %i.ez = xor i32 %i.ey, %.04041                  ; 2 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %.03843, i32 %.03843, i32 17)
  %i.fb = xor i32 %.03744, %i.fa
  %i.fc = add i32 %i.dv, %i.fb                    ; 4 uses
  %i.fd = and i32 %i.fc, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !12
  %i.fh = zext i8 %i.fg to i32
  %i.fi = lshr i32 %i.fc, 8
  %i.fj = and i32 %i.fi, 255
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !12
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = or disjoint i32 %i.fo, %i.fh
  %i.fq = lshr i32 %i.fc, 16
  %i.fr = and i32 %i.fq, 255
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !12
  %i.fv = zext i8 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 16
  %i.fx = or disjoint i32 %i.fp, %i.fw
  %i.fy = lshr i32 %i.fc, 24
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !12
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 24
  %i.ge = or disjoint i32 %i.fx, %i.gd
  %i.gf = xor i32 %i.ge, %.03942                  ; 2 uses
  %i.gg = add nuw nsw i32 %.045, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gg, 32
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9CryptData9UpdKeys20EPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2492 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2500 ; 5 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !16
  %.promoted10 = load i32, ptr %i.c, align 4, !tbaa !16
  %.promoted11 = load i32, ptr %i.d, align 8, !tbaa !16
  %.promoted12 = load i32, ptr %i.e, align 4, !tbaa !16
  %i.f = load i8, ptr %1, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = xor i32 %.promoted, %i.i                 ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = xor i32 %.promoted10, %i.o               ; 2 uses
  store i32 %i.p, ptr %i.c, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = xor i32 %.promoted11, %i.u               ; 2 uses
  store i32 %i.v, ptr %i.d, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = xor i32 %.promoted12, %i.aa             ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = xor i32 %i.j, %i.ag                     ; 2 uses
  store i32 %i.ah, ptr %i.b, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = xor i32 %i.p, %i.am                     ; 2 uses
  store i32 %i.an, ptr %i.c, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = xor i32 %i.v, %i.as                     ; 2 uses
  store i32 %i.at, ptr %i.d, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16
  %i.az = xor i32 %i.ab, %i.ay                    ; 2 uses
  store i32 %i.az, ptr %i.e, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = xor i32 %i.ah, %i.be                    ; 2 uses
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = xor i32 %i.an, %i.bk                    ; 2 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = xor i32 %i.at, %i.bq                    ; 2 uses
  store i32 %i.br, ptr %i.d, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = xor i32 %i.az, %i.bw                    ; 2 uses
  store i32 %i.bx, ptr %i.e, align 4, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16
  %i.cd = xor i32 %i.bf, %i.cc
  store i32 %i.cd, ptr %i.b, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  %i.cj = xor i32 %i.bl, %i.ci
  store i32 %i.cj, ptr %i.c, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16
  %i.cp = xor i32 %i.br, %i.co
  store i32 %i.cp, ptr %i.d, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !16
  %i.cv = xor i32 %i.bx, %i.cu
  store i32 %i.cv, ptr %i.e, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN9CryptData14DecryptBlock20EPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = xor i32 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2492 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = xor i32 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16
  %i.n = xor i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2500 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = xor i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 8 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.u = lshr i32 %i.p, 24
  %i.v = lshr i32 %i.p, 16
  %i.w = lshr i32 %i.p, 8
  %i.x = lshr i32 %i.k, 24
  %i.y = lshr i32 %i.k, 16
  %i.z = lshr i32 %i.k, 8
  %i.aa = lshr i32 %i.f, 24
  %i.ab = lshr i32 %i.f, 16
  %i.ac = lshr i32 %i.f, 8
  %i.ad = lshr i32 %i.a, 24
  %i.ae = lshr i32 %i.a, 16
  %i.af = lshr i32 %i.a, 8
  %i.ag = xor i32 %i.er, %i.c
  store i32 %i.ag, ptr %1, align 4, !tbaa !16
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !16
  %i.ai = xor i32 %i.ah, %i.fx
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !16
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !16
  %i.ak = xor i32 %i.aj, %.03843
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !16
  %i.al = load i32, ptr %i.q, align 4, !tbaa !16
  %i.am = xor i32 %i.al, %.03744
  store i32 %i.am, ptr %i.o, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 16 uses
  %.promoted.i = load i32, ptr %i.b, align 8, !tbaa !16
  %.promoted10.i = load i32, ptr %i.g, align 4, !tbaa !16
  %.promoted11.i = load i32, ptr %i.l, align 8, !tbaa !16
  %.promoted12.i = load i32, ptr %i.q, align 4, !tbaa !16
  %i.ao = and i32 %i.a, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = xor i32 %i.ar, %.promoted.i
  %i.at = and i32 %i.af, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = xor i32 %i.aw, %.promoted10.i
  %i.ay = and i32 %i.ae, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = xor i32 %i.bb, %.promoted11.i
  %2 = zext nneg i32 %i.ad to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = xor i32 %i.be, %.promoted12.i
  %i.bg = and i32 %i.f, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16
  %i.bk = xor i32 %i.bj, %i.as
  %i.bl = and i32 %i.ac, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = xor i32 %i.bo, %i.ax
  %i.bq = and i32 %i.ab, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !16
  %i.bu = xor i32 %i.bt, %i.bc
  %3 = zext nneg i32 %i.aa to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %3
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = xor i32 %i.bw, %i.bf
  %i.by = and i32 %i.k, 255
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !16
  %i.cc = xor i32 %i.cb, %i.bk
  %i.cd = and i32 %i.z, 255
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ch = xor i32 %i.cg, %i.bp
  %i.ci = and i32 %i.y, 255
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16
  %i.cm = xor i32 %i.cl, %i.bu
  %4 = zext nneg i32 %i.x to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16
  %i.cp = xor i32 %i.co, %i.bx
  %i.cq = and i32 %i.p, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !16
  %i.cu = xor i32 %i.ct, %i.cc
  store i32 %i.cu, ptr %i.b, align 8, !tbaa !16
  %i.cv = and i32 %i.w, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.cz = xor i32 %i.cy, %i.ch
  store i32 %i.cz, ptr %i.g, align 4, !tbaa !16
  %i.da = and i32 %i.v, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = xor i32 %i.dd, %i.cm
  store i32 %i.de, ptr %i.l, align 8, !tbaa !16
  %5 = zext nneg i32 %i.u to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %5
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !16
  %i.dh = xor i32 %i.dg, %i.cp
  store i32 %i.dh, ptr %i.q, align 4, !tbaa !16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.045 = phi i32 [ 31, %bb.a ], [ %i.fy, %bb.c ] ; 3 uses
  %.03744 = phi i32 [ %i.s, %bb.a ], [ %i.fx, %bb.c ] ; 5 uses
  %.03843 = phi i32 [ %i.n, %bb.a ], [ %i.er, %bb.c ] ; 5 uses
  %.03942 = phi i32 [ %i.i, %bb.a ], [ %.03744, %bb.c ]
  %.04041 = phi i32 [ %i.d, %bb.a ], [ %.03843, %bb.c ]
  %i.di = tail call i32 @llvm.fshl.i32(i32 %.03744, i32 %.03744, i32 11)
  %i.dj = add i32 %i.di, %.03843
  %i.dk = and i32 %.045, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16 ; 2 uses
  %i.do = xor i32 %i.dn, %i.dj                    ; 4 uses
  %i.dp = and i32 %i.do, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.dt = zext i8 %i.ds to i32
  %i.du = lshr i32 %i.do, 8
  %i.dv = and i32 %i.du, 255
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !12
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.ea, %i.dt
  %i.ec = lshr i32 %i.do, 16
  %i.ed = and i32 %i.ec, 255
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !12
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 16
  %i.ej = or disjoint i32 %i.eb, %i.ei
  %i.ek = lshr i32 %i.do, 24
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !12
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 24
  %i.eq = or disjoint i32 %i.ej, %i.ep
  %i.er = xor i32 %i.eq, %.04041                  ; 2 uses
  %i.es = tail call i32 @llvm.fshl.i32(i32 %.03843, i32 %.03843, i32 17)
  %i.et = xor i32 %.03744, %i.es
  %i.eu = add i32 %i.dn, %i.et                    ; 4 uses
  %i.ev = and i32 %i.eu, 255
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !12
  %i.ez = zext i8 %i.ey to i32
  %i.fa = lshr i32 %i.eu, 8
  %i.fb = and i32 %i.fa, 255
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !12
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 8
  %i.fh = or disjoint i32 %i.fg, %i.ez
  %i.fi = lshr i32 %i.eu, 16
  %i.fj = and i32 %i.fi, 255
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !12
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 16
  %i.fp = or disjoint i32 %i.fh, %i.fo
  %i.fq = lshr i32 %i.eu, 24
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !12
  %i.fu = zext i8 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 24
  %i.fw = or disjoint i32 %i.fp, %i.fv
  %i.fx = xor i32 %i.fw, %.03942                  ; 2 uses
  %i.fy = add nsw i32 %.045, -1
  %.not = icmp eq i32 %.045, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !47
}

; Function Attrs: mustprogress uwtable
define void @_ZN9CryptData8SetKey30EbP11SecPasswordPKwPKh(ptr noundef nonnull align 8 dereferenceable(2516) %0, i1 noundef zeroext %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 23 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [1032 x i8], align 16             ; 6 uses
  %5 = alloca %struct.sha1_context, align 8       ; 7 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %6 = alloca %struct.sha1_context, align 8       ; 4 uses
  %i.e = alloca [5 x i32], align 16               ; 4 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %cond = icmp eq ptr %4, null
  %i.g = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %2) ; 2 uses
  br i1 %cond, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !50, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.split.us.1, label %.split51.us

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.l, label %bb.c, label %.split.us.2

bb.c:                                             ; preds = %.split.us.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50, !range !29, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split.us.2, label %.split51.us

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.q, label %bb.d, label %.split.us.3

bb.d:                                             ; preds = %.split.us.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i8, ptr %i.r, align 8, !tbaa !50, !range !29, !noundef !30
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split.us.3, label %.split51.us

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.split.us.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = load i8, ptr %i.w, align 8, !tbaa !50, !range !29, !noundef !30
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.split51.us

bb.f:                                             ; preds = %.split.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split.1

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = load i64, ptr %4, align 1
  %i.af = icmp ne i64 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.split51.us, label %.split.1

.split51.us:                                      ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.b, %bb.c, %bb.d, %bb.e
  %.us-phi = phi ptr [ %i.u, %bb.e ], [ %0, %bb.b ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %0, %bb.g ], [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @_Z11SecHideDataPvmbb(ptr noundef nonnull %i.a, i64 noundef 16, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.us-phi, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.u

.split.1:                                         ; preds = %.split.preheader, %bb.f, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.al, label %bb.h, label %.split.2

bb.h:                                             ; preds = %.split.1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i8, ptr %i.am, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.split.2

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = load i64, ptr %4, align 1
  %i.as = icmp ne i64 %i.aq, %i.ar
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.split51.us, label %.split.2

.split.2:                                         ; preds = %bb.i, %bb.h, %.split.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aw = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.av, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.aw, label %bb.j, label %.split.3

bb.j:                                             ; preds = %.split.2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !50, !range !29, !noundef !30
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %.split.3
end_hunk_0
