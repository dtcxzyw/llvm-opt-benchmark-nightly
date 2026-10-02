Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/conv?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"invalid encoding number: %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"conv.c\00", align 1
@__func__.UtfToLocal = private unnamed_addr constant [11 x i8] c"UtfToLocal\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported character length %d\00", align 1
@__func__.LocalToUtf = private unnamed_addr constant [11 x i8] c"LocalToUtf\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @local2local(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.040 = phi ptr [ %i.h, %bb.h ], [ %0, %bb.a ]  ; 6 uses
  %.02539 = phi ptr [ %.1, %bb.h ], [ %1, %bb.a ] ; 4 uses
  %.02638 = phi i32 [ %i.i, %bb.h ], [ %2, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.040, align 1              ; 4 uses
  %i.c = zext i8 %i.b to i64
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  br i1 %6, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @report_invalid_encoding(i32 noundef %3, ptr noundef nonnull %.040, i32 noundef %.02638) #5
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %5, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -128
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not29 = icmp eq i8 %i.g, 0
  br i1 %.not29, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %6, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @report_untranslatable_char(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.040, i32 noundef %.02638) #5
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i8 [ %i.b, %bb.d ], [ %i.g, %bb.e ]
  %.1 = getelementptr inbounds nuw i8, ptr %.02539, i64 1 ; 2 uses
  store i8 %storemerge, ptr %.02539, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %i.i = add nsw i32 %.02638, -1
  %i.j = icmp sgt i32 %.02638, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.f, %bb.b
  %.02535 = phi ptr [ %.02539, %bb.b ], [ %.02539, %bb.f ], [ %1, %bb.a ], [ %.1, %bb.h ]
  %.032 = phi ptr [ %.040, %bb.b ], [ %.040, %bb.f ], [ %0, %bb.a ], [ %i.h, %bb.h ]
  store i8 0, ptr %.02535, align 1
  %i.k = ptrtoint ptr %.032 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  ret i32 %i.n
}

; Function Attrs: noreturn
declare void @report_invalid_encoding(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @report_untranslatable_char(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @UtfToLocal(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %7, 41
  %i.a = icmp eq i32 %7, 7
  %or.cond6 = or i1 %or.cond, %i.a
  br i1 %or.cond6, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %.thread215

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp ne ptr %4, null
  %i.c = sext i32 %5 to i64
  %.not24.i = icmp eq i32 %5, 0
  %.not164 = icmp eq ptr %3, null
  %.not166 = icmp eq ptr %6, null
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef %7) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @__func__.UtfToLocal) #7
  unreachable

bb.c:                                             ; preds = %.lr.ph, %store_coded_char.exit
  %.0134264 = phi ptr [ %0, %.lr.ph ], [ %.5, %store_coded_char.exit ] ; 16 uses
  %.0139263 = phi i32 [ %1, %.lr.ph ], [ %i.eb, %store_coded_char.exit ] ; 12 uses
  %.0144262 = phi ptr [ %2, %.lr.ph ], [ %.9, %store_coded_char.exit ] ; 14 uses
  %i.g = load i8, ptr %.0134264, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @pg_utf_mblen_private(ptr noundef nonnull %.0134264) #7 ; 14 uses
  %i.j = icmp slt i32 %.0139263, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @pg_utf8_islegal(ptr noundef nonnull %.0134264, i32 noundef %i.i) #7
  br i1 %i.k, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  switch i32 %i.i, label %bb.j [
    i32 1, label %bb.g
    i32 2, label %bb.k
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.0134264, i64 1
  %i.m = load i8, ptr %.0134264, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0144262, i64 1
  store i8 %i.m, ptr %.0144262, align 1
  br label %store_coded_char.exit

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0134264, i64 1
  %i.p = load i8, ptr %.0134264, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.0134264, i64 1
  %i.r = load i8, ptr %.0134264, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.0134264, i64 2
  %i.t = load i8, ptr %i.q, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.i) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 332, ptr noundef nonnull @__func__.UtfToLocal) #7
  unreachable

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.sink350 = phi i64 [ 2, %bb.h ], [ 3, %bb.i ], [ 1, %bb.f ]
  %.sink = phi i64 [ 3, %bb.h ], [ 4, %bb.i ], [ 2, %bb.f ]
  %.0129 = phi i8 [ 0, %bb.h ], [ %i.r, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.0128 = phi i8 [ %i.p, %bb.h ], [ %i.t, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.0127.in = phi ptr [ %i.o, %bb.h ], [ %i.s, %bb.i ], [ %.0134264, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0134264, i64 %.sink350
  %i.x = getelementptr inbounds nuw i8, ptr %.0134264, i64 %.sink ; 20 uses
  %.0126 = load i8, ptr %i.w, align 1             ; 2 uses
  %.0127 = load i8, ptr %.0127.in, align 1        ; 2 uses
  %i.y = zext i8 %.0129 to i32
  %i.z = shl nuw i32 %i.y, 24
  %i.aa = zext i8 %.0128 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.z
  %i.ad = zext i8 %.0127 to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = zext i8 %.0126 to i32
  %i.ah = or disjoint i32 %i.af, %i.ag            ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0139263, %i.i
  %or.cond168 = and i1 %.not, %i.ai
  br i1 %or.cond168, label %bb.l, label %store_coded_char.exit.thread197

bb.l:                                             ; preds = %bb.k
  %i.aj = sub nuw nsw i32 %.0139263, %i.i         ; 5 uses
  %i.ak = tail call i32 @pg_utf_mblen_private(ptr noundef nonnull %i.x) #7 ; 7 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = zext nneg i32 %i.i to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 %i.an
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ap = tail call zeroext i1 @pg_utf8_islegal(ptr noundef nonnull %i.x, i32 noundef %i.ak) #7
  br i1 %i.ap, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @report_invalid_encoding(i32 noundef 6, ptr noundef nonnull %i.x, i32 noundef %i.aj) #5
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = zext nneg i32 %i.i to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.x, i64 %i.ar
  br label %.thread215

bb.r:                                             ; preds = %bb.n
  %i.at = icmp sgt i32 %i.ak, 1
  br i1 %i.at, label %bb.s, label %store_coded_char.exit.thread197

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ak, label %bb.v [
    i32 2, label %9
    i32 3, label %bb.t
    i32 4, label %bb.u
  ]

9:                                                ; preds = %bb.s
  %10 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %11 = load i8, ptr %i.x, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.av = load i8, ptr %i.x, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.az = load i8, ptr %i.au, align 1
  %i.ba = zext i8 %i.az to i32
  %14 = shl nuw nsw i32 %i.ba, 8
  %i.bb = or disjoint i32 %14, %i.ax
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.bd = load i8, ptr %i.x, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw i32 %i.be, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bh = load i8, ptr %i.bc, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.bm = load i8, ptr %i.bg, align 1
  %i.bn = zext i8 %i.bm to i32
  %15 = shl nuw nsw i32 %i.bn, 8
  %i.bo = or disjoint i32 %i.bk, %15
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.bq = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.ak) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 389, ptr noundef nonnull @__func__.UtfToLocal) #7
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u, %9
  %.sink390 = phi i64 [ 3, %bb.t ], [ 4, %bb.u ], [ 2, %9 ]
  %.sink353.in = phi ptr [ %i.ay, %bb.t ], [ %i.bl, %bb.u ], [ %10, %9 ]
  %.sink351 = phi i32 [ %i.bb, %bb.t ], [ %i.bo, %bb.u ], [ %13, %9 ]
  %16 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink390 ; 2 uses
  %.sink353 = load i8, ptr %.sink353.in, align 1
  %17 = zext i8 %.sink353 to i32
  %18 = or disjoint i32 %.sink351, %17            ; 2 uses
  br i1 %.not24.i, label %store_coded_char.exit.thread197, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.z
  %.021.i = phi i64 [ %.1.i, %bb.z ], [ %i.c, %bb.w ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.z ], [ 0, %bb.w ] ; 2 uses
  %i.br = add i64 %.01620.i, %.021.i
  %i.bs = lshr i64 %i.br, 1                       ; 3 uses
  %i.bt = mul i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp ugt i32 %i.ah, %i.bv
  br i1 %i.by, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.bz = icmp ne i32 %i.ah, %i.bv                ; 2 uses
  %i.ca = icmp ule i32 %18, %i.bx
  %or.cond.not.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.not.i, label %compare3.exit, label %bb.y

compare3.exit:                                    ; preds = %bb.x
  %i.cb = icmp ne i32 %18, %i.bx
  %.not15.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %.not15.i, label %bb.z, label %bsearch.exit

bb.y:                                             ; preds = %.lr.ph.i, %bb.x
  %i.cc = add nuw i64 %i.bs, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %compare3.exit
  %.117.i = phi i64 [ %i.cc, %bb.y ], [ %.01620.i, %compare3.exit ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.y ], [ %i.bs, %compare3.exit ] ; 2 uses
  %i.cd = icmp ult i64 %.117.i, %.1.i
  br i1 %i.cd, label %.lr.ph.i, label %store_coded_char.exit.thread197, !llvm.loop !0

bsearch.exit:                                     ; preds = %compare3.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cf = load i32, ptr %i.ce, align 4            ; 8 uses
  %.not.i169 = icmp ult i32 %i.cf, 16777216
  br i1 %.not.i169, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bsearch.exit
  %i.cg = lshr i32 %i.cf, 24
  %i.ch = trunc nuw i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0144262, i64 1
  store i8 %i.ch, ptr %.0144262, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bsearch.exit
  %.0.i = phi ptr [ %i.ci, %bb.aa ], [ %.0144262, %bsearch.exit ] ; 3 uses
  %i.cj = and i32 %i.cf, 16711680
  %.not12.i = icmp eq i32 %i.cj, 0
  br i1 %.not12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = lshr i32 %i.cf, 16
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.cl, ptr %.0.i, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1.i170 = phi ptr [ %i.cm, %bb.ac ], [ %.0.i, %bb.ab ] ; 3 uses
  %i.cn = and i32 %i.cf, 65280
  %.not13.i = icmp eq i32 %i.cn, 0
  br i1 %.not13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = lshr i32 %i.cf, 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i170, i64 1
  store i8 %i.cp, ptr %.1.i170, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2.i = phi ptr [ %i.cq, %bb.ae ], [ %.1.i170, %bb.ad ] ; 3 uses
  %i.cr = and i32 %i.cf, 255
  %.not14.i = icmp eq i32 %i.cr, 0
  br i1 %.not14.i, label %store_coded_char.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = trunc i32 %i.cf to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cs, ptr %.2.i, align 1
  br label %store_coded_char.exit

store_coded_char.exit.thread197:                  ; preds = %bb.z, %bb.w, %bb.r, %bb.k
  br i1 %.not164, label %store_coded_char.exit179, label %bb.ah

bb.ah:                                            ; preds = %store_coded_char.exit.thread197
  %i.cu = tail call fastcc i32 @pg_mb_radix_conv(ptr noundef %3, i32 noundef %i.i, i8 noundef zeroext %.0129, i8 noundef zeroext %.0128, i8 noundef zeroext %.0127, i8 noundef zeroext %.0126) ; 9 uses
  %.not165 = icmp eq i32 %i.cu, 0
  br i1 %.not165, label %store_coded_char.exit179, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i171 = icmp ult i32 %i.cu, 16777216
  br i1 %.not.i171, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = lshr i32 %i.cu, 24
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0144262, i64 1
  store i8 %i.cw, ptr %.0144262, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i172 = phi ptr [ %i.cx, %bb.aj ], [ %.0144262, %bb.ai ] ; 3 uses
  %i.cy = and i32 %i.cu, 16711680
  %.not12.i173 = icmp eq i32 %i.cy, 0
  br i1 %.not12.i173, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = lshr i32 %i.cu, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i172, i64 1
  store i8 %i.da, ptr %.0.i172, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.i174 = phi ptr [ %i.db, %bb.al ], [ %.0.i172, %bb.ak ] ; 3 uses
  %i.dc = and i32 %i.cu, 65280
  %.not13.i175 = icmp eq i32 %i.dc, 0
  br i1 %.not13.i175, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = lshr i32 %i.cu, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i174, i64 1
  store i8 %i.de, ptr %.1.i174, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.i176 = phi ptr [ %i.df, %bb.an ], [ %.1.i174, %bb.am ] ; 3 uses
  %i.dg = and i32 %i.cu, 255
  %.not14.i177 = icmp eq i32 %i.dg, 0
  br i1 %.not14.i177, label %store_coded_char.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = trunc i32 %i.cu to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.2.i176, i64 1
  store i8 %i.dh, ptr %.2.i176, align 1
  br label %store_coded_char.exit

store_coded_char.exit179:                         ; preds = %bb.ah, %store_coded_char.exit.thread197
  br i1 %.not166, label %store_coded_char.exit188, label %bb.aq

bb.aq:                                            ; preds = %store_coded_char.exit179
  %i.dj = tail call i32 %6(i32 noundef %i.ah) #7  ; 9 uses
  %.not167 = icmp eq i32 %i.dj, 0
  br i1 %.not167, label %store_coded_char.exit188, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i180 = icmp ult i32 %i.dj, 16777216
  br i1 %.not.i180, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = lshr i32 %i.dj, 24
  %i.dl = trunc nuw i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0144262, i64 1
  store i8 %i.dl, ptr %.0144262, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i181 = phi ptr [ %i.dm, %bb.as ], [ %.0144262, %bb.ar ] ; 3 uses
  %i.dn = and i32 %i.dj, 16711680
  %.not12.i182 = icmp eq i32 %i.dn, 0
  br i1 %.not12.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.do = lshr i32 %i.dj, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i181, i64 1
  store i8 %i.dp, ptr %.0.i181, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.i183 = phi ptr [ %i.dq, %bb.au ], [ %.0.i181, %bb.at ] ; 3 uses
  %i.dr = and i32 %i.dj, 65280
  %.not13.i184 = icmp eq i32 %i.dr, 0
  br i1 %.not13.i184, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ds = lshr i32 %i.dj, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.1.i183, i64 1
  store i8 %i.dt, ptr %.1.i183, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2.i185 = phi ptr [ %i.du, %bb.aw ], [ %.1.i183, %bb.av ] ; 3 uses
  %i.dv = and i32 %i.dj, 255
  %.not14.i186 = icmp eq i32 %i.dv, 0
  br i1 %.not14.i186, label %store_coded_char.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dw = trunc i32 %i.dj to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.2.i185, i64 1
  store i8 %i.dw, ptr %.2.i185, align 1
  br label %store_coded_char.exit

store_coded_char.exit188:                         ; preds = %bb.aq, %store_coded_char.exit179
  %i.dy = sext i32 %i.i to i64
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %i.x, i64 %i.dz ; 2 uses
  br i1 %8, label %.thread215, label %bb.az

bb.az:                                            ; preds = %store_coded_char.exit188
  tail call void @report_untranslatable_char(i32 noundef 6, i32 noundef %7, ptr noundef nonnull %i.ea, i32 noundef %.0139263) #5
  unreachable

store_coded_char.exit:                            ; preds = %bb.ax, %bb.ay, %bb.ao, %bb.ap, %bb.ag, %bb.af, %bb.g
  %.9 = phi ptr [ %i.di, %bb.ap ], [ %i.ct, %bb.ag ], [ %i.n, %bb.g ], [ %.2.i, %bb.af ], [ %.2.i176, %bb.ao ], [ %.2.i185, %bb.ax ], [ %i.dx, %bb.ay ] ; 2 uses
  %.3142 = phi i32 [ %.0139263, %bb.ap ], [ %i.aj, %bb.ag ], [ %.0139263, %bb.g ], [ %i.aj, %bb.af ], [ %.0139263, %bb.ao ], [ %.0139263, %bb.ax ], [ %.0139263, %bb.ay ]
  %.5 = phi ptr [ %i.x, %bb.ap ], [ %16, %bb.ag ], [ %i.l, %bb.g ], [ %16, %bb.af ], [ %i.x, %bb.ao ], [ %i.x, %bb.ax ], [ %i.x, %bb.ay ] ; 2 uses
  %.3133 = phi i32 [ %i.i, %bb.ap ], [ %i.ak, %bb.ag ], [ 1, %bb.g ], [ %i.ak, %bb.af ], [ %i.i, %bb.ao ], [ %i.i, %bb.ax ], [ %i.i, %bb.ay ]
  %i.eb = sub i32 %.3142, %.3133                  ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.c, label %.thread215, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.e, %bb.m
  %.3142.ph = phi i32 [ %i.aj, %bb.m ], [ %.0139263, %bb.e ], [ %.0139263, %bb.c ], [ %.0139263, %bb.d ] ; 2 uses
  %.5.ph = phi ptr [ %i.ao, %bb.m ], [ %.0134264, %bb.e ], [ %.0134264, %bb.c ], [ %.0134264, %bb.d ] ; 2 uses
  %i.ed = icmp slt i32 %.3142.ph, 1
  %or.cond8 = or i1 %8, %i.ed
  br i1 %or.cond8, label %.thread215, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  tail call void @report_invalid_encoding(i32 noundef 6, ptr noundef nonnull %.5.ph, i32 noundef %.3142.ph) #5
  unreachable

.thread215:                                       ; preds = %store_coded_char.exit, %.preheader, %bb.q, %store_coded_char.exit188, %.loopexit
  %.0144252 = phi ptr [ %.0144262, %bb.q ], [ %.0144262, %.loopexit ], [ %.0144262, %store_coded_char.exit188 ], [ %2, %.preheader ], [ %.9, %store_coded_char.exit ]
  %.6221 = phi ptr [ %i.as, %bb.q ], [ %.5.ph, %.loopexit ], [ %i.ea, %store_coded_char.exit188 ], [ %0, %.preheader ], [ %.5, %store_coded_char.exit ]
  store i8 0, ptr %.0144252, align 1
  %i.ee = ptrtoint ptr %.6221 to i64
  %i.ef = ptrtoint ptr %0 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  ret i32 %i.eh
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pg_utf_mblen_private(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @pg_utf8_islegal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @pg_mb_radix_conv(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  switch i32 %1, label %bb.ah [
    i32 4, label %bb.b
    i32 3, label %bb.m
    i32 2, label %bb.v
    i32 1, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i8 %2 to i32                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp ult i8 %2, %i.c
  br i1 %i.e, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ugt i8 %2, %i.g
  br i1 %i.h, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %3 to i32                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i8, ptr %i.j, align 2               ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = icmp ult i8 %3, %i.k
  br i1 %i.m, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp ugt i8 %3, %i.o
  br i1 %i.p, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext i8 %4 to i32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = icmp ult i8 %4, %i.s
  br i1 %i.u, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp ugt i8 %4, %i.w
  br i1 %i.x, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext i8 %5 to i32                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.aa = load i8, ptr %i.z, align 2              ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = icmp ult i8 %5, %i.aa
  br i1 %i.ac, label %bb.ah, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp ugt i8 %5, %i.ae
  br i1 %i.af, label %bb.ah, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %.not161 = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  br i1 %.not161, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = sub nsw i32 %i.a, %i.d
  %i.al = add i32 %i.ak, %i.aj
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub nsw i32 %i.i, %i.l
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sub nsw i32 %i.q, %i.t
  %i.av = add i32 %i.au, %i.at
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub nsw i32 %i.y, %i.ab
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  br label %bb.ah

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %0, align 8               ; 4 uses
  %i.bf = and i32 %i.aj, 65535
  %i.bg = sub nsw i32 %i.a, %i.d
  %i.bh = add nsw i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = sub nsw i32 %i.i, %i.l
  %i.bn = add nsw i32 %i.bm, %i.bl
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.q, %i.t
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = sub nsw i32 %i.y, %i.ab
  %i.bz = add nsw i32 %i.by, %i.bx
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  %i.ce = zext i8 %3 to i32                       ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cg = load i8, ptr %i.cf, align 4             ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = icmp ult i8 %3, %i.cg
  br i1 %i.ci, label %bb.ah, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp ugt i8 %3, %i.ck
  br i1 %i.cl, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = zext i8 %4 to i32                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.co = load i8, ptr %i.cn, align 2             ; 2 uses
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = icmp ult i8 %4, %i.co
  br i1 %i.cq, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp ugt i8 %4, %i.cs
  br i1 %i.ct, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = zext i8 %5 to i32                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load i8, ptr %i.cv, align 8             ; 2 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = icmp ult i8 %5, %i.cw
  br i1 %i.cy, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp ugt i8 %5, %i.da
  br i1 %i.db, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8            ; 4 uses
  %.not160 = icmp eq ptr %i.dd, null
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.df = load i32, ptr %i.de, align 8            ; 2 uses
  br i1 %.not160, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = sub nsw i32 %i.ce, %i.ch
  %i.dh = add i32 %i.dg, %i.df
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = sub nsw i32 %i.cm, %i.cp
  %i.dm = add i32 %i.dl, %i.dk
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = sub nsw i32 %i.cu, %i.cx
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %0, align 8               ; 3 uses
  %i.dw = and i32 %i.df, 65535
  %i.dx = sub nsw i32 %i.ce, %i.ch
  %i.dy = add nsw i32 %i.dx, %i.dw
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = zext i16 %i.eb to i32
  %i.ed = sub nsw i32 %i.cm, %i.cp
  %i.ee = add nsw i32 %i.ed, %i.ec
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = zext i16 %i.eh to i32
  %i.ej = sub nsw i32 %i.cu, %i.cx
  %i.ek = add nsw i32 %i.ej, %i.ei
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = zext i16 %i.en to i32
  br label %bb.ah

bb.v:                                             ; preds = %bb.a
  %i.ep = zext i8 %4 to i32                       ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.er = load i8, ptr %i.eq, align 4             ; 2 uses
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %i.et = icmp ult i8 %4, %i.er
  br i1 %i.et, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp ugt i8 %4, %i.ev
  br i1 %i.ew, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = zext i8 %5 to i32                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ez = load i8, ptr %i.ey, align 2             ; 2 uses
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %i.fb = icmp ult i8 %5, %i.ez
  br i1 %i.fb, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp ugt i8 %5, %i.fd
  br i1 %i.fe, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %.not159 = icmp eq ptr %i.fg, null
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fi = load i32, ptr %i.fh, align 8            ; 2 uses
  br i1 %.not159, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = sub nsw i32 %i.ep, %i.es
  %i.fk = add i32 %i.fj, %i.fi
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = sub nsw i32 %i.ex, %i.fa
  %i.fp = add i32 %i.fo, %i.fn
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.ft = load ptr, ptr %0, align 8               ; 2 uses
  %i.fu = and i32 %i.fi, 65535
  %i.fv = sub nsw i32 %i.ep, %i.es
  %i.fw = add nsw i32 %i.fv, %i.fu
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = zext i16 %i.fz to i32
  %i.gb = sub nsw i32 %i.ex, %i.fa
  %i.gc = add nsw i32 %i.gb, %i.ga
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = zext i16 %i.gf to i32
  br label %bb.ah

bb.ac:                                            ; preds = %bb.a
  %i.gh = zext i8 %5 to i32                       ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gj = load i8, ptr %i.gi, align 4             ; 2 uses
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = icmp ult i8 %5, %i.gj
  br i1 %i.gl, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = icmp ugt i8 %5, %i.gn
  br i1 %i.go, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  %.not = icmp eq ptr %i.gq, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = sub nsw i32 %i.gh, %i.gk
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = sub nsw i32 %i.gh, %i.gk
  %i.hc = add i32 %i.hb, %i.ha
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2
  %i.hg = zext i16 %i.hf to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ac, %bb.ad, %bb.v, %bb.w, %bb.x, %bb.y, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.u, %bb.t, %bb.l, %bb.k
  %.0 = phi i32 [ 0, %bb.ac ], [ %i.bd, %bb.k ], [ %i.cd, %bb.l ], [ 0, %bb.b ], [ %i.du, %bb.t ], [ %i.eo, %bb.u ], [ 0, %bb.m ], [ %i.fs, %bb.aa ], [ %i.gg, %bb.ab ], [ 0, %bb.v ], [ %i.gx, %bb.af ], [ %i.hg, %bb.ag ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.ad ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LocalToUtf(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %7, 41
  %i.a = icmp eq i32 %7, 7
  %or.cond4 = or i1 %or.cond, %i.a
  br i1 %or.cond4, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %.thread150

.lr.ph:                                           ; preds = %.preheader
  %.not103 = icmp eq ptr %3, null
  %.not105 = icmp eq ptr %4, null
  %i.c = sext i32 %5 to i64
  %.not24.i = icmp eq i32 %5, 0
  %or.cond160 = or i1 %.not105, %.not24.i
  %.not107 = icmp eq ptr %6, null
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, i32 noundef %7) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 495, ptr noundef nonnull @__func__.LocalToUtf) #7
  unreachable

bb.c:                                             ; preds = %.lr.ph, %store_coded_char.exit.thread
  %.086177 = phi ptr [ %0, %.lr.ph ], [ %.288, %store_coded_char.exit.thread ] ; 16 uses
  %.089176 = phi i32 [ %1, %.lr.ph ], [ %i.dh, %store_coded_char.exit.thread ] ; 4 uses
  %.090175 = phi ptr [ %2, %.lr.ph ], [ %.5, %store_coded_char.exit.thread ] ; 13 uses
  %i.g = load i8, ptr %.086177, align 1           ; 3 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sgt i8 %i.g, -1
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.086177, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.090175, i64 1
  store i8 %i.g, ptr %.090175, align 1
  br label %store_coded_char.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i32 @pg_encoding_verifymbchar(i32 noundef %7, ptr noundef nonnull %.086177, i32 noundef %.089176) #7 ; 11 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.ax, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.k, label %bb.k [
    i32 1, label %bb.l
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.086177, i64 1
  %i.n = load i8, ptr %.086177, align 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.086177, i64 1
  %i.p = load i8, ptr %.086177, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.086177, i64 2
  %i.r = load i8, ptr %i.o, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.086177, i64 1
  %i.t = load i8, ptr %.086177, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.086177, i64 2
  %i.v = load i8, ptr %i.s, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.086177, i64 3
  %i.x = load i8, ptr %i.u, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.k) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 543, ptr noundef nonnull @__func__.LocalToUtf) #7
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i
  %.sink = phi i64 [ 2, %bb.h ], [ 4, %bb.j ], [ 3, %bb.i ], [ 1, %bb.g ]
  %.083 = phi i8 [ 0, %bb.h ], [ %i.t, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.082 = phi i8 [ 0, %bb.h ], [ %i.v, %bb.j ], [ %i.p, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.081 = phi i8 [ %i.n, %bb.h ], [ %i.x, %bb.j ], [ %i.r, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.080.in = phi ptr [ %i.m, %bb.h ], [ %i.w, %bb.j ], [ %i.q, %bb.i ], [ %.086177, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.086177, i64 %.sink ; 7 uses
  %.080 = load i8, ptr %.080.in, align 1          ; 2 uses
  %i.ab = zext i8 %.083 to i32
  %i.ac = shl nuw i32 %i.ab, 24
  %i.ad = zext i8 %.082 to i32
  %i.ae = shl nuw nsw i32 %i.ad, 16
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = zext i8 %.081 to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = zext i8 %.080 to i32
  %i.ak = or disjoint i32 %i.ai, %i.aj            ; 3 uses
  br i1 %.not103, label %store_coded_char.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call fastcc i32 @pg_mb_radix_conv(ptr noundef %3, i32 noundef %i.k, i8 noundef zeroext %.083, i8 noundef zeroext %.082, i8 noundef zeroext %.081, i8 noundef zeroext %.080) ; 9 uses
  %.not104 = icmp eq i32 %i.al, 0
  br i1 %.not104, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp ult i32 %i.al, 16777216
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = lshr i32 %i.al, 24
  %i.an = trunc nuw i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.090175, i64 1
  store i8 %i.an, ptr %.090175, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi ptr [ %i.ao, %bb.o ], [ %.090175, %bb.n ] ; 3 uses
  %i.ap = and i32 %i.al, 16711680
  %.not12.i = icmp eq i32 %i.ap, 0
  br i1 %.not12.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.ar, ptr %.0.i, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i = phi ptr [ %i.as, %bb.q ], [ %.0.i, %bb.p ] ; 3 uses
  %i.at = and i32 %i.al, 65280
  %.not13.i = icmp eq i32 %i.at, 0
  br i1 %.not13.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = lshr i32 %i.al, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.av, ptr %.1.i, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.i = phi ptr [ %i.aw, %bb.s ], [ %.1.i, %bb.r ] ; 3 uses
  %i.ax = and i32 %i.al, 255
  %.not14.i = icmp eq i32 %i.ax, 0
  br i1 %.not14.i, label %store_coded_char.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = trunc i32 %i.al to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.ay, ptr %.2.i, align 1
  br label %store_coded_char.exit.thread

bb.v:                                             ; preds = %bb.m
  br i1 %or.cond160, label %store_coded_char.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.y
  %.021.i = phi i64 [ %.1.i110, %bb.y ], [ %i.c, %bb.v ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.y ], [ 0, %bb.v ] ; 2 uses
  %i.ba = add i64 %.01620.i, %.021.i
  %i.bb = lshr i64 %i.ba, 1                       ; 3 uses
  %i.bc = mul i64 %i.bb, 12                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = icmp ult i32 %i.ak, %i.be
  br i1 %i.bf, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i109 = icmp eq i32 %i.ak, %i.be
  br i1 %.not.i109, label %bsearch.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = add nuw i64 %i.bb, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i
  %.117.i = phi i64 [ %i.bg, %bb.x ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i110 = phi i64 [ %.021.i, %bb.x ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %i.bh = icmp ult i64 %.117.i, %.1.i110
  br i1 %i.bh, label %.lr.ph.i, label %store_coded_char.exit, !llvm.loop !0

bsearch.exit:                                     ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4            ; 8 uses
  %.not.i111 = icmp ult i32 %i.bk, 16777216
  br i1 %.not.i111, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bsearch.exit
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.090175, i64 1
  store i8 %i.bm, ptr %.090175, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bsearch.exit
  %.0.i112 = phi ptr [ %i.bn, %bb.z ], [ %.090175, %bsearch.exit ] ; 3 uses
  %i.bo = and i32 %i.bk, 16711680
  %.not12.i113 = icmp eq i32 %i.bo, 0
  br i1 %.not12.i113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = lshr i32 %i.bk, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i112, i64 1
  store i8 %i.bq, ptr %.0.i112, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i114 = phi ptr [ %i.br, %bb.ab ], [ %.0.i112, %bb.aa ] ; 3 uses
  %i.bs = and i32 %i.bk, 65280
  %.not13.i115 = icmp eq i32 %i.bs, 0
  br i1 %.not13.i115, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = lshr i32 %i.bk, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i114, i64 1
  store i8 %i.bu, ptr %.1.i114, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.i116 = phi ptr [ %i.bv, %bb.ad ], [ %.1.i114, %bb.ac ] ; 3 uses
  %i.bw = and i32 %i.bk, 255
  %.not14.i117 = icmp eq i32 %i.bw, 0
  br i1 %.not14.i117, label %store_coded_char.exit119, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = trunc i32 %i.bk to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.2.i116, i64 1
  store i8 %i.bx, ptr %.2.i116, align 1
  br label %store_coded_char.exit119

store_coded_char.exit119:                         ; preds = %bb.ae, %bb.af
  %.3.i118 = phi ptr [ %i.by, %bb.af ], [ %.2.i116, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ca = load i32, ptr %i.bz, align 4            ; 8 uses
  %.not.i120 = icmp ult i32 %i.ca, 16777216
  br i1 %.not.i120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %store_coded_char.exit119
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.3.i118, i64 1
  store i8 %i.cc, ptr %.3.i118, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %store_coded_char.exit119
  %.0.i121 = phi ptr [ %i.cd, %bb.ag ], [ %.3.i118, %store_coded_char.exit119 ] ; 3 uses
  %i.ce = and i32 %i.ca, 16711680
  %.not12.i122 = icmp eq i32 %i.ce, 0
  br i1 %.not12.i122, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = lshr i32 %i.ca, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i121, i64 1
  store i8 %i.cg, ptr %.0.i121, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i123 = phi ptr [ %i.ch, %bb.ai ], [ %.0.i121, %bb.ah ] ; 3 uses
  %i.ci = and i32 %i.ca, 65280
  %.not13.i124 = icmp eq i32 %i.ci, 0
  br i1 %.not13.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = lshr i32 %i.ca, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i123, i64 1
  store i8 %i.ck, ptr %.1.i123, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2.i125 = phi ptr [ %i.cl, %bb.ak ], [ %.1.i123, %bb.aj ] ; 3 uses
  %i.cm = and i32 %i.ca, 255
  %.not14.i126 = icmp eq i32 %i.cm, 0
  br i1 %.not14.i126, label %store_coded_char.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = trunc i32 %i.ca to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.2.i125, i64 1
  store i8 %i.cn, ptr %.2.i125, align 1
  br label %store_coded_char.exit.thread

store_coded_char.exit:                            ; preds = %bb.y, %bb.v, %bb.l
  br i1 %.not107, label %store_coded_char.exit137, label %bb.an

bb.an:                                            ; preds = %store_coded_char.exit
  %i.cp = tail call i32 %6(i32 noundef %i.ak) #7  ; 9 uses
  %.not108 = icmp eq i32 %i.cp, 0
  br i1 %.not108, label %store_coded_char.exit137, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i129 = icmp ult i32 %i.cp, 16777216
  br i1 %.not.i129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = lshr i32 %i.cp, 24
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.090175, i64 1
  store i8 %i.cr, ptr %.090175, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i130 = phi ptr [ %i.cs, %bb.ap ], [ %.090175, %bb.ao ] ; 3 uses
  %i.ct = and i32 %i.cp, 16711680
  %.not12.i131 = icmp eq i32 %i.ct, 0
  br i1 %.not12.i131, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cu = lshr i32 %i.cp, 16
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1
  store i8 %i.cv, ptr %.0.i130, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i132 = phi ptr [ %i.cw, %bb.ar ], [ %.0.i130, %bb.aq ] ; 3 uses
  %i.cx = and i32 %i.cp, 65280
  %.not13.i133 = icmp eq i32 %i.cx, 0
  br i1 %.not13.i133, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cy = lshr i32 %i.cp, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i132, i64 1
  store i8 %i.cz, ptr %.1.i132, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.2.i134 = phi ptr [ %i.da, %bb.at ], [ %.1.i132, %bb.as ] ; 3 uses
  %i.db = and i32 %i.cp, 255
  %.not14.i135 = icmp eq i32 %i.db, 0
  br i1 %.not14.i135, label %store_coded_char.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = trunc i32 %i.cp to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i134, i64 1
  store i8 %i.dc, ptr %.2.i134, align 1
  br label %store_coded_char.exit.thread

store_coded_char.exit137:                         ; preds = %bb.an, %store_coded_char.exit
  %i.de = zext nneg i32 %i.k to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.aa, i64 %i.df ; 2 uses
  br i1 %8, label %.thread150, label %bb.aw

bb.aw:                                            ; preds = %store_coded_char.exit137
  tail call void @report_untranslatable_char(i32 noundef %7, i32 noundef 6, ptr noundef nonnull %i.dg, i32 noundef %.089176) #5
  unreachable

store_coded_char.exit.thread:                     ; preds = %bb.au, %bb.av, %bb.am, %bb.al, %bb.t, %bb.u, %bb.e
  %.5 = phi ptr [ %i.j, %bb.e ], [ %.2.i, %bb.t ], [ %.2.i125, %bb.al ], [ %i.co, %bb.am ], [ %i.az, %bb.u ], [ %.2.i134, %bb.au ], [ %i.dd, %bb.av ] ; 2 uses
  %.288 = phi ptr [ %i.i, %bb.e ], [ %i.aa, %bb.t ], [ %i.aa, %bb.al ], [ %i.aa, %bb.am ], [ %i.aa, %bb.u ], [ %i.aa, %bb.au ], [ %i.aa, %bb.av ] ; 2 uses
  %.185 = phi i32 [ 1, %bb.e ], [ %i.k, %bb.t ], [ %i.k, %bb.al ], [ %i.k, %bb.am ], [ %i.k, %bb.u ], [ %i.k, %bb.au ], [ %i.k, %bb.av ]
  %i.dh = sub nsw i32 %.089176, %.185             ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.c, label %.thread150, !llvm.loop !8

bb.ax:                                            ; preds = %bb.c, %bb.f
  br i1 %8, label %.thread150, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @report_invalid_encoding(i32 noundef %7, ptr noundef nonnull %.086177, i32 noundef %.089176) #5
  unreachable

.thread150:                                       ; preds = %store_coded_char.exit.thread, %.preheader, %store_coded_char.exit137, %bb.ax
  %.090171 = phi ptr [ %.090175, %store_coded_char.exit137 ], [ %.090175, %bb.ax ], [ %2, %.preheader ], [ %.5, %store_coded_char.exit.thread ]
  %.3155 = phi ptr [ %i.dg, %store_coded_char.exit137 ], [ %.086177, %bb.ax ], [ %0, %.preheader ], [ %.288, %store_coded_char.exit.thread ]
  store i8 0, ptr %.090171, align 1
  %i.dj = ptrtoint ptr %.3155 to i64
  %i.dk = ptrtoint ptr %0 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  ret i32 %i.dm
}

declare i32 @pg_encoding_verifymbchar(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
end_hunk_0
