Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail3ryu6detail3d2dEmj:bb.a
  %.not185294 = icmp eq i32 %.neg184293, %i.es
  br i1 %.not185294, label %.lr.ph299, label %.thread244

.lr.ph299:                                        ; preds = %.preheader, %.lr.ph299
  %i.et = phi i64 [ %i.fb, %.lr.ph299 ], [ %i.ep, %.preheader ] ; 3 uses
  %.3298 = phi i64 [ %i.eu, %.lr.ph299 ], [ %.1129.lcssa, %.preheader ] ; 2 uses
  %.6144297 = phi i1 [ %i.ez, %.lr.ph299 ], [ %.4142.lcssa, %.preheader ]
  %.2153296 = phi i8 [ %i.ex, %.lr.ph299 ], [ %.0151.lcssa, %.preheader ]
  %.2159295 = phi i32 [ %i.fa, %.lr.ph299 ], [ %.0157.lcssa, %.preheader ]
  %i.eu = udiv i64 %.3298, 10                     ; 3 uses
  %i.ev = trunc i64 %.3298 to i8
  %i.ew = trunc i64 %i.eu to i8
  %.neg186 = mul i8 %i.ew, -10
  %i.ex = add i8 %.neg186, %i.ev                  ; 2 uses
  %i.ey = icmp eq i8 %.2153296, 0
  %i.ez = select i1 %i.ey, i1 %.6144297, i1 false ; 2 uses
  %i.fa = add nuw nsw i32 %.2159295, 1            ; 2 uses
  %i.fb = udiv i64 %i.et, 10                      ; 2 uses
  %i.fc = trunc i64 %i.et to i32
  %i.fd = trunc i64 %i.fb to i32
  %.neg184 = mul i32 %i.fd, -10
  %i.fe = sub i32 0, %i.fc
  %.not185 = icmp eq i32 %.neg184, %i.fe
  br i1 %.not185, label %.lr.ph299, label %.thread244

.thread244:                                       ; preds = %.lr.ph299, %.preheader, %._crit_edge286
  %.5217 = phi i64 [ %.1213.lcssa, %._crit_edge286 ], [ %.1213.lcssa, %.preheader ], [ %i.et, %.lr.ph299 ]
  %.4161 = phi i32 [ %.0157.lcssa, %._crit_edge286 ], [ %.0157.lcssa, %.preheader ], [ %i.fa, %.lr.ph299 ]
  %.4155 = phi i8 [ %.0151.lcssa, %._crit_edge286 ], [ %.0151.lcssa, %.preheader ], [ %i.ex, %.lr.ph299 ] ; 2 uses
  %.8146 = phi i1 [ %.4142.lcssa, %._crit_edge286 ], [ %.4142.lcssa, %.preheader ], [ %i.ez, %.lr.ph299 ]
  %.5 = phi i64 [ %.1129.lcssa, %._crit_edge286 ], [ %.1129.lcssa, %.preheader ], [ %i.eu, %.lr.ph299 ] ; 3 uses
  %i.ff = icmp ne i8 %.4155, 5
  %not. = xor i1 %.8146, true
  %or.cond4 = select i1 %not., i1 true, i1 %i.ff
  %i.fg = trunc i64 %.5 to i1
  %or.cond = select i1 %or.cond4, i1 true, i1 %i.fg
  %i.fh = icmp ne i64 %.5, %.5217
  %or.cond6 = and i1 %i.e, %.4136.lcssa
  %or.cond188 = or i1 %or.cond6, %i.fh
  %i.fi = icmp ugt i8 %.4155, 4
  %i.fj = select i1 %or.cond, i1 %i.fi, i1 false
  %not.or.cond188 = xor i1 %or.cond188, true
  %narrow = select i1 %not.or.cond188, i1 true, i1 %i.fj
  %i.fk = zext i1 %narrow to i64
  %i.fl = add i64 %.5, %i.fk
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.fm = udiv i64 %.0221, 100                    ; 2 uses
  %i.fn = udiv i64 %.0212, 100                    ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fp = udiv i64 %.0128, 100                    ; 2 uses
  %i.fq = trunc i64 %.0128 to i32
  %i.fr = trunc i64 %i.fp to i32
  %.neg179 = mul i32 %i.fr, -100
  %i.fs = add i32 %.neg179, %i.fq
  %i.ft = icmp ugt i32 %i.fs, 49
  %i.fu = zext i1 %i.ft to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5226 = phi i64 [ %i.fm, %bb.l ], [ %.0221, %bb.k ]
  %.6218 = phi i64 [ %i.fn, %bb.l ], [ %.0212, %bb.k ] ; 2 uses
  %.5162 = phi i32 [ 2, %bb.l ], [ 0, %bb.k ]     ; 2 uses
  %.6 = phi i64 [ %i.fp, %bb.l ], [ %.0128, %bb.k ] ; 2 uses
  %.0127 = phi i64 [ %i.fu, %bb.l ], [ 0, %bb.k ]
  %i.fv = udiv i64 %.5226, 10                     ; 2 uses
  %i.fw = udiv i64 %.6218, 10                     ; 2 uses
  %.not269 = icmp samesign ugt i64 %i.fv, %i.fw
  br i1 %.not269, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.fx = phi i64 [ %i.gc, %.lr.ph ], [ %i.fw, %bb.m ] ; 2 uses
  %i.fy = phi i64 [ %i.gb, %.lr.ph ], [ %i.fv, %bb.m ]
  %.7271 = phi i64 [ %i.fz, %.lr.ph ], [ %.6, %bb.m ] ; 2 uses
  %.6163270 = phi i32 [ %i.ga, %.lr.ph ], [ %.5162, %bb.m ]
  %i.fz = udiv i64 %.7271, 10                     ; 3 uses
  %i.ga = add nuw nsw i32 %.6163270, 1            ; 2 uses
  %i.gb = udiv i64 %i.fy, 10                      ; 2 uses
  %i.gc = udiv i64 %i.fx, 10                      ; 2 uses
  %.not = icmp samesign ugt i64 %i.gb, %i.gc
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.gd = trunc i64 %.7271 to i32
  %i.ge = trunc i64 %i.fz to i32
  %.neg180.le = mul i32 %i.ge, -10
  %i.gf = add i32 %.neg180.le, %i.gd
  %i.gg = icmp ugt i32 %i.gf, 4
  %i.gh = zext i1 %i.gg to i64
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.7219.lcssa = phi i64 [ %i.fx, %._crit_edge ], [ %.6218, %bb.m ]
  %.6163.lcssa = phi i32 [ %i.ga, %._crit_edge ], [ %.5162, %bb.m ]
  %.7.lcssa = phi i64 [ %i.fz, %._crit_edge ], [ %.6, %bb.m ] ; 2 uses
  %.1.lcssa = phi i64 [ %i.gh, %._crit_edge ], [ %.0127, %bb.m ]
  %i.gi = icmp eq i64 %.7.lcssa, %.7219.lcssa
  %i.gj = select i1 %i.gi, i64 1, i64 %.1.lcssa
  %i.gk = add i64 %i.gj, %.7.lcssa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread244
  %.0131337 = phi i32 [ %.0131338, %.thread244 ], [ %.0131, %bb.n ]
  %.8165 = phi i32 [ %.4161, %.thread244 ], [ %.6163.lcssa, %bb.n ]
  %.0150 = phi i64 [ %i.fl, %.thread244 ], [ %i.gk, %bb.n ]
  %i.gl = add nsw i32 %.8165, %.0131337
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0150, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.gl, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4json6detail3ryu6detail8to_charsENS3_19floating_decimal_64EbPc(i64 %0, i32 %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %3, align 1, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]        ; 7 uses
  %i.a = icmp ugt i64 %0, 9999999999999999
  br i1 %i.a, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = icmp samesign ugt i64 %0, 999999999999999
  br i1 %i.b, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = icmp samesign ugt i64 %0, 99999999999999
  br i1 %i.c, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp samesign ugt i64 %0, 9999999999999
  br i1 %i.d, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = icmp samesign ugt i64 %0, 999999999999
  br i1 %i.e, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = icmp samesign ugt i64 %0, 99999999999
  br i1 %i.f, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = icmp samesign ugt i64 %0, 9999999999
  br i1 %i.g, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = icmp samesign ugt i64 %0, 999999999
  br i1 %i.h, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = icmp samesign ugt i64 %0, 99999999
  br i1 %i.i, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = icmp samesign ugt i64 %0, 9999999
  br i1 %i.j, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = icmp samesign ugt i64 %0, 999999
  br i1 %i.k, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.l = icmp samesign ugt i64 %0, 99999
  br i1 %i.l, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.m = icmp samesign ugt i64 %0, 9999
  br i1 %i.m, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.n = icmp samesign ugt i64 %0, 999
  br i1 %i.n, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.o = icmp samesign ugt i64 %0, 99
  br i1 %i.o, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.p = icmp samesign ugt i64 %0, 9
  %..i = select i1 %i.p, i32 2, i32 1
  br label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread

_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit: ; preds = %bb.j
  %.not = icmp samesign ult i64 %0, 4294967296
  br i1 %.not, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread, label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123

_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit
  %.0.i126 = phi i32 [ 10, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ 11, %bb.i ], [ 12, %bb.h ], [ 13, %bb.g ], [ 14, %bb.f ], [ 15, %bb.e ], [ 16, %bb.d ], [ 17, %bb.c ] ; 2 uses
  %i.q = udiv i64 %0, 100000000                   ; 2 uses
  %i.r = trunc i64 %0 to i32
  %i.s = trunc i64 %i.q to i32
  %.neg = mul i32 %i.s, -100000000
  %i.t = add i32 %.neg, %i.r                      ; 2 uses
  %i.u = udiv i32 %i.t, 10000
  %i.v = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.u, i64 1
  %i.x = urem <2 x i32> %i.w, splat (i32 10000)
  %4 = trunc nuw nsw <2 x i32> %i.x to <2 x i16>
  %.frozen = freeze <2 x i16> %4                  ; 2 uses
  %5 = udiv <2 x i16> %.frozen, splat (i16 100)   ; 3 uses
  %6 = extractelement <2 x i16> %5, i64 0
  %i.y = shl nuw nsw i16 %6, 1
  %7 = mul <2 x i16> %5, splat (i16 100)
  %.decomposed = sub <2 x i16> %.frozen, %7       ; 2 uses
  %i.z = extractelement <2 x i16> %.decomposed, i64 0
  %i.aa = shl nuw nsw i16 %i.z, 1
  %i.ab = extractelement <2 x i16> %.decomposed, i64 1
  %i.ac = shl nuw nsw i16 %i.ab, 1
  %i.ad = extractelement <2 x i16> %5, i64 1
  %i.ae = shl nuw nsw i16 %i.ad, 1
  %i.af = zext nneg i32 %.0 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.af
  %i.ah = zext nneg i32 %.0.i126 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = zext nneg i16 %i.aa to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  store i16 %i.am, ptr %i.aj, align 1
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -3
  %i.ao = zext nneg i16 %i.y to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2
  store i16 %i.aq, ptr %i.an, align 1
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 -5
  %i.as = zext nneg i16 %i.ac to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ar, align 1
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 -7
  %i.aw = zext nneg i16 %i.ae to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  store i16 %i.ay, ptr %i.av, align 1
  br label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread

_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit
  %.0.i120 = phi i32 [ %.0.i126, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ 10, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ %..i, %bb.r ], [ 4, %bb.p ], [ 5, %bb.o ], [ 6, %bb.n ], [ 7, %bb.m ], [ 8, %bb.l ], [ 9, %bb.k ], [ 3, %bb.q ] ; 6 uses
  %.0109 = phi i32 [ 8, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ 0, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.q ] ; 2 uses
  %.0108 = phi i64 [ %i.q, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ %0, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ %0, %bb.r ], [ %0, %bb.p ], [ %0, %bb.o ], [ %0, %bb.n ], [ %0, %bb.m ], [ %0, %bb.l ], [ %0, %bb.k ], [ %0, %bb.q ]
  %i.az = trunc i64 %.0108 to i32                 ; 3 uses
  %i.ba = icmp ugt i32 %i.az, 9999
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread
  %i.bb = zext nneg i32 %.0 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = zext nneg i32 %.0.i120 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.1110138 = phi i32 [ %.0109, %.lr.ph ], [ %i.bw, %bb.s ] ; 2 uses
  %.0112137 = phi i32 [ %i.az, %.lr.ph ], [ %i.bf, %bb.s ] ; 3 uses
  %i.bf = udiv i32 %.0112137, 10000               ; 3 uses
  %.neg117 = mul i32 %i.bf, -10000
  %i.bg = add i32 %.neg117, %.0112137             ; 2 uses
  %i.bh = urem i32 %i.bg, 100
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = udiv i32 %i.bg, 100
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = zext i32 %.1110138 to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.be, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.bp = zext nneg i32 %i.bi to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  store i16 %i.br, ptr %i.bo, align 1
  %i.bs = getelementptr inbounds i8, ptr %i.bn, i64 -3
  %i.bt = zext nneg i32 %i.bk to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  store i16 %i.bv, ptr %i.bs, align 1
  %i.bw = add i32 %.1110138, 4                    ; 2 uses
  %i.bx = icmp ugt i32 %.0112137, 99999999
  br i1 %i.bx, label %bb.s, label %._crit_edge, !llvm.loop !870

._crit_edge:                                      ; preds = %bb.s, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread
  %.0112.lcssa = phi i32 [ %i.az, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread ], [ %i.bf, %bb.s ] ; 3 uses
  %.1110.lcssa = phi i32 [ %.0109, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread ], [ %i.bw, %bb.s ] ; 3 uses
  %i.by = icmp samesign ugt i32 %.0112.lcssa, 99
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %.lhs.trunc133 = trunc nuw i32 %.0112.lcssa to i16 ; 2 uses
  %i.bz = urem i16 %.lhs.trunc133, 100
  %i.ca = shl nuw nsw i16 %i.bz, 1
  %i.cb = udiv i16 %.lhs.trunc133, 100
  %.zext136 = zext nneg i16 %i.cb to i32
  %i.cc = zext nneg i32 %.0 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.cc
  %i.ce = zext nneg i32 %.0.i120 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = zext i32 %.1110.lcssa to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -1
  %i.ck = zext nneg i16 %i.ca to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  store i16 %i.cm, ptr %i.cj, align 1
  %i.cn = or disjoint i32 %.1110.lcssa, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %.1113 = phi i32 [ %.zext136, %bb.t ], [ %.0112.lcssa, %._crit_edge ] ; 3 uses
  %.2111 = phi i32 [ %i.cn, %bb.t ], [ %.1110.lcssa, %._crit_edge ]
  %i.co = icmp samesign ugt i32 %.1113, 9
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = shl nuw nsw i32 %.1113, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !93
  %i.cu = add nuw nsw i32 %.0.i120, %.0
  %i.cv = sub i32 %i.cu, %.2111
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %i.cw
  store i8 %i.ct, ptr %i.cx, align 1, !tbaa !93
  %i.cy = load i8, ptr %i.cr, align 2, !tbaa !93
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cz = trunc nuw nsw i32 %.1113 to i8
  %i.da = or disjoint i8 %i.cz, 48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i8 [ %i.da, %bb.w ], [ %i.cy, %bb.v ]
  %i.db = zext nneg i32 %.0 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %i.db
  store i8 %.sink, ptr %i.dc, align 1, !tbaa !93
  %i.dd = icmp samesign ugt i32 %.0.i120, 1
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = zext nneg i32 %.0 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 46, ptr %i.dg, align 1, !tbaa !93
  %i.dh = add nuw nsw i32 %.0.i120, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn = phi i32 [ %i.dh, %bb.y ], [ 1, %bb.x ]
  %.1 = add nuw nsw i32 %.pn, %.0                 ; 3 uses
  %i.di = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.dj = zext nneg i32 %.1 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  store i8 69, ptr %i.dk, align 1, !tbaa !93
  %i.dl = add nsw i32 %.0.i120, %1                ; 3 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp slt i32 %i.dl, 1
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = add nuw nsw i32 %.1, 2
  %i.dp = zext nneg i32 %i.di to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp
  store i8 45, ptr %i.dq, align 1, !tbaa !93
  %i.dr = sub nsw i32 1, %i.dl
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0107 = phi i32 [ %i.dr, %bb.aa ], [ %i.dm, %bb.z ] ; 6 uses
  %.2 = phi i32 [ %i.do, %bb.aa ], [ %i.di, %bb.z ] ; 6 uses
  %i.ds = icmp samesign ugt i32 %.0107, 99
  br i1 %i.ds, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dt = urem i32 %.0107, 10
  %i.du = zext nneg i32 %.2 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %i.du ; 2 uses
  %i.dw = udiv i32 %.0107, 10
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2
  store i16 %i.ea, ptr %i.dv, align 1
  %i.eb = trunc nuw nsw i32 %i.dt to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr i8, ptr %i.dv, i64 2
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !93
  %i.ee = add nuw nsw i32 %.2, 3
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ef = icmp samesign ugt i32 %.0107, 9
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = zext nneg i32 %.2 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 %i.eg
  %i.ei = shl nuw nsw i32 %.0107, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.eh, align 1
  %i.em = add nuw nsw i32 %.2, 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.en = trunc nuw nsw i32 %.0107 to i8
  %i.eo = or disjoint i8 %i.en, 48
  %i.ep = add nuw nsw i32 %.2, 1
  %i.eq = zext nneg i32 %.2 to i64
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 %i.eq
  store i8 %i.eo, ptr %i.er, align 1, !tbaa !93
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac
  %.3 = phi i32 [ %i.ee, %bb.ac ], [ %i.em, %bb.ae ], [ %i.ep, %bb.af ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 35) i32 @_ZN5boost4json6detail8charconv6detail13errno_to_errcEi(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
end_hunk_0
