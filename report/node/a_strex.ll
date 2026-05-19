inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }

@tag2nbyte = internal unnamed_addr constant [31 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\01\01\01\FF\01\01\01\FF\01\FF\04\FF\02", align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"../../deps/openssl/openssl/crypto/asn1/a_strex.c\00", align 1
@__func__.do_buf = private unnamed_addr constant [7 x i8] c"do_buf\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\\W%08lX\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\\U%04lX\00", align 1
@char_type = internal unnamed_addr constant [128 x i16] [i16 1026, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 120, i16 0, i16 1, i16 40, i16 0, i16 0, i16 0, i16 16, i16 1040, i16 1040, i16 -31744, i16 25, i16 25, i16 16400, i16 8208, i16 16, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 16, i16 9, i16 9, i16 16, i16 9, i16 16, i16 0, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 0, i16 1025, i16 0, i16 0, i16 0, i16 0, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 4112, i16 0, i16 0, i16 0, i16 0, i16 2], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\\%02X\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @X509_NAME_print_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @X509_NAME_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @do_name_ex(ptr noundef nonnull @send_bio_chars, ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare i32 @X509_NAME_print(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_name_ex(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 3 uses
  %.not = icmp slt i32 %3, 1
  br i1 %.not, label %.loopexit149, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %3, %i.b
  br i1 %exitcond.not.i, label %.loopexit149, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.06.i = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %do_indent.exit, label %bb.b

.loopexit149:                                     ; preds = %bb.b, %bb.a
  %5 = lshr i64 %4, 16
  %6 = and i64 %5, 15
  switch i64 %6, label %do_indent.exit [
    i64 4, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.c:                                             ; preds = %.loopexit149
  br label %bb.f

bb.d:                                             ; preds = %.loopexit149
  br label %bb.f

bb.e:                                             ; preds = %.loopexit149
  br label %bb.f

bb.f:                                             ; preds = %.loopexit149, %bb.e, %bb.d, %bb.c
  %.093 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.store.select, %.loopexit149 ] ; 3 uses
  %.092 = phi ptr [ @.str.5, %bb.e ], [ @.str.2, %bb.c ], [ @.str.4, %bb.d ], [ @.str, %.loopexit149 ]
  %.091 = phi ptr [ @.str.1, %bb.e ], [ @.str.3, %bb.c ], [ @.str.1, %bb.d ], [ @.str.1, %.loopexit149 ]
  %.089 = phi i32 [ 2, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %.loopexit149 ] ; 2 uses
  %.088 = phi i32 [ 3, %bb.e ], [ 1, %bb.c ], [ 3, %bb.d ], [ 3, %.loopexit149 ] ; 2 uses
  %i.d = and i64 %4, 8388608
  %.not108 = icmp eq i64 %i.d, 0                  ; 2 uses
  %.str.7..str.6 = select i1 %.not108, ptr @.str.7, ptr @.str.6
  %. = select i1 %.not108, i32 1, i32 3           ; 2 uses
  %i.e = trunc i64 %4 to i32
  %i.f = and i32 %i.e, 6291456                    ; 3 uses
  %i.g = tail call i32 @X509_NAME_entry_count(ptr noundef %2) #8 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %do_indent.exit

.lr.ph:                                           ; preds = %bb.f
  %i.i = and i64 %4, 1048576
  %.not109 = icmp eq i64 %i.i, 0
  %.not144 = icmp eq i32 %.093, 0
  %i.j = add nuw i32 %.089, %.093
  %.not114 = icmp eq i32 %i.f, 6291456
  %i.k = icmp eq i32 %i.f, 4194304
  %i.l = and i64 %4, 33554432
  %.not116 = icmp eq i64 %i.l, 0
  %i.m = and i64 %4, 16777216
  %.not119 = icmp eq i64 %i.m, 0
  %i.n = or i64 %4, 128
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.y
  %.094152 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.av, %bb.y ] ; 3 uses
  %.0100151 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.y ] ; 3 uses
  %.0101150 = phi i32 [ -1, %.lr.ph ], [ %i.z, %bb.y ] ; 2 uses
  %i.o = xor i32 %.0100151, -1
  %i.p = add nsw i32 %i.g, %i.o
  %.0100151.sink = select i1 %.not109, i32 %.0100151, i32 %i.p
  %i.q = call ptr @X509_NAME_get_entry(ptr noundef %2, i32 noundef %.0100151.sink) #8 ; 4 uses
  %.not110 = icmp eq i32 %.0101150, -1
  br i1 %.not110, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @X509_NAME_ENTRY_set(ptr noundef %i.q) #8
  %i.s = icmp eq i32 %.0101150, %i.r
  br i1 %i.s, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = call i32 %0(ptr noundef %1, ptr noundef nonnull %.091, i32 noundef %.088) #8, !callees !11
  %.not113 = icmp eq i32 %i.t, 0
  br i1 %.not113, label %do_indent.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %.094152, %.088
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.v = call i32 %0(ptr noundef %1, ptr noundef nonnull %.092, i32 noundef %.089) #8, !callees !11
  %.not111 = icmp eq i32 %i.v, 0
  br i1 %.not111, label %do_indent.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not144, label %.loopexit146, label %.lr.ph.i123

bb.m:                                             ; preds = %.lr.ph.i123
  %i.w = add nuw nsw i32 %.06.i124, 1             ; 2 uses
  %exitcond.not.i126 = icmp eq i32 %i.w, %.093
  br i1 %exitcond.not.i126, label %.loopexit146, label %.lr.ph.i123, !llvm.loop !9

.lr.ph.i123:                                      ; preds = %bb.l, %bb.m
  %.06.i124 = phi i32 [ %i.w, %bb.m ], [ 0, %bb.l ]
  %i.x = call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i125 = icmp eq i32 %i.x, 0
  br i1 %.not.i125, label %do_indent.exit, label %bb.m

.loopexit146:                                     ; preds = %bb.m, %bb.l
  %i.y = add i32 %i.j, %.094152
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %.loopexit146, %bb.g
  %.195 = phi i32 [ %i.u, %bb.j ], [ %i.y, %.loopexit146 ], [ %.094152, %bb.g ] ; 3 uses
  %i.z = call i32 @X509_NAME_ENTRY_set(ptr noundef %i.q) #8
  %i.aa = call ptr @X509_NAME_ENTRY_get_object(ptr noundef %i.q) #8 ; 2 uses
  %i.ab = call ptr @X509_NAME_ENTRY_get_data(ptr noundef %i.q) #8
  %i.ac = call i32 @OBJ_obj2nid(ptr noundef %i.aa) #8 ; 4 uses
  br i1 %.not114, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp eq i32 %i.ac, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef %i.aa, i32 noundef 1) #8 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  switch i32 %i.f, label %bb.t [
    i32 0, label %bb.r
    i32 2097152, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.af = call ptr @OBJ_nid2sn(i32 noundef %i.ac) #8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ag = call ptr @OBJ_nid2ln(i32 noundef %i.ac) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p
  %.098 = phi ptr [ %i.a, %bb.p ], [ %i.af, %bb.r ], [ %i.ag, %bb.s ], [ @.str.8, %bb.q ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.p ], [ 10, %bb.r ], [ 25, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.098) #9
  %i.ai = trunc i64 %i.ah to i32                  ; 4 uses
  %i.aj = call i32 %0(ptr noundef %1, ptr noundef nonnull %.098, i32 noundef %i.ai) #8, !callees !11
  %.not115 = icmp eq i32 %i.aj, 0
  br i1 %.not115, label %do_indent.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = icmp sle i32 %.0, %i.ai
  %or.cond120 = or i1 %.not116, %i.ak
  br i1 %or.cond120, label %bb.w, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %bb.u
  %i.al = sub nsw i32 %.0, %i.ai                  ; 2 uses
  br label %.lr.ph.i129

bb.v:                                             ; preds = %.lr.ph.i129
  %i.am = add nuw nsw i32 %.06.i130, 1            ; 2 uses
  %exitcond.not.i132 = icmp eq i32 %i.am, %i.al
  br i1 %exitcond.not.i132, label %.loopexit, label %.lr.ph.i129, !llvm.loop !9

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.preheader, %bb.v
  %.06.i130 = phi i32 [ %i.am, %bb.v ], [ 0, %.lr.ph.i129.preheader ]
  %i.an = call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i131 = icmp eq i32 %i.an, 0
  br i1 %.not.i131, label %do_indent.exit, label %bb.v

.loopexit:                                        ; preds = %bb.v
  %i.ao = add nsw i32 %i.al, %.195
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.u
  %.296 = phi i32 [ %i.ao, %.loopexit ], [ %.195, %bb.u ]
  %i.ap = call i32 %0(ptr noundef %1, ptr noundef nonnull %.str.7..str.6, i32 noundef %.) #8, !callees !11
  %.not118 = icmp eq i32 %i.ap, 0
  br i1 %.not118, label %do_indent.exit, label %do_indent.exit133

do_indent.exit133:                                ; preds = %bb.w
  %i.aq = add nsw i32 %., %i.ai
  %i.ar = add nsw i32 %i.aq, %.296
  br label %bb.x

bb.x:                                             ; preds = %do_indent.exit133, %bb.n
  %.4 = phi i32 [ %i.ar, %do_indent.exit133 ], [ %.195, %bb.n ]
  %i.as = icmp ne i32 %i.ac, 0
  %or.cond121 = or i1 %.not119, %i.as
  %.0102 = select i1 %or.cond121, i64 %4, i64 %i.n
  %i.at = call fastcc i32 @do_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef %.0102, ptr noundef %i.ab) ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %do_indent.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = add nsw i32 %i.at, %.4                  ; 2 uses
  %i.aw = add nuw nsw i32 %.0100151, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.g
  br i1 %exitcond.not, label %do_indent.exit, label %bb.g, !llvm.loop !13

do_indent.exit:                                   ; preds = %.lr.ph.i, %bb.i, %bb.k, %bb.x, %bb.y, %bb.w, %bb.t, %.lr.ph.i123, %.lr.ph.i129, %bb.f, %.loopexit149
  %.3 = phi i32 [ -1, %.lr.ph.i123 ], [ -1, %bb.t ], [ %spec.store.select, %bb.f ], [ -1, %.loopexit149 ], [ -1, %.lr.ph.i129 ], [ -1, %bb.w ], [ %i.av, %bb.y ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.x ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @send_bio_chars(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #8
  %.not6 = icmp eq i32 %i.a, %2
  %. = zext i1 %.not6 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
end_hunk_0
