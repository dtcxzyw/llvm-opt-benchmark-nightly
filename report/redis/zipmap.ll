inline.NumInlined: 36
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"klen < freelen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"zipmap.c\00", align 1
@__PRETTY_FUNCTION__.zipmapSet = private unnamed_addr constant [111 x i8] c"unsigned char *zipmapSet(unsigned char *, unsigned char *, unsigned int, unsigned char *, unsigned int, int *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @zipmapNew() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2) ptr @zmalloc(i64 noundef 2) #12 ; 3 uses
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 -1, ptr %i.b, align 1, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @zipmapSet(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %4, %2
  %i.b = icmp ugt i32 %2, 253
  %spec.select.v.i = select i1 %i.b, i32 7, i32 3
  %spec.select.i = add i32 %i.a, %spec.select.v.i ; 2 uses
  %i.c = icmp ugt i32 %4, 253
  %i.d = add i32 %spec.select.i, 4
  %.1.i = select i1 %i.c, i32 %i.d, i32 %spec.select.i ; 8 uses
  %i.e = zext i32 %.1.i to i64                    ; 2 uses
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.c, %bb.h
  %.033.us.i = phi ptr [ %i.af, %bb.h ], [ %i.f, %bb.c ] ; 4 uses
  %i.g = load i8, ptr %.033.us.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 -1, label %zipmapLookupRaw.exit.thread
    i8 -2, label %bb.d
  ]

zipmapLookupRaw.exit.thread:                      ; preds = %.split.us.i
  %i.h = ptrtoint ptr %.033.us.i to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 1
  br label %bb.q

bb.d:                                             ; preds = %.split.us.i
  %i.m = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 1
  %.0.copyload.i.us.i = load i32, ptr %i.m, align 1
  br label %zipmapDecodeLength.exit.us.i

bb.e:                                             ; preds = %.split.us.i
  %i.n = zext i8 %i.g to i32
  br label %zipmapDecodeLength.exit.us.i

zipmapDecodeLength.exit.us.i:                     ; preds = %bb.e, %bb.d
  %.0.i.us.i = phi i32 [ %i.n, %bb.e ], [ %.0.copyload.i.us.i, %bb.d ] ; 2 uses
  %i.o = icmp ult i32 %.0.i.us.i, 254
  %i.p = select i1 %i.o, i32 1, i32 5
  %i.q = add i32 %i.p, %.0.i.us.i
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 %i.r ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 2 uses
  %i.u = icmp ult i8 %i.t, -2
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.0.copyload.i45.us.i = load i32, ptr %i.v, align 1
  br label %bb.h

bb.g:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.w = zext i8 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i46.us.i = phi i32 [ %i.w, %bb.g ], [ %.0.copyload.i45.us.i, %bb.f ] ; 2 uses
  %i.x = icmp ult i32 %.0.i46.us.i, 254
  %i.y = select i1 %i.x, i64 1, i64 5
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = add i32 %.0.i46.us.i, 1
  %i.ac = zext i8 %i.aa to i32
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  br label %.split.us.i, !llvm.loop !14

.split.i:                                         ; preds = %bb.c
  %i.ag = zext i32 %2 to i64
  br label %.split.split.i

.split.split.i:                                   ; preds = %.split.i, %bb.p
  %.035.i = phi ptr [ %.136.i, %bb.p ], [ null, %.split.i ] ; 8 uses
  %.033.i = phi ptr [ %i.bf, %bb.p ], [ %i.f, %.split.i ] ; 6 uses
  %i.ah = load i8, ptr %.033.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.ah, label %bb.i [
    i8 -1, label %zipmapLookupRaw.exit
    i8 -2, label %bb.j
  ]

bb.i:                                             ; preds = %.split.split.i
  %i.ai = zext i8 %i.ah to i32
  br label %zipmapDecodeLength.exit.i

bb.j:                                             ; preds = %.split.split.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.033.i, i64 1
  %.0.copyload.i.i = load i32, ptr %i.aj, align 1
  br label %zipmapDecodeLength.exit.i

zipmapDecodeLength.exit.i:                        ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ %i.ai, %bb.i ], [ %.0.copyload.i.i, %bb.j ] ; 3 uses
  %i.ak = icmp ult i32 %.0.i.i, 254
  %i.al = select i1 %i.ak, i32 1, i32 5           ; 2 uses
  %i.am = icmp eq ptr %.035.i, null
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %zipmapDecodeLength.exit.i
  %i.an = icmp eq i32 %.0.i.i, %2
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.033.i, i64 %i.ao
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull readonly %1, i64 %i.ag)
  %.not42.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i84 = select i1 %.not42.i, ptr %.033.i, ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %zipmapDecodeLength.exit.i
  %.136.i = phi ptr [ %spec.select.i84, %bb.l ], [ %.035.i, %zipmapDecodeLength.exit.i ], [ null, %bb.k ]
  %i.aq = add i32 %i.al, %.0.i.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.033.i, i64 %i.ar ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13  ; 2 uses
  %i.au = icmp ult i8 %i.at, -2
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = zext i8 %i.at to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.0.copyload.i45.i = load i32, ptr %i.aw, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i46.i = phi i32 [ %i.av, %bb.n ], [ %.0.copyload.i45.i, %bb.o ] ; 2 uses
  %i.ax = icmp ult i32 %.0.i46.i, 254
  %i.ay = select i1 %i.ax, i64 1, i64 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = add i32 %.0.i46.i, 1
  %i.bc = zext i8 %i.ba to i32
  %i.bd = add i32 %i.bb, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  br label %.split.split.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.split.i
  %i.bg = ptrtoint ptr %.033.i to i64
  %i.bh = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = add i32 %i.bj, 1                        ; 3 uses
  %i.bl = icmp eq ptr %.035.i, null
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %zipmapLookupRaw.exit.thread, %zipmapLookupRaw.exit
  %i.bm = phi i32 [ %i.l, %zipmapLookupRaw.exit.thread ], [ %i.bk, %zipmapLookupRaw.exit ] ; 2 uses
  %i.bn = add i32 %i.bm, %.1.i                    ; 4 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %i.bo) #13 ; 6 uses
  %i.bq = add i32 %i.bn, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br
  store i8 -1, ptr %i.bs, align 1, !tbaa !13
  %i.bt = zext i32 %i.bm to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -1 ; 2 uses
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !13  ; 2 uses
  %i.bx = icmp ult i8 %i.bw, -2
  br i1 %i.bx, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = add nuw i8 %i.bw, 1
  store i8 %i.by, ptr %i.bp, align 1, !tbaa !13
  br label %bb.aa

bb.s:                                             ; preds = %zipmapLookupRaw.exit
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %5, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bz = load i8, ptr %.035.i, align 1, !tbaa !13 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, -2
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = zext i8 %i.bz to i32
  br label %zipmapRawKeyLength.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.cc, align 1
  br label %zipmapRawKeyLength.exit.i

zipmapRawKeyLength.exit.i:                        ; preds = %bb.w, %bb.v
  %.0.i.i.i = phi i32 [ %i.cb, %bb.v ], [ %.0.copyload.i.i.i, %bb.w ] ; 2 uses
  %i.cd = icmp ult i32 %.0.i.i.i, 254
  %i.ce = select i1 %i.cd, i32 1, i32 5
  %i.cf = add i32 %i.ce, %.0.i.i.i                ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13  ; 2 uses
  %i.cj = icmp ult i8 %i.ci, -2
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.ck = zext i8 %i.ci to i32
  br label %zipmapRawEntryLength.exit

bb.y:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %.0.copyload.i.i3.i = load i32, ptr %i.cl, align 1
  br label %zipmapRawEntryLength.exit

zipmapRawEntryLength.exit:                        ; preds = %bb.x, %bb.y
  %.0.i.i4.i = phi i32 [ %i.ck, %bb.x ], [ %.0.copyload.i.i3.i, %bb.y ] ; 2 uses
  %i.cm = icmp ult i32 %.0.i.i4.i, 254
  %i.cn = select i1 %i.cm, i32 1, i32 5           ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add i32 %i.cf, 1
  %i.ct = add i32 %i.cs, %.0.i.i4.i
  %i.cu = add i32 %i.ct, %i.cr
  %i.cv = add i32 %i.cu, %i.cn                    ; 5 uses
  %i.cw = icmp ult i32 %i.cv, %.1.i
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %zipmapRawEntryLength.exit
  %i.cx = ptrtoint ptr %.035.i to i64
  %i.cy = sub i64 %i.cx, %i.bh                    ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = sub i32 %i.bk, %i.cv
  %i.db = add i32 %i.da, %.1.i                    ; 3 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %i.dc) #13 ; 3 uses
  %i.de = add i32 %i.db, -1
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  store i8 -1, ptr %i.dg, align 1, !tbaa !13
  %i.dh = and i64 %i.cy, 4294967295
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.e
  %i.dk = zext i32 %i.cv to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk
  %i.dm = add i32 %i.cv, %i.cz
  %i.dn = sub i32 %i.bj, %i.dm
  %i.do = zext i32 %i.dn to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr align 1 %i.dl, i64 %i.do, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %zipmapRawEntryLength.exit, %bb.z, %bb.q, %bb.r
  %.093 = phi i32 [ %i.bn, %bb.r ], [ %i.bn, %bb.q ], [ %i.db, %bb.z ], [ %i.bk, %zipmapRawEntryLength.exit ] ; 2 uses
  %.073 = phi i32 [ %.1.i, %bb.r ], [ %.1.i, %bb.q ], [ %.1.i, %bb.z ], [ %i.cv, %zipmapRawEntryLength.exit ] ; 4 uses
  %.071 = phi ptr [ %i.bp, %bb.r ], [ %i.bp, %bb.q ], [ %i.dd, %bb.z ], [ %0, %zipmapRawEntryLength.exit ] ; 3 uses
  %.0 = phi ptr [ %i.bv, %bb.r ], [ %i.bv, %bb.q ], [ %i.di, %bb.z ], [ %.035.i, %zipmapRawEntryLength.exit ] ; 4 uses
  %i.dp = sub i32 %.073, %.1.i                    ; 3 uses
  %i.dq = icmp ugt i32 %i.dp, 3
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dr = ptrtoint ptr %.0 to i64
  %i.ds = ptrtoint ptr %.071 to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.dw = zext i32 %.073 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dw
  %i.dy = add i32 %.073, %i.du
  %.neg83 = xor i32 %i.dy, -1
  %i.dz = add i32 %.093, %.neg83
  %i.ea = zext i32 %i.dz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dx, i64 %i.ea, i1 false)
  %i.eb = sub i32 %.093, %i.dp                    ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = tail call ptr @zrealloc(ptr noundef %.071, i64 noundef %i.ec) #13 ; 3 uses
  %i.ee = add i32 %i.eb, -1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ef
  store i8 -1, ptr %i.eg, align 1, !tbaa !13
  %i.eh = and i64 %i.dt, 4294967295
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eh
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ej = trunc nuw nsw i32 %i.dp to i8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.172 = phi ptr [ %i.ed, %bb.ab ], [ %.071, %bb.ac ]
  %.070 = phi i8 [ 0, %bb.ab ], [ %i.ej, %bb.ac ]
  %.1 = phi ptr [ %i.ei, %bb.ab ], [ %.0, %bb.ac ] ; 3 uses
  %i.ek = icmp ult i32 %2, 254
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.el = trunc nuw i32 %2 to i8
  br label %zipmapEncodeLength.exit

bb.af:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i32 %2, ptr %i.em, align 1
  br label %zipmapEncodeLength.exit

zipmapEncodeLength.exit:                          ; preds = %bb.ae, %bb.af
  %.sink = phi i8 [ %i.el, %bb.ae ], [ -2, %bb.af ]
  %.0.i = phi i64 [ 1, %bb.ae ], [ 5, %bb.af ]
  store i8 %.sink, ptr %.1, align 1, !tbaa !13
  %i.en = icmp ult i32 %2, %.073
  br i1 %i.en, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %zipmapEncodeLength.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, ptr noundef nonnull @__PRETTY_FUNCTION__.zipmapSet) #14
  unreachable

bb.ah:                                            ; preds = %zipmapEncodeLength.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.1, i64 %.0.i ; 2 uses
  %i.ep = zext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr align 1 %1, i64 %i.ep, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep ; 3 uses
  %i.er = icmp ult i32 %4, 254
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = trunc nuw i32 %4 to i8
  br label %zipmapEncodeLength.exit86

bb.aj:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store i32 %4, ptr %i.et, align 1
  br label %zipmapEncodeLength.exit86

zipmapEncodeLength.exit86:                        ; preds = %bb.ai, %bb.aj
  %.sink98 = phi i8 [ %i.es, %bb.ai ], [ -2, %bb.aj ]
  %.0.i85 = phi i64 [ 1, %bb.ai ], [ 5, %bb.aj ]
  store i8 %.sink98, ptr %i.eq, align 1, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.0.i85 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %.070, ptr %i.eu, align 1, !tbaa !13
  %i.ew = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr align 1 %3, i64 %i.ew, i1 false)
  ret ptr %.172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipmapDel(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %zipmapLookupRaw.exit.thread, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = zext i32 %2 to i64
  br label %.split.split.i

.split.split.i:                                   ; preds = %.split.i, %bb.i
  %.035.i = phi ptr [ %.136.i, %bb.i ], [ null, %.split.i ] ; 9 uses
  %.033.i = phi ptr [ %i.aa, %bb.i ], [ %i.a, %.split.i ] ; 6 uses
  %i.c = load i8, ptr %.033.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 -1, label %zipmapLookupRaw.exit
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %.split.split.i
  %i.d = zext i8 %i.c to i32
  br label %zipmapDecodeLength.exit.i

bb.c:                                             ; preds = %.split.split.i
  %i.e = getelementptr inbounds nuw i8, ptr %.033.i, i64 1
  %.0.copyload.i.i = load i32, ptr %i.e, align 1
  br label %zipmapDecodeLength.exit.i

zipmapDecodeLength.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %.0.copyload.i.i, %bb.c ] ; 3 uses
  %i.f = icmp ult i32 %.0.i.i, 254
  %i.g = select i1 %i.f, i32 1, i32 5             ; 2 uses
  %i.h = icmp eq ptr %.035.i, null
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %zipmapDecodeLength.exit.i
  %i.i = icmp eq i32 %.0.i.i, %2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.033.i, i64 %i.j
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull readonly %1, i64 %i.b)
  %.not42.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %.not42.i, ptr %.033.i, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %zipmapDecodeLength.exit.i
  %.136.i = phi ptr [ %spec.select.i, %bb.e ], [ %.035.i, %zipmapDecodeLength.exit.i ], [ null, %bb.d ]
  %i.l = add i32 %i.g, %.0.i.i
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.033.i, i64 %i.m ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13    ; 2 uses
  %i.p = icmp ult i8 %i.o, -2
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = zext i8 %i.o to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.0.copyload.i45.i = load i32, ptr %i.r, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i46.i = phi i32 [ %i.q, %bb.g ], [ %.0.copyload.i45.i, %bb.h ] ; 2 uses
  %i.s = icmp ult i32 %.0.i46.i, 254
  %i.t = select i1 %i.s, i64 1, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = add i32 %.0.i46.i, 1
  %i.x = zext i8 %i.v to i32
  %i.y = add i32 %i.w, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  br label %.split.split.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.split.i
  %i.ab = ptrtoint ptr %.033.i to i64
  %i.ac = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  %.not = icmp eq ptr %.035.i, null
  br i1 %.not, label %zipmapLookupRaw.exit.thread, label %bb.j

bb.j:                                             ; preds = %zipmapLookupRaw.exit
  %i.ag = load i8, ptr %.035.i, align 1, !tbaa !13 ; 2 uses
  %i.ah = icmp ult i8 %i.ag, -2
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = zext i8 %i.ag to i32
  br label %zipmapRawKeyLength.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.aj, align 1
  br label %zipmapRawKeyLength.exit.i

zipmapRawKeyLength.exit.i:                        ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %.0.copyload.i.i.i, %bb.l ] ; 2 uses
  %i.ak = icmp ult i32 %.0.i.i.i, 254
  %i.al = select i1 %i.ak, i32 1, i32 5
  %i.am = add i32 %i.al, %.0.i.i.i                ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.an ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13  ; 2 uses
  %i.aq = icmp ult i8 %i.ap, -2
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.ar = zext i8 %i.ap to i32
  br label %zipmapRawEntryLength.exit

bb.n:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.0.copyload.i.i3.i = load i32, ptr %i.as, align 1
  br label %zipmapRawEntryLength.exit

zipmapRawEntryLength.exit:                        ; preds = %bb.m, %bb.n
  %.0.i.i4.i = phi i32 [ %i.ar, %bb.m ], [ %.0.copyload.i.i3.i, %bb.n ] ; 2 uses
  %i.at = icmp ult i32 %.0.i.i4.i, 254
  %i.au = select i1 %i.at, i32 1, i32 5           ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i32
  %i.az = add i32 %i.am, 1
  %i.ba = add i32 %i.az, %.0.i.i4.i
  %i.bb = add i32 %i.ba, %i.ay
  %i.bc = add i32 %i.bb, %i.au                    ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.bd
  %i.bf = zext i32 %i.af to i64
  %i.bg = ptrtoint ptr %.035.i to i64
  %i.bh = sub i64 %i.bg, %i.ac
  %i.bi = add nsw i64 %i.bh, %i.bd
  %.neg = xor i64 %i.bi, -1
  %i.bj = add i64 %.neg, %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.035.i, ptr nonnull align 1 %i.be, i64 %i.bj, i1 false)
  %i.bk = sub i32 %i.af, %i.bc                    ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %i.bl) #13 ; 5 uses
  %i.bn = add i32 %i.bk, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  store i8 -1, ptr %i.bp, align 1, !tbaa !13
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !13  ; 2 uses
  %i.br = icmp ult i8 %i.bq, -2
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %zipmapRawEntryLength.exit
  %i.bs = add i8 %i.bq, -1
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %zipmapRawEntryLength.exit
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.q, label %.sink.split

zipmapLookupRaw.exit.thread:                      ; preds = %bb.a, %zipmapLookupRaw.exit
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %zipmapLookupRaw.exit.thread, %bb.p
  %.sink = phi i32 [ 1, %bb.p ], [ 0, %zipmapLookupRaw.exit.thread ]
  %.0.ph = phi ptr [ %i.bm, %bb.p ], [ %0, %zipmapLookupRaw.exit.thread ]
  store i32 %.sink, ptr %3, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %zipmapLookupRaw.exit.thread, %bb.p
  %.0 = phi ptr [ %0, %zipmapLookupRaw.exit.thread ], [ %i.bm, %bb.p ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @zipmapRewind(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @zipmapNext(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %1, align 8, !tbaa !16
  %i.c = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.d = icmp ult i8 %i.c, -2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext i8 %i.c to i32
  br label %zipmapDecodeLength.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.0.copyload.i = load i32, ptr %i.f, align 1
  br label %zipmapDecodeLength.exit

zipmapDecodeLength.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.e, %bb.d ], [ %.0.copyload.i, %bb.e ] ; 2 uses
  store i32 %.0.i, ptr %2, align 4, !tbaa !9
  %i.g = icmp ult i32 %.0.i, 254
  %i.h = select i1 %i.g, i64 1, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  store ptr %i.i, ptr %1, align 8, !tbaa !16
  %.pr = load i8, ptr %0, align 1, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %zipmapDecodeLength.exit, %bb.b
  %i.j = phi i8 [ %.pr, %zipmapDecodeLength.exit ], [ %i.a, %bb.b ] ; 2 uses
  %i.k = icmp ult i8 %i.j, -2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = zext i8 %i.j to i32
  br label %zipmapRawKeyLength.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.0.copyload.i.i = load i32, ptr %i.m, align 1
  br label %zipmapRawKeyLength.exit

zipmapRawKeyLength.exit:                          ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.l, %bb.g ], [ %.0.copyload.i.i, %bb.h ] ; 2 uses
  %i.n = icmp ult i32 %.0.i.i, 254
  %i.o = select i1 %i.n, i32 1, i32 5
  %i.p = add i32 %i.o, %.0.i.i
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 6 uses
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.l, label %bb.i

bb.i:                                             ; preds = %zipmapRawKeyLength.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !16
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13    ; 2 uses
  %i.u = icmp ult i8 %i.t, -2
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = zext i8 %i.t to i32
  br label %zipmapDecodeLength.exit26

bb.k:                                             ; preds = %bb.i
  %.0.copyload.i24 = load i32, ptr %i.s, align 1
  br label %zipmapDecodeLength.exit26

zipmapDecodeLength.exit26:                        ; preds = %bb.j, %bb.k
  %.0.i25 = phi i32 [ %i.v, %bb.j ], [ %.0.copyload.i24, %bb.k ] ; 2 uses
  store i32 %.0.i25, ptr %4, align 4, !tbaa !9
  %i.w = icmp ult i32 %.0.i25, 254
  %i.x = select i1 %i.w, i64 1, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  store ptr %i.y, ptr %3, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %zipmapDecodeLength.exit26, %zipmapRawKeyLength.exit
  %i.z = load i8, ptr %i.r, align 1, !tbaa !13    ; 2 uses
  %i.aa = icmp ult i8 %i.z, -2
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = zext i8 %i.z to i32
  br label %zipmapRawValueLength.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.0.copyload.i.i27 = load i32, ptr %i.ac, align 1
  br label %zipmapRawValueLength.exit

zipmapRawValueLength.exit:                        ; preds = %bb.m, %bb.n
  %.0.i.i28 = phi i32 [ %i.ab, %bb.m ], [ %.0.copyload.i.i27, %bb.n ] ; 2 uses
  %i.ad = icmp ult i32 %.0.i.i28, 254
  %i.ae = select i1 %i.ad, i32 1, i32 5           ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %.0.i.i28, 1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = add i32 %i.ak, %i.ae
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.am
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %zipmapRawValueLength.exit
  %.0 = phi ptr [ %i.an, %zipmapRawValueLength.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @zipmapGet(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %zipmapLookupRaw.exit.thread, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = zext i32 %2 to i64
  br label %.split.split.us.i

.split.split.us.i:                                ; preds = %bb.i, %.split.i
  %.033.us60.i = phi ptr [ %i.z, %bb.i ], [ %i.a, %.split.i ] ; 6 uses
  %i.c = load i8, ptr %.033.us60.i, align 1, !tbaa !13 ; 4 uses
  switch i8 %i.c, label %bb.c [
    i8 -1, label %zipmapLookupRaw.exit.thread
    i8 -2, label %bb.b
  ]

bb.b:                                             ; preds = %.split.split.us.i
  %i.d = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 1
  %.0.copyload.i.us61.i = load i32, ptr %i.d, align 1
  br label %bb.d

bb.c:                                             ; preds = %.split.split.us.i
  %i.e = zext i8 %i.c to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.us63.i = phi i32 [ %i.e, %bb.c ], [ %.0.copyload.i.us61.i, %bb.b ] ; 3 uses
  %i.f = icmp ult i32 %.0.i.us63.i, 254
  %i.g = select i1 %i.f, i32 1, i32 5             ; 2 uses
  %i.h = icmp eq i32 %.0.i.us63.i, %2
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.i
  %bcmp.us.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull readonly %1, i64 %i.b)
  %.not42.us.i = icmp eq i32 %bcmp.us.i, 0
  br i1 %.not42.us.i, label %zipmapLookupRaw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add i32 %i.g, %.0.i.us63.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = icmp ult i8 %i.n, -2
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.0.copyload.i45.us65.i = load i32, ptr %i.p, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = zext i8 %i.n to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i46.us66.i = phi i32 [ %i.q, %bb.h ], [ %.0.copyload.i45.us65.i, %bb.g ] ; 2 uses
  %i.r = icmp ult i32 %.0.i46.us66.i, 254
  %i.s = select i1 %i.r, i64 1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = add i32 %.0.i46.us66.i, 1
  %i.w = zext i8 %i.u to i32
  %i.x = add i32 %i.v, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  br label %.split.split.us.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %bb.e
  %i.aa = icmp ult i8 %i.c, -2
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zipmapLookupRaw.exit
  %i.ab = zext i8 %i.c to i32
  br label %zipmapRawKeyLength.exit

bb.k:                                             ; preds = %zipmapLookupRaw.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 1
  %.0.copyload.i.i = load i32, ptr %i.ac, align 1
  br label %zipmapRawKeyLength.exit

zipmapRawKeyLength.exit:                          ; preds = %bb.j, %bb.k
  %.0.i.i = phi i32 [ %i.ab, %bb.j ], [ %.0.copyload.i.i, %bb.k ] ; 2 uses
  %i.ad = icmp ult i32 %.0.i.i, 254
  %i.ae = select i1 %i.ad, i32 1, i32 5
  %i.af = add i32 %i.ae, %.0.i.i
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.ag ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %i.aj = icmp ult i8 %i.ai, -2
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %zipmapRawKeyLength.exit
  %i.ak = zext i8 %i.ai to i32
  br label %zipmapDecodeLength.exit

bb.m:                                             ; preds = %zipmapRawKeyLength.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.0.copyload.i = load i32, ptr %i.al, align 1
  br label %zipmapDecodeLength.exit

zipmapDecodeLength.exit:                          ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.ak, %bb.l ], [ %.0.copyload.i, %bb.m ] ; 2 uses
  store i32 %.0.i, ptr %4, align 4, !tbaa !9
  %i.am = icmp ult i32 %.0.i, 254
  %i.an = select i1 %i.am, i64 2, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  br label %zipmapLookupRaw.exit.thread

zipmapLookupRaw.exit.thread:                      ; preds = %.split.split.us.i, %bb.a, %zipmapDecodeLength.exit
  %.0 = phi i32 [ 1, %zipmapDecodeLength.exit ], [ 0, %bb.a ], [ 0, %.split.split.us.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @zipmapExists(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %zipmapLookupRaw.exit, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = zext i32 %2 to i64
  br label %.split.split.us.i

.split.split.us.i:                                ; preds = %bb.i, %.split.i
  %.033.us60.i = phi ptr [ %i.z, %bb.i ], [ %i.a, %.split.i ] ; 4 uses
  %i.c = load i8, ptr %.033.us60.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 -1, label %zipmapLookupRaw.exit
    i8 -2, label %bb.b
  ]

bb.b:                                             ; preds = %.split.split.us.i
  %i.d = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 1
  %.0.copyload.i.us61.i = load i32, ptr %i.d, align 1
  br label %bb.d

bb.c:                                             ; preds = %.split.split.us.i
  %i.e = zext i8 %i.c to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.us63.i = phi i32 [ %i.e, %bb.c ], [ %.0.copyload.i.us61.i, %bb.b ] ; 3 uses
  %i.f = icmp ult i32 %.0.i.us63.i, 254
  %i.g = select i1 %i.f, i32 1, i32 5             ; 2 uses
  %i.h = icmp eq i32 %.0.i.us63.i, %2
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.i
  %bcmp.us.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull readonly %1, i64 %i.b)
  %.not42.us.i = icmp eq i32 %bcmp.us.i, 0
  br i1 %.not42.us.i, label %zipmapLookupRaw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add i32 %i.g, %.0.i.us63.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = icmp ult i8 %i.n, -2
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.0.copyload.i45.us65.i = load i32, ptr %i.p, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = zext i8 %i.n to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i46.us66.i = phi i32 [ %i.q, %bb.h ], [ %.0.copyload.i45.us65.i, %bb.g ] ; 2 uses
  %i.r = icmp ult i32 %.0.i46.us66.i, 254
  %i.s = select i1 %i.r, i64 1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = add i32 %.0.i46.us66.i, 1
  %i.w = zext i8 %i.u to i32
  %i.x = add i32 %i.v, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  br label %.split.split.us.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.split.us.i, %bb.e, %bb.a
  %.2.i = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %.split.split.us.i ]
  ret i32 %.2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @zipmapLen(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.b = icmp ult i8 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.a to i32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %zipmapNext.exit, %bb.c
  %.08 = phi i32 [ 0, %bb.c ], [ %i.ab, %zipmapNext.exit ] ; 5 uses
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.aa, %zipmapNext.exit ] ; 3 uses
  %i.e = load i8, ptr %.0, align 1, !tbaa !13     ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 -1, label %zipmapNext.exit.thread
    i8 -2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = zext i8 %i.e to i32
  br label %zipmapRawKeyLength.exit.i

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 1
  br label %zipmapRawKeyLength.exit.i

zipmapRawKeyLength.exit.i:                        ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %.0.copyload.i.i.i, %bb.f ] ; 2 uses
  %i.h = icmp ult i32 %.0.i.i.i, 254
  %i.i = select i1 %i.h, i32 1, i32 5
  %i.j = add i32 %i.i, %.0.i.i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 %i.k ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  %i.n = icmp ult i8 %i.m, -2
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.o = zext i8 %i.m to i32
  br label %zipmapNext.exit

bb.h:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.0.copyload.i.i27.i = load i32, ptr %i.p, align 1
  br label %zipmapNext.exit

zipmapNext.exit:                                  ; preds = %bb.h, %bb.g
  %.0.i.i28.i = phi i32 [ %i.o, %bb.g ], [ %.0.copyload.i.i27.i, %bb.h ] ; 2 uses
  %i.q = add i32 %.0.i.i28.i, 1
  %i.r = icmp ult i32 %.0.i.i28.i, 254
  %i.s = select i1 %i.r, i32 1, i32 5             ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %i.q, %i.w
  %i.y = add i32 %i.x, %i.s
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ab = add i32 %.08, 1
  br label %bb.d, !llvm.loop !19

zipmapNext.exit.thread:                           ; preds = %bb.d
  %i.ac = icmp ult i32 %.08, 254
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %zipmapNext.exit.thread
  %i.ad = trunc nuw i32 %.08 to i8
  store i8 %i.ad, ptr %0, align 1, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %zipmapNext.exit.thread, %bb.i, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.08, %bb.i ], [ %.08, %zipmapNext.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @zipmapBlobLen(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.f, %bb.a
  %.033.us.i = phi ptr [ %i.v, %bb.f ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.033.us.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 -1, label %zipmapLookupRaw.exit
    i8 -2, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.i
  %i.c = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 1
  %.0.copyload.i.us.i = load i32, ptr %i.c, align 1
  br label %zipmapDecodeLength.exit.us.i

bb.c:                                             ; preds = %.split.us.i
  %i.d = zext i8 %i.b to i32
  br label %zipmapDecodeLength.exit.us.i

zipmapDecodeLength.exit.us.i:                     ; preds = %bb.c, %bb.b
  %.0.i.us.i = phi i32 [ %i.d, %bb.c ], [ %.0.copyload.i.us.i, %bb.b ] ; 2 uses
  %i.e = icmp ult i32 %.0.i.us.i, 254
  %i.f = select i1 %i.e, i32 1, i32 5
  %i.g = add i32 %i.f, %.0.i.us.i
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 %i.h ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 2 uses
  %i.k = icmp ult i8 %i.j, -2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload.i45.us.i = load i32, ptr %i.l, align 1
  br label %bb.f

bb.e:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.m = zext i8 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i46.us.i = phi i32 [ %i.m, %bb.e ], [ %.0.copyload.i45.us.i, %bb.d ] ; 2 uses
  %i.n = icmp ult i32 %.0.i46.us.i, 254
  %i.o = select i1 %i.n, i64 1, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = add i32 %.0.i46.us.i, 1
  %i.s = zext i8 %i.q to i32
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  br label %.split.us.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.us.i
  %i.w = ptrtoint ptr %.033.us.i to i64
  %i.x = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.w, %i.x
  %i.y = add i64 %reass.sub, 1
  %i.z = and i64 %i.y, 4294967295
  ret i64 %i.z
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @zipmapValidateIntegrity(ptr noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1       ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not59 = icmp eq i32 %2, 0
  br i1 %.not59, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %zipmapDecodeLength.exit78
  %.049 = phi i32 [ %i.u, %zipmapDecodeLength.exit78 ], [ 0, %bb.c ] ; 3 uses
  %.0.idx = phi i64 [ %.add65, %zipmapDecodeLength.exit78 ], [ 1, %bb.c ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx ; 2 uses
  %i.e = load i8, ptr %.0.ptr, align 1, !tbaa !13 ; 3 uses
  %.not60 = icmp eq i8 %i.e, -1
  br i1 %.not60, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.preheader
  %.not80 = icmp eq i8 %i.e, -2                   ; 2 uses
  %i.f = select i1 %.not80, i64 5, i64 1
  %.0.add = add nuw nsw i64 %i.f, %.0.idx         ; 3 uses
  %i.g = icmp sgt i64 %.0.add, 1
  %.not71 = icmp slt i64 %.0.add, %1
  %or.cond79 = and i1 %i.g, %.not71
  br i1 %or.cond79, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext i8 %i.e to i32
  br label %zipmapDecodeLength.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 1
  %.0.copyload.i = load i32, ptr %i.i, align 1
  br label %zipmapDecodeLength.exit

zipmapDecodeLength.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.h, %bb.f ], [ %.0.copyload.i, %bb.g ]
  %i.j = zext i32 %.0.i to i64
  %.add = add nuw nsw i64 %.0.add, %i.j           ; 2 uses
  %.ptr66 = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 3 uses
  %i.k = icmp ugt ptr %.ptr66, %i.c
  br i1 %i.k, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %zipmapDecodeLength.exit
  %.ptr66.val = load i8, ptr %.ptr66, align 1, !tbaa !13 ; 2 uses
  %i.l = icmp ult i8 %.ptr66.val, -2              ; 2 uses
  %i.m = select i1 %i.l, i64 1, i64 5
  %.add63 = add nuw nsw i64 %i.m, %.add           ; 2 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %0, i64 %.add63 ; 2 uses
  %i.n = icmp ugt ptr %.ptr67, %i.c
  br i1 %i.n, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = zext i8 %.ptr66.val to i32
  br label %zipmapDecodeLength.exit78

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.ptr66, i64 1
  %.0.copyload.i76 = load i32, ptr %i.p, align 1
  br label %zipmapDecodeLength.exit78

zipmapDecodeLength.exit78:                        ; preds = %bb.j, %bb.k
  %.0.i77 = phi i32 [ %i.o, %bb.j ], [ %.0.copyload.i76, %bb.k ]
  %.add64 = add nuw nsw i64 %.add63, 1
  %i.q = load i8, ptr %.ptr67, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = add i32 %.0.i77, %i.r
  %i.t = zext i32 %i.s to i64
  %.add65 = add nuw nsw i64 %.add64, %i.t         ; 2 uses
  %.ptr69 = getelementptr inbounds nuw i8, ptr %0, i64 %.add65
  %i.u = add i32 %.049, 1
  %i.v = icmp ugt ptr %.ptr69, %i.c
  br i1 %i.v, label %.loopexit, label %.preheader, !llvm.loop !20

bb.l:                                             ; preds = %.preheader
  %i.w = icmp eq i32 %.049, 0
  br i1 %i.w, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %.not61 = icmp eq i8 %i.x, -2
  %i.y = zext i8 %i.x to i32
  %.not62 = icmp eq i32 %.049, %i.y
  %or.cond75 = select i1 %.not61, i1 true, i1 %.not62
  %spec.select = zext i1 %or.cond75 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %zipmapDecodeLength.exit, %bb.h, %zipmapDecodeLength.exit78, %bb.m, %bb.l, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ %spec.select, %bb.m ], [ 0, %bb.l ], [ 0, %zipmapDecodeLength.exit78 ], [ 0, %bb.h ], [ 0, %zipmapDecodeLength.exit ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
end_hunk_0
