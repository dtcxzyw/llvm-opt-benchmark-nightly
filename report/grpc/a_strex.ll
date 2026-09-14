Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/a_strex?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.cbs_st = type { ptr, i64 }
%struct.cbb_st = type { ptr, i8, %union.anon.0 }
%union.anon.0 = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/asn1/a_strex.cc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s %2d %02d:%02d:%02d %d GMT\00", align 1
@_ZL3mon = internal unnamed_addr constant [12 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@_ZZL11do_hex_dumpP6bio_stPhiE6hexdig = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
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
@switch.table._ZL6do_bufPKhiimPcP6bio_st = private unnamed_addr constant [5 x ptr] [ptr @CBS_get_utf8, ptr @CBS_get_latin1, ptr @CBS_get_ucs2_be, ptr poison, ptr @CBS_get_utf32_be], align 8
@switch.table._ZL6do_bufPKhiimPcP6bio_st.1 = private unnamed_addr constant [5 x i8] [i8 -106, i8 68, i8 -114, i8 poison, i8 -107], align 4
@switch.table.ASN1_STRING_to_UTF8 = private unnamed_addr constant [19 x i16] [i16 4096, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 4097, i16 4097, i16 4097, i16 poison, i16 4097, i16 4097, i16 4097, i16 poison, i16 4097, i16 poison, i16 4100, i16 poison, i16 4098], align 4

; Function Attrs: mustprogress nounwind uwtable
define i32 @ASN1_STRING_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %3 = alloca %struct.asn1_type_st, align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 2 uses
  %i.g = and i64 %2, 64
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @ASN1_tag2str(i32 noundef %i.f) #6 ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #7
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %_ZL11maybe_writeP6bio_stPKvi.exit63.thread, label %_ZL11maybe_writeP6bio_stPKvi.exit

_ZL11maybe_writeP6bio_stPKvi.exit:                ; preds = %bb.b
  %i.l = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.j) #6
  %.not78 = icmp eq i32 %i.l, %i.j
  br i1 %.not78, label %_ZL11maybe_writeP6bio_stPKvi.exit63, label %.critedge

_ZL11maybe_writeP6bio_stPKvi.exit63:              ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit
  %i.m = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1) #6
  %.not79 = icmp eq i32 %i.m, 1
  br i1 %.not79, label %_ZL11maybe_writeP6bio_stPKvi.exit63.thread, label %.critedge

_ZL11maybe_writeP6bio_stPKvi.exit63.thread:       ; preds = %bb.b, %_ZL11maybe_writeP6bio_stPKvi.exit63
  %i.n = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit63.thread, %bb.a
  %.1 = phi i32 [ %i.n, %_ZL11maybe_writeP6bio_stPKvi.exit63.thread ], [ 0, %bb.a ] ; 3 uses
  %i.o = and i64 %2, 128
  %.not54 = icmp eq i64 %i.o, 0
  br i1 %.not54, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %2, 32
  %.not55 = icmp eq i64 %i.p, 0
  br i1 %.not55, label %bb.e, label %_ZL23string_type_to_encodingi.exit.thread

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add i32 %i.f, -12            ; 3 uses
  %i.q = icmp ult i32 %switch.tableidx, 19
  %switch.shifted = lshr i32 351681, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.q, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZL23string_type_to_encodingi.exit

_ZL23string_type_to_encodingi.exit:               ; preds = %bb.e
  %i.r = and i64 %2, 256
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZL23string_type_to_encodingi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZL23string_type_to_encodingi.exit
  %i.t = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.t, label %_ZL11maybe_writeP6bio_stPKvi.exit.thread.i, label %_ZL11maybe_writeP6bio_stPKvi.exit.i

_ZL11maybe_writeP6bio_stPKvi.exit.i:              ; preds = %bb.f
  %i.u = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.u, 1
  br i1 %.not.i, label %.thread.i, label %.critedge

_ZL11maybe_writeP6bio_stPKvi.exit.thread.i:       ; preds = %bb.f
  %i.v = and i64 %2, 512
  %.not16.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i, label %bb.g, label %bb.j

.thread.i:                                        ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.i
  %i.w = and i64 %2, 512
  %.not1628.i = icmp eq i64 %i.w, 0
  br i1 %.not1628.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.thread.i
  %i.x = load i32, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  br label %_ZL11do_hex_dumpP6bio_stPhi.exit.i

bb.h:                                             ; preds = %.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !16    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %.not1317.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1317.i.i, label %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread75, label %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i.i

_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread75: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread76

_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i.i:      ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZL11maybe_writeP6bio_stPKvi.exit.i.i

bb.i:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not13.i.i, label %_ZL11do_hex_dumpP6bio_stPhi.exit.i, label %_ZL11maybe_writeP6bio_stPKvi.exit.i.i, !llvm.loop !31

_ZL11maybe_writeP6bio_stPKvi.exit.i.i:            ; preds = %bb.i, %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.z, %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  %i.af = load i8, ptr %.018.i.i, align 1, !tbaa !19 ; 2 uses
  %i.ag = lshr i8 %i.af, 4
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZL11do_hex_dumpP6bio_stPhiE6hexdig, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !19
  %i.ak = and i8 %i.af, 15
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZL11do_hex_dumpP6bio_stPhiE6hexdig, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  store i8 %i.an, ptr %i.ad, align 1, !tbaa !19
  %i.ao = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 2) #6
  %.not15.i.i = icmp eq i32 %i.ao, 2
  br i1 %.not15.i.i, label %bb.i, label %_ZL11do_hex_dumpP6bio_stPhi.exit.thread.i

_ZL11do_hex_dumpP6bio_stPhi.exit.thread.i:        ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.critedge

_ZL11do_hex_dumpP6bio_stPhi.exit.i:               ; preds = %bb.i, %bb.g
  %i.ap = phi i32 [ %i.x, %bb.g ], [ %i.aa, %bb.i ]
  %.fr36.i = freeze i32 %i.ap
  %i.aq = shl i32 %.fr36.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = or disjoint i32 %i.aq, 1
  br i1 %i.ar, label %.critedge, label %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread76

bb.j:                                             ; preds = %.thread.i, %_ZL11maybe_writeP6bio_stPKvi.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @asn1_type_set0_string(ptr noundef nonnull %3, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.at = call i32 @i2d_ASN1_TYPE(ptr noundef nonnull %3, ptr noundef nonnull %i.c) #6
  %.fr.i = freeze i32 %i.at                       ; 4 uses
  %i.au = icmp slt i32 %.fr.i, 0
  br i1 %i.au, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %i.t, label %_ZL11do_hex_dumpP6bio_stPhi.exit26.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i32 %.fr.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %.not1317.i18.i = icmp eq i32 %.fr.i, 0
  br i1 %.not1317.i18.i, label %_ZL11do_hex_dumpP6bio_stPhi.exit26.i, label %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i19.i

_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i19.i:    ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_ZL11maybe_writeP6bio_stPKvi.exit.i20.i

bb.m:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.i20.i
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 1 ; 2 uses
  %.not13.i24.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not13.i24.i, label %_ZL11do_hex_dumpP6bio_stPhi.exit26.i, label %_ZL11maybe_writeP6bio_stPKvi.exit.i20.i, !llvm.loop !31

_ZL11maybe_writeP6bio_stPKvi.exit.i20.i:          ; preds = %bb.m, %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i19.i
  %.018.i21.i = phi ptr [ %i.av, %_ZL11maybe_writeP6bio_stPKvi.exit.lr.ph.i19.i ], [ %i.az, %bb.m ] ; 2 uses
  %i.ba = load i8, ptr %.018.i21.i, align 1, !tbaa !19 ; 2 uses
  %i.bb = lshr i8 %i.ba, 4
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZL11do_hex_dumpP6bio_stPhiE6hexdig, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  store i8 %i.be, ptr %i.a, align 1, !tbaa !19
  %i.bf = and i8 %i.ba, 15
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZZL11do_hex_dumpP6bio_stPhiE6hexdig, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  store i8 %i.bi, ptr %i.ay, align 1, !tbaa !19
  %i.bj = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2) #6
  %.not15.i22.i = icmp eq i32 %i.bj, 2
  br i1 %.not15.i22.i, label %bb.m, label %.loopexit.i25.i

.loopexit.i25.i:                                  ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %4 = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @OPENSSL_free(ptr noundef %4) #6
  br label %bb.n

_ZL11do_hex_dumpP6bio_stPhi.exit26.i:             ; preds = %bb.m, %bb.k, %bb.l
  %5 = shl nuw i32 %.fr.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @OPENSSL_free(ptr noundef %i.bk) #6
  %.inv.i = icmp sgt i32 %5, -1
  br i1 %.inv.i, label %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit, label %bb.n

_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread76: ; preds = %_ZL11do_hex_dumpP6bio_stPhi.exit.i, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread75
  %.3.i.ph = phi i32 [ 1, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread75 ], [ %i.as, %_ZL11do_hex_dumpP6bio_stPhi.exit.i ]
  %6 = add nsw i32 %.3.i.ph, %.1
  br label %.critedge

bb.n:                                             ; preds = %.loopexit.i25.i, %bb.j, %_ZL11do_hex_dumpP6bio_stPhi.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %.critedge

_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit:      ; preds = %_ZL11do_hex_dumpP6bio_stPhi.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %7 = add i32 %.1, 1
  %i.bl = add i32 %7, %5
  br label %.critedge

switch.lookup:                                    ; preds = %bb.e
  %i.bm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.ASN1_STRING_to_UTF8, i64 %i.bm
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZL23string_type_to_encodingi.exit.thread

_ZL23string_type_to_encodingi.exit.thread:        ; preds = %switch.lookup, %_ZL23string_type_to_encodingi.exit, %bb.d
  %.0.ph = phi i32 [ 4097, %_ZL23string_type_to_encodingi.exit ], [ 4097, %bb.d ], [ %switch.ext, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17
  %i.bp = load i32, ptr %1, align 8, !tbaa !16
  %i.bq = call fastcc noundef i32 @_ZL6do_bufPKhiimPcP6bio_st(ptr noundef %i.bo, i32 noundef %i.bp, i32 noundef %.0.ph, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef null) ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZL23string_type_to_encodingi.exit.thread
  %i.bs = add nsw i32 %i.bq, %.1                  ; 2 uses
  %i.bt = load i8, ptr %i.d, align 1, !tbaa !19
  %.not56 = icmp eq i8 %i.bt, 0                   ; 3 uses
  %i.bu = add nsw i32 %i.bs, 2
  %spec.select62 = select i1 %.not56, i32 %i.bs, i32 %i.bu ; 2 uses
  %.not57 = icmp eq ptr %0, null
  br i1 %.not57, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not56, label %bb.q, label %_ZL11maybe_writeP6bio_stPKvi.exit64

_ZL11maybe_writeP6bio_stPKvi.exit64:              ; preds = %bb.p
  %i.bv = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %.not80 = icmp eq i32 %i.bv, 1
  br i1 %.not80, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit64, %bb.p
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !17
  %i.bx = load i32, ptr %1, align 8, !tbaa !16
  %i.by = call fastcc noundef i32 @_ZL6do_bufPKhiimPcP6bio_st(ptr noundef %i.bw, i32 noundef %i.bx, i32 noundef %.0.ph, i64 noundef %2, ptr noundef null, ptr noundef nonnull %0)
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not56, label %bb.s, label %_ZL11maybe_writeP6bio_stPKvi.exit65

_ZL11maybe_writeP6bio_stPKvi.exit65:              ; preds = %bb.r
  %i.ca = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %.not81 = icmp eq i32 %i.ca, 1
  br i1 %.not81, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit65, %bb.r
  br label %bb.t

bb.t:                                             ; preds = %_ZL11maybe_writeP6bio_stPKvi.exit64, %bb.q, %_ZL11maybe_writeP6bio_stPKvi.exit65, %bb.o, %_ZL23string_type_to_encodingi.exit.thread, %bb.s
  %.246 = phi i32 [ -1, %_ZL23string_type_to_encodingi.exit.thread ], [ %spec.select62, %bb.o ], [ %spec.select62, %bb.s ], [ -1, %_ZL11maybe_writeP6bio_stPKvi.exit65 ], [ -1, %bb.q ], [ -1, %_ZL11maybe_writeP6bio_stPKvi.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZL11maybe_writeP6bio_stPKvi.exit.i, %_ZL11do_hex_dumpP6bio_stPhi.exit.i, %_ZL11do_hex_dumpP6bio_stPhi.exit.thread.i, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread76, %_ZL11maybe_writeP6bio_stPKvi.exit63, %_ZL11maybe_writeP6bio_stPKvi.exit, %bb.t
  %.4 = phi i32 [ %.246, %bb.t ], [ -1, %_ZL11maybe_writeP6bio_stPKvi.exit63 ], [ -1, %_ZL11maybe_writeP6bio_stPKvi.exit ], [ %6, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit.thread76 ], [ %i.bl, %_ZL7do_dumpmP6bio_stPK14asn1_string_st.exit ], [ -1, %_ZL11do_hex_dumpP6bio_stPhi.exit.thread.i ], [ -1, %_ZL11do_hex_dumpP6bio_stPhi.exit.i ], [ -1, %_ZL11maybe_writeP6bio_stPKvi.exit.i ], [ -1, %bb.n ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ASN1_tag2str(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -1, -2147483648) i32 @_ZL6do_bufPKhiimPcP6bio_st(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 4101) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.cbs_st, align 8             ; 8 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  %7 = alloca %struct.cbb_st, align 8             ; 6 uses
  %switch.tableidx = add nsw i32 %2, -4096        ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %2 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL6do_bufPKhiimPcP6bio_st, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep98 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6do_bufPKhiimPcP6bio_st.1, i64 %i.e
  %switch.load99 = load i8, ptr %switch.gep98, align 1
  %switch.ext = zext i8 %switch.load99 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.f = sext i32 %1 to i64
  store ptr %0, ptr %6, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !23
  %.not81 = icmp eq i32 %1, 0
  br i1 %.not81, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %switch.lookup
  %i.h = and i64 %3, 16
  %.not62 = icmp eq i64 %i.h, 0
  br i1 %.not62, label %.lr.ph84.split.us, label %.lr.ph84.split

.lr.ph84.split.us:                                ; preds = %.lr.ph84, %thread-pre-split.us
  %.04082.us = phi i32 [ %i.s, %thread-pre-split.us ], [ 0, %.lr.ph84 ]
  %i.i = load ptr, ptr %6, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.j = call noundef i32 %switch.load(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #6, !callees !33
  %.not61.us = icmp eq i32 %i.j, 0
  br i1 %.not61.us, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph84.split.us
  %i.k = icmp eq ptr %i.i, %0
  %i.l = zext i1 %i.k to i32
  %i.m = load i64, ptr %i.g, align 8, !tbaa !23
  %i.n = icmp eq i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = load i32, ptr %i.a, align 4, !tbaa !34
  %i.q = call fastcc noundef i32 @_ZL11do_esc_charjmPcP6bio_stii(i32 noundef %i.p, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %i.l, i32 noundef %i.o) ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %thread-pre-split.us, label %.thread69

thread-pre-split.us:                              ; preds = %bb.b
  %i.s = add nuw nsw i32 %i.q, %.04082.us         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.pr.us = load i64, ptr %i.g, align 8, !tbaa !23
  %.not.us = icmp eq i64 %.pr.us, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph84.split.us

.lr.ph84.split:                                   ; preds = %.lr.ph84, %thread-pre-split
  %.04082 = phi i32 [ %.1.lcssa, %thread-pre-split ], [ 0, %.lr.ph84 ] ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !22
  %i.u = icmp eq ptr %i.t, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.v = call noundef i32 %switch.load(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #6, !callees !33
  %.not61 = icmp eq i32 %i.v, 0
  br i1 %.not61, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.lr.ph84.split, %.lr.ph84.split.us
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef %switch.ext, ptr noundef nonnull @.str.2, i32 noundef 126) #6
  br label %.thread69

bb.c:                                             ; preds = %.lr.ph84.split
  %i.w = load i64, ptr %i.g, align 8, !tbaa !23
  %i.x = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.y = call i32 @CBB_init_fixed(ptr noundef nonnull %7, ptr noundef nonnull %i.b, i64 noundef 6) #6 ; 0 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !34
  %i.aa = call i32 @CBB_add_utf8(ptr noundef nonnull %7, i32 noundef %i.z) #6
  %.not63 = icmp eq i32 %i.aa, 0
  br i1 %.not63, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.2, i32 noundef 135) #6
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = call i64 @CBB_len(ptr noundef nonnull %7) #6 ; 3 uses
  %.not64.not78.not = icmp eq i64 %i.ab, 0
  br i1 %.not64.not78.not, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ac = add i64 %i.ab, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.080 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.g ] ; 4 uses
  %.179 = phi i32 [ %.04082, %.lr.ph ], [ %i.ao, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.080
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp eq i64 %.080, 0
  %i.ah = and i1 %i.u, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i64 %.080, %i.ac
  %i.ak = and i1 %i.x, %i.aj
  %i.al = zext i1 %i.ak to i32
  %i.am = call fastcc noundef i32 @_ZL11do_esc_charjmPcP6bio_stii(i32 noundef %i.af, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %i.ai, i32 noundef %i.al) ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = add nuw nsw i32 %i.am, %.179            ; 2 uses
  %i.ap = add nuw i64 %.080, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.ab
  br i1 %exitcond.not, label %thread-pre-split, label %bb.f, !llvm.loop !32

.thread:                                          ; preds = %bb.f, %bb.d
  %.453.ph = phi i32 [ 1, %bb.d ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.thread69

thread-pre-split:                                 ; preds = %bb.g, %bb.e
  %.1.lcssa = phi i32 [ %.04082, %bb.e ], [ %i.ao, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.pr = load i64, ptr %i.g, align 8, !tbaa !23
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph84.split

.thread69:                                        ; preds = %bb.b, %.split.us, %.thread
  %.857.ph = phi i32 [ %.453.ph, %.thread ], [ -1, %.split.us ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split, %thread-pre-split.us, %switch.lookup, %.thread69
  %.9 = phi i32 [ %.857.ph, %.thread69 ], [ 0, %switch.lookup ], [ %i.s, %thread-pre-split.us ], [ %.1.lcssa, %thread-pre-split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.10 = phi i32 [ %.9, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @ASN1_STRING_print_ex_fp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @BIO_new_fp(ptr noundef nonnull %0, i32 noundef 0) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.08 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = tail call i32 @ASN1_STRING_print_ex(ptr noundef %.08, ptr noundef %1, i64 noundef %2)
  %i.d = tail call i32 @BIO_free(ptr noundef %.08) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @ASN1_STRING_to_UTF8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.asn1_string_st, align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
