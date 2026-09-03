Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vqavideo?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecDefault = type { ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"vqavideo\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Westwood Studios VQA (Vector Quantized Animation) video\00", align 1
@vqa_defaults = internal constant [2 x %struct.FFCodecDefault] [%struct.FFCodecDefault { ptr @.str.2, ptr @.str.3 }, %struct.FFCodecDefault zeroinitializer], align 16
@ff_vqa_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 44, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 1144, ptr null, ptr null, ptr @vqa_defaults, ptr @vqa_decode_init, %union.anon { ptr @vqa_decode_frame }, ptr @vqa_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"max_pixels\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"640*480\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"expected extradata size of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"VQA Version %i\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Image size not multiple of block size\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"unsupported pixel format\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Found unknown chunk type: %s (%08X)\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"problem: found both CPL0 and CPLZ chunks\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"problem: found a palette chunk with %d colors\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"problem: found both CBF0 and CBFZ chunks\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"problem: CBF0 chunk too large (0x%X bytes)\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"problem: no VPTZ chunk found\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"VQA3 shouldn't have a color palette\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"problem: found both CBP0 and CBPZ chunks\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"cbp0 chunk too large (%u bytes)\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"cbpz chunk too large (%u bytes)\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Chunk size %d is out of range\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"decode_format80 problem: dest_index (%d) exceeded dest_size (%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"decode_format80 problem: next op would overflow dest_index\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"current dest_index = %d, count = %d, dest_size = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"current src_pos = %d, count = %d, dest_size = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"decode_format80 problem: decode finished with dest_index (%d) < dest_size (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"VPTR chunk didn't fit in decode buffer\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"frame has no block data\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c" unknown type in VPTR chunk (%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"invalid count: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"had %d leftover vectors\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @vqa_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %.not = icmp eq i32 %i.e, 42
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef 42) #9
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !34    ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store i32 %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = add i8 %i.h, -4
  %or.cond = icmp ult i8 %i.k, -3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.i) #9
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.m = load i16, ptr %i.l, align 1, !tbaa !34
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1064 ; 4 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load i16, ptr %i.p, align 1, !tbaa !34
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1068 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !37
  %i.t = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.r) #9 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store <2 x i32> zeroinitializer, ptr %i.o, align 8, !tbaa !38
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1072 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34  ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1076 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1132
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %i.ap = or i8 %i.ao, %i.am
  %i.aq = icmp eq i8 %i.ap, 0
  %spec.select = select i1 %i.aq, i32 39, i32 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.ar, align 8, !tbaa !43
  %.not83 = icmp eq i8 %i.z, 4
  br i1 %.not83, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  switch i8 %i.ad, label %bb.u [
    i8 2, label %bb.i
    i8 4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.as = load i32, ptr %i.o, align 8, !tbaa !36
  %i.at = srem i32 %i.as, %i.aa
  %.not86 = icmp eq i32 %i.at, 0
  br i1 %.not86, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.s, align 4, !tbaa !37
  %i.av = srem i32 %i.au, %i.ae
  %.not87 = icmp eq i32 %i.av, 0
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aw = tail call ptr @av_frame_alloc() #9      ; 2 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !44
  %.not88 = icmp eq ptr %i.aw, null
  br i1 %.not88, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1096 ; 2 uses
  store i32 2097152, ptr %i.ax, align 8, !tbaa !45
  %i.ay = tail call noalias ptr @av_malloc(i64 noundef 2097152) #9 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1088 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !46
  %.not89 = icmp eq ptr %i.ay, null
  br i1 %.not89, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !45
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call noalias ptr @av_malloc(i64 noundef %i.bb) #9 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !47
  %.not90 = icmp eq ptr %i.bc, null
  br i1 %.not90, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %1 = load <2 x i32>, ptr %i.o, align 8, !tbaa !38
  %2 = load <2 x i32>, ptr %i.ab, align 8, !tbaa !38
  %3 = sdiv <2 x i32> %1, %2                      ; 2 uses
  %4 = extractelement <2 x i32> %3, i64 0
  %5 = shl i32 %4, 1
  %6 = extractelement <2 x i32> %3, i64 1
  %i.be = mul i32 %5, %6                          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !48
  %i.bg = sext i32 %i.be to i64
  %i.bh = tail call noalias ptr @av_mallocz(i64 noundef %i.bg) #9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !49
  %.not91 = icmp eq ptr %i.bh, null
  br i1 %.not91, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.af, align 4, !tbaa !40
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %.preheader, label %.preheader93

.preheader:                                       ; preds = %bb.p, %bb.r
  %.0103 = phi i32 [ %i.bn, %bb.r ], [ 1044480, %bb.p ] ; 2 uses
  %.076102 = phi i32 [ %i.bq, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.bl = trunc nuw i32 %.076102 to i8
  %i.bm = sext i32 %.0103 to i64
  %i.bn = add i32 %.0103, 16                      ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.q
  %indvars.iv108 = phi i64 [ %i.bm, %.preheader ], [ %indvars.iv.next109, %bb.q ] ; 2 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !46
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %indvars.iv108
  store i8 %i.bl, ptr %i.bp, align 1, !tbaa !34
  %lftr.wideiv111 = trunc i64 %indvars.iv.next109 to i32
  %exitcond112.not = icmp eq i32 %i.bn, %lftr.wideiv111
  br i1 %exitcond112.not, label %bb.r, label %bb.q, !llvm.loop !58

bb.r:                                             ; preds = %bb.q
  %i.bq = add nuw nsw i32 %.076102, 1             ; 2 uses
  %exitcond113.not = icmp eq i32 %i.bq, 256
  br i1 %exitcond113.not, label %.loopexit, label %.preheader, !llvm.loop !59

.preheader93:                                     ; preds = %bb.p, %bb.t
  %.299 = phi i32 [ %i.bt, %bb.t ], [ 30720, %bb.p ] ; 2 uses
  %.17798 = phi i32 [ %i.bw, %bb.t ], [ 0, %bb.p ] ; 2 uses
  %i.br = trunc nuw i32 %.17798 to i8
  %i.bs = sext i32 %.299 to i64
  %i.bt = add i32 %.299, 8                        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader93, %bb.s
  %indvars.iv = phi i64 [ %i.bs, %.preheader93 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %indvars.iv
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !34
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bt, %lftr.wideiv
  br i1 %exitcond.not, label %bb.t, label %bb.s, !llvm.loop !60

bb.t:                                             ; preds = %bb.s
  %i.bw = add nuw nsw i32 %.17798, 1              ; 2 uses
  %exitcond107.not = icmp eq i32 %i.bw, 256
  br i1 %exitcond107.not, label %.loopexit, label %.preheader93, !llvm.loop !61

.loopexit:                                        ; preds = %bb.t, %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store i32 0, ptr %i.bx, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.g, %bb.h, %.loopexit, %bb.k, %bb.f, %bb.d, %bb.b
  %.078 = phi i32 [ -22, %bb.b ], [ -1094995529, %bb.d ], [ %i.t, %bb.f ], [ -1094995529, %bb.g ], [ -1094995529, %bb.k ], [ 0, %.loopexit ], [ -12, %bb.n ], [ -12, %bb.m ], [ -12, %bb.l ], [ -1094995529, %bb.h ], [ -12, %bb.o ]
  ret i32 %.078
}

; Function Attrs: nounwind uwtable
define internal i32 @vqa_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 5 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 58 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = tail call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.e, i32 noundef 0) #9 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ct, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 47 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !79   ; 4 uses
  %i.m = icmp ne ptr %i.j, null
  %i.n = icmp sgt i32 %i.l, -1
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 14 uses
  store ptr %i.j, ptr %i.o, align 8, !tbaa !53
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 11 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43
  switch i32 %i.t, label %bb.cq [
    i32 11, label %bb.d
    i32 39, label %bb.bc
  ]

bb.d:                                             ; preds = %bytestream2_init.exit
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !44   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 1128 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !48
  %i.x = sdiv i32 %i.w, 2
  %i.y = icmp samesign ugt i32 %i.l, 7
  br i1 %i.y, label %.lr.ph.i, label %.thread438.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 9 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %.lr.ph.i
  %i.aa = phi ptr [ %i.q, %.lr.ph.i ], [ %i.ap, %bb.m ] ; 7 uses
  %i.ab = phi ptr [ %i.j, %.lr.ph.i ], [ %i.ax, %bb.m ] ; 3 uses
  %.0221291.i = phi i32 [ -1, %.lr.ph.i ], [ %.1222.i, %bb.m ] ; 7 uses
  %.0223290.i = phi i32 [ -1, %.lr.ph.i ], [ %.1224.i, %bb.m ] ; 7 uses
  %.0225289.i = phi i32 [ -1, %.lr.ph.i ], [ %.1226.i, %bb.m ] ; 7 uses
  %.0227288.i = phi i32 [ -1, %.lr.ph.i ], [ %.1228.i, %bb.m ] ; 7 uses
  %.0229287.i = phi i32 [ -1, %.lr.ph.i ], [ %.1230.i, %bb.m ] ; 7 uses
  %.0231286.i = phi i32 [ -1, %.lr.ph.i ], [ %.1232.i, %bb.m ] ; 7 uses
  %.0233285.i = phi i32 [ -1, %.lr.ph.i ], [ %.1234.i, %bb.m ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !55
  %i.ad = load i32, ptr %i.ab, align 1, !tbaa !34 ; 2 uses
  %i.ae = call i32 @llvm.bswap.i32(i32 %i.ad)     ; 2 uses
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32                  ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 8 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !55
  %i.al = load i32, ptr %i.ac, align 1, !tbaa !34
  %i.am = call i32 @llvm.bswap.i32(i32 %i.al)     ; 2 uses
  switch i32 %i.ae, label %bb.l [
    i32 1128416816, label %bb.m
    i32 1128416858, label %bb.f
    i32 1128419376, label %bb.g
    i32 1128419418, label %bb.h
    i32 1129335856, label %bb.i
    i32 1129335898, label %bb.j
    i32 1448105050, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.ao = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.b, i32 noundef %i.ad) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull @.str.11, ptr noundef %i.ao, i32 noundef %i.ae) #9
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !54
  %.pre353.i = load ptr, ptr %i.h, align 8, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ap = phi ptr [ %.pre.i, %bb.l ], [ %i.aa, %bb.k ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aa, %bb.j ], [ %i.aa, %bb.e ] ; 4 uses
  %i.aq = phi ptr [ %.pre353.i, %bb.l ], [ %i.ak, %bb.k ], [ %i.ak, %bb.f ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ], [ %i.ak, %bb.e ] ; 2 uses
  %.1234.i = phi i32 [ %.0233285.i, %bb.l ], [ %.0233285.i, %bb.k ], [ %.0233285.i, %bb.f ], [ %.0233285.i, %bb.g ], [ %.0233285.i, %bb.h ], [ %.0233285.i, %bb.i ], [ %.0233285.i, %bb.j ], [ %i.aj, %bb.e ] ; 4 uses
  %.1232.i = phi i32 [ %.0231286.i, %bb.l ], [ %.0231286.i, %bb.k ], [ %i.aj, %bb.f ], [ %.0231286.i, %bb.g ], [ %.0231286.i, %bb.h ], [ %.0231286.i, %bb.i ], [ %.0231286.i, %bb.j ], [ %.0231286.i, %bb.e ] ; 4 uses
  %.1230.i = phi i32 [ %.0229287.i, %bb.l ], [ %.0229287.i, %bb.k ], [ %.0229287.i, %bb.f ], [ %i.aj, %bb.g ], [ %.0229287.i, %bb.h ], [ %.0229287.i, %bb.i ], [ %.0229287.i, %bb.j ], [ %.0229287.i, %bb.e ] ; 4 uses
  %.1228.i = phi i32 [ %.0227288.i, %bb.l ], [ %.0227288.i, %bb.k ], [ %.0227288.i, %bb.f ], [ %.0227288.i, %bb.g ], [ %i.aj, %bb.h ], [ %.0227288.i, %bb.i ], [ %.0227288.i, %bb.j ], [ %.0227288.i, %bb.e ] ; 4 uses
  %.1226.i = phi i32 [ %.0225289.i, %bb.l ], [ %.0225289.i, %bb.k ], [ %.0225289.i, %bb.f ], [ %.0225289.i, %bb.g ], [ %.0225289.i, %bb.h ], [ %i.aj, %bb.i ], [ %.0225289.i, %bb.j ], [ %.0225289.i, %bb.e ] ; 4 uses
  %.1224.i = phi i32 [ %.0223290.i, %bb.l ], [ %.0223290.i, %bb.k ], [ %.0223290.i, %bb.f ], [ %.0223290.i, %bb.g ], [ %.0223290.i, %bb.h ], [ %.0223290.i, %bb.i ], [ %i.aj, %bb.j ], [ %.0223290.i, %bb.e ] ; 2 uses
  %.1222.i = phi i32 [ %.0221291.i, %bb.l ], [ %i.aj, %bb.k ], [ %.0221291.i, %bb.f ], [ %.0221291.i, %bb.g ], [ %.0221291.i, %bb.h ], [ %.0221291.i, %bb.i ], [ %.0221291.i, %bb.j ], [ %.0221291.i, %bb.e ] ; 4 uses
  %i.ar = and i32 %i.am, 1
  %i.as = add i32 %i.ar, %i.am
  %i.at = ptrtoint ptr %i.ap to i64               ; 7 uses
  %i.au = ptrtoint ptr %i.aq to i64
end_hunk_0
