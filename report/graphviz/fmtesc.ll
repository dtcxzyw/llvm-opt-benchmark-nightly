Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/fmtesc?download=true
inline.NumInlined: 34
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.agxbuf = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }

@.str = private unnamed_addr constant [14 x i8] c"\22;~&|()<>[]*?\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@switch.table.fmtquote = private unnamed_addr constant [33 x i8] c"\01\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 1

; Function Attrs: nounwind uwtable
define ptr @fmtquote(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.agxbuf, align 8             ; 53 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %.not64 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not64, label %agxbput.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !8
  %i.d = icmp eq i8 %i.c, 36
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 39
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = icmp eq i8 %i.i, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.051 = phi i1 [ false, %bb.b ], [ %i.j, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #14 ; 7 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %agxbput.exit, label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = icmp ugt i64 %i.k, 31
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %agxblen.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef %i.k)
  %.val.i25.pre.i.i = load i8, ptr %i.m, align 1, !tbaa !8 ; 2 uses
  %.not.i26.i.i = icmp eq i8 %.val.i25.pre.i.i, -1
  br i1 %.not.i26.i.i, label %bb.g, label %.thread

.thread:                                          ; preds = %agxblen.exit.i.i, %bb.f
  %.val.i25.i.i178 = phi i8 [ %.val.i25.pre.i.i, %bb.f ], [ 0, %agxblen.exit.i.i ]
  %i.p = zext i8 %.val.i25.i.i178 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %1, i64 %i.k, i1 false)
  %i.r = trunc i64 %i.k to i8
  %i.s = load i8, ptr %i.m, align 1, !tbaa !8
  %i.t = add i8 %i.s, %i.r
  store i8 %i.t, ptr %i.m, align 1, !tbaa !8
  br label %agxbput.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %i.k, i1 false)
  %i.x = add i64 %i.u, %i.k
  store i64 %i.x, ptr %i.n, align 8, !tbaa !8
  br label %agxbput.exit

agxbput.exit:                                     ; preds = %bb.g, %.thread, %bb.e
  %.not162 = icmp eq i64 %i.a, 0
  br i1 %.not162, label %.thread183, label %.lr.ph

agxbput.exit.thread:                              ; preds = %bb.a
  %.not162195 = icmp eq i64 %i.a, 0
  br i1 %.not162195, label %agxbput.exit140, label %.lr.ph

.lr.ph:                                           ; preds = %agxbput.exit.thread, %agxbput.exit
  %.1197 = phi i1 [ false, %agxbput.exit.thread ], [ %.051, %agxbput.exit ] ; 2 uses
  %.not = icmp eq ptr %2, null
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 20 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %agxbputc.exit116
  %.050160 = phi i32 [ 0, %.lr.ph ], [ %.0, %agxbputc.exit116 ] ; 2 uses
  %.052159 = phi i8 [ 0, %.lr.ph ], [ %.153, %agxbputc.exit116 ] ; 14 uses
  %.054158 = phi i8 [ 0, %.lr.ph ], [ %.155, %agxbputc.exit116 ] ; 2 uses
  %.056157 = phi ptr [ %0, %.lr.ph ], [ %i.ab, %agxbputc.exit116 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.056157, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.056157, align 1, !tbaa !8 ; 10 uses
  %i.ad = zext i8 %i.ac to i32                    ; 9 uses
  %i.ae = icmp ult i8 %i.ac, 32
  %i.af = icmp eq i8 %i.ac, 127
  %.0.i = or i1 %i.ae, %i.af
  br i1 %.0.i, label %agxbsizeof.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ult i8 %i.ac, 127
  %i.ah = icmp ne i8 %i.ac, 92
  %or.cond.not = and i1 %i.ah, %i.ag
  br i1 %or.cond.not, label %bb.ad, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.i, %bb.h
  %.val.i.i = load i8, ptr %i.y, align 1, !tbaa !8 ; 3 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1            ; 2 uses
  %i.ai = load i64, ptr %i.z, align 8
  %i.aj = load i64, ptr %i.aa, align 8
  %i.ak = zext i8 %.val.i.i to i64
  %.0.i20.i = select i1 %.not.i.i, i64 %i.ai, i64 %i.ak
  %.0.i14.i = select i1 %.not.i.i, i64 %i.aj, i64 31
  %.not.i = icmp ult i64 %.0.i20.i, %.0.i14.i
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %agxbsizeof.exit.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i = load i8, ptr %i.y, align 1, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %agxbsizeof.exit.i
  %.val.i15.i = phi i8 [ %.val.i15.pre.i, %bb.j ], [ %.val.i.i, %agxbsizeof.exit.i ] ; 2 uses
  %.not.i16.i = icmp eq i8 %.val.i15.i, -1
  br i1 %.not.i16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = zext i8 %.val.i15.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %i.al
  store i8 92, ptr %i.am, align 1, !tbaa !8
  %i.an = load i8, ptr %i.y, align 1, !tbaa !8
  %i.ao = add i8 %i.an, 1
  store i8 %i.ao, ptr %i.y, align 1, !tbaa !8
  br label %agxbputc.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 92, ptr %i.ar, align 1, !tbaa !8
  %i.as = add i64 %i.ap, 1
  store i64 %i.as, ptr %i.z, align 8, !tbaa !8
  br label %agxbputc.exit

agxbputc.exit:                                    ; preds = %bb.l, %bb.m
  switch i8 %i.ac, label %agxbsizeof.exit.i73 [
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 12, label %bb.p
    i8 10, label %bb.q
    i8 13, label %bb.r
    i8 9, label %bb.s
    i8 11, label %bb.t
    i8 27, label %bb.u
    i8 92, label %agxbputc.exit102
  ]

bb.n:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.o:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.p:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.q:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.r:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.s:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.t:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

bb.u:                                             ; preds = %agxbputc.exit
  br label %agxbputc.exit102

agxbsizeof.exit.i73:                              ; preds = %agxbputc.exit
  %i.at = lshr i8 %i.ac, 6
  %i.au = or disjoint i8 %i.at, 48                ; 2 uses
  %.val.i.i70 = load i8, ptr %i.y, align 1, !tbaa !8 ; 3 uses
  %.not.i.i71 = icmp eq i8 %.val.i.i70, -1        ; 2 uses
  %i.av = load i64, ptr %i.z, align 8
  %i.aw = load i64, ptr %i.aa, align 8
  %i.ax = zext i8 %.val.i.i70 to i64
  %.0.i20.i74 = select i1 %.not.i.i71, i64 %i.av, i64 %i.ax
  %.0.i14.i75 = select i1 %.not.i.i71, i64 %i.aw, i64 31
  %.not.i76 = icmp ult i64 %.0.i20.i74, %.0.i14.i75
  br i1 %.not.i76, label %bb.w, label %bb.v

bb.v:                                             ; preds = %agxbsizeof.exit.i73
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i77 = load i8, ptr %i.y, align 1, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %agxbsizeof.exit.i73
  %.val.i15.i78 = phi i8 [ %.val.i15.pre.i77, %bb.v ], [ %.val.i.i70, %agxbsizeof.exit.i73 ] ; 2 uses
  %.not.i16.i79 = icmp eq i8 %.val.i15.i78, -1
  br i1 %.not.i16.i79, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = zext i8 %.val.i15.i78 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  store i8 %i.au, ptr %i.az, align 1, !tbaa !8
  %i.ba = load i8, ptr %i.y, align 1, !tbaa !8
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.y, align 1, !tbaa !8
  %.pre = load i64, ptr %i.z, align 8
  br label %agxbputc.exit80

bb.y:                                             ; preds = %bb.w
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 %i.au, ptr %i.be, align 1, !tbaa !8
  %i.bf = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.z, align 8, !tbaa !8
  %.val.i.i81.pr = load i8, ptr %i.y, align 1, !tbaa !8
  br label %agxbputc.exit80

agxbputc.exit80:                                  ; preds = %bb.x, %bb.y
  %i.bg = phi i64 [ %.pre, %bb.x ], [ %i.bf, %bb.y ]
  %.val.i.i81 = phi i8 [ %i.bb, %bb.x ], [ %.val.i.i81.pr, %bb.y ] ; 3 uses
  %i.bh = lshr i8 %i.ac, 3
  %i.bi = and i8 %i.bh, 7
  %i.bj = or disjoint i8 %i.bi, 48                ; 2 uses
  %.not.i.i82 = icmp eq i8 %.val.i.i81, -1        ; 2 uses
  %i.bk = load i64, ptr %i.aa, align 8
  %i.bl = zext i8 %.val.i.i81 to i64
  %.0.i20.i85 = select i1 %.not.i.i82, i64 %i.bg, i64 %i.bl
  %.0.i14.i86 = select i1 %.not.i.i82, i64 %i.bk, i64 31
  %.not.i87 = icmp ult i64 %.0.i20.i85, %.0.i14.i86
  br i1 %.not.i87, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %agxbputc.exit80
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i88 = load i8, ptr %i.y, align 1, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %agxbputc.exit80
  %.val.i15.i89 = phi i8 [ %.val.i15.pre.i88, %bb.z ], [ %.val.i.i81, %agxbputc.exit80 ] ; 2 uses
  %.not.i16.i90 = icmp eq i8 %.val.i15.i89, -1
  br i1 %.not.i16.i90, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = zext i8 %.val.i15.i89 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %i.bm
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !8
  %i.bo = load i8, ptr %i.y, align 1, !tbaa !8
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.y, align 1, !tbaa !8
  br label %agxbputc.exit91

bb.ac:                                            ; preds = %bb.aa
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %i.bj, ptr %i.bs, align 1, !tbaa !8
  %i.bt = add i64 %i.bq, 1
  store i64 %i.bt, ptr %i.z, align 8, !tbaa !8
  br label %agxbputc.exit91

agxbputc.exit91:                                  ; preds = %bb.ab, %bb.ac
  %i.bu = and i32 %i.ad, 7
  %i.bv = or disjoint i32 %i.bu, 48
  br label %agxbputc.exit102

bb.ad:                                            ; preds = %bb.i
  br i1 %.not, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.ad) #14
  %.not68 = icmp eq ptr %i.bw, null
  br i1 %.not68, label %bb.aj, label %agxbsizeof.exit.i95

agxbsizeof.exit.i95:                              ; preds = %bb.ae
  %.val.i.i92 = load i8, ptr %i.y, align 1, !tbaa !8 ; 3 uses
  %.not.i.i93 = icmp eq i8 %.val.i.i92, -1        ; 2 uses
  %i.bx = load i64, ptr %i.z, align 8
  %i.by = load i64, ptr %i.aa, align 8
  %i.bz = zext i8 %.val.i.i92 to i64
  %.0.i20.i96 = select i1 %.not.i.i93, i64 %i.bx, i64 %i.bz
  %.0.i14.i97 = select i1 %.not.i.i93, i64 %i.by, i64 31
  %.not.i98 = icmp ult i64 %.0.i20.i96, %.0.i14.i97
  br i1 %.not.i98, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %agxbsizeof.exit.i95
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i99 = load i8, ptr %i.y, align 1, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %agxbsizeof.exit.i95
  %.val.i15.i100 = phi i8 [ %.val.i15.pre.i99, %bb.af ], [ %.val.i.i92, %agxbsizeof.exit.i95 ] ; 2 uses
  %.not.i16.i101 = icmp eq i8 %.val.i15.i100, -1
  br i1 %.not.i16.i101, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = zext i8 %.val.i15.i100 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ca
  store i8 92, ptr %i.cb, align 1, !tbaa !8
  %i.cc = load i8, ptr %i.y, align 1, !tbaa !8
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.y, align 1, !tbaa !8
  br label %agxbputc.exit102

bb.ai:                                            ; preds = %bb.ag
  %i.ce = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 92, ptr %i.cg, align 1, !tbaa !8
  %i.ch = add i64 %i.ce, 1
  store i64 %i.ch, ptr %i.z, align 8, !tbaa !8
  br label %agxbputc.exit102

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %i.ci = trunc nuw i8 %.052159 to i1
  %i.cj = trunc nuw i8 %.054158 to i1
  %or.cond3 = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond3, label %agxbputc.exit102, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %cond = icmp ne i8 %i.ac, 32                    ; 2 uses
  %brmerge.not = select i1 %cond, i1 %.1197, i1 false
  %not.cond = xor i1 %cond, true
  %.mux = zext i1 %not.cond to i8
  br i1 %brmerge.not, label %bb.al, label %agxbputc.exit102

bb.al:                                            ; preds = %bb.ak
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.ad, i64 14)
  %.not69 = icmp eq ptr %memchr, null
  br i1 %.not69, label %bb.am, label %agxbputc.exit102

bb.am:                                            ; preds = %bb.al
  %i.ck = icmp eq i8 %i.ac, 35
  br i1 %i.ck, label %bb.an, label %agxbputc.exit102

bb.an:                                            ; preds = %bb.am
  %i.cl = icmp ult i32 %.050160, 33
  br i1 %i.cl, label %switch.lookup, label %agxbputc.exit102

switch.lookup:                                    ; preds = %bb.an
  %i.cm = zext nneg i32 %.050160 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.fmtquote, i64 %i.cm
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %agxbputc.exit102

agxbputc.exit102:                                 ; preds = %bb.an, %switch.lookup, %bb.ak, %bb.al, %bb.ai, %bb.ah, %agxbputc.exit91, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %agxbputc.exit, %bb.aj, %bb.am
  %.155 = phi i8 [ 1, %agxbputc.exit91 ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %agxbputc.exit ], [ 0, %bb.ak ], [ %.054158, %bb.aj ], [ 0, %switch.lookup ], [ 1, %bb.ai ], [ 0, %bb.am ], [ 1, %bb.ah ], [ 0, %bb.al ], [ 0, %bb.an ] ; 2 uses
  %.153 = phi i8 [ %.052159, %agxbputc.exit91 ], [ %.052159, %bb.n ], [ %.052159, %bb.o ], [ %.052159, %bb.p ], [ %.052159, %bb.q ], [ %.052159, %bb.r ], [ %.052159, %bb.s ], [ %.052159, %bb.t ], [ %.052159, %bb.u ], [ %.052159, %agxbputc.exit ], [ %.mux, %bb.ak ], [ %.052159, %bb.aj ], [ %switch.load, %switch.lookup ], [ %.052159, %bb.ai ], [ 0, %bb.am ], [ %.052159, %bb.ah ], [ 1, %bb.al ], [ 0, %bb.an ] ; 3 uses
  %.0 = phi i32 [ %i.bv, %agxbputc.exit91 ], [ 97, %bb.n ], [ 98, %bb.o ], [ 102, %bb.p ], [ 110, %bb.q ], [ 114, %bb.r ], [ 116, %bb.s ], [ 118, %bb.t ], [ 69, %bb.u ], [ 92, %agxbputc.exit ], [ %i.ad, %bb.ak ], [ %i.ad, %bb.aj ], [ 35, %switch.lookup ], [ %i.ad, %bb.ai ], [ %i.ad, %bb.am ], [ %i.ad, %bb.ah ], [ %i.ad, %bb.al ], [ 35, %bb.an ] ; 2 uses
  %i.cn = trunc nuw nsw i32 %.0 to i8             ; 2 uses
  %.val.i.i106 = load i8, ptr %i.y, align 1, !tbaa !8 ; 3 uses
  %.not.i.i107 = icmp eq i8 %.val.i.i106, -1      ; 2 uses
  %i.co = load i64, ptr %i.z, align 8
  %i.cp = load i64, ptr %i.aa, align 8
  %i.cq = zext i8 %.val.i.i106 to i64
  %.0.i20.i110 = select i1 %.not.i.i107, i64 %i.co, i64 %i.cq
  %.0.i14.i111 = select i1 %.not.i.i107, i64 %i.cp, i64 31
  %.not.i112 = icmp ult i64 %.0.i20.i110, %.0.i14.i111
  br i1 %.not.i112, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %agxbputc.exit102
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i113 = load i8, ptr %i.y, align 1, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %agxbputc.exit102
  %.val.i15.i114 = phi i8 [ %.val.i15.pre.i113, %bb.ao ], [ %.val.i.i106, %agxbputc.exit102 ] ; 2 uses
  %.not.i16.i115 = icmp eq i8 %.val.i15.i114, -1
  br i1 %.not.i16.i115, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cr = zext i8 %.val.i15.i114 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !8
  %i.ct = load i8, ptr %i.y, align 1, !tbaa !8
  %i.cu = add i8 %i.ct, 1
  store i8 %i.cu, ptr %i.y, align 1, !tbaa !8
  br label %agxbputc.exit116

bb.ar:                                            ; preds = %bb.ap
  %i.cv = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 %i.cn, ptr %i.cx, align 1, !tbaa !8
  %i.cy = add i64 %i.cv, 1
  store i64 %i.cy, ptr %i.z, align 8, !tbaa !8
  br label %agxbputc.exit116

agxbputc.exit116:                                 ; preds = %bb.aq, %bb.ar
  %i.cz = icmp ult ptr %i.ab, %i.b
  br i1 %i.cz, label %bb.h, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %agxbputc.exit116
  br i1 %.not64, label %agxbput.exit140, label %bb.as

bb.as:                                            ; preds = %._crit_edge
  %i.da = trunc nuw i8 %.155 to i1
  br i1 %i.da, label %bb.az, label %.thread183

.thread183:                                       ; preds = %agxbput.exit, %bb.as
  %.1196 = phi i1 [ %.1197, %bb.as ], [ %.051, %agxbput.exit ]
  %.052.lcssa182186 = phi i8 [ %.153, %bb.as ], [ 0, %agxbput.exit ] ; 3 uses
  %i.db = zext i1 %.1196 to i64
  %i.dc = xor i8 %.052.lcssa182186, 1
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, %i.db            ; 2 uses
  %.not65 = icmp eq i64 %i.de, 0
  br i1 %.not65, label %bb.az, label %bb.at

bb.at:                                            ; preds = %.thread183
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 5 uses
  %.val.i = load i8, ptr %i.df, align 1, !tbaa !8 ; 2 uses
  %.not.i117 = icmp eq i8 %.val.i, -1
  br i1 %.not.i117, label %agxbsizeof.exit.i.i120, label %agxblen.exit.i118

agxblen.exit.i118:                                ; preds = %bb.at
  %i.dg = zext i8 %.val.i to i64                  ; 2 uses
  %i.dh = call noalias ptr @strndup(ptr noundef nonnull readonly %3, i64 noundef %i.dg) #15 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.au, label %agxbdisown.exit

bb.au:                                            ; preds = %agxblen.exit.i118
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dk = add nuw nsw i64 %i.dg, 1
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.2, i64 noundef %i.dk) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i120:                           ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !8  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !8
  %.not.i7.i = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i7.i, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %agxbsizeof.exit.i.i120
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.df, align 1, !tbaa !8 ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i15.pre.i.i, -1
  br i1 %.not.i16.i.i, label %..thread_crit_edge.i, label %bb.aw

..thread_crit_edge.i:                             ; preds = %bb.av
  %.pre.i = load i64, ptr %i.dm, align 8, !tbaa !8
  br label %.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.dq = zext i8 %.val.i15.pre.i.i to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq
  store i8 0, ptr %i.dr, align 1, !tbaa !8
  br label %agxbputc.exit.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %agxbsizeof.exit.i.i120
  %i.ds = phi i64 [ %.pre.i, %..thread_crit_edge.i ], [ %i.dn, %agxbsizeof.exit.i.i120 ]
  %i.dt = load ptr, ptr %3, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !8
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %.thread.i, %bb.aw
  %i.dv = load ptr, ptr %3, align 8, !tbaa !8
  br label %agxbdisown.exit

agxbdisown.exit:                                  ; preds = %agxblen.exit.i118, %agxbputc.exit.i
  %.0.i119 = phi ptr [ %i.dv, %agxbputc.exit.i ], [ %i.dh, %agxblen.exit.i118 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i119, i64 %i.de ; 3 uses
  %i.dx = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dw) #14 ; 7 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %agxbput.exit130, label %agxblen.exit.i.i124

agxblen.exit.i.i124:                              ; preds = %agxbdisown.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ea = icmp ugt i64 %i.dx, 31
  br i1 %i.ea, label %bb.ax, label %.thread190

bb.ax:                                            ; preds = %agxblen.exit.i.i124
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef %i.dx)
  %.val.i25.pre.i.i129 = load i8, ptr %i.df, align 1, !tbaa !8 ; 2 uses
  %.not.i26.i.i128 = icmp eq i8 %.val.i25.pre.i.i129, -1
  br i1 %.not.i26.i.i128, label %bb.ay, label %.thread190

.thread190:                                       ; preds = %agxblen.exit.i.i124, %bb.ax
  %.val.i25.i.i127193 = phi i8 [ %.val.i25.pre.i.i129, %bb.ax ], [ 0, %agxblen.exit.i.i124 ]
  %i.eb = zext i8 %.val.i25.i.i127193 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 1 %i.dw, i64 %i.dx, i1 false)
  %i.ed = trunc i64 %i.dx to i8
  %i.ee = load i8, ptr %i.df, align 1, !tbaa !8
  %i.ef = add i8 %i.ee, %i.ed
  store i8 %i.ef, ptr %i.df, align 1, !tbaa !8
  br label %agxbput.exit130

bb.ay:                                            ; preds = %bb.ax
  %i.eg = load i64, ptr %i.dz, align 8, !tbaa !8  ; 2 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr nonnull readonly align 1 %i.dw, i64 %i.dx, i1 false)
  %i.ej = add i64 %i.eg, %i.dx
  store i64 %i.ej, ptr %i.dz, align 8, !tbaa !8
  br label %agxbput.exit130

agxbput.exit130:                                  ; preds = %agxbdisown.exit, %.thread190, %bb.ay
  tail call void @free(ptr noundef nonnull %.0.i119) #15
  br label %bb.az

bb.az:                                            ; preds = %.thread183, %agxbput.exit130, %bb.as
  %.054.lcssa181189 = phi i1 [ false, %.thread183 ], [ false, %agxbput.exit130 ], [ true, %bb.as ]
  %.052.lcssa182187 = phi i8 [ %.052.lcssa182186, %.thread183 ], [ %.052.lcssa182186, %agxbput.exit130 ], [ %.153, %bb.as ]
  %.not66 = icmp ne ptr %2, null
  %i.ek = trunc nuw i8 %.052.lcssa182187 to i1
  %or.cond5 = select i1 %.054.lcssa181189, i1 true, i1 %i.ek
  %or.cond = select i1 %.not66, i1 %or.cond5, i1 false
  br i1 %or.cond, label %bb.ba, label %agxbput.exit140

bb.ba:                                            ; preds = %bb.az
  %i.el = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #14 ; 7 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %agxbput.exit140, label %agxblen.exit.i.i134

agxblen.exit.i.i134:                              ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 4 uses
  %.val.i.i.i131 = load i8, ptr %i.en, align 1, !tbaa !8 ; 3 uses
  %.not.i.i.i132 = icmp eq i8 %.val.i.i.i131, -1  ; 2 uses
  %i.eo = zext i8 %.val.i.i.i131 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8
  %.0.i30.i.i135 = select i1 %.not.i.i.i132, i64 %i.eq, i64 31
  %.0.i24.i.i136 = select i1 %.not.i.i.i132, i64 %i.es, i64 %i.eo
  %i.et = sub i64 %.0.i30.i.i135, %.0.i24.i.i136
  %i.eu = icmp ugt i64 %i.el, %i.et
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %agxblen.exit.i.i134
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef %i.el)
  %.val.i25.pre.i.i139 = load i8, ptr %i.en, align 1, !tbaa !8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %agxblen.exit.i.i134
  %.val.i25.i.i137 = phi i8 [ %.val.i25.pre.i.i139, %bb.bb ], [ %.val.i.i.i131, %agxblen.exit.i.i134 ] ; 2 uses
  %.not.i26.i.i138 = icmp eq i8 %.val.i25.i.i137, -1
  br i1 %.not.i26.i.i138, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = zext i8 %.val.i25.i.i137 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull readonly align 1 %2, i64 %i.el, i1 false)
  %i.ex = trunc i64 %i.el to i8
  %i.ey = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ez = add i8 %i.ey, %i.ex
  store i8 %i.ez, ptr %i.en, align 1, !tbaa !8
  br label %agxbput.exit140

bb.be:                                            ; preds = %bb.bc
  %i.fa = load i64, ptr %i.er, align 8, !tbaa !8  ; 2 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr nonnull readonly align 1 %2, i64 %i.el, i1 false)
  %i.fd = add i64 %i.fa, %i.el
  store i64 %i.fd, ptr %i.er, align 8, !tbaa !8
  br label %agxbput.exit140

agxbput.exit140:                                  ; preds = %agxbput.exit.thread, %bb.be, %bb.bd, %bb.ba, %bb.az, %._crit_edge
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 2 uses
  %.val.i141 = load i8, ptr %i.fe, align 1, !tbaa !8 ; 2 uses
  %.not.i142 = icmp eq i8 %.val.i141, -1
  br i1 %.not.i142, label %agxbsizeof.exit.i.i145, label %agxblen.exit.i143

agxblen.exit.i143:                                ; preds = %agxbput.exit140
  %i.ff = zext i8 %.val.i141 to i64               ; 2 uses
  %i.fg = call noalias ptr @strndup(ptr noundef nonnull readonly %3, i64 noundef %i.ff) #15 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.bf, label %agxbdisown.exit153

bb.bf:                                            ; preds = %agxblen.exit.i143
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fj = add nuw nsw i64 %i.ff, 1
  %i.fk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.2, i64 noundef %i.fj) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

agxbsizeof.exit.i.i145:                           ; preds = %agxbput.exit140
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_0
