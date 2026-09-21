Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail3ryu6detail3d2dEmj:bb.a
  br i1 %.not185294, label %.lr.ph299, label %.thread244

.lr.ph299:                                        ; preds = %.preheader, %.lr.ph299
  %i.ev = phi i64 [ %i.fd, %.lr.ph299 ], [ %i.er, %.preheader ] ; 3 uses
  %.3298 = phi i64 [ %i.ew, %.lr.ph299 ], [ %.1129.lcssa, %.preheader ] ; 2 uses
  %.6144297 = phi i1 [ %i.fb, %.lr.ph299 ], [ %.4142.lcssa, %.preheader ]
  %.2153296 = phi i8 [ %i.ez, %.lr.ph299 ], [ %.0151.lcssa, %.preheader ]
  %.2159295 = phi i32 [ %i.fc, %.lr.ph299 ], [ %.0157.lcssa, %.preheader ]
  %i.ew = udiv i64 %.3298, 10                     ; 3 uses
  %i.ex = trunc i64 %.3298 to i8
  %i.ey = trunc i64 %i.ew to i8
  %.neg186 = mul i8 %i.ey, -10
  %i.ez = add i8 %.neg186, %i.ex                  ; 2 uses
  %i.fa = icmp eq i8 %.2153296, 0
  %i.fb = select i1 %i.fa, i1 %.6144297, i1 false ; 2 uses
  %i.fc = add nuw nsw i32 %.2159295, 1            ; 2 uses
  %i.fd = udiv i64 %i.ev, 10                      ; 2 uses
  %i.fe = trunc i64 %i.ev to i32
  %i.ff = trunc i64 %i.fd to i32
  %.neg184 = mul i32 %i.ff, -10
  %i.fg = sub i32 0, %i.fe
  %.not185 = icmp eq i32 %.neg184, %i.fg
  br i1 %.not185, label %.lr.ph299, label %.thread244

.thread244:                                       ; preds = %.lr.ph299, %.preheader, %._crit_edge286
  %.5217 = phi i64 [ %.1213.lcssa, %._crit_edge286 ], [ %.1213.lcssa, %.preheader ], [ %i.ev, %.lr.ph299 ]
  %.4161 = phi i32 [ %.0157.lcssa, %._crit_edge286 ], [ %.0157.lcssa, %.preheader ], [ %i.fc, %.lr.ph299 ]
  %.4155 = phi i8 [ %.0151.lcssa, %._crit_edge286 ], [ %.0151.lcssa, %.preheader ], [ %i.ez, %.lr.ph299 ] ; 2 uses
  %.8146 = phi i1 [ %.4142.lcssa, %._crit_edge286 ], [ %.4142.lcssa, %.preheader ], [ %i.fb, %.lr.ph299 ]
  %.5 = phi i64 [ %.1129.lcssa, %._crit_edge286 ], [ %.1129.lcssa, %.preheader ], [ %i.ew, %.lr.ph299 ] ; 3 uses
  %i.fh = icmp ne i8 %.4155, 5
  %not. = xor i1 %.8146, true
  %or.cond4 = select i1 %not., i1 true, i1 %i.fh
  %i.fi = trunc i64 %.5 to i1
  %or.cond = select i1 %or.cond4, i1 true, i1 %i.fi
  %i.fj = icmp ne i64 %.5, %.5217
  %or.cond6 = and i1 %i.e, %.4136.lcssa
  %or.cond188 = or i1 %or.cond6, %i.fj
  %i.fk = icmp ugt i8 %.4155, 4
  %i.fl = select i1 %or.cond, i1 %i.fk, i1 false
  %not.or.cond188 = xor i1 %or.cond188, true
  %narrow = select i1 %not.or.cond188, i1 true, i1 %i.fl
  %i.fm = zext i1 %narrow to i64
  %i.fn = add i64 %.5, %i.fm
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.fo = udiv i64 %.0221, 100                    ; 2 uses
  %i.fp = udiv i64 %.0212, 100                    ; 2 uses
  %i.fq = icmp samesign ugt i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fr = udiv i64 %.0128, 100                    ; 2 uses
  %i.fs = trunc i64 %.0128 to i32
  %i.ft = trunc i64 %i.fr to i32
  %.neg179 = mul i32 %i.ft, -100
  %i.fu = add i32 %.neg179, %i.fs
  %i.fv = icmp ugt i32 %i.fu, 49
  %i.fw = zext i1 %i.fv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5226 = phi i64 [ %i.fo, %bb.l ], [ %.0221, %bb.k ]
  %.6218 = phi i64 [ %i.fp, %bb.l ], [ %.0212, %bb.k ] ; 2 uses
  %.5162 = phi i32 [ 2, %bb.l ], [ 0, %bb.k ]     ; 2 uses
  %.6 = phi i64 [ %i.fr, %bb.l ], [ %.0128, %bb.k ] ; 2 uses
  %.0127 = phi i64 [ %i.fw, %bb.l ], [ 0, %bb.k ]
  %i.fx = udiv i64 %.5226, 10                     ; 2 uses
  %i.fy = udiv i64 %.6218, 10                     ; 2 uses
  %.not269 = icmp samesign ugt i64 %i.fx, %i.fy
  br i1 %.not269, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.fz = phi i64 [ %i.ge, %.lr.ph ], [ %i.fy, %bb.m ] ; 2 uses
  %i.ga = phi i64 [ %i.gd, %.lr.ph ], [ %i.fx, %bb.m ]
  %.7271 = phi i64 [ %i.gb, %.lr.ph ], [ %.6, %bb.m ] ; 2 uses
  %.6163270 = phi i32 [ %i.gc, %.lr.ph ], [ %.5162, %bb.m ]
  %i.gb = udiv i64 %.7271, 10                     ; 3 uses
  %i.gc = add nuw nsw i32 %.6163270, 1            ; 2 uses
  %i.gd = udiv i64 %i.ga, 10                      ; 2 uses
  %i.ge = udiv i64 %i.fz, 10                      ; 2 uses
  %.not = icmp samesign ugt i64 %i.gd, %i.ge
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.gf = trunc i64 %.7271 to i32
  %i.gg = trunc i64 %i.gb to i32
  %.neg180.le = mul i32 %i.gg, -10
  %i.gh = add i32 %.neg180.le, %i.gf
  %i.gi = icmp ugt i32 %i.gh, 4
  %i.gj = zext i1 %i.gi to i64
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.7219.lcssa = phi i64 [ %i.fz, %._crit_edge ], [ %.6218, %bb.m ]
  %.6163.lcssa = phi i32 [ %i.gc, %._crit_edge ], [ %.5162, %bb.m ]
  %.7.lcssa = phi i64 [ %i.gb, %._crit_edge ], [ %.6, %bb.m ] ; 2 uses
  %.1.lcssa = phi i64 [ %i.gj, %._crit_edge ], [ %.0127, %bb.m ]
  %i.gk = icmp eq i64 %.7.lcssa, %.7219.lcssa
  %i.gl = select i1 %i.gk, i64 1, i64 %.1.lcssa
  %i.gm = add i64 %i.gl, %.7.lcssa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread244
  %.0131337 = phi i32 [ %.0131338, %.thread244 ], [ %.0131, %bb.n ]
  %.8165 = phi i32 [ %.4161, %.thread244 ], [ %.6163.lcssa, %bb.n ]
  %.0150 = phi i64 [ %i.fn, %.thread244 ], [ %i.gm, %bb.n ]
  %i.gn = add nsw i32 %.8165, %.0131337
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.0150, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.gn, 1
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
  %4 = urem i32 %i.t, 10000
  %5 = udiv i32 %i.t, 10000
  %6 = urem i32 %5, 10000
  %.lhs.trunc = trunc nuw nsw i32 %4 to i16       ; 2 uses
  %7 = urem i16 %.lhs.trunc, 100
  %i.u = shl nuw nsw i16 %7, 1
  %8 = udiv i16 %.lhs.trunc, 100
  %9 = shl nuw nsw i16 %8, 1
  %.lhs.trunc129 = trunc nuw nsw i32 %6 to i16    ; 2 uses
  %10 = urem i16 %.lhs.trunc129, 100
  %i.v = shl nuw nsw i16 %10, 1
  %11 = udiv i16 %.lhs.trunc129, 100
  %i.w = shl nuw nsw i16 %11, 1
  %i.x = zext nneg i32 %.0 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %i.z = zext nneg i32 %.0.i126 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ac = zext nneg i16 %i.u to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  store i16 %i.ae, ptr %i.ab, align 1
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %i.ag = zext nneg i16 %9 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  store i16 %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.ak = zext nneg i16 %i.v to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  store i16 %i.am, ptr %i.aj, align 1
  %i.an = getelementptr inbounds i8, ptr %i.aa, i64 -7
  %i.ao = zext nneg i16 %i.w to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2
  store i16 %i.aq, ptr %i.an, align 1
  br label %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread

_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit
  %.0.i120 = phi i32 [ %.0.i126, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ 10, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ %..i, %bb.r ], [ 4, %bb.p ], [ 5, %bb.o ], [ 6, %bb.n ], [ 7, %bb.m ], [ 8, %bb.l ], [ 9, %bb.k ], [ 3, %bb.q ] ; 6 uses
  %.0109 = phi i32 [ 8, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ 0, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.q ] ; 2 uses
  %.0108 = phi i64 [ %i.q, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread123 ], [ %0, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit ], [ %0, %bb.r ], [ %0, %bb.p ], [ %0, %bb.o ], [ %0, %bb.n ], [ %0, %bb.m ], [ %0, %bb.l ], [ %0, %bb.k ], [ %0, %bb.q ]
  %i.ar = trunc i64 %.0108 to i32                 ; 3 uses
  %i.as = icmp ugt i32 %i.ar, 9999
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread
  %i.at = zext nneg i32 %.0 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.at
  %i.av = zext nneg i32 %.0.i120 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.1110138 = phi i32 [ %.0109, %.lr.ph ], [ %i.bo, %bb.s ] ; 2 uses
  %.0112137 = phi i32 [ %i.ar, %.lr.ph ], [ %i.ax, %bb.s ] ; 3 uses
  %i.ax = udiv i32 %.0112137, 10000               ; 3 uses
  %.neg117 = mul i32 %i.ax, -10000
  %i.ay = add i32 %.neg117, %.0112137             ; 2 uses
  %i.az = urem i32 %i.ay, 100
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = udiv i32 %i.ay, 100
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = zext i32 %.1110138 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bh = zext nneg i32 %i.ba to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  store i16 %i.bj, ptr %i.bg, align 1
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 -3
  %i.bl = zext nneg i32 %i.bc to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  store i16 %i.bn, ptr %i.bk, align 1
  %i.bo = add i32 %.1110138, 4                    ; 2 uses
  %i.bp = icmp ugt i32 %.0112137, 99999999
  br i1 %i.bp, label %bb.s, label %._crit_edge, !llvm.loop !870

._crit_edge:                                      ; preds = %bb.s, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread
  %.0112.lcssa = phi i32 [ %i.ar, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread ], [ %i.ax, %bb.s ] ; 3 uses
  %.1110.lcssa = phi i32 [ %.0109, %_ZN5boost4json6detail3ryu6detail15decimalLength17Em.exit.thread ], [ %i.bo, %bb.s ] ; 3 uses
  %i.bq = icmp samesign ugt i32 %.0112.lcssa, 99
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %.lhs.trunc133 = trunc nuw i32 %.0112.lcssa to i16 ; 2 uses
  %i.br = urem i16 %.lhs.trunc133, 100
  %i.bs = shl nuw nsw i16 %i.br, 1
  %i.bt = udiv i16 %.lhs.trunc133, 100
  %.zext136 = zext nneg i16 %i.bt to i32
  %i.bu = zext nneg i32 %.0 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu
  %i.bw = zext nneg i32 %.0.i120 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = zext i32 %.1110.lcssa to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.cc = zext nneg i16 %i.bs to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2
  store i16 %i.ce, ptr %i.cb, align 1
  %i.cf = or disjoint i32 %.1110.lcssa, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %.1113 = phi i32 [ %.zext136, %bb.t ], [ %.0112.lcssa, %._crit_edge ] ; 3 uses
  %.2111 = phi i32 [ %i.cf, %bb.t ], [ %.1110.lcssa, %._crit_edge ]
  %i.cg = icmp samesign ugt i32 %.1113, 9
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = shl nuw nsw i32 %.1113, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !93
  %i.cm = add nuw nsw i32 %.0.i120, %.0
  %i.cn = sub i32 %i.cm, %.2111
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 %i.co
  store i8 %i.cl, ptr %i.cp, align 1, !tbaa !93
  %i.cq = load i8, ptr %i.cj, align 2, !tbaa !93
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cr = trunc nuw nsw i32 %.1113 to i8
  %i.cs = or disjoint i8 %i.cr, 48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i8 [ %i.cs, %bb.w ], [ %i.cq, %bb.v ]
  %i.ct = zext nneg i32 %.0 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %i.ct
  store i8 %.sink, ptr %i.cu, align 1, !tbaa !93
  %i.cv = icmp samesign ugt i32 %.0.i120, 1
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cw = zext nneg i32 %.0 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 46, ptr %i.cy, align 1, !tbaa !93
  %i.cz = add nuw nsw i32 %.0.i120, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn = phi i32 [ %i.cz, %bb.y ], [ 1, %bb.x ]
  %.1 = add nuw nsw i32 %.pn, %.0                 ; 3 uses
  %i.da = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.db = zext nneg i32 %.1 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %i.db
  store i8 69, ptr %i.dc, align 1, !tbaa !93
  %i.dd = add nsw i32 %.0.i120, %1                ; 3 uses
  %i.de = add nsw i32 %i.dd, -1
  %i.df = icmp slt i32 %i.dd, 1
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = add nuw nsw i32 %.1, 2
  %i.dh = zext nneg i32 %i.da to i64
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %i.dh
  store i8 45, ptr %i.di, align 1, !tbaa !93
  %i.dj = sub nsw i32 1, %i.dd
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0107 = phi i32 [ %i.dj, %bb.aa ], [ %i.de, %bb.z ] ; 6 uses
  %.2 = phi i32 [ %i.dg, %bb.aa ], [ %i.da, %bb.z ] ; 6 uses
  %i.dk = icmp samesign ugt i32 %.0107, 99
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = urem i32 %.0107, 10
  %i.dm = zext nneg i32 %.2 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 %i.dm ; 2 uses
  %i.do = udiv i32 %.0107, 10
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2
  store i16 %i.ds, ptr %i.dn, align 1
  %i.dt = trunc nuw nsw i32 %i.dl to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %i.dn, i64 2
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !93
  %i.dw = add nuw nsw i32 %.2, 3
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dx = icmp samesign ugt i32 %.0107, 9
  br i1 %i.dx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = zext nneg i32 %.2 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 %i.dy
  %i.ea = shl nuw nsw i32 %.0107, 1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN5boost4json6detail3ryu6detail11DIGIT_TABLEEvE3arr, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.dz, align 1
  %i.ee = add nuw nsw i32 %.2, 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ef = trunc nuw nsw i32 %.0107 to i8
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = add nuw nsw i32 %.2, 1
  %i.ei = zext nneg i32 %.2 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !93
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac
  %.3 = phi i32 [ %i.dw, %bb.ac ], [ %i.ee, %bb.ae ], [ %i.eh, %bb.af ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 35) i32 @_ZN5boost4json6detail8charconv6detail13errno_to_errcEi(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
end_hunk_0
