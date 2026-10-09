Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/moflex?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"moflex\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MobiClip MOFLEX\00", align 1
@ff_moflex_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 256, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr null }, i32 0, i32 40, i32 1, [4 x i8] zeroinitializer, ptr @moflex_probe, ptr @moflex_read_header, ptr @moflex_read_packet, ptr @moflex_read_close, ptr @moflex_read_seek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"./libavcodec/bytestream.h\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unsupported audio codec: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unsupported video codec: %d\0A\00", align 1
@switch.table.moflex_read_sync = private unnamed_addr constant [3 x i32] [i32 86110, i32 69681, i32 65536], align 4

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 101) i32 @moflex_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp sgt i32 %i.d, -1
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 141) #5
  tail call void @abort() #6
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = icmp samesign ult i32 %i.d, 2
  br i1 %i.j, label %bytestream2_get_be16.exit31.thread, label %bytestream2_get_be16.exit31

bytestream2_get_be16.exit31:                      ; preds = %bytestream2_init.exit
  %i.k = load i16, ptr %i.b, align 1, !tbaa !11
  %.not = icmp eq i16 %i.k, 12876
  br i1 %.not, label %bb.c, label %bytestream2_get_be16.exit31.thread

bb.c:                                             ; preds = %bytestream2_get_be16.exit31
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.g, i64 12) ; 2 uses
  %gepdiff = sub nuw nsw i64 %i.g, %i.l           ; 3 uses
  %i.m = icmp samesign ult i64 %gepdiff, 2
  br i1 %i.m, label %bytestream2_get_be16.exit31.thread, label %bytestream2_get_be16.exit

bytestream2_get_be16.exit:                        ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.b, i64 %i.l     ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bytestream2_get_be16.exit31.thread, label %.preheader

.preheader:                                       ; preds = %bytestream2_get_be16.exit
  %.not69 = icmp eq i64 %gepdiff, 2
  br i1 %.not69, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %gepdiff65 = add nsw i64 %gepdiff, -2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.r = phi i64 [ %i.at, %bb.k ], [ %gepdiff65, %.lr.ph.preheader ]
  %.02764 = phi i32 [ %.1, %bb.k ], [ 15, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.063 = phi ptr [ %i.ar, %bb.k ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %bytestream2_get_byte.exit35, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 1 ; 2 uses
  %i.u = load i8, ptr %.sroa.0.063, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %.pre = ptrtoint ptr %i.t to i64
  br label %bytestream2_get_byte.exit35

bytestream2_get_byte.exit35:                      ; preds = %.lr.ph, %bb.d
  %.pre-phi = phi i64 [ %i.i, %.lr.ph ], [ %.pre, %bb.d ]
  %.sroa.0.5 = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.0.i34 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.d ] ; 5 uses
  %i.w = sub i64 %i.i, %.pre-phi
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bytestream2_get_byte.exit, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit35
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 1
  %i.z = load i8, ptr %.sroa.0.5, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_get_byte.exit35, %bb.e
  %.sroa.0.4 = phi ptr [ %i.y, %bb.e ], [ %i.h, %bytestream2_get_byte.exit35 ] ; 2 uses
  %.0.i33 = phi i32 [ %i.aa, %bb.e ], [ 0, %bytestream2_get_byte.exit35 ] ; 6 uses
  %i.ab = icmp eq i32 %.0.i34, 0
  br i1 %i.ab, label %.thread, label %bb.f

.thread:                                          ; preds = %bytestream2_get_byte.exit
  %i.ac = icmp eq i32 %.0.i33, 0
  %i.ad = select i1 %i.ac, i32 5, i32 0
  %i.ae = add nsw i32 %i.ad, %.02764
  br label %.loopexit

bb.f:                                             ; preds = %bytestream2_get_byte.exit
  %i.af = icmp eq i32 %.0.i34, 1
  %i.ag = icmp eq i32 %.0.i33, 12
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i32 %.0.i34, 2
  %i.ai = icmp eq i32 %.0.i33, 6
  %or.cond3 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i32 %.0.i34, 3
  %i.ak = icmp eq i32 %.0.i33, 13
  %or.cond5 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq i32 %.0.i34, 4
  %i.am = icmp eq i32 %.0.i33, 2
  %or.cond7 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.an = add nsw i32 %.02764, 20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1 = phi i32 [ %i.an, %bb.j ], [ %.02764, %bb.i ] ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.0.4 to i64
  %i.ap = sub i64 %i.i, %i.ao
  %i.aq = zext nneg i32 %.0.i33 to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.aq)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.4, i64 %..i ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.i, %i.as                     ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader, %.thread
  %.3 = phi i32 [ %i.ae, %.thread ], [ 15, %.preheader ], [ %.1, %bb.k ]
  %i.aw = tail call i32 @llvm.smin.i32(i32 %.3, i32 100)
  br label %bytestream2_get_be16.exit31.thread

bytestream2_get_be16.exit31.thread:               ; preds = %bb.c, %bytestream2_init.exit, %bytestream2_get_be16.exit, %bytestream2_get_be16.exit31, %.loopexit
  %.028 = phi i32 [ %i.aw, %.loopexit ], [ 0, %bytestream2_get_be16.exit31 ], [ 0, %bytestream2_get_be16.exit ], [ 0, %bytestream2_init.exit ], [ 0, %bb.c ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @moflex_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @moflex_read_sync(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = or i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = tail call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 0) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @moflex_read_packet(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 34 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 19 uses
  %i.f = tail call i32 @avio_feof(ptr noundef %i.d) #5
  %.not216 = icmp eq i32 %i.f, 0
  br i1 %.not216, label %.lr.ph218, label %.thread

.lr.ph218:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph218, %bb.bb
  %.091217 = phi i32 [ undef, %.lr.ph218 ], [ %.1.lcssa, %bb.bb ] ; 2 uses
  %i.m = load i32, ptr %i.g, align 4, !tbaa !30
  %.not108 = icmp eq i32 %i.m, 0
  br i1 %.not108, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #5
  store i64 %i.n, ptr %i.h, align 8, !tbaa !56
  %i.o = tail call fastcc i32 @moflex_read_sync(ptr noundef %0) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @avio_r8(ptr noundef %i.d) #5 ; 2 uses
  store i32 %i.q, ptr %i.i, align 8, !tbaa !57
  %i.r = and i32 %i.q, 2
  %.not109 = icmp eq i32 %i.r, 0
  br i1 %.not109, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 2) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.t = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #5
  %i.u = load i64, ptr %i.h, align 8, !tbaa !56
  %i.v = load i32, ptr %i.b, align 8, !tbaa !31
  %i.w = zext i32 %i.v to i64
  %i.x = add nsw i64 %i.u, %i.w
  %i.y = icmp slt i64 %i.t, %i.x
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f, %.backedge
  %.1211 = phi i32 [ %.2252, %.backedge ], [ %.091217, %bb.f ] ; 5 uses
  %i.z = tail call i32 @avio_feof(ptr noundef %i.d) #5
  %.not110 = icmp eq i32 %i.z, 0
  br i1 %.not110, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.aa = tail call i32 @avio_r8(ptr noundef %i.d) #5
  %.not111 = icmp eq i32 %i.aa, 0
  br i1 %.not111, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.g, align 4, !tbaa !30
  %i.ab = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef -1, i32 noundef 1) #5 ; 0 uses
  store i32 0, ptr %i.e, align 8, !tbaa !58
  store i32 0, ptr %i.j, align 4, !tbaa !59
  %i.ac = tail call i32 @avio_feof(ptr noundef %i.d) #5
  %.not.i13.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i13.i, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %.014.i = phi i32 [ %i.an, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !59  ; 2 uses
  %i.ae = and i32 %i.ad, 7
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ag = tail call i32 @avio_r8(ptr noundef %i.d) #5
  %i.ah = shl i32 %i.ag, 24
end_hunk_0
