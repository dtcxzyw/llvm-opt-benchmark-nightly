inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ASN1_tag2str.tag2str = internal unnamed_addr constant [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 16
@.str = private unnamed_addr constant [4 x i8] c"EOC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"BIT STRING\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"OCTET STRING\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"OBJECT DESCRIPTOR\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ENUMERATED\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<ASN1 11>\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"UTF8STRING\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<ASN1 13>\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<ASN1 14>\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<ASN1 15>\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"NUMERICSTRING\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"PRINTABLESTRING\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"T61STRING\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"VIDEOTEXSTRING\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"IA5STRING\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"UTCTIME\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"GENERALIZEDTIME\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GRAPHICSTRING\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"VISIBLESTRING\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GENERALSTRING\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"UNIVERSALSTRING\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<ASN1 29>\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"BMPSTRING\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"BAD RECURSION DEPTH\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Error in encoding\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"length is greater than %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c":BAD OBJECT\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c":BAD BOOLEAN\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"[HEX DUMP]:\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c":BAD INTEGER\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c":BAD ENUMERATED\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c":[\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"cons: \00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"prim: \00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"%5ld:d=%-2d hl=%ld l=%4ld %s\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"%5ld:d=%-2d hl=%ld l=inf  %s\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"priv [ %d ] \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"cont [ %d ]\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"appl [ %d ]\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"<ASN1 %d>\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%-18s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @ASN1_parse(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.a, i64 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef 0)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 3) i32 @asn1_parse2(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 15 uses
  %i.b = alloca ptr, align 8                      ; 21 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca i64, align 8                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !12
  %i.h = icmp sgt i32 %4, 128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #5 ; 0 uses
  br label %bb.ch

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !9
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %2 ; 2 uses
  %i.l = icmp sgt i64 %2, 0
  br i1 %i.l, label %.lr.ph350, label %.thread264

.lr.ph350:                                        ; preds = %bb.c
  %i.m = sext i32 %3 to i64
  %.not228 = icmp eq i32 %5, 0
  %i.n = select i1 %.not228, i32 0, i32 %4
  %.not56.i = icmp eq ptr %0, null
  %i.o = sext i32 %i.n to i64
  %i.p = add nsw i32 %4, 1                        ; 2 uses
  %i.q = ptrtoint ptr %i.k to i64
  %.not239 = icmp eq i32 %6, 0
  %i.r = icmp eq i32 %6, -1                       ; 2 uses
  %i.s = icmp ne i32 %6, 0
  %i.t = sext i32 %6 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph350, %.loopexit316
  %.0189348 = phi i64 [ %2, %.lr.ph350 ], [ %i.jj, %.loopexit316 ] ; 2 uses
  %7 = load ptr, ptr %i.b, align 8, !tbaa !9      ; 6 uses
  %i.u = call i32 @ASN1_get_object(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef %.0189348) #5 ; 4 uses
  %i.v = and i32 %i.u, 128
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #5 ; 0 uses
  br label %.thread264

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %7 to i64                   ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32                ; 8 uses
  %i.ac = sub nsw i64 %.0189348, %i.ab            ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !9
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.z, %i.ae
  %i.ag = add nsw i64 %i.af, %i.m                 ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !5   ; 8 uses
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !5   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not55.i = icmp eq i32 %i.u, 33                ; 2 uses
  br i1 %.not55.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.u, 32
  %.not.i = icmp eq i32 %i.ak, 0
  %.str.49..str.48.i = select i1 %.not.i, ptr @.str.49, ptr @.str.48
  %i.al = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.50, i64 noundef %i.ag, i32 noundef %4, i64 noundef %i.ab, i64 noundef %i.ah, ptr noundef nonnull %.str.49..str.48.i) #5
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %asn1_print_info.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.51, i64 noundef %i.ag, i32 noundef %4, i64 noundef %i.ab, ptr noundef nonnull @.str.48) #5
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %asn1_print_info.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not56.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call i64 @BIO_ctrl(ptr noundef nonnull %0, i32 noundef 79, i64 noundef 0, ptr noundef nonnull %i.a) #5
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = call ptr @BIO_f_prefix() #5
  %i.as = call ptr @BIO_new(ptr noundef %i.ar) #5 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %asn1_print_info.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call ptr @BIO_push(ptr noundef nonnull %i.as, ptr noundef nonnull %0) #5 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %asn1_print_info.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.044.i = phi ptr [ %0, %bb.j ], [ %i.au, %bb.l ] ; 6 uses
  %.039.i = phi i32 [ 0, %bb.j ], [ 1, %bb.l ]    ; 3 uses
  %.0.i = phi ptr [ null, %bb.j ], [ %i.as, %bb.l ] ; 3 uses
  %i.aw = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 81, i64 noundef 0, ptr noundef null) #5 ; 3 uses
  %i.ax = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 79, i64 noundef 0, ptr noundef nonnull %i.a) #5
  %i.ay = icmp slt i64 %i.ax, 1
  br i1 %i.ay, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 80, i64 noundef %i.o, ptr noundef null) #5
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.145.i = phi ptr [ %.044.i, %bb.n ], [ null, %bb.i ] ; 2 uses
  %.140.i = phi i32 [ %.039.i, %bb.n ], [ 0, %bb.i ]
  %.037.i = phi i64 [ %i.aw, %bb.n ], [ -1, %bb.i ]
  %.1.i = phi ptr [ %.0.i, %bb.n ], [ null, %bb.i ]
  %i.bb = and i32 %i.aj, 192
  %i.bc = icmp eq i32 %i.bb, 192
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.52, i32 noundef %i.ai) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.q:                                             ; preds = %bb.o
  %i.be = and i32 %i.aj, 128
  %.not57.i = icmp eq i32 %i.be, 0
  br i1 %.not57.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef %i.ai) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bg = and i32 %i.aj, 64
  %.not58.i = icmp eq i32 %i.bg, 0
  br i1 %.not58.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %i.ai) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bi = icmp sgt i32 %i.ai, 30
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.55, i32 noundef %i.ai) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bk = and i32 %i.ai, -9
  %or.cond.i.i = icmp eq i32 %i.bk, 258
  %i.bl = and i32 %i.ai, 10
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bl, i32 %i.ai ; 2 uses
  %or.cond3.i.i = icmp ugt i32 %spec.select.i.i, 30
  br i1 %or.cond3.i.i, label %ASN1_tag2str.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = zext nneg i32 %spec.select.i.i to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @ASN1_tag2str.tag2str, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  br label %ASN1_tag2str.exit.i

ASN1_tag2str.exit.i:                              ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p
  %.143.i = phi ptr [ %i.a, %bb.p ], [ %i.a, %bb.r ], [ %i.a, %bb.t ], [ %i.a, %bb.v ], [ %i.bo, %bb.x ], [ @.str.31, %bb.w ]
  %i.bp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %.145.i, ptr noundef nonnull @.str.56, ptr noundef %.143.i) #5
  %i.bq = icmp slt i32 %i.bp, 1
  br label %bb.y

bb.y:                                             ; preds = %ASN1_tag2str.exit.i, %bb.n, %bb.m
  %.246.i = phi ptr [ %.044.i, %bb.m ], [ %.044.i, %bb.n ], [ %.145.i, %ASN1_tag2str.exit.i ] ; 2 uses
  %.241.i = phi i32 [ %.039.i, %bb.m ], [ %.039.i, %bb.n ], [ %.140.i, %ASN1_tag2str.exit.i ]
  %.138.i = phi i64 [ %i.aw, %bb.m ], [ %i.aw, %bb.n ], [ %.037.i, %ASN1_tag2str.exit.i ] ; 2 uses
  %.036.i = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ %i.bq, %ASN1_tag2str.exit.i ]
  %.2.i = phi ptr [ %.0.i, %bb.m ], [ %.0.i, %bb.n ], [ %.1.i, %ASN1_tag2str.exit.i ]
  %i.br = icmp sgt i64 %.138.i, -1
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = call i64 @BIO_ctrl(ptr noundef %.246.i, i32 noundef 80, i64 noundef %.138.i, ptr noundef null) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not59.i = icmp eq i32 %.241.i, 0
  br i1 %.not59.i, label %asn1_print_info.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = call ptr @BIO_pop(ptr noundef %.246.i) #5 ; 0 uses
  br label %asn1_print_info.exit

asn1_print_info.exit.thread:                      ; preds = %bb.h, %bb.l, %bb.k, %bb.g
  %.26875.i.ph = phi ptr [ null, %bb.g ], [ null, %bb.k ], [ %i.as, %bb.l ], [ null, %bb.h ]
  %i.bu = call i32 @BIO_free(ptr noundef %.26875.i.ph) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread264

asn1_print_info.exit:                             ; preds = %bb.aa, %bb.ab
  %i.bv = call i32 @BIO_free(ptr noundef %.2.i) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.036.i, label %.thread264, label %bb.ac

bb.ac:                                            ; preds = %asn1_print_info.exit
  %i.bw = and i32 %i.u, 32
  %.not230 = icmp eq i32 %i.bw, 0
  br i1 %.not230, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.by = load i64, ptr %i.d, align 8, !tbaa !14
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.cb = icmp slt i32 %i.ca, 1
  br i1 %i.cb, label %.thread264, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !14  ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, %i.ac
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ce = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %i.ac) #5 ; 0 uses
  br label %.thread264

bb.ag:                                            ; preds = %bb.ae
  %i.cf = icmp eq i64 %i.cc, 0
  %or.cond = and i1 %.not55.i, %i.cf
  %.pre.a = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  br i1 %or.cond, label %.preheader313, label %.preheader315

.preheader315:                                    ; preds = %bb.ag
  %.not245333 = icmp ult ptr %.pre.a, %i.bz
  br i1 %.not245333, label %.lr.ph, label %.loopexit316

.preheader313:                                    ; preds = %bb.ag, %bb.ah
  %i.cg = phi ptr [ %i.cp, %bb.ah ], [ %.pre.a, %bb.ag ]
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = sub i64 %i.q, %i.ch
  %i.cj = load ptr, ptr %1, align 8, !tbaa !9
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ch, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %3, %i.cm
  %i.co = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.ci, i32 noundef %i.cn, i32 noundef %i.p, i32 noundef %5, i32 noundef %6) ; 2 uses
  switch i32 %i.co, label %bb.ah [
    i32 0, label %.thread264
    i32 2, label %.preheader313._crit_edge
  ]

.preheader313._crit_edge:                         ; preds = %.preheader313
  %.pre522 = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %split

bb.ah:                                            ; preds = %.preheader313
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %.not246 = icmp ult ptr %i.cp, %i.k
  br i1 %.not246, label %.preheader313, label %split

split:                                            ; preds = %bb.ah, %.preheader313._crit_edge
  %i.cq = phi ptr [ %.pre522, %.preheader313._crit_edge ], [ %i.cp, %bb.ah ]
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.bx to i64
  %i.ct = sub i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !14
  br label %.loopexit316

.lr.ph:                                           ; preds = %.preheader315, %bb.ai
  %i.cu = phi ptr [ %i.dd, %bb.ai ], [ %.pre.a, %.preheader315 ]
  %.0180334 = phi i64 [ %i.df, %bb.ai ], [ %i.cc, %.preheader315 ] ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !9
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %3, %i.cz
  %i.db = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.b, i64 noundef %.0180334, i32 noundef %i.da, i32 noundef %i.p, i32 noundef %5, i32 noundef %6)
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.thread264, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %.neg = add i64 %.0180334, %i.cw
  %i.df = sub i64 %.neg, %i.de
  %.not245 = icmp ult ptr %i.dd, %i.bz
  br i1 %.not245, label %.lr.ph, label %.loopexit316, !llvm.loop !16

bb.aj:                                            ; preds = %bb.ac
  %i.dg = load i32, ptr %i.f, align 4, !tbaa !5
  %.not231 = icmp eq i32 %i.dg, 0
  br i1 %.not231, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !14
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.dh
  store ptr %i.dj, ptr %i.b, align 8, !tbaa !9
  %i.dk = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.dl = icmp slt i32 %i.dk, 1
  br i1 %i.dl, label %.thread264, label %.loopexit316

bb.al:                                            ; preds = %bb.aj
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !5
  switch i32 %i.dm, label %bb.cb [
    i32 26, label %bb.am
    i32 24, label %bb.am
    i32 23, label %bb.am
    i32 22, label %bb.am
    i32 20, label %bb.am
    i32 19, label %bb.am
    i32 18, label %bb.am
    i32 12, label %bb.am
    i32 6, label %bb.ap
    i32 1, label %bb.at
    i32 30, label %.thread552
    i32 4, label %bb.aw
    i32 2, label %bb.bh
    i32 10, label %bb.br
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.dn = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.do = icmp slt i32 %i.dn, 1
  br i1 %i.do, label %.thread264, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %bb.ao, label %.thread552

bb.ao:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ds = trunc i64 %i.dp to i32
  %i.dt = call i32 @BIO_write(ptr noundef %0, ptr noundef %i.dr, i32 noundef %i.ds) #5
  %i.du = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dv = trunc i64 %i.du to i32
  %.not242 = icmp eq i32 %i.dt, %i.dv
  br i1 %.not242, label %.thread552, label %.thread264

bb.ap:                                            ; preds = %bb.al
  store ptr %7, ptr %i.c, align 8, !tbaa !9
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dx = add nsw i64 %i.dw, %i.ab
  %i.dy = call ptr @d2i_ASN1_OBJECT(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i64 noundef %i.dx) #5
  %.not241 = icmp eq ptr %i.dy, null
  br i1 %.not241, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %.thread264, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.ec = call i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %i.eb) #5 ; 0 uses
  br label %.thread552

bb.as:                                            ; preds = %bb.ap
  %i.ed = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.37) #5
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %.thread264, label %.thread287

bb.at:                                            ; preds = %bb.al
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !14
  %.not240 = icmp eq i64 %i.ef, 1
  br i1 %.not240, label %.thread266, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #5
  %i.eh = icmp slt i32 %i.eg, 1
  br i1 %i.eh, label %.thread264, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.pr = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ei = icmp sgt i64 %.pr, 0
  br i1 %i.ei, label %.thread266, label %.thread287

.thread266:                                       ; preds = %bb.at, %bb.av
  %.1184268 = phi i32 [ 1, %bb.av ], [ 0, %bb.at ]
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18
  %i.el = zext i8 %i.ek to i32
  %i.em = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %i.el) #5 ; 0 uses
  br label %bb.ce

bb.aw:                                            ; preds = %bb.al
  store ptr %7, ptr %i.c, align 8, !tbaa !9
  %i.en = load i64, ptr %i.d, align 8, !tbaa !14
  %i.eo = add nsw i64 %i.en, %i.ab
  %i.ep = call ptr @d2i_ASN1_OCTET_STRING(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.eo) #5 ; 15 uses
  %.not234 = icmp eq ptr %i.ep, null
  br i1 %.not234, label %.thread563.a, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %bb.ay, label %.thread563.a

bb.ay:                                            ; preds = %bb.ax
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !21 ; 2 uses
  store ptr %i.et, ptr %i.c, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.eq to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread270
  %indvars.iv513 = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next514, %.thread270 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv513
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !18
  %.fr = freeze i8 %i.ev                          ; 3 uses
  %i.ew = icmp ugt i8 %.fr, 31
  br i1 %i.ew, label %bb.ba, label %switch.early.test

switch.early.test:                                ; preds = %bb.az
  switch i8 %.fr, label %bb.bc [
    i8 13, label %.thread270
    i8 10, label %.thread270
    i8 9, label %.thread270
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ex = icmp ugt i8 %.fr, 126
  br i1 %i.ex, label %bb.bc, label %.thread270

.thread270:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.ba
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.az, !llvm.loop !22

.critedge:                                        ; preds = %.thread270
  %i.ey = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %.thread264, label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.fb = load i32, ptr %i.ep, align 8, !tbaa !19
  %i.fc = call i32 @BIO_write(ptr noundef %0, ptr noundef %i.fa, i32 noundef %i.fb) #5
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %.thread264, label %.thread563.a

bb.bc:                                            ; preds = %bb.ba, %switch.early.test
  br i1 %.not239, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fe = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef 11) #5
  %i.ff = icmp slt i32 %i.fe, 1
  br i1 %i.ff, label %.thread264, label %.preheader309

.preheader309:                                    ; preds = %bb.bd
  %i.fg = load i32, ptr %i.ep, align 8, !tbaa !19
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph344, label %.thread563.a

bb.be:                                            ; preds = %.lr.ph344
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.fi = load i32, ptr %i.ep, align 8, !tbaa !19
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next517, %i.fj
  br i1 %i.fk, label %.lr.ph344, label %.thread563.a, !llvm.loop !23

.lr.ph344:                                        ; preds = %.preheader309, %bb.be
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %bb.be ], [ 0, %.preheader309 ] ; 2 uses
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv516
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !18
  %i.fo = zext i8 %i.fn to i32
  %i.fp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.fo) #5
  %i.fq = icmp slt i32 %i.fp, 1
  br i1 %i.fq, label %.thread264, label %bb.be

bb.bf:                                            ; preds = %bb.bc
  %i.fr = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.fs = icmp slt i32 %i.fr, 1
  br i1 %i.fs, label %.thread264, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !9
  %.pre523 = load i32, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.fu = call i32 @llvm.smin.i32(i32 %6, i32 %.pre523)
  %i.fv = select i1 %i.r, i32 %.pre523, i32 %i.fu
  %i.fw = call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.ft, i32 noundef %i.fv, i32 noundef 6) #5
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %.thread264, label %bb.cg

bb.bh:                                            ; preds = %bb.al
  store ptr %7, ptr %i.c, align 8, !tbaa !9
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !14
  %i.fz = add nsw i64 %i.fy, %i.ab
  %i.ga = call ptr @d2i_ASN1_INTEGER(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.fz) #5 ; 10 uses
  %.not233 = icmp eq ptr %i.ga, null
  br i1 %.not233, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gb = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %.thread264, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !24
  %i.gf = icmp eq i32 %i.ge, 258
  br i1 %i.gf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gg = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef 1) #5
  %i.gh = icmp slt i32 %i.gg, 1
  br i1 %i.gh, label %.thread264, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gi = load i32, ptr %i.ga, align 8, !tbaa !19 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph339, label %._crit_edge340

.lr.ph339:                                        ; preds = %bb.bl
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.gl = load i32, ptr %i.ga, align 8, !tbaa !19 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next511, %i.gm
  br i1 %i.gn, label %bb.bn, label %._crit_edge340, !llvm.loop !25

bb.bn:                                            ; preds = %.lr.ph339, %bb.bm
  %indvars.iv510 = phi i64 [ 0, %.lr.ph339 ], [ %indvars.iv.next511, %bb.bm ] ; 2 uses
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv510
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.gr) #5
  %i.gt = icmp slt i32 %i.gs, 1
  br i1 %i.gt, label %.thread264, label %bb.bm

._crit_edge340:                                   ; preds = %bb.bm, %bb.bl
  %.lcssa320 = phi i32 [ %i.gi, %bb.bl ], [ %i.gl, %bb.bm ]
  %i.gu = icmp eq i32 %.lcssa320, 0
  br i1 %i.gu, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge340
  %i.gv = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 2) #5
  %i.gw = icmp slt i32 %i.gv, 1
  br i1 %i.gw, label %.thread264, label %bb.bq

bb.bp:                                            ; preds = %bb.bh
  %i.gx = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #5
  %i.gy = icmp slt i32 %i.gx, 1
  br i1 %i.gy, label %.thread264, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %._crit_edge340, %bb.bp
  %.2185 = phi i32 [ 0, %bb.bo ], [ 0, %._crit_edge340 ], [ 1, %bb.bp ]
  call void @ASN1_INTEGER_free(ptr noundef %i.ga) #5
  br label %bb.ce

bb.br:                                            ; preds = %bb.al
  store ptr %7, ptr %i.c, align 8, !tbaa !9
  %i.gz = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ha = add nsw i64 %i.gz, %i.ab
  %i.hb = call ptr @d2i_ASN1_ENUMERATED(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.ha) #5 ; 10 uses
  %.not232 = icmp eq ptr %i.hb, null
  br i1 %.not232, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hc = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %.thread264, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !24
  %i.hg = icmp eq i32 %i.hf, 266
  br i1 %i.hg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hh = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef 1) #5
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %.thread264, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.hj = load i32, ptr %i.hb, align 8, !tbaa !19 ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph336, label %._crit_edge

.lr.ph336:                                        ; preds = %bb.bv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hm = load i32, ptr %i.hb, align 8, !tbaa !19 ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next, %i.hn
  br i1 %i.ho, label %bb.bx, label %._crit_edge, !llvm.loop !26

bb.bx:                                            ; preds = %.lr.ph336, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph336 ], [ %indvars.iv.next, %bb.bw ] ; 2 uses
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !18
  %i.hs = zext i8 %i.hr to i32
  %i.ht = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.hs) #5
  %i.hu = icmp slt i32 %i.ht, 1
  br i1 %i.hu, label %.thread264, label %bb.bw

._crit_edge:                                      ; preds = %bb.bw, %bb.bv
  %.lcssa = phi i32 [ %i.hj, %bb.bv ], [ %i.hm, %bb.bw ]
  %i.hv = icmp eq i32 %.lcssa, 0
  br i1 %i.hv, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %._crit_edge
  %i.hw = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 2) #5
  %i.hx = icmp slt i32 %i.hw, 1
  br i1 %i.hx, label %.thread264, label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.hy = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #5
  %i.hz = icmp slt i32 %i.hy, 1
  br i1 %i.hz, label %.thread264, label %bb.ca

bb.ca:                                            ; preds = %bb.by, %._crit_edge, %bb.bz
  %.4187 = phi i32 [ 0, %bb.by ], [ 0, %._crit_edge ], [ 1, %bb.bz ]
  call void @ASN1_ENUMERATED_free(ptr noundef %i.hb) #5
  br label %bb.ce

bb.cb:                                            ; preds = %bb.al
  %i.ia = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ib = icmp sgt i64 %i.ia, 0
  %or.cond17 = and i1 %i.s, %i.ib
  br i1 %or.cond17, label %bb.cc, label %.thread552

bb.cc:                                            ; preds = %bb.cb
  %i.ic = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.id = icmp slt i32 %i.ic, 1
  br i1 %i.id, label %.thread264, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.if = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ig = icmp slt i64 %i.if, %i.t
  %or.cond488 = select i1 %i.r, i1 true, i1 %i.ig
  %i.ih = trunc i64 %i.if to i32
  %i.ii = select i1 %or.cond488, i32 %i.ih, i32 %6
  %i.ij = call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.ie, i32 noundef %i.ii, i32 noundef 6) #5
  %i.ik = icmp slt i32 %i.ij, 1
  br i1 %i.ik, label %.thread264, label %.thread559

bb.ce:                                            ; preds = %bb.ca, %bb.bq, %.thread266
  %.6 = phi i32 [ %.2185, %bb.bq ], [ %.1184268, %.thread266 ], [ %.4187, %bb.ca ]
  %.not243 = icmp eq i32 %.6, 0
  br i1 %.not243, label %.thread552, label %.thread287

.thread287:                                       ; preds = %bb.as, %bb.av, %bb.ce
  %i.il = getelementptr inbounds i8, ptr %7, i64 %i.ab
  %i.im = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #5
  %i.in = icmp slt i32 %i.im, 1
  br i1 %i.in, label %.thread264, label %.preheader

.preheader:                                       ; preds = %.thread287
  %i.io = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ip = icmp sgt i64 %i.io, 0
  br i1 %i.ip, label %.lr.ph346, label %._crit_edge347

bb.cf:                                            ; preds = %.lr.ph346
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.iq = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ir = icmp sgt i64 %i.iq, %indvars.iv.next520
  br i1 %i.ir, label %.lr.ph346, label %._crit_edge347, !llvm.loop !27

.lr.ph346:                                        ; preds = %.preheader, %bb.cf
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %bb.cf ], [ 0, %.preheader ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv519
  %i.it = load i8, ptr %i.is, align 1, !tbaa !18
  %i.iu = zext i8 %i.it to i32
  %i.iv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.iu) #5
  %i.iw = icmp slt i32 %i.iv, 1
  br i1 %i.iw, label %.thread264, label %bb.cf

._crit_edge347:                                   ; preds = %bb.cf, %.preheader
  %i.ix = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #5
  %i.iy = icmp slt i32 %i.ix, 1
  br i1 %i.iy, label %.thread264, label %.thread552

.thread563.a:                                     ; preds = %bb.be, %bb.bb, %bb.aw, %bb.ax, %.preheader309
  call void @ASN1_OCTET_STRING_free(ptr noundef %i.ep) #5
  br label %.thread552

bb.cg:                                            ; preds = %bb.bg
  call void @ASN1_OCTET_STRING_free(ptr noundef nonnull %i.ep) #5
  br label %.thread559

.thread552:                                       ; preds = %bb.ao, %bb.an, %bb.ar, %bb.cb, %bb.al, %._crit_edge347, %bb.ce, %.thread563.a
  %i.iz = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.ja = icmp slt i32 %i.iz, 1
  br i1 %i.ja, label %.thread264, label %.thread559

.thread559:                                       ; preds = %bb.cd, %bb.cg, %.thread552
  %i.jb = load i64, ptr %i.d, align 8, !tbaa !14
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.jb
  store ptr %i.jd, ptr %i.b, align 8, !tbaa !9
  %i.je = load i32, ptr %i.e, align 4, !tbaa !5
  %i.jf = icmp eq i32 %i.je, 0
  %i.jg = load i32, ptr %i.f, align 4
  %i.jh = icmp eq i32 %i.jg, 0
  %or.cond19 = select i1 %i.jf, i1 %i.jh, i1 false
  br i1 %or.cond19, label %.thread264, label %.loopexit316

.loopexit316:                                     ; preds = %bb.ai, %.preheader315, %split, %bb.ak, %.thread559
  %i.ji = load i64, ptr %i.d, align 8, !tbaa !14
  %i.jj = sub nsw i64 %i.ac, %i.ji                ; 2 uses
  %i.jk = icmp sgt i64 %i.jj, 0
  br i1 %i.jk, label %bb.d, label %.thread264, !llvm.loop !28

.thread264:                                       ; preds = %asn1_print_info.exit, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.cc, %bb.cd, %.thread552, %.thread559, %.loopexit316, %bb.ad, %bb.bd, %.critedge, %bb.bf, %bb.bb, %bb.bg, %bb.bo, %bb.bi, %bb.bk, %bb.bp, %bb.by, %bb.bs, %bb.bu, %bb.bz, %.thread287, %._crit_edge347, %.lr.ph, %.preheader313, %bb.bx, %bb.bn, %.lr.ph344, %.lr.ph346, %bb.c, %bb.af, %asn1_print_info.exit.thread, %bb.e
  %.0205 = phi i32 [ 0, %bb.e ], [ 0, %asn1_print_info.exit.thread ], [ %i.co, %.preheader313 ], [ 0, %bb.bn ], [ 0, %.lr.ph344 ], [ 0, %bb.af ], [ 0, %bb.bx ], [ 0, %.lr.ph346 ], [ 0, %.lr.ph ], [ 1, %bb.c ], [ 0, %bb.bz ], [ 0, %.thread287 ], [ 0, %bb.bs ], [ 0, %bb.by ], [ 0, %bb.bp ], [ 0, %bb.bi ], [ 0, %bb.bo ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %.critedge ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 1, %.loopexit316 ], [ 2, %.thread559 ], [ 0, %bb.au ], [ 0, %bb.cc ], [ 0, %bb.bk ], [ 0, %bb.bb ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.bu ], [ 0, %bb.cd ], [ 0, %.thread552 ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %asn1_print_info.exit ], [ 0, %._crit_edge347 ]
  %.4204 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ null, %bb.bn ], [ %i.ep, %.lr.ph344 ], [ null, %bb.af ], [ null, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ null, %bb.bs ], [ null, %bb.by ], [ null, %bb.bp ], [ null, %bb.bi ], [ null, %bb.bo ], [ %i.ep, %bb.bg ], [ %i.ep, %bb.bf ], [ %i.ep, %.critedge ], [ %i.ep, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread559 ], [ null, %bb.au ], [ null, %bb.cc ], [ null, %bb.bk ], [ %i.ep, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ null, %bb.bu ], [ null, %bb.cd ], [ null, %.thread552 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %.4199 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ %i.ga, %bb.bn ], [ null, %.lr.ph344 ], [ null, %bb.af ], [ null, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ null, %bb.bs ], [ null, %bb.by ], [ null, %bb.bp ], [ %i.ga, %bb.bi ], [ %i.ga, %bb.bo ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %.critedge ], [ null, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread559 ], [ null, %bb.au ], [ null, %bb.cc ], [ %i.ga, %bb.bk ], [ null, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ null, %bb.bu ], [ null, %bb.cd ], [ null, %.thread552 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %.4194 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ null, %bb.bn ], [ null, %.lr.ph344 ], [ null, %bb.af ], [ %i.hb, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ %i.hb, %bb.bs ], [ %i.hb, %bb.by ], [ null, %bb.bp ], [ null, %bb.bi ], [ null, %bb.bo ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %.critedge ], [ null, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread559 ], [ null, %bb.au ], [ null, %bb.cc ], [ null, %bb.bk ], [ null, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ %i.hb, %bb.bu ], [ null, %bb.cd ], [ null, %.thread552 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !12
  call void @ASN1_OBJECT_free(ptr noundef %i.jl) #5
  call void @ASN1_OCTET_STRING_free(ptr noundef %.4204) #5
  call void @ASN1_INTEGER_free(ptr noundef %.4199) #5
  call void @ASN1_ENUMERATED_free(ptr noundef %.4194) #5
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !9
  store ptr %i.jm, ptr %1, align 8, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %.thread264, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0205, %.thread264 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @ASN1_parse_dump(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.a, i64 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ASN1_tag2str(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, -9
  %or.cond = icmp eq i32 %i.a, 258
  %i.b = and i32 %0, 10
  %spec.select = select i1 %or.cond, i32 %i.b, i32 %0 ; 2 uses
  %or.cond3 = icmp ugt i32 %spec.select, 30
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %spec.select to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @ASN1_tag2str.tag2str, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.e, %bb.b ], [ @.str.31, %bb.a ]
  ret ptr %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_get_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @d2i_ASN1_OBJECT(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_OCTET_STRING(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_dump_indent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_OCTET_STRING_free(ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_INTEGER(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_ENUMERATED(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_f_prefix() local_unnamed_addr #3

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_pop(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS14asn1_object_st", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !6, i64 0}
!20 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !10, i64 8, !15, i64 16}
!21 = !{!20, !10, i64 8}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{!20, !6, i64 4}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
end_hunk_0
