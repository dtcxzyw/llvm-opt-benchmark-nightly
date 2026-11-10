Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/p12_utl?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_utl.c\00", align 1

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_asc2uni(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi i32 [ %i.c, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.d = icmp slt i32 %.026, 0
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %.026, 1                 ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 2                  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 29) #5 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not34 = icmp eq i32 %.026, 0
  br i1 %.not34, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.j = zext nneg i32 %i.e to i64                ; 5 uses
  %i.k = add nsw i64 %i.j, -2                     ; 3 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.o = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl nuw i64 %index, 1                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.load = load <8 x i8>, ptr %i.t, align 1, !tbaa !8
  %wide.load41 = load <8 x i8>, ptr %i.u, align 1, !tbaa !8
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.q, align 1, !tbaa !8
  %interleaved.vec42 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load41, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec42, ptr %i.s, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.m, -4                     ; 3 uses
  %i.w = shl i64 %n.vec43, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %i.x = shl nuw i64 %index44, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.z, align 1, !tbaa !8
  %interleaved.vec46 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load45, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec46, ptr %i.y, align 1, !tbaa !8
  %index.next47 = add nuw i64 %index44, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %i.m, %n.vec43
  br i1 %cmp.n48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv ; 2 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %i.ac = lshr exact i64 %indvars.iv, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %.pre-phi = phi i64 [ 0, %.preheader ], [ %i.j, %middle.block ], [ %i.j, %vec.epilog.middle.block ], [ %i.j, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.f, ptr %3, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %2, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c
  %.025 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ %i.h, %bb.g ], [ %i.h, %bb.f ]
  ret ptr %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noalias ptr @OPENSSL_uni2asc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -2147483647
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = lshr exact i32 %1, 1                     ; 2 uses
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %.not24 = icmp eq i8 %i.f, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i32 %i.b, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.019 = phi i32 [ %i.g, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 25 uses
  %i.i = zext nneg i32 %.019 to i64
  %i.j = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 60) #5 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %i.m = add nsw i64 %i.l, -2                     ; 3 uses
  %i.n = lshr exact i64 %i.m, 1
  %i.o = add nuw i64 %i.n, 1                      ; 4 uses
  %min.iters.check = icmp ult i64 %i.m, 16
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 15                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 16, i64 %i.p         ; 2 uses
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = shl nuw i64 %index, 1                    ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 26
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.az = load i8, ptr %i.u, align 1, !tbaa !8
  %i.ba = load i8, ptr %i.w, align 1, !tbaa !8
  %i.bb = load i8, ptr %i.y, align 1, !tbaa !8
  %i.bc = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.bd = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.be = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.bf = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.bg = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.bh = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.bi = load i8, ptr %i.am, align 1, !tbaa !8
  %i.bj = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.bk = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.bl = load i8, ptr %i.as, align 1, !tbaa !8
  %i.bm = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bn = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.bo = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.bp = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 1
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 2
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 3
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 4
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 5
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 6
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 7
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 8
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 9
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 10
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 11
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 12
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 13
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 14
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <16 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !23

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.r, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ch = and i64 %i.o, 7                         ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec29 = sub i64 %i.o, %i.cj                  ; 2 uses
  %i.ck = shl i64 %n.vec29, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = shl nuw i64 %index30, 1                 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  %i.cp = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %i.cr = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cs = getelementptr i8, ptr %i.cr, i64 6
  %i.ct = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cw = getelementptr i8, ptr %i.cv, i64 10
  %i.cx = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cy = getelementptr i8, ptr %i.cx, i64 12
  %i.cz = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.da = getelementptr i8, ptr %i.cz, i64 14
  %i.db = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.dc = load i8, ptr %i.co, align 1, !tbaa !8
  %i.dd = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.de = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.dg = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.dh = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.di = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dj = insertelement <8 x i8> poison, i8 %i.db, i64 0
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 1
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 2
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 3
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 4
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 5
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 6
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 %index30
  store <8 x i8> %i.dq, ptr %i.dr, align 1, !tbaa !8
  %index.next31 = add nuw i64 %index30, 8         ; 2 uses
  %i.ds = icmp eq i64 %index.next31, %n.vec29
  br i1 %i.ds, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !24

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = lshr exact i64 %indvars.iv, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.dx, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.dy = zext nneg i32 %.019 to i64
  %i.dz = getelementptr i8, ptr %i.j, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -1
  store i8 0, ptr %i.ea, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %._crit_edge
  %.020 = phi ptr [ %i.j, %._crit_edge ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_utf82uni(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !32
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.047 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 6 uses
  %i.e = icmp sgt i32 %.047, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.04965 = phi i32 [ %i.as, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %.05164 = phi i32 [ %.152, %bb.h ], [ 0, %bb.c ]
  %i.f = zext nneg i32 %.04965 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = sub nsw i32 %.047, %.04965
  %i.i = call i32 @UTF8_getc(ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.k = shl nuw nsw i32 %.047, 1                 ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2                  ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 29) #5 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %OPENSSL_asc2uni.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.p = zext nneg i32 %i.k to i64                ; 3 uses
  %i.q = add nsw i64 %i.p, -2                     ; 3 uses
  %i.r = lshr exact i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl nuw i64 %index, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load = load <8 x i8>, ptr %i.z, align 1, !tbaa !8
  %wide.load91 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !8
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.w, align 1, !tbaa !8
  %interleaved.vec92 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load91, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec92, ptr %i.y, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.s, -4                     ; 3 uses
  %i.ac = shl i64 %n.vec93, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = shl nuw i64 %index94, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.af, align 1, !tbaa !8
  %interleaved.vec96 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load95, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec96, ptr %i.ae, align 1, !tbaa !8
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.s, %n.vec93
  br i1 %cmp.n98, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !8
  %i.ai = lshr exact i64 %indvars.iv.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store i32 %i.l, ptr %3, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1114111
  br i1 %i.aq, label %OPENSSL_asc2uni.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp samesign ugt i64 %i.ap, 65535
  %.152.v = select i1 %i.ar, i32 4, i32 2
  %.152 = add nuw nsw i32 %.152.v, %.05164        ; 2 uses
  %i.as = add nuw nsw i32 %i.i, %.04965           ; 2 uses
  %i.at = icmp slt i32 %i.as, %.047
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.h
  %i.au = add nuw nsw i32 %.152, 2                ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = call noalias ptr @CRYPTO_malloc(i64 noundef %i.av, ptr noundef nonnull @.str, i32 noundef 120) #5 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %OPENSSL_asc2uni.exit, label %.lr.ph68

._crit_edge.thread:                               ; preds = %bb.c
  %i.ay = tail call noalias ptr @CRYPTO_malloc(i64 noundef 2, ptr noundef nonnull @.str, i32 noundef 120) #5 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %OPENSSL_asc2uni.exit, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge, %bb.k
  %.04867 = phi ptr [ %.1, %bb.k ], [ %i.aw, %._crit_edge ] ; 7 uses
  %.15066 = phi i32 [ %i.bz, %bb.k ], [ 0, %._crit_edge ] ; 3 uses
  %i.ba = sext i32 %.15066 to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = sub nsw i32 %.047, %.15066
  %i.bd = call i32 @UTF8_getc(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.a) #5
  %i.be = load i64, ptr %i.a, align 8, !tbaa !32  ; 5 uses
  %i.bf = icmp ugt i64 %i.be, 65535
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph68
  %i.bg = add i64 %i.be, -65536                   ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !32
  %i.bh = lshr i64 %i.bg, 10                      ; 2 uses
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, -10240
  %i.bk = lshr i16 %i.bj, 8
  %i.bl = trunc nuw i16 %i.bk to i8
  store i8 %i.bl, ptr %.04867, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  %i.bn = lshr i64 %i.be, 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 3
  %i.bq = or disjoint i8 %i.bp, -36
  %i.br = getelementptr inbounds nuw i8, ptr %.04867, i64 3
  store i8 %i.bq, ptr %i.bm, align 1, !tbaa !8
  %i.bs = trunc i64 %i.be to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph68
  %i.bu = lshr i64 %i.be, 8
  %i.bv = trunc nuw i64 %i.bu to i8
  store i8 %i.bv, ptr %.04867, align 1, !tbaa !8
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink.in = phi i64 [ %i.bh, %bb.i ], [ %i.bw, %bb.j ]
  %.1 = phi ptr [ %i.bt, %bb.i ], [ %i.bx, %bb.j ] ; 2 uses
  %.sink = trunc i64 %.sink.in to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.04867, i64 1
  store i8 %.sink, ptr %i.by, align 1, !tbaa !8
  %i.bz = add nsw i32 %i.bd, %.15066              ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.047
  br i1 %i.ca, label %.lr.ph68, label %._crit_edge69, !llvm.loop !30

._crit_edge69:                                    ; preds = %bb.k, %._crit_edge.thread
  %.051.lcssa8688 = phi i32 [ 2, %._crit_edge.thread ], [ %i.au, %bb.k ]
  %i.cb = phi ptr [ %i.ay, %._crit_edge.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %.048.lcssa = phi ptr [ %i.ay, %._crit_edge.thread ], [ %.1, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.048.lcssa, i64 1
  store i8 0, ptr %.048.lcssa, align 1, !tbaa !8
  store i8 0, ptr %i.cc, align 1, !tbaa !8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge69
  store i32 %.051.lcssa8688, ptr %3, align 4, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge69
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

OPENSSL_asc2uni.exit.sink.split:                  ; preds = %bb.m, %bb.f
  %.sink89 = phi ptr [ %i.n, %bb.f ], [ %i.cb, %bb.m ] ; 2 uses
  store ptr %.sink89, ptr %2, align 8, !tbaa !16
  br label %OPENSSL_asc2uni.exit

OPENSSL_asc2uni.exit:                             ; preds = %bb.g, %OPENSSL_asc2uni.exit.sink.split, %._crit_edge.thread, %bb.f, %bb.d, %bb.m, %._crit_edge
  %.0 = phi ptr [ %i.cb, %bb.m ], [ null, %._crit_edge ], [ %i.n, %bb.f ], [ %.sink89, %OPENSSL_asc2uni.exit.sink.split ], [ null, %bb.d ], [ null, %._crit_edge.thread ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.0
}

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_uni2utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader87, label %OPENSSL_uni2asc.exit

.preheader87:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader87, %bb.f
  %.091 = phi i32 [ %spec.select, %bb.f ], [ 0, %.preheader87 ] ; 3 uses
  %.04590 = phi i32 [ %i.fh, %bb.f ], [ 0, %.preheader87 ]
  %i.c = zext nneg i32 %.091 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = sub nuw nsw i32 %1, %.091                ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bmp_to_utf8.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = zext i8 %i.k to i64
  %i.m = or disjoint i64 %i.i, %i.l               ; 2 uses
  %i.n = and i8 %i.g, -8
  %or.cond.i = icmp eq i8 %i.n, -40
  br i1 %or.cond.i, label %bb.c, label %bmp_to_utf8.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.e, 4
  br i1 %i.o, label %bmp_to_utf8.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = add i8 %i.q, 32
  %or.cond3.i = icmp ult i8 %i.r, -4
  br i1 %or.cond3.i, label %bmp_to_utf8.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.m, 10
  %i.t = zext i8 %i.q to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %.masked.i = and i64 %i.u, 768
  %i.y = or disjoint i64 %.masked.i, %i.x
end_hunk_0
