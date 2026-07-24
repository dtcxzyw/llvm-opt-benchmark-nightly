inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"../../deps/openssl/openssl/crypto/pkcs12/p12_utl.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_asc2uni(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
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
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 29) #6 ; 9 uses
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
  %min.iters.check41 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.n = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.load = load <8 x i8>, ptr %i.s, align 1, !tbaa !9
  %wide.load42 = load <8 x i8>, ptr %i.t, align 1, !tbaa !9
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.p, align 1, !tbaa !9
  %interleaved.vec43 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load42, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec43, ptr %i.r, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.m, -4                     ; 3 uses
  %i.v = shl i64 %n.vec45, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.w = shl nuw i64 %index46, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.y, align 1, !tbaa !9
  %interleaved.vec48 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load47, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec48, ptr %i.x, align 1, !tbaa !9
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.m, %n.vec45
  br i1 %cmp.n50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv ; 2 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  %i.ab = lshr exact i64 %indvars.iv, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %.pre-phi = phi i64 [ 0, %.preheader ], [ %i.j, %middle.block ], [ %i.j, %vec.epilog.middle.block ], [ %i.j, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi ; 2 uses
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 0, ptr %i.ah, align 1, !tbaa !9
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.f, ptr %3, align 4, !tbaa !5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %2, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ %i.h, %bb.g ], [ %i.h, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_uni2asc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %.not24 = icmp eq i8 %i.f, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nuw nsw i32 %i.b, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.020 = phi i32 [ %i.g, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 25 uses
  %i.i = zext nneg i32 %.020 to i64
  %i.j = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 6 uses
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
  %min.iters.check29 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 15                    ; 2 uses
  %i.p = icmp eq i64 %n.mod.vf, 0
  %i.q = select i1 %i.p, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub i64 %i.o, %i.q                     ; 3 uses
  %i.r = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl nuw i64 %index, 1                    ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 30
  %i.ay = load i8, ptr %i.t, align 1, !tbaa !9
  %i.az = load i8, ptr %i.v, align 1, !tbaa !9
  %i.ba = load i8, ptr %i.x, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.z, align 1, !tbaa !9
  %i.bc = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.bd = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.be = load i8, ptr %i.af, align 1, !tbaa !9
  %i.bf = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.bg = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.bh = load i8, ptr %i.al, align 1, !tbaa !9
  %i.bi = load i8, ptr %i.an, align 1, !tbaa !9
  %i.bj = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.bl = load i8, ptr %i.at, align 1, !tbaa !9
  %i.bm = load i8, ptr %i.av, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.bo = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 1
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 2
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 3
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 4
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 5
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 6
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 7
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 8
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 9
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 10
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 11
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 12
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 13
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 14
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <16 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !20

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.q, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf30 = and i64 %i.o, 7                   ; 2 uses
  %i.cg = icmp eq i64 %n.mod.vf30, 0
  %i.ch = select i1 %i.cg, i64 8, i64 %n.mod.vf30
  %n.vec31 = sub i64 %i.o, %i.ch                  ; 2 uses
  %i.ci = shl i64 %n.vec31, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.cj = shl nuw i64 %index32, 1                 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cl, i64 2
  %i.cn = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 6
  %i.cr = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cu = getelementptr i8, ptr %i.ct, i64 10
  %i.cv = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cw = getelementptr i8, ptr %i.cv, i64 12
  %i.cx = getelementptr i8, ptr %i.h, i64 %i.cj
  %i.cy = getelementptr i8, ptr %i.cx, i64 14
  %i.cz = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.da = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.db = load i8, ptr %i.co, align 1, !tbaa !9
  %i.dc = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.dd = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.de = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.df = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.dh = insertelement <8 x i8> poison, i8 %i.cz, i64 0
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 1
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 2
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 3
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 4
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 5
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 6
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 %index32
  store <8 x i8> %i.do, ptr %i.dp, align 1, !tbaa !9
  %index.next33 = add nuw i64 %index32, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next33, %n.vec31
  br i1 %i.dq, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !22

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = lshr exact i64 %indvars.iv, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dt
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dv = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.dv, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.dw = zext nneg i32 %.020 to i64
  %i.dx = getelementptr i8, ptr %i.j, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1
  store i8 0, ptr %i.dy, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.j, %._crit_edge ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_utf82uni(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 0, ptr %i.a, align 8, !tbaa !24
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.047 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 6 uses
  %i.e = icmp sgt i32 %.047, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.04865 = phi i32 [ %.1, %bb.h ], [ 0, %bb.c ]
  %.05164 = phi i32 [ %i.ar, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %i.f = zext nneg i32 %.05164 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = sub nsw i32 %.047, %.05164
  %i.i = call i32 @UTF8_getc(ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.k = shl nuw nsw i32 %.047, 1                 ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 2                  ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 29) #6 ; 8 uses
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
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.t = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl nuw i64 %index, 1                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load = load <8 x i8>, ptr %i.y, align 1, !tbaa !9
  %wide.load91 = load <8 x i8>, ptr %i.z, align 1, !tbaa !9
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.v, align 1, !tbaa !9
  %interleaved.vec92 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load91, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec92, ptr %i.x, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %i.s, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec94, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = shl nuw i64 %index95, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !9
  %interleaved.vec97 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load96, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec97, ptr %i.ad, align 1, !tbaa !9
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.s, %n.vec94
  br i1 %cmp.n99, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i ; 2 uses
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  %i.ah = lshr exact i64 %indvars.iv.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 2 uses
  store i8 0, ptr %i.am, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !9
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store i32 %i.l, ptr %3, align 4, !tbaa !5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 1114111
  br i1 %i.ap, label %OPENSSL_asc2uni.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp samesign ugt i64 %i.ao, 65535
  %.1.v = select i1 %i.aq, i32 4, i32 2
  %.1 = add nuw nsw i32 %.1.v, %.04865            ; 2 uses
  %i.ar = add nuw nsw i32 %i.i, %.05164           ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.047
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.h
  %i.at = add nuw nsw i32 %.1, 2                  ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = call noalias ptr @CRYPTO_malloc(i64 noundef %i.au, ptr noundef nonnull @.str, i32 noundef 120) #6 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %OPENSSL_asc2uni.exit, label %.lr.ph68

._crit_edge.thread:                               ; preds = %bb.c
  %i.ax = tail call noalias ptr @CRYPTO_malloc(i64 noundef 2, ptr noundef nonnull @.str, i32 noundef 120) #6 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %OPENSSL_asc2uni.exit, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge, %bb.k
  %.04967 = phi ptr [ %.150, %bb.k ], [ %i.av, %._crit_edge ] ; 7 uses
  %.15266 = phi i32 [ %i.by, %bb.k ], [ 0, %._crit_edge ] ; 3 uses
  %i.az = sext i32 %.15266 to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = sub nsw i32 %.047, %.15266
  %i.bc = call i32 @UTF8_getc(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.a) #6
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !24  ; 5 uses
  %i.be = icmp ugt i64 %i.bd, 65535
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph68
  %i.bf = add i64 %i.bd, -65536                   ; 2 uses
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !24
  %i.bg = lshr i64 %i.bf, 10                      ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = add i16 %i.bh, -10240
  %i.bj = lshr i16 %i.bi, 8
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %.04967, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %.04967, i64 2
  %i.bm = lshr i64 %i.bd, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = and i8 %i.bn, 3
  %i.bp = or disjoint i8 %i.bo, -36
  %i.bq = getelementptr inbounds nuw i8, ptr %.04967, i64 3
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !9
  %i.br = trunc i64 %i.bd to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.04967, i64 4
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph68
  %i.bt = lshr i64 %i.bd, 8
  %i.bu = trunc nuw i64 %i.bt to i8
  store i8 %i.bu, ptr %.04967, align 1, !tbaa !9
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.04967, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink.in = phi i64 [ %i.bg, %bb.i ], [ %i.bv, %bb.j ]
  %.150 = phi ptr [ %i.bs, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %.sink = trunc i64 %.sink.in to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.04967, i64 1
  store i8 %.sink, ptr %i.bx, align 1, !tbaa !9
  %i.by = add nsw i32 %i.bc, %.15266              ; 2 uses
  %i.bz = icmp slt i32 %i.by, %.047
  br i1 %i.bz, label %.lr.ph68, label %._crit_edge69, !llvm.loop !30

._crit_edge69:                                    ; preds = %bb.k, %._crit_edge.thread
  %.048.lcssa8688 = phi i32 [ 2, %._crit_edge.thread ], [ %i.at, %bb.k ]
  %i.ca = phi ptr [ %i.ax, %._crit_edge.thread ], [ %i.av, %bb.k ] ; 2 uses
  %.049.lcssa = phi ptr [ %i.ax, %._crit_edge.thread ], [ %.150, %bb.k ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.049.lcssa, i64 1
  store i8 0, ptr %.049.lcssa, align 1, !tbaa !9
  store i8 0, ptr %i.cb, align 1, !tbaa !9
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge69
  store i32 %.048.lcssa8688, ptr %3, align 4, !tbaa !5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge69
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

OPENSSL_asc2uni.exit.sink.split:                  ; preds = %bb.m, %bb.f
  %.sink89 = phi ptr [ %i.n, %bb.f ], [ %i.ca, %bb.m ] ; 2 uses
  store ptr %.sink89, ptr %2, align 8, !tbaa !17
  br label %OPENSSL_asc2uni.exit

OPENSSL_asc2uni.exit:                             ; preds = %bb.g, %OPENSSL_asc2uni.exit.sink.split, %._crit_edge.thread, %bb.f, %bb.d, %bb.m, %._crit_edge
  %.0 = phi ptr [ %i.ca, %bb.m ], [ null, %._crit_edge ], [ %i.n, %bb.f ], [ %.sink89, %OPENSSL_asc2uni.exit.sink.split ], [ null, %bb.d ], [ null, %._crit_edge.thread ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_uni2utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader87, label %OPENSSL_uni2asc.exit

.preheader87:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader87, %bb.g
  %.04591 = phi i32 [ %spec.select, %bb.g ], [ 0, %.preheader87 ] ; 3 uses
  %.04690 = phi i32 [ %i.fg, %bb.g ], [ 0, %.preheader87 ]
  %i.c = zext nneg i32 %.04591 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = sub nsw i32 %1, %.04591                  ; 3 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr %i.d, align 1, !tbaa !9     ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i64
  %i.m = or disjoint i64 %i.i, %i.l               ; 2 uses
  %i.n = and i8 %i.g, -8
  %or.cond.i = icmp eq i8 %i.n, -40
  br i1 %or.cond.i, label %bb.c, label %bmp_to_utf8.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.e, 4
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %i.r = add i8 %i.q, 32
  %or.cond3.i = icmp ult i8 %i.r, -4
  br i1 %or.cond3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.m, 10
  %i.t = zext i8 %i.q to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %.masked.i = and i64 %i.u, 768
  %i.y = or disjoint i64 %.masked.i, %i.x
  %i.z = add nsw i64 %i.s, -56557568
  %i.aa = or disjoint i64 %i.y, %i.z
  br label %bmp_to_utf8.exit

bmp_to_utf8.exit:                                 ; preds = %bb.b, %bb.e
  %.126.i = phi i64 [ %i.aa, %bb.e ], [ %i.m, %bb.b ]
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.e, i32 4)
  %i.ac = tail call i32 @UTF8_putc(ptr noundef null, i32 noundef %i.ab, i64 noundef %.126.i) #6
  %.fr86 = freeze i32 %i.ac                       ; 3 uses
  %i.ad = icmp slt i32 %.fr86, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d, %.lr.ph, %bmp_to_utf8.exit
  %i.ae = lshr exact i32 %1, 1                    ; 2 uses
  %i.af = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %.not24.i = icmp eq i8 %i.ai, 0
  br i1 %.not24.i, label %.thread, label %.thread83

.thread83:                                        ; preds = %bb.f
  %i.aj = add nuw nsw i32 %i.ae, 1
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %OPENSSL_uni2asc.exit, label %iter.check

.thread:                                          ; preds = %bb.f
  %i.an = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ao = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.an, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %OPENSSL_uni2asc.exit, label %iter.check

iter.check:                                       ; preds = %.thread83, %.thread
  %i.aq = phi i64 [ %i.an, %.thread ], [ %i.ak, %.thread83 ]
  %i.ar = phi ptr [ %i.ao, %.thread ], [ %i.al, %.thread83 ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 25 uses
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 2) ; 3 uses
  %i.au = lshr exact i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, 1                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.at, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check106 = icmp samesign ult i64 %i.at, 32
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.av, 15                   ; 2 uses
  %i.aw = icmp eq i64 %n.mod.vf, 0
  %i.ax = select i1 %i.aw, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.av, %i.ax               ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl nuw i64 %index, 1                   ; 16 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 30
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.cg = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.ch = load i8, ptr %i.be, align 1, !tbaa !9
  %i.ci = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.cj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.ck = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.cl = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.cn = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.co = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.cp = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.cq = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.cr = load i8, ptr %i.by, align 1, !tbaa !9
  %i.cs = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.ct = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cu = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cv = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 1
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 2
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 3
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 4
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 5
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 6
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 7
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 8
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 9
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 10
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 11
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 12
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 13
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 14
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index
  store <16 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !31

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ax, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf107 = and i64 %i.av, 7                 ; 2 uses
  %i.dn = icmp eq i64 %n.mod.vf107, 0
  %i.do = select i1 %i.dn, i64 8, i64 %n.mod.vf107
  %n.vec108 = sub nsw i64 %i.av, %i.do            ; 2 uses
  %i.dp = shl nsw i64 %n.vec108, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 3 uses
  %i.dq = shl nuw i64 %index109, 1                ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  %i.du = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %i.dw = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 6
  %i.dy = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 10
  %i.ec = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr i8, ptr %i.as, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 14
  %i.eg = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.eh = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.ei = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.ej = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.ek = load i8, ptr %i.dz, align 1, !tbaa !9
  %i.el = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eo = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 1
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 2
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 3
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 4
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 5
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 6
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index109
  store <8 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !9
  %index.next110 = add nuw i64 %index109, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next110, %n.vec108
  br i1 %i.ex, label %.lr.ph.i.preheader, label %vec.epilog.vector.body, !llvm.loop !32

.lr.ph.i.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fa = lshr exact i64 %indvars.iv.i, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fa
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.af
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fd = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  store i8 0, ptr %i.fe, align 1, !tbaa !9
  br label %OPENSSL_uni2asc.exit

bb.g:                                             ; preds = %bmp_to_utf8.exit
  %i.ff = icmp eq i32 %.fr86, 4
  %spec.select.v = select i1 %i.ff, i32 4, i32 2
  %spec.select = add nuw nsw i32 %spec.select.v, %.04591 ; 2 uses
  %i.fg = add nuw nsw i32 %.fr86, %.04690         ; 2 uses
  %i.fh = icmp slt i32 %spec.select, %1
  br i1 %i.fh, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.g, %.preheader87
  %.046.lcssa = phi i32 [ 0, %.preheader87 ], [ %i.fg, %bb.g ] ; 2 uses
  %.not54 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not54, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.fi = sext i32 %1 to i64
  %i.fj = getelementptr i8, ptr %0, i64 %i.fi     ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9
  %.not55 = icmp eq i8 %i.fl, 0
  br i1 %.not55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fm = getelementptr i8, ptr %i.fj, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !9
  %.not56 = icmp eq i8 %i.fn, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge
  %i.fo = add nuw nsw i32 %.046.lcssa, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.147 = phi i32 [ %i.fo, %bb.j ], [ %.046.lcssa, %bb.i ]
  %i.fp = zext nneg i32 %.147 to i64
  %i.fq = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.fp, ptr noundef nonnull @.str, i32 noundef 210) #6 ; 6 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %OPENSSL_uni2asc.exit, label %.preheader

.preheader:                                       ; preds = %bb.k
  br i1 %i.b, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader, %bb.p
  %.293 = phi i32 [ %spec.select85, %bb.p ], [ 0, %.preheader ] ; 3 uses
  %.24892 = phi i32 [ %i.gx, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.fs = zext nneg i32 %.24892 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  %i.fu = zext nneg i32 %.293 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %i.fu ; 4 uses
  %i.fw = sub nsw i32 %1, %.293                   ; 3 uses
  %i.fx = icmp slt i32 %i.fw, 2
  br i1 %i.fx, label %bmp_to_utf8.exit64.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph94
  %i.fy = load i8, ptr %i.fv, align 1, !tbaa !9   ; 2 uses
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.ga, %i.gd            ; 2 uses
  %i.gf = and i8 %i.fy, -8
  %or.cond.i59 = icmp eq i8 %i.gf, -40
  br i1 %or.cond.i59, label %bb.m, label %bmp_to_utf8.exit64

bb.m:                                             ; preds = %bb.l
  %i.gg = icmp samesign ult i32 %i.fw, 4
  br i1 %i.gg, label %bmp_to_utf8.exit64.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9   ; 2 uses
  %i.gj = add i8 %i.gi, 32
  %or.cond3.i62 = icmp ult i8 %i.gj, -4
  br i1 %or.cond3.i62, label %bmp_to_utf8.exit64.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gk = shl nuw nsw i64 %i.ge, 10
  %i.gl = zext i8 %i.gi to i64
  %i.gm = shl nuw nsw i64 %i.gl, 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = zext i8 %i.go to i64
  %.masked.i63 = and i64 %i.gm, 768
  %i.gq = or disjoint i64 %.masked.i63, %i.gp
  %i.gr = add nsw i64 %i.gk, -56557568
  %i.gs = or disjoint i64 %i.gq, %i.gr
  br label %bmp_to_utf8.exit64

bmp_to_utf8.exit64:                               ; preds = %bb.l, %bb.o
  %.126.i60 = phi i64 [ %i.gs, %bb.o ], [ %i.ge, %bb.l ]
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 4)
  %i.gu = tail call i32 @UTF8_putc(ptr noundef nonnull %i.ft, i32 noundef %i.gt, i64 noundef %.126.i60) #6
  %.fr = freeze i32 %i.gu                         ; 3 uses
  %i.gv = icmp slt i32 %.fr, 0
  br i1 %i.gv, label %bmp_to_utf8.exit64.thread, label %bb.p

bmp_to_utf8.exit64.thread:                        ; preds = %bb.m, %bb.n, %.lr.ph94, %bmp_to_utf8.exit64
  tail call void @CRYPTO_free(ptr noundef nonnull %i.fq, ptr noundef nonnull @.str, i32 noundef 218) #6
  br label %OPENSSL_uni2asc.exit

bb.p:                                             ; preds = %bmp_to_utf8.exit64
  %i.gw = icmp eq i32 %.fr, 4
  %spec.select85.v = select i1 %i.gw, i32 4, i32 2
  %spec.select85 = add nuw nsw i32 %spec.select85.v, %.293 ; 2 uses
  %i.gx = add nuw nsw i32 %.fr, %.24892           ; 2 uses
  %i.gy = icmp slt i32 %spec.select85, %1
  br i1 %i.gy, label %.lr.ph94, label %._crit_edge95.loopexit, !llvm.loop !35

._crit_edge95.loopexit:                           ; preds = %bb.p
  %i.gz = zext nneg i32 %i.gx to i64
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.preheader
  %.248.lcssa = phi i64 [ 0, %.preheader ], [ %i.gz, %._crit_edge95.loopexit ]
  br i1 %.not54, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge95
  %i.ha = sext i32 %1 to i64
  %i.hb = getelementptr i8, ptr %0, i64 %i.ha     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !9
  %.not57 = icmp eq i8 %i.hd, 0
  br i1 %.not57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.he = getelementptr i8, ptr %i.hb, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !9
  %.not58 = icmp eq i8 %i.hf, 0
  br i1 %.not58, label %OPENSSL_uni2asc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge95
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.248.lcssa
  store i8 0, ptr %i.hg, align 1, !tbaa !9
  br label %OPENSSL_uni2asc.exit

OPENSSL_uni2asc.exit:                             ; preds = %.thread83, %._crit_edge.i, %.thread, %bb.r, %bb.s, %bb.k, %bb.a, %bmp_to_utf8.exit64.thread
  %.0 = phi ptr [ null, %bb.k ], [ %i.fq, %bb.r ], [ null, %bb.a ], [ null, %bmp_to_utf8.exit64.thread ], [ %i.fq, %bb.s ], [ %i.ar, %._crit_edge.i ], [ null, %.thread83 ], [ null, %.thread ]
  ret ptr %.0
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_bio(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PKCS12_it() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS12_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_fp(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_fp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = tail call ptr @ossl_pkcs12_get0_pkcs7ctx(ptr noundef %i.a) #6 ; 3 uses
  %.not12 = icmp eq ptr %i.b, null
end_hunk_0
