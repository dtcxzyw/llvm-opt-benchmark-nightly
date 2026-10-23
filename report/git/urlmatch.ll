Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/urlmatch?download=true
inline.NumInlined: 30
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.url_info = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.urlmatch_item = type { i64, i64, i8 }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ssh://\00", align 1
@strbuf_slopbuf = external global [0 x i8], align 1
@__const.urlmatch_config_entry.synthkey = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+.-\00", align 1
@sane_ctype = external local_unnamed_addr constant [256 x i8], align 16
@.str.3 = private unnamed_addr constant [48 x i8] c"invalid URL scheme name or missing '://' suffix\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"/?#\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c":/?#[]@!$&'()*+,;=\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid %XX escape sequence\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"missing host and scheme is not 'file:'\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"a 'file:' URL may not have a port number\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_[:]*\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_[:]\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"invalid characters in host name\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"http:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"https:\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"invalid port number\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"invalid '..' path segment\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c" <>\22%{}|\\^`\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@hexval_table = external local_unnamed_addr constant [256 x i8], align 16
@.str.27 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @url_normalize(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @url_normalize_1(ptr noundef %0, ptr noundef %1, i8 noundef signext 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @url_normalize_1(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 43 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #13 ; 6 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = and i8 %i.g, 4
  %.not264 = icmp eq i8 %i.h, 0
  br i1 %.not264, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.c, 3                          ; 5 uses
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %.not265 = icmp eq i8 %i.l, 58
  br i1 %.not265, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %.not266 = icmp eq i8 %i.n, 47
  br i1 %.not266, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.k, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %.not267 = icmp eq i8 %i.p, 47
  br i1 %.not267, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not307 = icmp eq ptr %1, null
  br i1 %.not307, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.q = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #14
  br label %_.exit

_.exit:                                           ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.r, %bb.i ], [ @.str.3, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !42
  br label %.thread

bb.j:                                             ; preds = %bb.f
  call void @strbuf_init(ptr noundef nonnull %3, i64 noundef %i.b) #14
  %i.t = sub nuw i64 %i.b, %i.i                   ; 2 uses
  %.not268405 = icmp eq i64 %i.i, 0
  br i1 %.not268405, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %strbuf_addch.exit
  %.0223407 = phi i64 [ %i.i, %.lr.ph ], [ %i.w, %strbuf_addch.exit ]
  %.0234406 = phi ptr [ %0, %.lr.ph ], [ %i.x, %strbuf_addch.exit ] ; 2 uses
  %i.w = add i64 %.0223407, -1                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0234406, i64 1 ; 2 uses
  %i.y = load i8, ptr %.0234406, align 1, !tbaa !12 ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = shl i8 %i.ab, 3
  %i.ad = and i8 %i.ac, 32
  %spec.select.i375 = or i8 %i.ad, %i.y
  %i.ae = load i64, ptr %3, align 8, !tbaa !19    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.k
  %i.af = load i64, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %.neg.i = add i64 %i.af, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.ae, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.k
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #14
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !20 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ag = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.af, %strbuf_avail.exit.i ]
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !21
  store i64 %.pre-phi.i, ptr %i.u, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 %spec.select.i375, ptr %i.ai, align 1, !tbaa !12
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !12
  %.not268 = icmp eq i64 %i.w, 0
  br i1 %.not268, label %._crit_edge, label %bb.k, !llvm.loop !37

._crit_edge:                                      ; preds = %strbuf_addch.exit, %bb.j
  %.0234.lcssa = phi ptr [ %0, %bb.j ], [ %i.x, %strbuf_addch.exit ] ; 8 uses
  %i.am = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0234.lcssa, i32 noundef 64) #13 ; 5 uses
  %i.an = call i64 @strcspn(ptr noundef nonnull %.0234.lcssa, ptr noundef nonnull @.str.4) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %.0234.lcssa, i64 %i.an ; 12 uses
  %.not269 = icmp ne ptr %i.am, null
  %i.ap = icmp ult ptr %i.am, %i.ao
  %or.cond = select i1 %.not269, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.l, label %bb.v

bb.l:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.as = icmp ugt ptr %i.am, %.0234.lcssa
  br i1 %i.as, label %bb.m, label %._crit_edge437

._crit_edge437:                                   ; preds = %bb.l
  %.pre438 = ptrtoint ptr %.0234.lcssa to i64
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = ptrtoint ptr %.0234.lcssa to i64        ; 3 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %.0234.lcssa, i64 noundef %i.av)
  %.not270 = icmp eq i32 %i.aw, 0
  br i1 %.not270, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not271 = icmp eq ptr %1, null
  br i1 %.not271, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.ax = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i312 = icmp eq i32 %i.ax, 0
  br i1 %.not4.i312, label %_.exit314, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #14
  br label %_.exit314

_.exit314:                                        ; preds = %bb.o, %bb.p
  %.0.i313 = phi ptr [ %i.ay, %bb.p ], [ @.str.7, %bb.o ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i313, ptr %i.az, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %_.exit314, %bb.n
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.r:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.be = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bd, i32 noundef 58) #13 ; 2 uses
  %.not272 = icmp eq ptr %i.be, null
  br i1 %.not272, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bk = sub i64 %i.bj, %i.bi
  %reass.sub417 = sub i64 %i.bi, %i.c
  %i.bl = add i64 %reass.sub417, -4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bm = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bn = sub i64 %i.bm, %i.i
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge437, %bb.s, %bb.t
  %.pre-phi = phi i64 [ %.pre438, %._crit_edge437 ], [ %i.au, %bb.s ], [ %i.au, %bb.t ]
  %.0220 = phi i64 [ 0, %._crit_edge437 ], [ %i.bl, %bb.s ], [ %i.bn, %bb.t ]
  %.0218 = phi i64 [ 0, %._crit_edge437 ], [ %i.bi, %bb.s ], [ 0, %bb.t ]
  %.0216 = phi i64 [ 0, %._crit_edge437 ], [ %i.bk, %bb.s ], [ 0, %bb.t ]
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 64)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %.neg = add i64 %i.t, %.pre-phi
  %i.bq = sub i64 %.neg, %i.bp
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.1235 = phi ptr [ %i.bo, %bb.u ], [ %.0234.lcssa, %._crit_edge ] ; 8 uses
  %.0225 = phi i64 [ %i.bq, %bb.u ], [ %i.t, %._crit_edge ] ; 3 uses
  %.0222 = phi i64 [ %i.ar, %bb.u ], [ 0, %._crit_edge ]
  %.1221 = phi i64 [ %.0220, %bb.u ], [ 0, %._crit_edge ]
  %.1219 = phi i64 [ %.0218, %bb.u ], [ 0, %._crit_edge ]
  %.1217 = phi i64 [ %.0216, %bb.u ], [ 0, %._crit_edge ]
  %.not273 = icmp eq i64 %.0225, 0
  br i1 %.not273, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i8, ptr %.1235, align 1, !tbaa !12 ; 2 uses
  %i.bs = zext nneg i8 %i.br to i64
  %memchr.bounds = icmp ugt i8 %i.br, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.bt, -8935000888854970367
  %memchr.bits = icmp eq i64 %i.bu, 0
  %memchr274.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr274.not, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  %i.bx = call zeroext i1 @starts_with(ptr noundef %i.bw, ptr noundef nonnull @.str.9) #14
  br i1 %i.bx, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not276 = icmp eq ptr %1, null
  br i1 %.not276, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.by = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i315 = icmp eq i32 %i.by, 0
  br i1 %.not4.i315, label %_.exit317, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #14
  br label %_.exit317

_.exit317:                                        ; preds = %bb.z, %bb.aa
  %.0.i316 = phi ptr [ %i.bz, %bb.aa ], [ @.str.10, %bb.z ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i316, ptr %i.ca, align 8, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %_.exit317, %bb.y
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ac:                                            ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.x, %bb.ac
  %.0215 = phi i64 [ 0, %bb.x ], [ %i.cc, %bb.ac ] ; 4 uses
  %.0206494 = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 3 uses
  %i.cd = icmp ugt ptr %.0206494, %.1235
  br i1 %i.cd, label %.lr.ph498, label %.critedgethread-pre-split

bb.ae:                                            ; preds = %.lr.ph498
  %.0206 = getelementptr inbounds i8, ptr %.0206496, i64 -1 ; 3 uses
  %i.ce = icmp ugt ptr %.0206, %.1235
  br i1 %i.ce, label %.lr.ph498, label %.critedgethread-pre-split, !llvm.loop !38

.lr.ph498:                                        ; preds = %bb.ad, %bb.ae
  %.0206496 = phi ptr [ %.0206, %bb.ae ], [ %.0206494, %bb.ad ] ; 6 uses
  %.pn495 = phi ptr [ %.0206496, %bb.ae ], [ %i.ao, %bb.ad ] ; 2 uses
  %i.cf = load i8, ptr %.0206496, align 1, !tbaa !12 ; 3 uses
  switch i8 %i.cf, label %bb.ae [
    i8 58, label %.critedge
    i8 93, label %.critedge
  ], !llvm.loop !38

.critedgethread-pre-split:                        ; preds = %bb.ae, %bb.ad
  %.pn.lcssa = phi ptr [ %i.ao, %bb.ad ], [ %.0206496, %bb.ae ]
  %.0206.lcssa = phi ptr [ %.0206494, %bb.ad ], [ %.0206, %bb.ae ] ; 2 uses
  %.pr = load i8, ptr %.0206.lcssa, align 1, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph498, %.lr.ph498, %.critedgethread-pre-split
  %.pn491 = phi ptr [ %.pn.lcssa, %.critedgethread-pre-split ], [ %.pn495, %.lr.ph498 ], [ %.pn495, %.lr.ph498 ]
  %.0206489 = phi ptr [ %.0206.lcssa, %.critedgethread-pre-split ], [ %.0206496, %.lr.ph498 ], [ %.0206496, %.lr.ph498 ] ; 2 uses
  %i.cg = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.cf, %.lr.ph498 ], [ %i.cf, %.lr.ph498 ]
  %.not279 = icmp eq i8 %i.cg, 58
  br i1 %.not279, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %.critedge
  %.not280 = icmp ne i64 %.0215, 0
  %i.ch = icmp uge ptr %.0206489, %i.ao
  %.not281 = icmp eq ptr %.pn491, %i.ao
  %i.ci = or i1 %.not281, %i.ch
  %or.cond309 = select i1 %.not280, i1 true, i1 %i.ci
  br i1 %or.cond309, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not282 = icmp eq ptr %1, null
  br i1 %.not282, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.cj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i318 = icmp eq i32 %i.cj, 0
  br i1 %.not4.i318, label %_.exit320, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #14
  br label %_.exit320

_.exit320:                                        ; preds = %bb.ah, %bb.ai
  %.0.i319 = phi ptr [ %i.ck, %bb.ai ], [ @.str.11, %bb.ah ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i319, ptr %i.cl, align 8, !tbaa !42
  br label %bb.aj

bb.aj:                                            ; preds = %_.exit320, %bb.ag
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ak:                                            ; preds = %.critedge, %bb.af
  %.1207 = phi ptr [ %i.ao, %.critedge ], [ %.0206489, %bb.af ] ; 4 uses
  %.not283 = icmp eq i8 %2, 0
  %.str.13..str.12 = select i1 %.not283, ptr @.str.13, ptr @.str.12
  %i.cm = call i64 @strspn(ptr noundef nonnull %.1235, ptr noundef nonnull %.str.13..str.12) #13
  %i.cn = ptrtoint ptr %.1207 to i64              ; 3 uses
  %i.co = ptrtoint ptr %.1235 to i64              ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cm, %i.cp
  br i1 %i.cq, label %bb.al, label %.preheader396

.preheader396:                                    ; preds = %bb.ak
  %i.cr = icmp ult ptr %.1235, %.1207
  br i1 %i.cr, label %.lr.ph410, label %._crit_edge411

.lr.ph410:                                        ; preds = %.preheader396
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %.not306 = icmp eq ptr %1, null
  br i1 %.not306, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.cu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i321 = icmp eq i32 %i.cu, 0
  br i1 %.not4.i321, label %_.exit323, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #14
  br label %_.exit323

_.exit323:                                        ; preds = %bb.am, %bb.an
  %.0.i322 = phi ptr [ %i.cv, %bb.an ], [ @.str.14, %bb.am ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i322, ptr %i.cw, align 8, !tbaa !42
  br label %bb.ao

bb.ao:                                            ; preds = %_.exit323, %bb.al
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ap:                                            ; preds = %.lr.ph410, %strbuf_addch.exit334
  %.2236408 = phi ptr [ %.1235, %.lr.ph410 ], [ %i.cx, %strbuf_addch.exit334 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.2236408, i64 1 ; 3 uses
  %i.cy = load i8, ptr %.2236408, align 1, !tbaa !12 ; 2 uses
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dc = shl i8 %i.db, 3
  %i.dd = and i8 %i.dc, 32
  %spec.select.i324378 = or i8 %i.dd, %i.cy
  %i.de = load i64, ptr %3, align 8, !tbaa !19    ; 2 uses
  %.not.i.i325 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i325, label %strbuf_avail.exit.thread.i330, label %strbuf_avail.exit.i326

strbuf_avail.exit.i326:                           ; preds = %bb.ap
  %i.df = load i64, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %.neg.i327 = add i64 %i.df, 1                   ; 2 uses
  %.not.i328 = icmp eq i64 %i.de, %.neg.i327
  br i1 %.not.i328, label %strbuf_avail.exit.thread.i330, label %strbuf_addch.exit334

strbuf_avail.exit.thread.i330:                    ; preds = %strbuf_avail.exit.i326, %bb.ap
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #14
  %.pre.i332 = load i64, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %.pre7.i333 = add i64 %.pre.i332, 1
  br label %strbuf_addch.exit334

strbuf_addch.exit334:                             ; preds = %strbuf_avail.exit.i326, %strbuf_avail.exit.thread.i330
  %.pre-phi.i329 = phi i64 [ %.pre7.i333, %strbuf_avail.exit.thread.i330 ], [ %.neg.i327, %strbuf_avail.exit.i326 ]
  %i.dg = phi i64 [ %.pre.i332, %strbuf_avail.exit.thread.i330 ], [ %i.df, %strbuf_avail.exit.i326 ]
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !21
  store i64 %.pre-phi.i329, ptr %i.cs, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 %spec.select.i324378, ptr %i.di, align 1, !tbaa !12
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.cs, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !tbaa !12
  %exitcond.not = icmp eq ptr %i.cx, %.1207
  br i1 %exitcond.not, label %._crit_edge411.loopexit, label %bb.ap, !llvm.loop !39

._crit_edge411.loopexit:                          ; preds = %strbuf_addch.exit334
  %i.dm = add i64 %.0225, %i.co
  %i.dn = sub i64 %i.dm, %i.cn
  br label %._crit_edge411

._crit_edge411:                                   ; preds = %._crit_edge411.loopexit, %.preheader396
  %.2236.lcssa = phi ptr [ %.1235, %.preheader396 ], [ %i.cx, %._crit_edge411.loopexit ] ; 2 uses
  %.1226.lcssa = phi i64 [ %.0225, %.preheader396 ], [ %i.dn, %._crit_edge411.loopexit ] ; 2 uses
  %i.do = icmp ult ptr %.1207, %i.ao
  br i1 %i.do, label %bb.aq, label %bb.bg

bb.aq:                                            ; preds = %._crit_edge411
  %i.dp = getelementptr inbounds nuw i8, ptr %.2236.lcssa, i64 1 ; 2 uses
  %i.dq = call i64 @strspn(ptr noundef nonnull %i.dp, ptr noundef nonnull @.str.15) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %i.ao
  br i1 %i.ds, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = icmp eq i8 %i.du, 48
  %spec.select = select i1 %i.dv, ptr %i.dt, ptr %i.dr
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3237 = phi ptr [ %i.dr, %bb.aq ], [ %spec.select, %bb.ar ] ; 10 uses
  %4 = icmp eq ptr %.3237, %i.ao
  %.pre439 = ptrtoint ptr %i.ao to i64            ; 2 uses
  br i1 %4, label %._crit_edge436, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = ptrtoint ptr %.3237 to i64
  %i.dx = sub i64 %.pre439, %i.dw                 ; 5 uses
  switch i64 %i.dx, label %.tail.thread [
    i64 2, label %bb.au
    i64 3, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !21
  %i.ea = call zeroext i1 @starts_with(ptr noundef %i.dz, ptr noundef nonnull @.str.16) #14
  br i1 %i.ea, label %sub_0, label %.tail.thread

sub_0:                                            ; preds = %bb.au
  %i.eb = load i8, ptr %.3237, align 1
  %.not420 = icmp eq i8 %i.eb, 56
  br i1 %.not420, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.ec = getelementptr inbounds nuw i8, ptr %.3237, i64 1
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 48
  br i1 %i.ee, label %._crit_edge436, label %.tail.thread

bb.av:                                            ; preds = %bb.at
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !21
  %i.eh = call zeroext i1 @starts_with(ptr noundef %i.eg, ptr noundef nonnull @.str.18) #14
  br i1 %i.eh, label %sub_0380, label %.tail.thread

sub_0380:                                         ; preds = %bb.av
  %i.ei = load i8, ptr %.3237, align 1
  %.not418 = icmp eq i8 %i.ei, 52
  br i1 %.not418, label %sub_1381, label %.tail.thread

sub_1381:                                         ; preds = %sub_0380
  %i.ej = getelementptr inbounds nuw i8, ptr %.3237, i64 1
  %i.ek = load i8, ptr %i.ej, align 1
  %.not419 = icmp eq i8 %i.ek, 52
  br i1 %.not419, label %.tail379, label %.tail.thread

.tail379:                                         ; preds = %sub_1381
  %i.el = getelementptr inbounds nuw i8, ptr %.3237, i64 2
  %i.em = load i8, ptr %i.el, align 1
  %i.en = icmp eq i8 %i.em, 51
  br i1 %i.en, label %._crit_edge436, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1381, %sub_0380, %sub_0, %bb.au, %.tail, %bb.at, %.tail379, %bb.av
  %i.eo = call i64 @strspn(ptr noundef nonnull %.3237, ptr noundef nonnull @.str.20) #13
  %i.ep = icmp ult i64 %i.eo, %i.dx
  br i1 %i.ep, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %.tail.thread
  %.not287 = icmp eq ptr %1, null
  br i1 %.not287, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.eq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i335 = icmp eq i32 %i.eq, 0
  br i1 %.not4.i335, label %_.exit337, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #14
  br label %_.exit337

_.exit337:                                        ; preds = %bb.ax, %bb.ay
  %.0.i336 = phi ptr [ %i.er, %bb.ay ], [ @.str.21, %bb.ax ]
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i336, ptr %i.es, align 8, !tbaa !42
  br label %bb.az

bb.az:                                            ; preds = %_.exit337, %bb.aw
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.ba:                                            ; preds = %.tail.thread
  %i.et = icmp slt i64 %i.dx, 6
  br i1 %i.et, label %bb.bb, label %.critedge311

bb.bb:                                            ; preds = %bb.ba
  %i.eu = call i64 @__isoc23_strtoul(ptr noundef nonnull %.3237, ptr noundef null, i32 noundef 10) #14
  %i.ev = add i64 %i.eu, -65536
  %i.ew = icmp ult i64 %i.ev, -65535
  br i1 %i.ew, label %.critedge311, label %bb.bf

.critedge311:                                     ; preds = %bb.ba, %bb.bb
  %.not286 = icmp eq ptr %1, null
  br i1 %.not286, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.critedge311
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.ex = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i338 = icmp eq i32 %i.ex, 0
  br i1 %.not4.i338, label %_.exit340, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #14
  br label %_.exit340

_.exit340:                                        ; preds = %bb.bc, %bb.bd
  %.0.i339 = phi ptr [ %i.ey, %bb.bd ], [ @.str.21, %bb.bc ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i339, ptr %i.ez, align 8, !tbaa !42
  br label %bb.be

bb.be:                                            ; preds = %_.exit340, %.critedge311
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

bb.bf:                                            ; preds = %bb.bb
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 58)
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !20
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.3237, i64 noundef %i.dx) #14
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %bb.as, %bb.bf, %.tail, %.tail379
  %.1212 = phi i64 [ 0, %.tail379 ], [ %i.fb, %bb.bf ], [ 0, %.tail ], [ 0, %bb.as ]
  %.1209 = phi i64 [ 0, %.tail379 ], [ %i.dx, %bb.bf ], [ 0, %.tail ], [ 0, %bb.as ]
  %.neg288 = sub i64 %i.cn, %.pre439
  %i.fc = add i64 %.neg288, %.1226.lcssa
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge436, %._crit_edge411
  %.4238 = phi ptr [ %i.ao, %._crit_edge436 ], [ %.2236.lcssa, %._crit_edge411 ] ; 2 uses
  %.2227 = phi i64 [ %i.fc, %._crit_edge436 ], [ %.1226.lcssa, %._crit_edge411 ]
  %.2213 = phi i64 [ %.1212, %._crit_edge436 ], [ 0, %._crit_edge411 ]
  %.2210 = phi i64 [ %.1209, %._crit_edge436 ], [ 0, %._crit_edge411 ] ; 3 uses
  %.not289 = icmp eq i64 %.0215, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  br i1 %.not289, label %._crit_edge435, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not290 = icmp eq i64 %.2210, 0
  %.neg291 = xor i64 %.2210, -1
  %.neg292 = select i1 %.not290, i64 0, i64 %.neg291
  %i.fd = sub i64 %.neg292, %.0215
  %i.fe = add i64 %i.fd, %.pre
  br label %._crit_edge435

._crit_edge435:                                   ; preds = %bb.bg, %bb.bh
  %.0214 = phi i64 [ %i.fe, %bb.bh ], [ 0, %bb.bg ]
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.pre ; 4 uses
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 47)
  %i.fj = load i8, ptr %.4238, align 1, !tbaa !12
  %i.fk = icmp eq i8 %i.fj, 47                    ; 2 uses
  %.5239.idx = zext i1 %i.fk to i64
  %.5239 = getelementptr inbounds nuw i8, ptr %.4238, i64 %.5239.idx ; 3 uses
  %i.fl = load i64, ptr %i.ff, align 8, !tbaa !20
  %i.fm = call i64 @strcspn(ptr noundef nonnull %.5239, ptr noundef nonnull @.str.4) #13 ; 3 uses
  %i.fn = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %.5239, i64 noundef %i.fm)
  %.not293414 = icmp eq i32 %i.fn, 0
  br i1 %.not293414, label %._crit_edge416, label %sub_0384.lr.ph

sub_0384.lr.ph:                                   ; preds = %._crit_edge435
  %i.fo = getelementptr inbounds nuw i8, ptr %.5239, i64 %i.fm
  %i.fp = sext i1 %i.fk to i64
  %.3 = add i64 %.2227, %i.fp
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fr = ptrtoint ptr %i.fi to i64
  br label %sub_0384

._crit_edge416:                                   ; preds = %.thread360, %._crit_edge435
  %.not294 = icmp eq ptr %1, null
  br i1 %.not294, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge416
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.fs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i341 = icmp eq i32 %i.fs, 0
  br i1 %.not4.i341, label %_.exit343, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ft = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #14
  br label %_.exit343

_.exit343:                                        ; preds = %bb.bi, %bb.bj
  %.0.i342 = phi ptr [ %i.ft, %bb.bj ], [ @.str.7, %bb.bi ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i342, ptr %i.fu, align 8, !tbaa !42
  br label %bb.bk

bb.bk:                                            ; preds = %_.exit343, %._crit_edge416
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

sub_0384:                                         ; preds = %sub_0384.lr.ph, %.thread360
  %i.fv = phi ptr [ %i.fo, %sub_0384.lr.ph ], [ %i.hj, %.thread360 ] ; 5 uses
  %i.fw = phi i64 [ %i.fm, %sub_0384.lr.ph ], [ %i.hi, %.thread360 ] ; 3 uses
  %i.fx = phi i64 [ %i.fl, %sub_0384.lr.ph ], [ %i.hh, %.thread360 ]
  %.4415 = phi i64 [ %.3, %sub_0384.lr.ph ], [ %.5, %.thread360 ] ; 3 uses
  %i.fy = load ptr, ptr %i.fg, align 8, !tbaa !21 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx ; 5 uses
  %i.ga = load i8, ptr %i.fz, align 1
  %.not421 = icmp eq i8 %i.ga, 46
  br i1 %.not421, label %.tail383, label %.thread354

.tail383:                                         ; preds = %sub_0384
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.bl, label %sub_1389

bb.bl:                                            ; preds = %.tail383
  %i.ge = icmp eq ptr %i.fz, %i.fq
  %i.gf = load i64, ptr %i.ff, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ge, label %.thread356, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gg = add i64 %i.gf, -2
  br label %.thread354.sink.split

sub_1389:                                         ; preds = %.tail383
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gi = load i8, ptr %i.gh, align 1
  %.not423 = icmp eq i8 %i.gi, 46
  br i1 %.not423, label %.tail387, label %.thread354

.tail387:                                         ; preds = %sub_1389
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.bn, label %.thread354

bb.bn:                                            ; preds = %.tail387
  %i.gm = load i64, ptr %i.ff, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -3 ; 2 uses
  %.not299 = icmp eq ptr %i.go, %i.fi
  br i1 %.not299, label %bb.bo, label %.preheader

bb.bo:                                            ; preds = %bb.bn
  %.not298 = icmp eq ptr %1, null
  br i1 %.not298, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.gp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !41
  %.not4.i344 = icmp eq i32 %i.gp, 0
  br i1 %.not4.i344, label %_.exit346, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #14
  br label %_.exit346

_.exit346:                                        ; preds = %bb.bp, %bb.bq
  %.0.i345 = phi ptr [ %i.gq, %bb.bq ], [ @.str.24, %bb.bp ]
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i345, ptr %i.gr, align 8, !tbaa !42
  br label %bb.bt

.preheader:                                       ; preds = %bb.bn, %.preheader
  %.0 = phi ptr [ %i.gs, %.preheader ], [ %i.go, %bb.bn ]
  %i.gs = getelementptr inbounds i8, ptr %.0, i64 -1 ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !12
  %.not297 = icmp eq i8 %i.gt, 47
  br i1 %.not297, label %bb.br, label %.preheader, !llvm.loop !40

bb.br:                                            ; preds = %.preheader
  %i.gu = icmp eq ptr %i.gs, %i.fi
  br i1 %i.gu, label %.thread354.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.fy to i64
  %i.gx = sub i64 %i.gv, %i.gw
  br label %.thread354.sink.split

bb.bt:                                            ; preds = %bb.bo, %_.exit346
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %.thread

.thread354.sink.split:                            ; preds = %bb.bm, %bb.bs
  %.sink = phi i64 [ %i.gx, %bb.bs ], [ %i.gg, %bb.bm ]
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %.sink)
  br label %.thread354

.thread354:                                       ; preds = %.thread354.sink.split, %sub_0384, %sub_1389, %.tail387
  %i.gy = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.gz = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300 = icmp eq i8 %i.gz, 47
  br i1 %.not300, label %bb.bu, label %bb.bv

.thread354.thread:                                ; preds = %bb.br
  %i.ha = ptrtoint ptr %i.fy to i64
  %reass.sub = sub i64 %i.fr, %i.ha
  %i.hb = add i64 %reass.sub, 1
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %i.hb)
  %i.hc = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.hd = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300470 = icmp eq i8 %i.hd, 47
  br i1 %.not300470, label %.thread360, label %bb.bv

.thread356:                                       ; preds = %bb.bl
  %i.he = add i64 %i.gf, -1
  call fastcc void @strbuf_setlen(ptr noundef %3, i64 noundef %i.he)
  %i.hf = sub i64 %.4415, %i.fw                   ; 2 uses
  %i.hg = load i8, ptr %i.fv, align 1, !tbaa !12  ; 2 uses
  %.not300358 = icmp eq i8 %i.hg, 47
  br i1 %.not300358, label %.thread360, label %bb.bv

bb.bu:                                            ; preds = %.thread354
  call fastcc void @strbuf_addch(ptr noundef %3, i32 noundef 47)
  br label %.thread360

.thread360:                                       ; preds = %.thread354.thread, %.thread356, %bb.bu
  %.5.in = phi i64 [ %i.gy, %bb.bu ], [ %i.hf, %.thread356 ], [ %i.hc, %.thread354.thread ]
  %.5 = add i64 %.5.in, -1
  %.7241 = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 3 uses
  %i.hh = load i64, ptr %i.ff, align 8, !tbaa !20
  %i.hi = call i64 @strcspn(ptr noundef nonnull %.7241, ptr noundef nonnull @.str.4) #13 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.7241, i64 %i.hi
  %i.hk = call fastcc i32 @append_normalized_escapes(ptr noundef %3, ptr noundef nonnull %.7241, i64 noundef %i.hi)
  %.not293 = icmp eq i32 %i.hk, 0
  br i1 %.not293, label %._crit_edge416, label %sub_0384

end_hunk_0
