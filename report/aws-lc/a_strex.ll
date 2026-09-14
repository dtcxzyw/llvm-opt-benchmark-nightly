Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/a_strex?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }
%struct.cbs_st = type { ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/asn1/a_strex.c\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s %2d %02d:%02d:%02d %d GMT\00", align 1
@mon = internal unnamed_addr constant [12 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@do_hex_dump.hexdig = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"\\W%08X\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\U%04X\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\\%02X\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@switch.table.ASN1_STRING_to_UTF8 = private unnamed_addr constant [19 x i16] [i16 4096, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 4097, i16 4097, i16 4097, i16 poison, i16 4097, i16 4097, i16 4097, i16 poison, i16 4097, i16 poison, i16 4100, i16 poison, i16 4098], align 4

; Function Attrs: nounwind uwtable
define i32 @ASN1_STRING_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %3 = alloca %struct.asn1_type_st, align 8       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %i.g = and i64 %2, 64
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @ASN1_tag2str(i32 noundef %i.f) #6 ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #7
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %maybe_write.exit70.thread, label %maybe_write.exit

maybe_write.exit:                                 ; preds = %bb.b
  %i.l = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.j) #6
  %.not85 = icmp eq i32 %i.l, %i.j
  br i1 %.not85, label %maybe_write.exit70, label %.critedge

maybe_write.exit70:                               ; preds = %maybe_write.exit
  %i.m = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1) #6
  %.not86 = icmp eq i32 %i.m, 1
  br i1 %.not86, label %maybe_write.exit70.thread, label %.critedge

maybe_write.exit70.thread:                        ; preds = %bb.b, %maybe_write.exit70
  %i.n = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %maybe_write.exit70.thread, %bb.a
  %.149 = phi i32 [ %i.n, %maybe_write.exit70.thread ], [ 0, %bb.a ] ; 3 uses
  %i.o = and i64 %2, 128
  %.not60 = icmp eq i64 %i.o, 0
  br i1 %.not60, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %2, 32
  %.not61 = icmp eq i64 %i.p, 0
  br i1 %.not61, label %bb.e, label %string_type_to_encoding.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i32 %i.f, label %string_type_to_encoding.exit [
    i32 12, label %string_type_to_encoding.exit.thread
    i32 18, label %bb.f
    i32 19, label %bb.f
    i32 20, label %bb.f
    i32 22, label %bb.f
    i32 23, label %bb.f
    i32 24, label %bb.f
    i32 26, label %bb.f
    i32 28, label %bb.g
    i32 30, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %string_type_to_encoding.exit.thread

bb.g:                                             ; preds = %bb.e
  br label %string_type_to_encoding.exit.thread

bb.h:                                             ; preds = %bb.e
  br label %string_type_to_encoding.exit.thread

string_type_to_encoding.exit:                     ; preds = %bb.e
  %i.q = and i64 %2, 256
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %string_type_to_encoding.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.c, %string_type_to_encoding.exit
  %i.s = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.s, label %maybe_write.exit.thread.i, label %maybe_write.exit.i

maybe_write.exit.i:                               ; preds = %bb.i
  %i.t = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.t, 1
  br i1 %.not.i, label %.thread.i, label %do_dump.exit.thread

maybe_write.exit.thread.i:                        ; preds = %bb.i
  %i.u = and i64 %2, 512
  %.not16.i = icmp eq i64 %i.u, 0
  br i1 %.not16.i, label %bb.j, label %bb.m

.thread.i:                                        ; preds = %maybe_write.exit.i
  %i.v = and i64 %2, 512
  %.not1628.i = icmp eq i64 %i.v, 0
  br i1 %.not1628.i, label %bb.k, label %bb.m

bb.j:                                             ; preds = %maybe_write.exit.thread.i
  %i.w = load i32, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  br label %do_hex_dump.exit.i

bb.k:                                             ; preds = %.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = load i32, ptr %1, align 8, !tbaa !13     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  %.not1317.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1317.i.i, label %do_dump.exit.thread82, label %maybe_write.exit.lr.ph.i.i

do_dump.exit.thread82:                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %4 = add nsw i32 %.149, 1
  br label %.critedge

maybe_write.exit.lr.ph.i.i:                       ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %maybe_write.exit.i.i

bb.l:                                             ; preds = %maybe_write.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not13.i.i, label %do_hex_dump.exit.i, label %maybe_write.exit.i.i, !llvm.loop !25

maybe_write.exit.i.i:                             ; preds = %bb.l, %maybe_write.exit.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.y, %maybe_write.exit.lr.ph.i.i ], [ %i.ad, %bb.l ] ; 2 uses
  %i.ae = load i8, ptr %.018.i.i, align 1, !tbaa !16 ; 2 uses
  %i.af = lshr i8 %i.ae, 4
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @do_hex_dump.hexdig, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !16
  %i.aj = and i8 %i.ae, 15
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @do_hex_dump.hexdig, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  store i8 %i.am, ptr %i.ac, align 1, !tbaa !16
  %i.an = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 2) #6
  %.not15.i.i = icmp eq i32 %i.an, 2
  br i1 %.not15.i.i, label %bb.l, label %do_hex_dump.exit.thread.i

do_hex_dump.exit.thread.i:                        ; preds = %maybe_write.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %do_dump.exit.thread

do_hex_dump.exit.i:                               ; preds = %bb.l, %bb.j
  %i.ao = phi i32 [ %i.w, %bb.j ], [ %i.z, %bb.l ]
  %.fr36.i = freeze i32 %i.ao
  %i.ap = shl i32 %.fr36.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = or disjoint i32 %i.ap, 1
  br i1 %i.aq, label %do_dump.exit.thread, label %do_dump.exit

bb.m:                                             ; preds = %.thread.i, %maybe_write.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @asn1_type_set0_string(ptr noundef nonnull %3, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.as = call i32 @i2d_ASN1_TYPE(ptr noundef nonnull %3, ptr noundef nonnull %i.c) #6
  %.fr.i = freeze i32 %i.as                       ; 4 uses
  %i.at = icmp slt i32 %.fr.i, 0
  br i1 %i.at, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %i.s, label %.loopexit.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = zext nneg i32 %.fr.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %.not1317.i18.i = icmp eq i32 %.fr.i, 0
  br i1 %.not1317.i18.i, label %.loopexit.i25.i, label %maybe_write.exit.lr.ph.i19.i

maybe_write.exit.lr.ph.i19.i:                     ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %maybe_write.exit.i20.i

bb.p:                                             ; preds = %maybe_write.exit.i20.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 1 ; 2 uses
  %.not13.i24.i = icmp eq ptr %i.ay, %i.aw
  br i1 %.not13.i24.i, label %.loopexit.i25.i, label %maybe_write.exit.i20.i, !llvm.loop !25

maybe_write.exit.i20.i:                           ; preds = %bb.p, %maybe_write.exit.lr.ph.i19.i
  %.018.i21.i = phi ptr [ %i.au, %maybe_write.exit.lr.ph.i19.i ], [ %i.ay, %bb.p ] ; 2 uses
  %i.az = load i8, ptr %.018.i21.i, align 1, !tbaa !16 ; 2 uses
  %i.ba = lshr i8 %i.az, 4
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @do_hex_dump.hexdig, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !16
  %i.be = and i8 %i.az, 15
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @do_hex_dump.hexdig, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  store i8 %i.bh, ptr %i.ax, align 1, !tbaa !16
  %i.bi = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %.not15.i22.i = icmp eq i32 %i.bi, 2
  br i1 %.not15.i22.i, label %bb.p, label %do_hex_dump.exit26.i

.loopexit.i25.i:                                  ; preds = %bb.p, %bb.o, %bb.n
  %5 = shl nuw i32 %.fr.i, 1
  br label %do_hex_dump.exit26.i

do_hex_dump.exit26.i:                             ; preds = %maybe_write.exit.i20.i, %.loopexit.i25.i
  %.011.i23.i = phi i32 [ %5, %.loopexit.i25.i ], [ -1, %maybe_write.exit.i20.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !17
  call void @OPENSSL_free(ptr noundef %i.bj) #6
  %6 = add nuw nsw i32 %.011.i23.i, 1
  %.inv.i = icmp sgt i32 %.011.i23.i, -1
  %spec.select = select i1 %.inv.i, i32 %6, i32 -1
  br label %bb.q

bb.q:                                             ; preds = %do_hex_dump.exit26.i, %bb.m
  %.2.i = phi i32 [ -1, %bb.m ], [ %spec.select, %do_hex_dump.exit26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %do_dump.exit

do_dump.exit:                                     ; preds = %do_hex_dump.exit.i, %bb.q
  %.3.i = phi i32 [ %.2.i, %bb.q ], [ %i.ar, %do_hex_dump.exit.i ]
  %.3.i.fr = freeze i32 %.3.i                     ; 2 uses
  %7 = icmp slt i32 %.3.i.fr, 0
  %i.bk = add nsw i32 %.3.i.fr, %.149
  br i1 %7, label %do_dump.exit.thread, label %.critedge

do_dump.exit.thread:                              ; preds = %do_hex_dump.exit.thread.i, %do_hex_dump.exit.i, %maybe_write.exit.i, %do_dump.exit
  br label %.critedge

string_type_to_encoding.exit.thread:              ; preds = %string_type_to_encoding.exit, %bb.e, %bb.g, %bb.f, %bb.h, %bb.d
  %not. = phi i1 [ true, %bb.h ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.g ], [ true, %bb.f ], [ true, %string_type_to_encoding.exit ] ; 2 uses
  %.046.ph = phi i32 [ 4098, %bb.h ], [ 4097, %bb.d ], [ 4096, %bb.e ], [ 4100, %bb.g ], [ 4097, %bb.f ], [ 4097, %string_type_to_encoding.exit ]
  %i.bl = and i64 %2, 16
  %.not62 = icmp eq i64 %i.bl, 0                  ; 2 uses
  %i.bm = or i1 %.not62, %not.
  %.1 = select i1 %i.bm, i32 %.046.ph, i32 4097   ; 2 uses
  %not..not62 = xor i1 %.not62, true
  %narrow = and i1 %not., %not..not62
  %.0 = zext i1 %narrow to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bp = load i32, ptr %1, align 8, !tbaa !13
  %i.bq = call fastcc i32 @do_buf(ptr noundef %i.bo, i32 noundef %i.bp, i32 noundef %.1, i32 noundef %.0, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef null) ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.w, label %bb.r

bb.r:                                             ; preds = %string_type_to_encoding.exit.thread
  %i.bs = add nsw i32 %i.bq, %.149                ; 2 uses
  %i.bt = load i8, ptr %i.d, align 1, !tbaa !16
  %.not63 = icmp eq i8 %i.bt, 0                   ; 3 uses
  %i.bu = add nsw i32 %i.bs, 2
  %spec.select69 = select i1 %.not63, i32 %i.bs, i32 %i.bu ; 2 uses
  %.not64 = icmp eq ptr %0, null
  br i1 %.not64, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not63, label %bb.t, label %maybe_write.exit71

maybe_write.exit71:                               ; preds = %bb.s
  %i.bv = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %.not87 = icmp eq i32 %i.bv, 1
  br i1 %.not87, label %bb.t, label %bb.w

bb.t:                                             ; preds = %maybe_write.exit71, %bb.s
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = load i32, ptr %1, align 8, !tbaa !13
  %i.by = call fastcc i32 @do_buf(ptr noundef %i.bw, i32 noundef %i.bx, i32 noundef %.1, i32 noundef %.0, i64 noundef %2, ptr noundef null, ptr noundef nonnull %0)
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not63, label %bb.v, label %maybe_write.exit72

maybe_write.exit72:                               ; preds = %bb.u
  %i.ca = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %.not88 = icmp eq i32 %i.ca, 1
  br i1 %.not88, label %bb.v, label %bb.w

bb.v:                                             ; preds = %maybe_write.exit72, %bb.u
  br label %bb.w

bb.w:                                             ; preds = %maybe_write.exit71, %bb.t, %maybe_write.exit72, %bb.r, %string_type_to_encoding.exit.thread, %bb.v
  %.252 = phi i32 [ -1, %string_type_to_encoding.exit.thread ], [ %spec.select69, %bb.r ], [ %spec.select69, %bb.v ], [ -1, %maybe_write.exit72 ], [ -1, %bb.t ], [ -1, %maybe_write.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.critedge

.critedge:                                        ; preds = %do_dump.exit.thread, %do_dump.exit, %do_dump.exit.thread82, %maybe_write.exit70, %maybe_write.exit, %bb.w
  %.4 = phi i32 [ %.252, %bb.w ], [ -1, %maybe_write.exit70 ], [ -1, %maybe_write.exit ], [ -1, %do_dump.exit.thread ], [ %i.bk, %do_dump.exit ], [ %4, %do_dump.exit.thread82 ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ASN1_tag2str(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @do_buf(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 4101) %2, i32 noundef range(i32 0, 2) %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 26 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  switch i32 %2, label %bb.f [
    i32 4100, label %bb.b
    i32 4098, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 3
  %.not95 = icmp eq i32 %i.c, 0
  br i1 %.not95, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 149, ptr noundef nonnull @.str.2, i32 noundef 89) #6
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.d = and i32 %1, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 142, ptr noundef nonnull @.str.2, i32 noundef 95) #6
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %.not96121 = icmp eq i32 %1, 0
  br i1 %.not96121, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.f
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %.lr.ph126.split.us, label %.lr.ph126.split

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %bb.m
  %.068124.us = phi i32 [ %i.ax, %bb.m ], [ 0, %.lr.ph126 ] ; 2 uses
  %.074123.us = phi ptr [ %.276.us, %bb.m ], [ %0, %.lr.ph126 ] ; 13 uses
  %.086122.us = phi i32 [ %.288.us, %bb.m ], [ %1, %.lr.ph126 ] ; 5 uses
  %i.g = icmp eq ptr %.074123.us, %0
  %i.h = zext i1 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  switch i32 %2, label %.critedge [
    i32 4100, label %bb.j
    i32 4098, label %bb.i
    i32 4097, label %bb.h
    i32 4096, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph126.split.us
  %i.i = call i32 @UTF8_getc(ptr noundef %.074123.us, i32 noundef %.086122.us, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %._crit_edge133, label %.critedge

._crit_edge133:                                   ; preds = %bb.g
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.074123.us, i64 %i.k
  %i.m = sub nsw i32 %.086122.us, %i.i
  %.pre134 = load i32, ptr %i.a, align 4, !tbaa !28
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph126.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.074123.us, i64 1
  %i.o = load i8, ptr %.074123.us, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !28
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph126.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %.074123.us, i64 1
  %i.r = load i8, ptr %.074123.us, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8                  ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %.074123.us, i64 2
  %i.v = load i8, ptr %i.q, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !28
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph126.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %.074123.us, i64 1
  %i.z = load i8, ptr %.074123.us, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw i32 %i.aa, 24                   ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.074123.us, i64 2
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, %i.ab            ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.074123.us, i64 3
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ak, %i.ag            ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.074123.us, i64 4
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %i.al, %i.ao            ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge133, %bb.j, %bb.i, %bb.h
  %i.aq = phi i32 [ %i.ap, %bb.j ], [ %i.x, %bb.i ], [ %i.p, %bb.h ], [ %.pre134, %._crit_edge133 ]
  %.288.us = phi i32 [ %.086122.us, %bb.j ], [ %.086122.us, %bb.i ], [ %.086122.us, %bb.h ], [ %i.m, %._crit_edge133 ]
  %.276.us = phi ptr [ %i.am, %bb.j ], [ %i.u, %bb.i ], [ %i.n, %bb.h ], [ %i.l, %._crit_edge133 ] ; 2 uses
  %i.ar = icmp eq ptr %.276.us, %i.f              ; 2 uses
  %i.as = zext i1 %i.ar to i32
  %i.at = call fastcc i32 @do_esc_char(i32 noundef %i.aq, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %i.h, i32 noundef %i.as) ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.thread108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = sub nuw nsw i32 2147483647, %.068124.us
  %i.aw = icmp samesign ugt i32 %i.at, %i.av
  br i1 %i.aw, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %i.at, %.068124.us      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.ar, label %.loopexit, label %.lr.ph126.split.us, !llvm.loop !26

.lr.ph126.split:                                  ; preds = %.lr.ph126, %._crit_edge
  %.068124 = phi i32 [ %.169.lcssa, %._crit_edge ], [ 0, %.lr.ph126 ] ; 2 uses
  %.074123 = phi ptr [ %.276, %._crit_edge ], [ %0, %.lr.ph126 ] ; 13 uses
  %.086122 = phi i32 [ %.288, %._crit_edge ], [ %1, %.lr.ph126 ] ; 5 uses
  %i.ay = icmp eq ptr %.074123, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  switch i32 %2, label %.critedge [
    i32 4100, label %bb.n
    i32 4098, label %bb.o
    i32 4097, label %bb.p
    i32 4096, label %bb.q
  ]

bb.n:                                             ; preds = %.lr.ph126.split
  %i.az = getelementptr inbounds nuw i8, ptr %.074123, i64 1
  %i.ba = load i8, ptr %.074123, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw i32 %i.bb, 24                   ; 2 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.074123, i64 2
  %i.be = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = or disjoint i32 %i.bg, %i.bc            ; 2 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.074123, i64 3
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = or disjoint i32 %i.bl, %i.bh            ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %.074123, i64 4
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bm, %i.bp            ; 2 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !28
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph126.split
  %i.br = getelementptr inbounds nuw i8, ptr %.074123, i64 1
  %i.bs = load i8, ptr %.074123, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8                ; 2 uses
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %.074123, i64 2
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bu, %i.bx            ; 2 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !28
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph126.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.074123, i64 1
  %i.ca = load i8, ptr %.074123, align 1, !tbaa !16
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
end_hunk_0
