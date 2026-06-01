inline.NumInlined: 74
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17bmp_pvt13BmpFileHeader11read_headerEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %0, i64 noundef 2), !inline_history !9
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load ptr, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.f, i64 noundef 4), !inline_history !10
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.l, i64 noundef 2), !inline_history !9
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.s = load ptr, ptr %1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.r, i64 noundef 2), !inline_history !9
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.x, i64 noundef 4), !inline_history !10
  %i.ac = icmp eq i64 %i.ab, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ %i.ac, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17bmp_pvt13BmpFileHeader12write_headerEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %0, i64 noundef 2), !inline_history !11
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load ptr, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.f, i64 noundef 4), !inline_history !12
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.l, i64 noundef 2), !inline_history !11
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.s = load ptr, ptr %1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.r, i64 noundef 2), !inline_history !11
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.x, i64 noundef 4), !inline_history !12
  %i.ac = icmp eq i64 %i.ab, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ %i.ac, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_17bmp_pvt13BmpFileHeader5isBmpEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !13
  switch i16 %i.a, label %bb.b [
    i16 19778, label %bb.c
    i16 16706, label %bb.c
    i16 18755, label %bb.c
    i16 20547, label %bb.c
    i16 21584, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_17bmp_pvt13BmpFileHeader11swap_endianEv(ptr noundef nonnull align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
.lr.ph.i:
  %i.a = load i16, ptr %0, align 4, !tbaa !16
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  store i16 %i.b, ptr %0, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %i.e, ptr %i.c, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17bmp_pvt20DibInformationHeader11read_headerEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 4 dereferenceable(124) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %0, i64 noundef 4), !inline_history !10
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !17
  switch i32 %i.h, label %.thread47 [
    i32 40, label %bb.c
    i32 108, label %bb.c
    i32 124, label %bb.c
    i32 52, label %bb.c
    i32 56, label %bb.c
    i32 12, label %bb.am
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load ptr, ptr %1, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.i, i64 noundef 4), !inline_history !10
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %1, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.o, i64 noundef 4), !inline_history !10
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %bb.e, label %bb.ar

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.u, i64 noundef 2), !inline_history !9
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.aa, i64 noundef 2), !inline_history !9
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.g, label %bb.ar

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ag, i64 noundef 4), !inline_history !10
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load ptr, ptr %1, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.am, i64 noundef 4), !inline_history !10
  %i.ar = icmp eq i64 %i.aq, 4
  br i1 %i.ar, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %1, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.as, i64 noundef 4), !inline_history !10
  %i.ax = icmp eq i64 %i.aw, 4
  br i1 %i.ax, label %bb.j, label %bb.ar

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load ptr, ptr %1, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ay, i64 noundef 4), !inline_history !10
  %i.bd = icmp eq i64 %i.bc, 4
  br i1 %i.bd, label %bb.k, label %bb.ar

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %1, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.be, i64 noundef 4), !inline_history !10
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %bb.l, label %bb.ar

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bl = load ptr, ptr %1, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.bk, i64 noundef 4), !inline_history !10
  %i.bp = icmp eq i64 %i.bo, 4
  br i1 %i.bp, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %0, align 4, !tbaa !17    ; 3 uses
  %i.br = icmp eq i32 %i.bq, 40
  %i.bs = load i16, ptr %i.aa, align 2
  %i.bt = icmp eq i16 %i.bs, 16
  %or.cond = select i1 %i.br, i1 %i.bt, i1 false
  %i.bu = load i32, ptr %i.ag, align 4
  %i.bv = icmp eq i32 %i.bu, 3
  %or.cond44 = select i1 %or.cond, i1 %i.bv, i1 false
  br i1 %or.cond44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.bq, label %bb.t [
    i32 108, label %bb.o
    i32 124, label %bb.o
    i32 52, label %bb.o
    i32 56, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %1, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.bw, i64 noundef 4), !inline_history !10
  %i.cb = icmp eq i64 %i.ca, 4
  br i1 %i.cb, label %bb.p, label %bb.ar

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load ptr, ptr %1, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.cc, i64 noundef 4), !inline_history !10
  %i.ch = icmp eq i64 %i.cg, 4
  br i1 %i.ch, label %bb.q, label %bb.ar

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cj = load ptr, ptr %1, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ci, i64 noundef 4), !inline_history !10
  %i.cn = icmp eq i64 %i.cm, 4
  br i1 %i.cn, label %bb.r, label %bb.ar

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr %0, align 4, !tbaa !17
  %.not = icmp eq i32 %i.co, 52
  br i1 %.not, label %.thread47, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cq = load ptr, ptr %1, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i64 %i.cs(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.cp, i64 noundef 4), !inline_history !10
  %i.cu = icmp eq i64 %i.ct, 4
  br i1 %i.cu, label %._crit_edge, label %bb.ar

._crit_edge:                                      ; preds = %bb.s
  %.pr.pre = load i32, ptr %0, align 4, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.n
  %.pr = phi i32 [ %.pr.pre, %._crit_edge ], [ %i.bq, %bb.n ]
  switch i32 %.pr, label %.thread47 [
    i32 108, label %bb.u
    i32 124, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load ptr, ptr %1, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.cv, i64 noundef 4), !inline_history !10
  %i.da = icmp eq i64 %i.cz, 4
  br i1 %i.da, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dc = load ptr, ptr %1, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.db, i64 noundef 4), !inline_history !10
  %i.dg = icmp eq i64 %i.df, 4
  br i1 %i.dg, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load ptr, ptr %1, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call noundef i64 %i.dk(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dh, i64 noundef 4), !inline_history !10
  %i.dm = icmp eq i64 %i.dl, 4
  br i1 %i.dm, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.do = load ptr, ptr %1, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef i64 %i.dq(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dn, i64 noundef 4), !inline_history !10
  %i.ds = icmp eq i64 %i.dr, 4
  br i1 %i.ds, label %bb.y, label %bb.ar

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.du = load ptr, ptr %1, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dt, i64 noundef 4), !inline_history !10
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ea = load ptr, ptr %1, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef i64 %i.ec(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dz, i64 noundef 4), !inline_history !10
  %i.ee = icmp eq i64 %i.ed, 4
  br i1 %i.ee, label %bb.aa, label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eg = load ptr, ptr %1, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ef, i64 noundef 4), !inline_history !10
  %i.ek = icmp eq i64 %i.ej, 4
  br i1 %i.ek, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.em = load ptr, ptr %1, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.el, i64 noundef 4), !inline_history !10
  %i.eq = icmp eq i64 %i.ep, 4
  br i1 %i.eq, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.es = load ptr, ptr %1, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i64 %i.eu(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.er, i64 noundef 4), !inline_history !10
  %i.ew = icmp eq i64 %i.ev, 4
  br i1 %i.ew, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ey = load ptr, ptr %1, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef i64 %i.fa(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ex, i64 noundef 4), !inline_history !10
  %i.fc = icmp eq i64 %i.fb, 4
  br i1 %i.fc, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fe = load ptr, ptr %1, align 8, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef i64 %i.fg(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.fd, i64 noundef 4), !inline_history !10
  %i.fi = icmp eq i64 %i.fh, 4
  br i1 %i.fi, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.fk = load ptr, ptr %1, align 8, !tbaa !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call noundef i64 %i.fm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.fj, i64 noundef 4), !inline_history !10
  %i.fo = icmp eq i64 %i.fn, 4
  br i1 %i.fo, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fq = load ptr, ptr %1, align 8, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef i64 %i.fs(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.fp, i64 noundef 4), !inline_history !10
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  %.pr46 = load i32, ptr %0, align 4, !tbaa !17
  %i.fv = icmp eq i32 %.pr46, 124
  br i1 %i.fv, label %bb.ai, label %.thread47

bb.ai:                                            ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fx = load ptr, ptr %1, align 8, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = tail call noundef i64 %i.fz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.fw, i64 noundef 4), !inline_history !10
  %i.gb = icmp eq i64 %i.ga, 4
  br i1 %i.gb, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gd = load ptr, ptr %1, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef i64 %i.gf(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.gc, i64 noundef 4), !inline_history !10
  %i.gh = icmp eq i64 %i.gg, 4
  br i1 %i.gh, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.gj = load ptr, ptr %1, align 8, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = tail call noundef i64 %i.gl(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.gi, i64 noundef 4), !inline_history !10
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17bmp_pvt20DibInformationHeader11read_headerEPNS0_10Filesystem7IOProxyE:bb.a
  %i.ho = call noundef i64 %i.hn(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.hk, i64 noundef 2), !inline_history !9
  %i.hp = icmp eq i64 %i.ho, 2
  br i1 %i.hp, label %bb.aq, label %.thread49

.thread49:                                        ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hq = load i16, ptr %i.a, align 2, !tbaa !16
  %i.hr = zext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !20
  %i.ht = load i16, ptr %i.b, align 2, !tbaa !16
  %i.hu = zext i16 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread47

.thread47:                                        ; preds = %bb.r, %bb.t, %bb.aq, %bb.b, %bb.ah, %bb.al
  br label %bb.ar

bb.ar:                                            ; preds = %.thread49, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.s, %bb.o, %bb.p, %bb.q, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a, %.thread47
  %.1 = phi i1 [ true, %.thread47 ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.c ], [ false, %bb.a ], [ false, %.thread49 ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17bmp_pvt20DibInformationHeader12write_headerEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 4 dereferenceable(124) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %0, i64 noundef 4), !inline_history !12
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load ptr, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.f, i64 noundef 4), !inline_history !12
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.l, i64 noundef 4), !inline_history !12
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load ptr, ptr %1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.r, i64 noundef 2), !inline_history !11
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.x, i64 noundef 2), !inline_history !11
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %1, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ad, i64 noundef 4), !inline_history !12
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load ptr, ptr %1, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.aj, i64 noundef 4), !inline_history !12
  %i.ao = icmp eq i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %1, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.ap, i64 noundef 4), !inline_history !12
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load ptr, ptr %1, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.av, i64 noundef 4), !inline_history !12
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %1, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.bb, i64 noundef 4), !inline_history !12
  %i.bg = icmp eq i64 %i.bf, 4
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load ptr, ptr %1, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.bh, i64 noundef 4), !inline_history !12
  %i.bm = icmp eq i64 %i.bl, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0 = phi i1 [ false, %bb.a ], [ %i.bm, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_17bmp_pvt20DibInformationHeader11swap_endianEv(ptr noundef nonnull align 4 captures(none) dereferenceable(124) %0) local_unnamed_addr #2 align 2 {
.lr.ph.i:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a)
  store i32 %i.b, ptr %0, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %i.e, ptr %i.c, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !16
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  store i16 %i.k, ptr %i.i, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !16
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  store i16 %i.n, ptr %i.l, align 2, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load <4 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.q = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.p)
  store <4 x i32> %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %i.w, ptr %i.u, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #4 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt13BmpFileHeaderE", !15, i64 0, !4, i64 4, !15, i64 8, !15, i64 10, !4, i64 12}
!15 = !{!"short", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!18, !4, i64 0}
!18 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt20DibInformationHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !15, i64 12, !15, i64 14, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120}
!19 = distinct !{null}
!20 = !{!18, !4, i64 4}
!21 = !{!18, !4, i64 8}
end_hunk_1
