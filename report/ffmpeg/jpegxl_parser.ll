Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@jpegxl_parse:bb.a
bytestream2_get_be32.exit.i:                      ; preds = %bb.gp
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.avo = load i32, ptr %.sroa.0.0.i, align 1, !tbaa !15 ; 2 uses
  %i.avp = call i32 @llvm.bswap.i32(i32 %i.avo)
  %i.avq = zext i32 %i.avp to i64
  %i.avr = ptrtoint ptr %i.avn to i64
  %i.avs = sub i64 %i.ava, %i.avr
  %..i29.i = call i64 @llvm.smin.i64(i64 %i.avs, i64 4)
  %i.avt = getelementptr inbounds i8, ptr %i.avn, i64 %..i29.i ; 4 uses
  %i.avu = icmp eq i32 %i.avo, 16777216
  br i1 %i.avu, label %bb.gq, label %bytestream2_get_be64.exit.i

bb.gq:                                            ; preds = %bytestream2_get_be32.exit.i
  %i.avv = ptrtoint ptr %i.avt to i64
  %i.avw = sub i64 %i.ava, %i.avv                 ; 2 uses
  %i.avx = trunc i64 %i.avw to i32
  %i.avy = icmp slt i32 %i.avx, 8
  br i1 %i.avy, label %.thread72, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.avz = icmp slt i64 %i.avw, 8
  br i1 %i.avz, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.awb = load i64, ptr %i.avt, align 1, !tbaa !15
  %i.awc = call noundef i64 @llvm.bswap.i64(i64 %i.awb)
  br label %bytestream2_get_be64.exit.i

bytestream2_get_be64.exit.i:                      ; preds = %bb.gs, %bytestream2_get_be32.exit.i
  %.sroa.0.1.i = phi ptr [ %i.awa, %bb.gs ], [ %i.avt, %bytestream2_get_be32.exit.i ] ; 2 uses
  %.019.i = phi i64 [ %i.awc, %bb.gs ], [ %i.avq, %bytestream2_get_be32.exit.i ] ; 4 uses
  %.0.i65 = phi i64 [ 16, %bb.gs ], [ 8, %bytestream2_get_be32.exit.i ] ; 2 uses
  %.not26.i = icmp ule i64 %.019.i, %.0.i65
  %i.awd = sub nsw i64 2147483647, %i.avb
  %i.awe = icmp ugt i64 %.019.i, %i.awd
  %or.cond.i66 = select i1 %.not26.i, i1 true, i1 %i.awe
  br i1 %or.cond.i66, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bytestream2_get_be64.exit.i
  %i.awf = add i64 %.019.i, %i.avb                ; 2 uses
  store i64 %i.awf, ptr %i.aup, align 8, !tbaa !73
  %i.awg = sub nuw i64 %.019.i, %.0.i65
  %i.awh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.awi = sub i64 %i.ava, %i.awh
  %i.awj = and i64 %i.awg, 4294967295
  %..i.i = call i64 @llvm.smin.i64(i64 %i.awi, i64 %i.awj)
  %i.awk = getelementptr inbounds i8, ptr %.sroa.0.1.i, i64 %..i.i ; 2 uses
  %i.awl = ptrtoint ptr %i.awk to i64
  %i.awm = sub i64 %i.ava, %i.awl
  %i.awn = trunc i64 %i.awm to i32
  %i.awo = icmp slt i32 %i.awn, 1
  br i1 %i.awo, label %.thread72, label %bb.gn

bb.gu:                                            ; preds = %bb.gp, %bytestream2_get_be64.exit.i, %bb.gr
  store i64 -1, ptr %i.aum, align 8, !tbaa !72
  br label %.thread72

skip_boxes.exit:                                  ; preds = %bytestream2_peek_le64.exit.i, %bytestream2_peek_le16.exit.i
  store i64 %i.avb, ptr %i.aum, align 8, !tbaa !72
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread..thread.thread_crit_edge, %skip_boxes.exit
  %i.awp = phi i64 [ %.pre, %.thread..thread.thread_crit_edge ], [ %i.avb, %skip_boxes.exit ] ; 2 uses
  %i.awq = icmp sgt i64 %i.awp, -1
  br i1 %i.awq, label %.thread.thread.thread, label %.thread72

.thread.thread.thread:                            ; preds = %bb.gi, %.thread.thread
  %i.awr = phi i64 [ %i.awp, %.thread.thread ], [ %.062.i, %bb.gi ]
  %i.aws = load i32, ptr %i.ae, align 8, !tbaa !68
  %i.awt = trunc i64 %i.awr to i32
  %i.awu = sub i32 %i.awt, %i.aws
  br label %.thread72

.thread72:                                        ; preds = %bb.gt, %bytestream2_peek_le64.exit.thread.i, %bb.gq, %.thread.thread197, %bb.gk, %try_parse.exit, %try_parse.exit.thread, %.thread.thread, %.thread.thread.thread, %bb.gu, %bb.b
  %.053 = phi i32 [ -100, %bb.gu ], [ -100, %try_parse.exit ], [ %i.awu, %.thread.thread.thread ], [ -100, %.thread.thread ], [ -100, %bb.b ], [ -100, %try_parse.exit.thread ], [ -100, %bb.gk ], [ -100, %.thread.thread197 ], [ -100, %bb.gq ], [ -100, %bytestream2_peek_le64.exit.thread.i ], [ -100, %bb.gt ] ; 2 uses
  %i.awv = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.aww = icmp sgt i32 %.053, %i.awv
  %spec.store.select = select i1 %i.aww, i32 -100, i32 %.053 ; 2 uses
  %i.awx = call i32 @ff_combine_frame(ptr noundef nonnull %i.ac, i32 noundef %spec.store.select, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) #10
  %i.awy = icmp slt i32 %i.awx, 0
  br i1 %i.awy, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.thread72
  %i.awz = load i32, ptr %i.ab, align 4, !tbaa !13
  br label %bb.gx

bb.gw:                                            ; preds = %.thread72
  %i.axa = load ptr, ptr %i.aa, align 8, !tbaa !12
  store ptr %i.axa, ptr %2, align 8, !tbaa !12
  %i.axb = load i32, ptr %i.ab, align 4, !tbaa !13
  store i32 %i.axb, ptr %3, align 4, !tbaa !13
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.axd = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i32 0, ptr %i.axd, align 8, !tbaa !75
  %i.axe = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  store i64 0, ptr %i.axe, align 8, !tbaa !73
  %i.axf = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store i64 0, ptr %i.axf, align 8, !tbaa !72
  %i.axg = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.axg, i8 0, i64 100, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.axc, i8 0, i64 20, i1 false)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.054 = phi i32 [ %i.awz, %bb.gv ], [ %spec.store.select, %bb.gw ]
  ret i32 %.054
}

declare void @ff_parse_close(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ff_jpegxl_collect_codestream_header(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_jpegxl_parse_codestream_header(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @skip_icc_profile(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.JXLEntropyDecoder, align 8  ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = tail call fastcc i64 @jxl_u64(ptr noundef %1) ; 2 uses
  %i.c = add i64 %i.b, -4194305
  %or.cond = icmp ult i64 %i.c, -4194304
  br i1 %or.cond, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i8 0, i64 88, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %0, ptr %i.e, align 8, !tbaa !28
  store i64 -1, ptr %2, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = call fastcc i32 @read_distribution_bundle(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.f, i32 noundef 41, i32 noundef 0) ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @av_freep(ptr noundef nonnull %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %entropy_decoder_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not8.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i.i, label %entropy_decoder_init.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %entropy_decoder_init.exit.thread

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw [2640 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.s) #10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !32
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %entropy_decoder_init.exit.thread, !llvm.loop !0

entropy_decoder_init.exit.thread:                 ; preds = %.lr.ph.i.i.i, %bb.c, %bb.d, %.preheader.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @av_freep(ptr noundef nonnull %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @av_freep(ptr noundef nonnull %i.x) #10
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val46 = load i32, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %.val47 = load i32, ptr %i.z, align 4, !tbaa !19
  %i.aa = icmp slt i32 %.val47, %.val46
  br i1 %i.aa, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.v
  %.08 = phi i64 [ %i.bk, %bb.v ], [ 0, %bb.e ]   ; 2 uses
  %.0317 = phi i32 [ %.1, %bb.v ], [ 0, %bb.e ]   ; 4 uses
  %.0326 = phi i64 [ %.133, %bb.v ], [ 0, %bb.e ] ; 3 uses
  %.0345 = phi i32 [ %.0353, %bb.v ], [ 0, %bb.e ] ; 5 uses
  %.0353 = phi i32 [ %i.bb, %bb.v ], [ 0, %bb.e ] ; 10 uses
  %i.ab = icmp samesign ult i64 %.08, 129
  br i1 %i.ab, label %icc_context.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ac = and i32 %.0353, 223
  %i.ad = add nsw i32 %i.ac, -65
  %or.cond56.i = icmp ult i32 %i.ad, 26
  br i1 %or.cond56.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %.0353, -48
  %or.cond5.i = icmp ult i32 %i.ae, 10
  %i.af = and i32 %.0353, 253
  %i.ag = icmp eq i32 %i.af, 44
  %or.cond9.i = or i1 %or.cond5.i, %i.ag
  br i1 %or.cond9.i, label %bb.k, label %3

3:                                                ; preds = %bb.g
  %4 = icmp samesign ult i32 %.0353, 2
  br i1 %4, label %5, label %bb.h

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %.0353, 3
  br label %bb.k

bb.h:                                             ; preds = %3
  %i.ah = icmp samesign ult i32 %.0353, 16
  br i1 %i.ah, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp samesign ugt i32 %.0353, 240
  %i.aj = icmp ne i32 %.0353, 255
  %or.cond13.i = and i1 %i.ai, %i.aj
  br i1 %or.cond13.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %.0353, 255
  %..i = select i1 %i.ak, i32 7, i32 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %5, %bb.g, %bb.f
  %.052.i = phi i32 [ 6, %bb.i ], [ 1, %bb.f ], [ %6, %5 ], [ 2, %bb.g ], [ 5, %bb.h ], [ %..i, %bb.j ]
  %i.al = and i32 %.0345, 223
  %i.am = add nsw i32 %i.al, -65
  %or.cond57.i = icmp ult i32 %i.am, 26
  br i1 %or.cond57.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %.0345, -48
  %or.cond19.i = icmp ult i32 %i.an, 10
  %i.ao = and i32 %.0345, 253
  %i.ap = icmp eq i32 %i.ao, 44
  %or.cond23.i = or i1 %or.cond19.i, %i.ap
  br i1 %or.cond23.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp samesign ult i32 %.0345, 16
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp samesign ugt i32 %.0345, 240
  %.58.i = select i1 %i.ar, i32 24, i32 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i = phi i32 [ 16, %bb.m ], [ 0, %bb.k ], [ 8, %bb.l ], [ %.58.i, %bb.n ]
  %i.as = add nuw nsw i32 %.0.i, %.052.i
  br label %icc_context.exit

icc_context.exit:                                 ; preds = %.lr.ph, %bb.o
  %.053.i = phi i32 [ %i.as, %bb.o ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = call fastcc i32 @decode_hybrid_varlen_uint(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.f, i32 noundef range(i32 0, 41) %.053.i, ptr noundef %i.a) ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = sext i32 %i.at to i64
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = zext i32 %i.aw to i64
  %.0.i48 = select i1 %i.au, i64 %i.av, i64 %i.ax ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ay = icmp slt i64 %.0.i48, 0
  br i1 %i.ay, label %.thread.loopexit, label %bb.p

bb.p:                                             ; preds = %icc_context.exit
  %i.az = icmp samesign ugt i64 %.0.i48, 255
  br i1 %i.az, label %.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load i32, ptr %i.y, align 8, !tbaa !21
  %.val45 = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ba = icmp slt i32 %.val45, %.val
  br i1 %i.ba, label %.thread.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = trunc nuw nsw i64 %.0.i48 to i32
  %i.bc = icmp slt i32 %.0317, 63
  br i1 %i.bc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bd = and i64 %.0.i48, 127
  %i.be = zext nneg i32 %.0317 to i64
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.0326                   ; 2 uses
  %.not = icmp samesign ult i64 %.0.i48, 128
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nuw nsw i32 %.0317, 7
  %i.bi = icmp sgt i32 %.0317, 49
  br i1 %i.bi, label %.thread.loopexit, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bj = icmp ult i64 %.0326, 132
  br i1 %i.bj, label %.thread.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.133 = phi i64 [ %i.bg, %bb.t ], [ %.0326, %bb.u ], [ %i.bg, %bb.s ]
  %.1 = phi i32 [ %i.bh, %bb.t ], [ 63, %bb.u ], [ 63, %bb.s ]
  %i.bk = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.b
  br i1 %exitcond.not, label %.thread.loopexit, label %.lr.ph, !llvm.loop !116

.thread.loopexit:                                 ; preds = %bb.u, %bb.t, %bb.q, %bb.p, %icc_context.exit, %bb.v
  %.2.ph = phi i64 [ -1094995529, %bb.u ], [ -1094995529, %bb.t ], [ -1397118274, %bb.q ], [ -1094995529, %bb.p ], [ %.0.i48, %icc_context.exit ], [ 0, %bb.v ]
  %i.bl = trunc nsw i64 %.2.ph to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %entropy_decoder_init.exit.thread, %bb.e
  %.2 = phi i32 [ %i.g, %entropy_decoder_init.exit.thread ], [ -1397118274, %bb.e ], [ %i.bl, %.thread.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @av_freep(ptr noundef nonnull %i.bm) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %entropy_decoder_close.exit, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %.not8.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i, label %entropy_decoder_close.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %entropy_decoder_close.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw [2640 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @ff_vlc_free(ptr noundef nonnull %i.bw) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !32
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i.i, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %entropy_decoder_close.exit, !llvm.loop !0

entropy_decoder_close.exit:                       ; preds = %.lr.ph.i.i, %.thread, %bb.w, %.preheader.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @av_freep(ptr noundef nonnull %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @av_freep(ptr noundef nonnull %i.cb) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %entropy_decoder_close.exit
  %.038 = phi i32 [ %.2, %entropy_decoder_close.exit ], [ -1094995529, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @jxl_u64(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 18 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 18 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !15
  %i.j = and i32 %i.b, 7
  %i.k = lshr i32 %i.i, %i.j
  %i.l = and i32 %i.k, 3
  %i.m = add i32 %i.b, 2
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.m) ; 10 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !21
  switch i32 %i.l, label %default.unreachable [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = load i32, ptr %i.q, align 1, !tbaa !15
  %i.s = and i32 %i.n, 7
  %i.t = lshr i32 %i.r, %i.s
  %i.u = and i32 %i.t, 15
  %i.v = add i32 %i.n, 4
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.v)
  store i32 %i.w, ptr %i.a, align 8, !tbaa !21
  %i.x = add nuw nsw i32 %i.u, 1
  %i.y = zext nneg i32 %i.x to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.z = lshr i32 %i.n, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !15
  %i.ad = and i32 %i.n, 7
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = and i32 %i.ae, 255
  %i.ag = add i32 %i.n, 8
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ag)
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !21
  %i.ai = add nuw nsw i32 %i.af, 17
  %i.aj = zext nneg i32 %i.ai to i64
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ak = lshr i32 %i.n, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1, !tbaa !15
  %i.ao = and i32 %i.n, 7
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = and i32 %i.ap, 4095                     ; 2 uses
  %i.ar = add i32 %i.n, 12
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ar) ; 5 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !21
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.av
end_hunk_0
