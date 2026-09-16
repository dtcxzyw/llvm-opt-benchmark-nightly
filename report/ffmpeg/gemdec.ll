Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/gemdec?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.State = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"gem\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GEM Raster image\00", align 1
@ff_gem_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 253, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @gem_decode_frame }, ptr @gem_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@__const.gem_decode_frame.state = private unnamed_addr constant %struct.State { i32 0, i32 0, i32 0, i32 1 }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"count_scalar=%d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"STTT planes=%d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"TIMG planes=%d\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"XIMG planes=%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"planes=%d\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"libavcodec/gemdec.c\00", align 1
@gem_color_palette = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -65536, i32 -16711936, i32 -256, i32 -16776961, i32 -65281, i32 -16711681, i32 -5329234, i32 -11184811, i32 -5373952, i32 -16732672, i32 -5329408, i32 -16777042, i32 -5373778, i32 -16732498, i32 -16777216], align 16
@gem_gray = internal unnamed_addr constant [256 x i8] c"\FF\7F\BF?\DF_\9F\1F\EFo\AF/\CFO\8F\0F\F7w\B77\D7W\97\17\E7g\A7'\C7G\87\07\FB{\BB;\DB[\9B\1B\EBk\AB+\CBK\8B\0B\F3s\B33\D3S\93\13\E3c\A3#\C3C\83\03\FD}\BD=\DD]\9D\1D\EDm\AD-\CDM\8D\0D\F5u\B55\D5U\95\15\E5e\A5%\C5E\85\05\F9y\B99\D9Y\99\19\E9i\A9)\C9I\89\09\F1q\B11\D1Q\91\11\E1a\A1!\C1A\81\01\FE~\BE>\DE^\9E\1E\EEn\AE.\CEN\8E\0E\F6v\B66\D6V\96\16\E6f\A6&\C6F\86\06\FAz\BA:\DAZ\9A\1A\EAj\AA*\CAJ\8A\0A\F2r\B22\D2R\92\12\E2b\A2\22\C2B\82\02\FC|\BC<\DC\\\9C\1C\ECl\AC,\CCL\8C\0C\F4t\B44\D4T\94\14\E4d\A4$\C4D\84\04\F8x\B88\D8X\98\18\E8h\A8(\C8H\88\08\F0p\B00\D0P\90\10\E0`\A0 \C0@\80\00", align 16
@switch.table.gem_decode_frame = private unnamed_addr constant [18 x i8] c"+$\0B\0B\0B\0B\0B\0B\0B\02\0B\0B\0B\0B\0B\0B\0Bv", align 4
@switch.table.gem_decode_frame.1 = private unnamed_addr constant [18 x i8] c"\02\02\01\01\01\01\01\01\01\03\01\01\01\01\01\01\01\04", align 4

; Function Attrs: nounwind uwtable
define internal range(i32 17, 0) i32 @gem_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.State, align 4              ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 6 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.gem_decode_frame.state, i64 16, i1 false)
  %i.g = icmp slt i32 %i.d, 17
  br i1 %i.g, label %bytestream2_get_be16.exit415.thread, label %bytestream2_get_be16.exit415

bytestream2_get_be16.exit415:                     ; preds = %bb.a
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr i8, ptr %i.b, i64 %i.h     ; 6 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i16, ptr %i.k, align 1, !tbaa !15   ; 2 uses
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)  ; 3 uses
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp ult i16 %i.n, 8
  br i1 %i.p, label %bytestream2_get_be16.exit415.thread, label %bb.b

bb.b:                                             ; preds = %bytestream2_get_be16.exit415
  %i.q = shl nuw nsw i32 %i.o, 1                  ; 3 uses
  %.not = icmp samesign ugt i32 %i.d, %i.q
  br i1 %.not, label %bytestream2_get_be16.exit409, label %bytestream2_get_be16.exit415.thread

bytestream2_get_be16.exit409:                     ; preds = %bb.b
  %i.r = load i16, ptr %i.l, align 1, !tbaa !15   ; 3 uses
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)  ; 3 uses
  %i.t = zext i16 %i.s to i32                     ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i16, ptr %i.u, align 1, !tbaa !15   ; 2 uses
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)  ; 2 uses
  %5 = zext i16 %i.x to i32
  %i.y = load i16, ptr %i.v, align 1, !tbaa !15
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !15
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !51
  %i.ai = load i16, ptr %i.ac, align 1, !tbaa !15
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 19 uses
  %i.an = load i16, ptr %i.al, align 1, !tbaa !15
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.ak, i32 noundef %i.ap) #9 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bytestream2_get_be16.exit415.thread, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_be16.exit409
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !29
  %i.au = add nsw i32 %i.at, 7
  %i.av = sdiv i32 %i.au, 8                       ; 7 uses
  %i.aw = icmp eq i16 %i.m, 2304
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = ptrtoint ptr %i.am to i64
  %i.ay = sub i64 %i.j, %i.ax
  %i.az = icmp slt i64 %i.ay, 2
  br i1 %i.az, label %bytestream2_get_be16.exit401.thread, label %bytestream2_get_be16.exit401

bytestream2_get_be16.exit401:                     ; preds = %bb.d
  %i.ba = load i16, ptr %i.am, align 1, !tbaa !15 ; 2 uses
  %i.bb = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %.not363 = icmp eq i16 %i.ba, 768
  br i1 %.not363, label %.thread512.thread, label %bytestream2_get_be16.exit401.thread

bytestream2_get_be16.exit401.thread:              ; preds = %bb.d, %bytestream2_get_be16.exit401
  %.0.i400477 = phi i32 [ %i.bc, %bytestream2_get_be16.exit401 ], [ 0, %bb.d ]
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %.0.i400477) #9
  br label %bytestream2_get_be16.exit415.thread

.thread512.thread:                                ; preds = %bytestream2_get_be16.exit401
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 3, ptr %i.be, align 8, !tbaa !52
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %switch.tableidx = add i16 %i.s, -15            ; 3 uses
  %i.bg = icmp ult i16 %switch.tableidx, 18
  br i1 %i.bg, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.bh = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.gem_decode_frame, i64 %i.bh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bi = zext nneg i16 %switch.tableidx to i64
  %switch.gep694 = getelementptr inbounds nuw i8, ptr @switch.table.gem_decode_frame.1, i64 %i.bi
  %switch.load695 = load i8, ptr %switch.gep694, align 1
  %switch.ext696 = zext i8 %switch.load695 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 11, %bb.e ]
  %.0324 = phi i32 [ %switch.ext696, %switch.lookup ], [ 1, %bb.e ] ; 14 uses
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !52
  %i.bj = icmp ult i16 %i.n, 11
  %i.bk = ptrtoint ptr %i.am to i64
  %i.bl = sub i64 %i.j, %i.bk
  %i.bm = icmp slt i64 %i.bl, 4
  %or.cond548 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %or.cond548, label %.thread512, label %bytestream2_peek_be32.exit

bytestream2_peek_be32.exit:                       ; preds = %bb.f
  %i.bn = load i32, ptr %i.am, align 1, !tbaa !15
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn) ; 2 uses
  switch i32 %i.bo, label %.thread512 [
    i32 1398035540, label %bb.g
    i32 1414090055, label %bb.i
    i32 1481198919, label %bb.k
  ]

bb.g:                                             ; preds = %bytestream2_peek_be32.exit
  %.not365 = icmp eq i16 %i.r, 1024
  br i1 %.not365, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.t) #9
  br label %bytestream2_get_be16.exit415.thread

bb.i:                                             ; preds = %bytestream2_peek_be32.exit
  %.not364 = icmp eq i16 %i.r, 3840
  br i1 %.not364, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.t) #9
  br label %bytestream2_get_be16.exit415.thread

bb.k:                                             ; preds = %bytestream2_peek_be32.exit
  %i.bp = and i32 %i.t, 65527
  %.not549 = icmp eq i32 %i.bp, 16
  br i1 %.not549, label %bb.n, label %switch.early.test

switch.early.test:                                ; preds = %bb.k
  %i.bq = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.t)
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %switch.early.test.split, label %bb.l

switch.early.test.split:                          ; preds = %switch.early.test
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.t, i1 true)
  switch i32 %i.bs, label %bb.l [
    i32 5, label %bb.n
    i32 3, label %bb.n
    i32 2, label %bb.n
    i32 1, label %bb.n
    i32 0, label %bb.n
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test.split
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.t) #9
  br label %bytestream2_get_be16.exit415.thread

.thread512:                                       ; preds = %bytestream2_peek_be32.exit, %bb.f
  %.0312499507522 = phi i32 [ %i.bo, %bytestream2_peek_be32.exit ], [ 0, %bb.f ] ; 6 uses
  %i.bt = and i32 %i.t, 65527
  %.not550 = icmp eq i32 %i.bt, 16
  br i1 %.not550, label %bb.n, label %switch.early.test390

switch.early.test390:                             ; preds = %.thread512
  switch i16 %i.s, label %bb.m [
    i16 8, label %bb.n
    i16 4, label %bb.n
    i16 3, label %bb.n
    i16 2, label %bb.n
    i16 1, label %bb.n
  ]

bb.m:                                             ; preds = %switch.early.test390
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.t) #9
  br label %bytestream2_get_be16.exit415.thread

bb.n:                                             ; preds = %.thread512.thread, %switch.early.test390, %switch.early.test390, %switch.early.test390, %switch.early.test390, %switch.early.test390, %.thread512, %switch.early.test.split, %switch.early.test.split, %switch.early.test.split, %switch.early.test.split, %switch.early.test.split, %bb.k, %bb.i, %bb.g
  %i.bu = phi i1 [ false, %switch.early.test390 ], [ false, %switch.early.test390 ], [ false, %switch.early.test390 ], [ false, %switch.early.test390 ], [ false, %switch.early.test390 ], [ false, %.thread512 ], [ false, %switch.early.test.split ], [ false, %switch.early.test.split ], [ false, %switch.early.test.split ], [ false, %switch.early.test.split ], [ false, %switch.early.test.split ], [ false, %bb.k ], [ false, %bb.i ], [ true, %bb.g ], [ false, %.thread512.thread ]
  %.0312500 = phi i32 [ %.0312499507522, %switch.early.test390 ], [ %.0312499507522, %switch.early.test390 ], [ %.0312499507522, %switch.early.test390 ], [ %.0312499507522, %switch.early.test390 ], [ %.0312499507522, %switch.early.test390 ], [ %.0312499507522, %.thread512 ], [ 1481198919, %switch.early.test.split ], [ 1481198919, %switch.early.test.split ], [ 1481198919, %switch.early.test.split ], [ 1481198919, %switch.early.test.split ], [ 1481198919, %switch.early.test.split ], [ 1481198919, %bb.k ], [ 1414090055, %bb.i ], [ 1398035540, %bb.g ], [ 0, %.thread512.thread ]
  %.sroa.0.0482497 = phi ptr [ %i.am, %switch.early.test390 ], [ %i.am, %switch.early.test390 ], [ %i.am, %switch.early.test390 ], [ %i.am, %switch.early.test390 ], [ %i.am, %switch.early.test390 ], [ %i.am, %.thread512 ], [ %i.am, %switch.early.test.split ], [ %i.am, %switch.early.test.split ], [ %i.am, %switch.early.test.split ], [ %i.am, %switch.early.test.split ], [ %i.am, %switch.early.test.split ], [ %i.am, %bb.k ], [ %i.am, %bb.i ], [ %i.am, %bb.g ], [ %i.bd, %.thread512.thread ] ; 6 uses
  %.0324483495 = phi i32 [ %.0324, %switch.early.test390 ], [ %.0324, %switch.early.test390 ], [ %.0324, %switch.early.test390 ], [ %.0324, %switch.early.test390 ], [ %.0324, %switch.early.test390 ], [ %.0324, %.thread512 ], [ %.0324, %switch.early.test.split ], [ %.0324, %switch.early.test.split ], [ %.0324, %switch.early.test.split ], [ %.0324, %switch.early.test.split ], [ %.0324, %switch.early.test.split ], [ %.0324, %bb.k ], [ %.0324, %bb.i ], [ %.0324, %bb.g ], [ 3, %.thread512.thread ] ; 9 uses
  %.0313484493 = phi i32 [ 1, %switch.early.test390 ], [ 1, %switch.early.test390 ], [ 1, %switch.early.test390 ], [ 1, %switch.early.test390 ], [ 1, %switch.early.test390 ], [ 1, %.thread512 ], [ 1, %switch.early.test.split ], [ 1, %switch.early.test.split ], [ 1, %switch.early.test.split ], [ 1, %switch.early.test.split ], [ 1, %switch.early.test.split ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 3, %.thread512.thread ] ; 3 uses
  %.0310485491 = phi i32 [ %i.t, %switch.early.test390 ], [ %i.t, %switch.early.test390 ], [ %i.t, %switch.early.test390 ], [ %i.t, %switch.early.test390 ], [ %i.t, %switch.early.test390 ], [ %i.t, %.thread512 ], [ %i.t, %switch.early.test.split ], [ %i.t, %switch.early.test.split ], [ %i.t, %switch.early.test.split ], [ %i.t, %switch.early.test.split ], [ %i.t, %switch.early.test.split ], [ %i.t, %bb.k ], [ 15, %bb.i ], [ 4, %bb.g ], [ 24, %.thread512.thread ] ; 12 uses
  %i.bv = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bytestream2_get_be16.exit415.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.bx, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !58
  %i.ca = or i32 %i.bz, 2
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30 ; 7 uses
  br i1 %i.bu, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp eq i32 %.0310485491, 4
  br i1 %i.cd, label %.preheader556.preheader, label %bb.r

.preheader556.preheader:                          ; preds = %bb.p
  %i.ce = ptrtoint ptr %.sroa.0.0482497 to i64
  %i.cf = sub i64 %i.j, %i.ce
  %..i419 = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 6)
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.0482497, i64 %..i419
  br label %.preheader556

.preheader556:                                    ; preds = %.preheader556.preheader, %bytestream2_get_be16.exit399
  %indvars.iv627 = phi i64 [ 0, %.preheader556.preheader ], [ %indvars.iv.next628, %bytestream2_get_be16.exit399 ] ; 2 uses
  %.sroa.0.1570 = phi ptr [ %i.cg, %.preheader556.preheader ], [ %.sroa.0.8, %bytestream2_get_be16.exit399 ] ; 3 uses
  %i.ch = ptrtoint ptr %.sroa.0.1570 to i64
  %i.ci = sub i64 %i.j, %i.ch
  %i.cj = icmp slt i64 %i.ci, 2
  br i1 %i.cj, label %bytestream2_get_be16.exit399, label %bb.q

bb.q:                                             ; preds = %.preheader556
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.1570, i64 2
  %i.cl = load i16, ptr %.sroa.0.1570, align 1, !tbaa !15
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cn = zext i16 %i.cm to i32
  br label %bytestream2_get_be16.exit399

end_hunk_0
begin_hunk_1_@gem_decode_frame:bb.a
  %i.dv = shl nuw nsw i32 %i.du, 8
  %i.dw = or i32 %i.dv, %.0.i396
  %.pre645 = ptrtoint ptr %i.do to i64
  br label %bytestream2_get_be16.exit395

bytestream2_get_be16.exit395:                     ; preds = %bytestream2_get_be16.exit397, %bb.z
  %.pre-phi646 = phi i64 [ %i.j, %bytestream2_get_be16.exit397 ], [ %.pre645, %bb.z ]
  %.sroa.0.6 = phi ptr [ %i.i, %bytestream2_get_be16.exit397 ], [ %i.do, %bb.z ] ; 2 uses
  %.0.i394 = phi i32 [ %.0.i396, %bytestream2_get_be16.exit397 ], [ %i.dw, %bb.z ] ; 2 uses
  %i.dx = sub i64 %i.j, %.pre-phi646
  %i.dy = icmp slt i64 %i.dx, 2
  br i1 %i.dy, label %bytestream2_get_be16.exit393, label %bb.aa

bb.aa:                                            ; preds = %bytestream2_get_be16.exit395
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 2
  %i.ea = load i16, ptr %.sroa.0.6, align 1, !tbaa !15
  %i.eb = tail call i16 @llvm.bswap.i16(i16 %i.ea)
  %i.ec = zext i16 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.ec, 51
  %i.ee = add nuw nsw i32 %i.ed, 100
  %i.ef = udiv i32 %i.ee, 200
  %i.eg = or i32 %i.ef, %.0.i394
  br label %bytestream2_get_be16.exit393

bytestream2_get_be16.exit393:                     ; preds = %bytestream2_get_be16.exit395, %bb.aa
  %.sroa.0.5 = phi ptr [ %i.dz, %bb.aa ], [ %i.i, %bytestream2_get_be16.exit395 ]
  %.0.i392 = phi i32 [ %i.eg, %bb.aa ], [ %.0.i394, %bytestream2_get_be16.exit395 ]
  %i.eh = or i32 %.0.i392, -16777216
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ej = trunc nuw nsw i64 %indvars.iv.next to i32
  %.0311.highbits = lshr i32 %i.ej, %.0310485491
  %i.ek = icmp eq i32 %.0311.highbits, 0
  br i1 %i.ek, label %bb.x, label %.loopexit, !llvm.loop !39

bb.ab:                                            ; preds = %bb.v
  %i.el = load i32, ptr %i.as, align 8, !tbaa !29
  %i.em = add nsw i32 %i.el, 7
  %i.en = sdiv i32 %i.em, 8
  %i.eo = shl nuw nsw i32 %.0324483495, 3
  %i.ep = mul i32 %i.eo, %i.en
  br label %.loopexit

bb.ac:                                            ; preds = %bb.v
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !29
  %i.er = add nsw i32 %i.eq, 15
  %i.es = sdiv i32 %i.er, 16
  %i.et = shl nuw nsw i32 %.0324483495, 4
  %i.eu = mul i32 %i.et, %i.es
  br label %.loopexit

bb.ad:                                            ; preds = %bb.v
  %i.ev = load i32, ptr %i.as, align 8, !tbaa !29
  %i.ew = mul nsw i32 %i.ev, %.0324483495
  br label %.loopexit

bb.ae:                                            ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 227) #9
  tail call void @abort() #10
  unreachable

bb.af:                                            ; preds = %bb.s
  %i.ex = icmp eq i32 %.0310485491, 1
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 -1, ptr %i.cc, align 4, !tbaa !31
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 -16777216, ptr %i.ey, align 4, !tbaa !31
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.ez = and i32 %.0310485491, 65534
  %or.cond35 = icmp eq i32 %i.ez, 2
  %i.fa = icmp eq i32 %.0310485491, 4
  %or.cond37 = or i1 %i.fa, %or.cond35
  br i1 %or.cond37, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.fb = shl nuw nsw i32 1, %.0310485491         ; 2 uses
  %i.fc = add nuw nsw i32 %i.fb, 9
  %i.fd = icmp eq i32 %i.fc, %i.o
  br i1 %i.fd, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fe = ptrtoint ptr %.sroa.0.0482497 to i64
  %i.ff = sub i64 %i.j, %i.fe
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ff, i64 2)
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0482497, i64 %..i
  %wide.trip.count = zext nneg i32 %i.fb to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bytestream2_get_be16.exit
  %indvars.iv623 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next624, %bytestream2_get_be16.exit ] ; 2 uses
  %.sroa.0.3568 = phi ptr [ %i.fg, %bb.aj ], [ %.sroa.0.4, %bytestream2_get_be16.exit ] ; 3 uses
  %i.fh = ptrtoint ptr %.sroa.0.3568 to i64
  %i.fi = sub i64 %i.j, %i.fh
  %i.fj = icmp slt i64 %i.fi, 2
  br i1 %i.fj, label %bytestream2_get_be16.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.3568, i64 2
  %i.fl = load i16, ptr %.sroa.0.3568, align 1, !tbaa !15
  %i.fm = tail call i16 @llvm.bswap.i16(i16 %i.fl)
  %i.fn = zext i16 %i.fm to i32
  br label %bytestream2_get_be16.exit

bytestream2_get_be16.exit:                        ; preds = %bb.ak, %bb.al
  %.sroa.0.4 = phi ptr [ %i.fk, %bb.al ], [ %i.i, %bb.ak ]
  %.0.i = phi i32 [ %i.fn, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.fo = shl nuw nsw i32 %.0.i, 9
  %i.fp = and i32 %i.fo, 57344
  %i.fq = shl nuw nsw i32 %.0.i, 5
  %i.fr = and i32 %i.fq, 224
  %i.fs = shl nuw nsw i32 %.0.i, 13
  %i.ft = and i32 %i.fs, 14680064
  %i.fu = or disjoint i32 %i.fp, %i.ft
  %i.fv = or disjoint i32 %i.fu, %i.fr
  %i.fw = or disjoint i32 %i.fv, -16777216
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv623
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !31
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count
  br i1 %exitcond626.not, label %.loopexit, label %bb.ak, !llvm.loop !40

bb.am:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cc, ptr noundef nonnull align 16 dereferenceable(64) @gem_color_palette, i64 64, i1 false)
  br label %.loopexit

bb.an:                                            ; preds = %bb.ah
  %trunc610 = trunc nuw i32 %.0310485491 to i16
  switch i16 %trunc610, label %bb.aq [
    i16 8, label %vector.body
    i16 16, label %bb.ao
    i16 24, label %bb.ap
  ]

vector.body:                                      ; preds = %bb.an, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.an ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr @gem_gray, i64 %index ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %wide.load = load <4 x i8>, ptr %i.fy, align 8, !tbaa !15
  %wide.load693 = load <4 x i8>, ptr %i.fz, align 4, !tbaa !15
  %i.ga = zext <4 x i8> %wide.load to <4 x i32>
  %i.gb = zext <4 x i8> %wide.load693 to <4 x i32>
  %i.gc = mul nuw nsw <4 x i32> %i.ga, splat (i32 65793)
  %i.gd = mul nuw nsw <4 x i32> %i.gb, splat (i32 65793)
  %i.ge = or disjoint <4 x i32> %i.gc, splat (i32 -16777216)
  %i.gf = or disjoint <4 x i32> %i.gd, splat (i32 -16777216)
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %i.ge, ptr %i.gg, align 4, !tbaa !31
  store <4 x i32> %i.gf, ptr %i.gh, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gi = icmp eq i64 %index.next, 256
  br i1 %i.gi, label %.loopexit, label %vector.body, !llvm.loop !41

bb.ao:                                            ; preds = %bb.an
  %i.gj = load i32, ptr %i.as, align 8, !tbaa !29
  %i.gk = mul nsw i32 %i.gj, %.0324483495
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  %i.gl = load i32, ptr %i.as, align 8, !tbaa !29
  %i.gm = mul nsw i32 %i.gl, %.0324483495
  br label %.loopexit

bb.aq:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 256) #9
  tail call void @abort() #10
  unreachable

.loopexit:                                        ; preds = %bytestream2_get_be16.exit393, %vector.body, %bytestream2_get_be16.exit, %bytestream2_get_be16.exit399, %bb.t, %bb.ag, %bb.ap, %bb.ao, %bb.am, %bb.ac, %bb.ad, %bb.ab
  %.0325 = phi i32 [ %i.gm, %bb.ap ], [ %i.av, %bb.t ], [ %i.av, %bytestream2_get_be16.exit ], [ %i.ep, %bb.ab ], [ %i.eu, %bb.ac ], [ %i.ew, %bb.ad ], [ %i.av, %bb.ag ], [ %i.av, %vector.body ], [ %i.av, %bb.am ], [ %i.av, %bytestream2_get_be16.exit399 ], [ %i.gk, %bb.ao ], [ %i.av, %bytestream2_get_be16.exit393 ] ; 16 uses
  %.0323 = phi ptr [ @put_lines_bytes, %bb.ap ], [ @put_lines_bits, %bb.t ], [ @put_lines_bits, %bytestream2_get_be16.exit ], [ @put_lines_bytes, %bb.ab ], [ @put_lines_bytes, %bb.ac ], [ @put_lines_bytes, %bb.ad ], [ @put_lines_bits, %bb.ag ], [ @put_lines_bits, %vector.body ], [ @put_lines_bits, %bb.am ], [ @put_lines_bits, %bytestream2_get_be16.exit399 ], [ @put_lines_bytes, %bb.ao ], [ @put_lines_bits, %bytestream2_get_be16.exit393 ] ; 4 uses
  %.1 = phi i32 [ 1, %bb.ap ], [ 15, %bb.t ], [ %.0310485491, %bytestream2_get_be16.exit ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ag ], [ 8, %vector.body ], [ %.0310485491, %bb.am ], [ 4, %bytestream2_get_be16.exit399 ], [ 1, %bb.ao ], [ %.0310485491, %bytestream2_get_be16.exit393 ] ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.go = zext nneg i32 %.1 to i64
  %i.gp = sext i32 %.0325 to i64
  %i.gq = tail call i32 @av_reallocp_array(ptr noundef nonnull %i.gn, i64 noundef %i.go, i64 noundef %i.gp) #9 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bytestream2_get_be16.exit415.thread, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !61 ; 7 uses
  %i.gt = load ptr, ptr %1, align 8, !tbaa !30
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !33
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !31
  %i.gy = mul nsw i32 %i.gx, %i.gv
  %i.gz = sext i32 %i.gy to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gt, i8 0, i64 %i.gz, i1 false)
  %i.ha = icmp slt i32 %i.q, %i.d
  br i1 %i.ha, label %.lr.ph603, label %.thread537

.lr.ph603:                                        ; preds = %bb.ar
  %i.hb = zext nneg i32 %i.q to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hb
  %i.hd = zext i16 %i.x to i64                    ; 2 uses
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.f, i64 %i.he
  %.not378572.not = icmp eq i16 %i.w, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count634 = zext nneg i32 %smax to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph603, %.thread534
  %.0314601 = phi i32 [ 0, %.lr.ph603 ], [ %.16, %.thread534 ] ; 8 uses
  %.0326600 = phi ptr [ %i.hc, %.lr.ph603 ], [ %.4330, %.thread534 ] ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0326600, i64 1 ; 6 uses
  %i.hj = load i8, ptr %.0326600, align 1, !tbaa !15 ; 3 uses
  switch i8 %i.hj, label %bb.ax [
    i8 -128, label %bb.at
    i8 0, label %bb.bb
  ]

bb.at:                                            ; preds = %bb.as
  %.not384 = icmp ult ptr %i.hi, %i.f
  br i1 %.not384, label %bb.au, label %.thread537

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %.0326600, i64 2 ; 3 uses
  %i.hl = load i8, ptr %i.hi, align 1, !tbaa !15  ; 2 uses
  %i.hm = zext i8 %i.hl to i32
  %.not385 = icmp eq i8 %i.hl, 0
  %spec.store.select = select i1 %.not385, i32 256, i32 %i.hm ; 2 uses
  %i.hn = mul nuw nsw i32 %spec.store.select, %.0313484493
  %.not389581 = icmp ne i32 %spec.store.select, 0 ; 2 uses
  %.not386582 = icmp ult ptr %i.hk, %i.f
  %or.cond583 = select i1 %.not389581, i1 %.not386582, i1 false
  br i1 %or.cond583, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.au, %bb.aw
  %.0306586 = phi i32 [ %i.ic, %bb.aw ], [ 0, %bb.au ]
  %.1315585 = phi i32 [ %.2, %bb.aw ], [ %.0314601, %bb.au ] ; 2 uses
  %.1327584 = phi ptr [ %i.ho, %bb.aw ], [ %i.hk, %bb.au ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.1327584, i64 1 ; 3 uses
  %i.hp = load i8, ptr %.1327584, align 1, !tbaa !15
  %i.hq = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.hr = mul nsw i32 %i.hq, %.0325
  %i.hs = add i32 %.1315585, 1                    ; 2 uses
  %i.ht = add i32 %i.hr, %.1315585
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hu
  store i8 %i.hp, ptr %i.hv, align 1, !tbaa !15
  %.not387 = icmp ult i32 %i.hs, %.0325
  br i1 %.not387, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph
  %i.hw = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.hx = mul nsw i32 %i.hw, %.0325
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds i8, ptr %i.gs, i64 %i.hy
  call void %.0323(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %.0325, i32 noundef %.0324483495, ptr noundef nonnull %4, ptr noundef %i.hz, ptr noundef nonnull %1) #9, !callees !62
  %i.ia = load i32, ptr %4, align 4, !tbaa !36
  %i.ib = load i32, ptr %i.gu, align 4, !tbaa !33
  %.not388 = icmp slt i32 %i.ia, %i.ib
  br i1 %.not388, label %bb.aw, label %.thread537

bb.aw:                                            ; preds = %bb.av, %.lr.ph
  %.2 = phi i32 [ %i.hs, %.lr.ph ], [ 0, %bb.av ] ; 2 uses
  %i.ic = add nuw nsw i32 %.0306586, 1            ; 2 uses
  %.not389 = icmp samesign ult i32 %i.ic, %i.hn   ; 2 uses
  %.not386 = icmp ult ptr %i.ho, %i.f
  %or.cond = select i1 %.not389, i1 %.not386, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.aw, %bb.au
  %.not389.lcssa = phi i1 [ %.not389581, %bb.au ], [ %.not389, %bb.aw ]
  %.2328 = phi ptr [ %i.hk, %bb.au ], [ %i.ho, %bb.aw ]
  %.3 = phi i32 [ %.0314601, %bb.au ], [ %.2, %bb.aw ]
  br i1 %.not389.lcssa, label %.thread537, label %.thread534

bb.ax:                                            ; preds = %bb.as
  %i.id = and i8 %i.hj, 127                       ; 2 uses
  %i.ie = zext nneg i8 %i.id to i32
  %.not379 = icmp eq i8 %i.id, 0
  %spec.store.select38 = select i1 %.not379, i32 256, i32 %i.ie ; 2 uses
  %i.if = mul nuw nsw i32 %spec.store.select38, %.0313484493
  %.not383594.not = icmp eq i32 %spec.store.select38, 0
  br i1 %.not383594.not, label %.thread534, label %.lr.ph598

.lr.ph598:                                        ; preds = %bb.ax
  %.lobit = ashr i8 %i.hj, 7
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph598, %bb.ba
  %.0305596 = phi i32 [ 0, %.lr.ph598 ], [ %i.is, %bb.ba ]
  %.4595 = phi i32 [ %.0314601, %.lr.ph598 ], [ %.5, %bb.ba ] ; 2 uses
  %i.ig = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.ih = mul nsw i32 %i.ig, %.0325
  %i.ii = add i32 %.4595, 1                       ; 2 uses
  %i.ij = add i32 %i.ih, %.4595
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ik
  store i8 %.lobit, ptr %i.il, align 1, !tbaa !15
  %.not381 = icmp ult i32 %i.ii, %.0325
  br i1 %.not381, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.in = mul nsw i32 %i.im, %.0325
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.gs, i64 %i.io
  call void %.0323(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %.0325, i32 noundef %.0324483495, ptr noundef nonnull %4, ptr noundef %i.ip, ptr noundef nonnull %1) #9, !callees !62
  %i.iq = load i32, ptr %4, align 4, !tbaa !36
  %i.ir = load i32, ptr %i.gu, align 4, !tbaa !33
  %.not382 = icmp slt i32 %i.iq, %i.ir
  br i1 %.not382, label %bb.ba, label %.thread537

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.5 = phi i32 [ %i.ii, %bb.ay ], [ 0, %bb.az ]  ; 2 uses
  %i.is = add nuw nsw i32 %.0305596, 1            ; 2 uses
  %exitcond638.not = icmp eq i32 %i.is, %i.if
  br i1 %exitcond638.not, label %.thread534, label %bb.ay, !llvm.loop !43

bb.bb:                                            ; preds = %bb.as
  %.not368 = icmp ult ptr %i.hi, %i.f
  br i1 %.not368, label %bb.bc, label %.thread537

bb.bc:                                            ; preds = %bb.bb
  %i.it = getelementptr inbounds nuw i8, ptr %.0326600, i64 2 ; 5 uses
  %i.iu = load i8, ptr %i.hi, align 1, !tbaa !15  ; 2 uses
  %i.iv = zext i8 %i.iu to i32
  %.not369 = icmp eq i8 %i.iu, 0
  br i1 %.not369, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iw = icmp ugt ptr %i.it, %i.hf
  br i1 %i.iw, label %.thread537, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ix = mul nuw nsw i32 %.0313484493, %i.iv
  br i1 %.not378572.not, label %.split578.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.be, %._crit_edge.us
  %.0304576.us = phi i32 [ %i.jm, %._crit_edge.us ], [ 0, %bb.be ]
  %.7575.us = phi i32 [ %.9.us, %._crit_edge.us ], [ %.0314601, %bb.be ]
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader.us, %bb.bh
  %indvars.iv631 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next632, %bb.bh ] ; 2 uses
  %.8573.us = phi i32 [ %.7575.us, %.preheader.us ], [ %.9.us, %bb.bh ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 %indvars.iv631
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.jb = mul nsw i32 %i.ja, %.0325
  %i.jc = add i32 %.8573.us, 1                    ; 2 uses
  %i.jd = add i32 %i.jb, %.8573.us
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.je
  store i8 %i.iz, ptr %i.jf, align 1, !tbaa !15
  %.not376.us = icmp ult i32 %i.jc, %.0325
  br i1 %.not376.us, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.jh = mul nsw i32 %i.jg, %.0325
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %i.gs, i64 %i.ji
  call void %.0323(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %.0325, i32 noundef %.0324483495, ptr noundef nonnull %4, ptr noundef %i.jj, ptr noundef nonnull %1) #9, !callees !62
  %i.jk = load i32, ptr %4, align 4, !tbaa !36
  %i.jl = load i32, ptr %i.gu, align 4, !tbaa !33
  %.not377.us = icmp slt i32 %i.jk, %i.jl
  br i1 %.not377.us, label %bb.bh, label %.thread537

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.9.us = phi i32 [ %i.jc, %bb.bf ], [ 0, %bb.bg ] ; 3 uses
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next632, %wide.trip.count634
  br i1 %exitcond635.not, label %._crit_edge.us, label %bb.bf, !llvm.loop !44

._crit_edge.us:                                   ; preds = %bb.bh
  %i.jm = add nuw nsw i32 %.0304576.us, 1         ; 2 uses
  %exitcond636.not = icmp eq i32 %i.jm, %i.ix
  br i1 %exitcond636.not, label %.split578.us, label %.preheader.us, !llvm.loop !45

.split578.us:                                     ; preds = %._crit_edge.us, %bb.be
  %.us-phi = phi i32 [ %.0314601, %bb.be ], [ %.9.us, %._crit_edge.us ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.hd
  br label %.thread534

bb.bi:                                            ; preds = %bb.bc
  %.not370 = icmp ult ptr %i.it, %i.f
  br i1 %.not370, label %bb.bj, label %.thread537

bb.bj:                                            ; preds = %bb.bi
  %i.jo = getelementptr inbounds nuw i8, ptr %.0326600, i64 3 ; 3 uses
  %i.jp = load i8, ptr %i.it, align 1, !tbaa !15  ; 2 uses
  %i.jq = icmp eq i8 %i.jp, -1
  br i1 %i.jq, label %bb.bk, label %.preheader552.preheader

.preheader552.preheader:                          ; preds = %bb.bj
  %i.jr = zext i8 %i.jp to i32
  br label %.preheader552

bb.bk:                                            ; preds = %bb.bj
  %.not374 = icmp ult ptr %i.jo, %i.f
  br i1 %.not374, label %bb.bl, label %.thread537

bb.bl:                                            ; preds = %bb.bk
  %i.js = getelementptr inbounds nuw i8, ptr %.0326600, i64 4
  %i.jt = load i8, ptr %i.jo, align 1, !tbaa !15  ; 2 uses
  %i.ju = zext i8 %i.jt to i32
  %.not375 = icmp eq i8 %i.jt, 0
  %spec.store.select391 = select i1 %.not375, i32 256, i32 %i.ju
  store i32 %spec.store.select391, ptr %i.hh, align 4
  br label %.thread534

.preheader552:                                    ; preds = %.preheader552.preheader, %bb.bn
  %.0580 = phi i32 [ %i.kc, %bb.bn ], [ 0, %.preheader552.preheader ] ; 2 uses
  %.12579 = phi i32 [ %.13, %bb.bn ], [ %.0314601, %.preheader552.preheader ]
  %i.jv = add i32 %.12579, 1                      ; 2 uses
  %.not372 = icmp ult i32 %i.jv, %.0325
  br i1 %.not372, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.preheader552
  %i.jw = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.jx = mul nsw i32 %i.jw, %.0325
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %i.gs, i64 %i.jy
  call void %.0323(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %.0325, i32 noundef %.0324483495, ptr noundef nonnull %4, ptr noundef %i.jz, ptr noundef nonnull %1) #9, !callees !62
  %i.ka = load i32, ptr %4, align 4, !tbaa !36
  %i.kb = load i32, ptr %i.gu, align 4, !tbaa !33
  %.not373 = icmp slt i32 %i.ka, %i.kb
  br i1 %.not373, label %bb.bn, label %.thread537

bb.bn:                                            ; preds = %bb.bm, %.preheader552
  %.13 = phi i32 [ %i.jv, %.preheader552 ], [ 0, %bb.bm ] ; 2 uses
  %i.kc = add nuw nsw i32 %.0580, 1
  %exitcond637.not = icmp eq i32 %.0580, %i.jr
  br i1 %exitcond637.not, label %.thread534, label %.preheader552, !llvm.loop !46

.thread534:                                       ; preds = %bb.bn, %bb.ba, %bb.ax, %._crit_edge, %.split578.us, %bb.bl
  %.4330 = phi ptr [ %i.jn, %.split578.us ], [ %i.js, %bb.bl ], [ %.2328, %._crit_edge ], [ %i.hi, %bb.ax ], [ %i.hi, %bb.ba ], [ %i.jo, %bb.bn ] ; 2 uses
  %.16 = phi i32 [ %.us-phi, %.split578.us ], [ %.0314601, %bb.bl ], [ %.3, %._crit_edge ], [ %.0314601, %bb.ax ], [ %.5, %bb.ba ], [ %.13, %bb.bn ]
  %i.kd = icmp ult ptr %.4330, %i.f
  br i1 %i.kd, label %bb.as, label %.thread537

.thread537:                                       ; preds = %.thread534, %._crit_edge, %bb.at, %bb.bb, %bb.bk, %bb.bd, %bb.bi, %bb.bm, %bb.av, %bb.az, %bb.bg, %bb.ar
  store i32 1, ptr %2, align 4, !tbaa !31
  br label %bytestream2_get_be16.exit415.thread

bytestream2_get_be16.exit415.thread:              ; preds = %.loopexit, %bb.n, %bytestream2_get_be16.exit409, %bytestream2_get_be16.exit415, %bb.b, %bb.a, %.thread537, %bb.m, %bb.l, %bb.j, %bb.h, %bytestream2_get_be16.exit401.thread
  %.0308 = phi i32 [ -1163346256, %bb.m ], [ -1094995529, %bb.a ], [ -1094995529, %bytestream2_get_be16.exit415 ], [ -1163346256, %bytestream2_get_be16.exit401.thread ], [ -1163346256, %bb.h ], [ %i.aq, %bytestream2_get_be16.exit409 ], [ %i.bv, %bb.n ], [ %i.gq, %.loopexit ], [ %i.d, %.thread537 ], [ -1163346256, %bb.j ], [ -1163346256, %bb.l ], [ -1094995529, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0308
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @gem_close(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put_lines_bits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.c = sdiv i32 %i.b, 8                         ; 8 uses
  %i.d = and i32 %i.b, 7                          ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.i = icmp slt i32 %2, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 8 uses
  %i.l = load i32, ptr %4, align 4, !tbaa !36
  %i.m = load i32, ptr %i.h, align 4, !tbaa !33
  %i.n = icmp sge i32 %i.l, %i.m
  %brmerge = select i1 %i.i, i1 true, i1 %i.n
  br i1 %brmerge, label %.critedge, label %.preheader39.us.preheader

.preheader39.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader39.us

bb.b:                                             ; preds = %._crit_edge.us
  %i.o = load i32, ptr %4, align 4, !tbaa !36
  %i.p = add nsw i32 %i.o, %i.gt
  %i.q = load i32, ptr %i.h, align 4, !tbaa !33
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.preheader39.us, label %.critedge.loopexit, !llvm.loop !63

bb.c:                                             ; preds = %.preheader.us
  %i.s = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.t = lshr i8 %i.s, 7
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, %i.d
  %i.w = load ptr, ptr %6, align 8, !tbaa !30
  %i.x = load i32, ptr %4, align 4, !tbaa !36
  %i.y = add nsw i32 %i.x, %.03743.us50
  %i.z = load i32, ptr %i.k, align 8, !tbaa !31
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = trunc i64 %i.gn to i32
  %i.ac = mul i32 %3, %i.ab
  %i.ad = add i32 %i.ac, %i.c
  %i.ae = add i32 %i.ad, %i.aa
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = trunc nuw i32 %i.v to i8
  %i.aj = or i8 %i.ah, %i.ai
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !15
  %i.ak = or disjoint i64 %i.gn, 1                ; 2 uses
  %i.al = load i32, ptr %i.j, align 8, !tbaa !29
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.d, label %.critedge2.us

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.ap = lshr i8 %i.ao, 6
  %i.aq = and i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, %i.d
  %i.at = load ptr, ptr %6, align 8, !tbaa !30
  %i.au = load i32, ptr %4, align 4, !tbaa !36
  %i.av = add nsw i32 %i.au, %.03743.us50
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !31
  %i.ax = mul nsw i32 %i.av, %i.aw
  %i.ay = trunc i64 %i.ak to i32
  %i.az = mul i32 %3, %i.ay
  %i.ba = add i32 %i.az, %i.c
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = trunc nuw i32 %i.as to i8
  %i.bg = or i8 %i.be, %i.bf
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !15
  %i.bh = or disjoint i64 %i.gn, 2                ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !29
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.e, label %.critedge2.us

bb.e:                                             ; preds = %bb.d
  %i.bl = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.bm = lshr i8 %i.bl, 5
  %i.bn = and i8 %i.bm, 1
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, %i.d
  %i.bq = load ptr, ptr %6, align 8, !tbaa !30
  %i.br = load i32, ptr %4, align 4, !tbaa !36
  %i.bs = add nsw i32 %i.br, %.03743.us50
  %i.bt = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bu = mul nsw i32 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bh to i32
  %i.bw = mul i32 %3, %i.bv
  %i.bx = add i32 %i.bw, %i.c
  %i.by = add i32 %i.bx, %i.bu
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bq, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
end_hunk_1
begin_hunk_2_@put_lines_bits:bb.a
  %i.ek = load i32, ptr %i.k, align 8, !tbaa !31
  %i.el = mul nsw i32 %i.ej, %i.ek
  %i.em = trunc i64 %i.dy to i32
  %i.en = mul i32 %3, %i.em
  %i.eo = add i32 %i.en, %i.c
  %i.ep = add i32 %i.eo, %i.el
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.eh, i64 %i.eq ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = trunc nuw i32 %i.eg to i8
  %i.eu = or i8 %i.es, %i.et
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !15
  %i.ev = or disjoint i64 %i.gn, 6                ; 2 uses
  %i.ew = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.i, label %.critedge2.us

bb.i:                                             ; preds = %bb.h
  %i.ez = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.fa = lshr i8 %i.ez, 1
  %i.fb = and i8 %i.fa, 1
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, %i.d
  %i.fe = load ptr, ptr %6, align 8, !tbaa !30
  %i.ff = load i32, ptr %4, align 4, !tbaa !36
  %i.fg = add nsw i32 %i.ff, %.03743.us50
  %i.fh = load i32, ptr %i.k, align 8, !tbaa !31
  %i.fi = mul nsw i32 %i.fg, %i.fh
  %i.fj = trunc i64 %i.ev to i32
  %i.fk = mul i32 %3, %i.fj
  %i.fl = add i32 %i.fk, %i.c
  %i.fm = add i32 %i.fl, %i.fi
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = trunc nuw i32 %i.fd to i8
  %i.fr = or i8 %i.fp, %i.fq
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !15
  %i.fs = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp slt i64 %i.go, %i.ft
  br i1 %i.fu, label %bb.j, label %.critedge2.us

bb.j:                                             ; preds = %bb.i
  %i.fv = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.fw = and i8 %i.fv, 1
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, %i.d
  %i.fz = load ptr, ptr %6, align 8, !tbaa !30
  %i.ga = load i32, ptr %4, align 4, !tbaa !36
  %i.gb = add nsw i32 %i.ga, %.03743.us50
  %i.gc = load i32, ptr %i.k, align 8, !tbaa !31
  %i.gd = mul nsw i32 %i.gb, %i.gc
  %i.ge = trunc i64 %i.go to i32
  %i.gf = mul i32 %3, %i.ge
  %i.gg = add i32 %i.gf, %i.c
  %i.gh = add i32 %i.gg, %i.gd
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.fz, i64 %i.gi ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !15
  %i.gl = trunc nuw i32 %i.fy to i8
  %i.gm = or i8 %i.gk, %i.gl
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !15
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !64

.preheader.us:                                    ; preds = %.preheader39.us, %.critedge2.us
  %indvars.iv = phi i64 [ 0, %.preheader39.us ], [ %indvars.iv.next, %.critedge2.us ] ; 3 uses
  %i.gn = shl nuw nsw i64 %indvars.iv, 3          ; 9 uses
  %i.go = or disjoint i64 %i.gn, 7                ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv ; 8 uses
  %i.gq = load i32, ptr %i.j, align 8, !tbaa !29
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %i.gn, %i.gr
  br i1 %i.gs, label %bb.c, label %.critedge2.us

.preheader39.us:                                  ; preds = %.preheader39.us.preheader, %bb.b
  %.03743.us50 = phi i32 [ %i.gt, %bb.b ], [ 0, %.preheader39.us.preheader ] ; 9 uses
  br label %.preheader.us

._crit_edge.us:                                   ; preds = %.critedge2.us
  %i.gt = add nuw nsw i32 %.03743.us50, 1         ; 3 uses
  %i.gu = load i32, ptr %i.e, align 4, !tbaa !37  ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.b, label %.critedge.loopexit, !llvm.loop !63

.critedge.loopexit:                               ; preds = %._crit_edge.us, %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge.loopexit, %bb.a
  %i.gw = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %.pre, %.critedge.loopexit ]
  %.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.f, %.lr.ph ], [ %i.gu, %.critedge.loopexit ]
  %i.gx = add nsw i32 %i.gw, 1                    ; 2 uses
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !35
  %.not = icmp slt i32 %i.gx, %1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  store i32 0, ptr %i.a, align 4, !tbaa !35
  %i.gy = load i32, ptr %4, align 4, !tbaa !36
  %i.gz = add nsw i32 %i.gy, %.lcssa
  store i32 %i.gz, ptr %4, align 4, !tbaa !36
  store i32 1, ptr %i.e, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  ret void
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put_lines_bytes(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %4, align 4, !tbaa !36     ; 2 uses
  %i.h = load i32, ptr %i.d, align 4, !tbaa !33
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph25, label %.critedge

bb.b:                                             ; preds = %.lr.ph25
  %i.j = load i32, ptr %4, align 4, !tbaa !36
  %i.k = add nsw i32 %i.j, %i.y                   ; 2 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !33
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph25, label %.critedge, !llvm.loop !65

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph25
  br label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %bb.b, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %i.z, %..critedge.loopexit_crit_edge ], [ %i.z, %bb.b ]
  %i.n = load i32, ptr %4, align 4, !tbaa !36
  %i.o = add nsw i32 %i.n, %.lcssa
  store i32 %i.o, ptr %4, align 4, !tbaa !36
  store i32 1, ptr %i.a, align 4, !tbaa !37
  ret void

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %i.p = phi i32 [ %i.k, %bb.b ], [ %i.g, %.lr.ph ]
  %.01724 = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph ]
  %i.q = load ptr, ptr %6, align 8, !tbaa !30
  %i.r = load i32, ptr %i.e, align 8, !tbaa !31
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.f, align 8, !tbaa !29
  %i.w = mul nsw i32 %i.v, %3
  %i.x = sext i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %5, i64 %i.x, i1 false)
  %i.y = add nuw nsw i32 %.01724, 1               ; 3 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %..critedge.loopexit_crit_edge, !llvm.loop !65
}

declare i32 @av_reallocp_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!17 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!18 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!19 = !{!"float", !5, i64 0}
!20 = !{!"p1 short", !9, i64 0}
!21 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!22 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!23 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!25 = !{!"p1 int", !9, i64 0}
!26 = !{!"any p2 pointer", !9, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !16, i64 0, !6, i64 8, !6, i64 12, !17, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !18, i64 40, !9, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !12, i64 72, !6, i64 80, !14, i64 84, !14, i64 92, !14, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !14, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !21, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !19, i64 428, !19, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !22, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !19, i64 484, !6, i64 488, !6, i64 492, !12, i64 496, !12, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !23, i64 536, !9, i64 544, !10, i64 552, !10, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !12, i64 736, !6, i64 744, !6, i64 748, !12, i64 752, !12, i64 760, !12, i64 768, !13, i64 776, !6, i64 784, !6, i64 788, !11, i64 792, !6, i64 800, !6, i64 804, !11, i64 808, !9, i64 816, !11, i64 824, !25, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!29 = !{!28, !6, i64 112}
!30 = !{!12, !12, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!28, !6, i64 116}
!34 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!35 = !{!34, !6, i64 4}
!36 = !{!34, !6, i64 0}
!37 = !{!34, !6, i64 12}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !32, !59, !60}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = !{!"AVPacket", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 48, !6, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !10, i64 88, !14, i64 96}
!48 = !{!47, !12, i64 24}
!49 = !{!47, !6, i64 32}
!50 = !{!28, !6, i64 128}
!51 = !{!28, !6, i64 132}
!52 = !{!28, !6, i64 136}
!53 = !{!"p2 omnipotent char", !26, i64 0}
!54 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!55 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!56 = !{!"AVFrame", !5, i64 0, !5, i64 64, !53, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !11, i64 136, !11, i64 144, !14, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !54, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !11, i64 304, !55, i64 312, !6, i64 320, !10, i64 328, !10, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !9, i64 376, !21, i64 384, !11, i64 408, !6, i64 416}
!57 = !{!56, !6, i64 120}
!58 = !{!56, !6, i64 276}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!28, !9, i64 32}
!62 = !{ptr @put_lines_bits, ptr @put_lines_bytes}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
end_hunk_2
