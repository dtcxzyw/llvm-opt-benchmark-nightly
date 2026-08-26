Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mpeg2dec?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@main:bb.a
  unreachable

bb.at:                                            ; preds = %bb.aq, %bb.ar
  %i.bn = load i32, ptr @base, align 8, !tbaa !21
  %i.bo = tail call i64 @lseek(i32 noundef %i.bn, i64 noundef 0, i32 noundef 0) #18 ; 0 uses
  tail call void @Initialize_Buffer() #18
  %.pr = load i32, ptr @base, align 8, !tbaa !21  ; 2 uses
  %.not3 = icmp eq i32 %.pr, 0
  br i1 %.not3, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bp = tail call i64 @lseek(i32 noundef %.pr, i64 noundef 0, i32 noundef 0) #18 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.an, %bb.au, %bb.at
  tail call void @Initialize_Buffer() #18
  %i.bq = load i32, ptr @Two_Streams, align 4, !tbaa !4
  %.not4 = icmp eq i32 %i.bq, 0
  br i1 %.not4, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.thread
  store ptr @enhan, ptr @ld, align 8, !tbaa !19
  %i.br = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !8
  %i.bs = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.br, i32 noundef 0) #18 ; 2 uses
  store i32 %i.bs, ptr @enhan, align 8, !tbaa !21
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bu = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !8
  %i.bv = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.bu) #18 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text)
  unreachable

bb.ax:                                            ; preds = %bb.av
  tail call void @Initialize_Buffer() #18
  store ptr @base, ptr @ld, align 8, !tbaa !19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread
  %i.bw = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #20 ; 3 uses
  store ptr %i.bw, ptr @Clip, align 8, !tbaa !8
  %.not.i6 = icmp eq ptr %i.bw, null
  br i1 %.not.i6, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @Error(ptr noundef nonnull @.str.5)
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 384
  store ptr %i.bx, ptr @Clip, align 8, !tbaa !8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv.i = phi i64 [ -384, %bb.ba ], [ %indvars.iv.next.i.1, %bb.bb ] ; 4 uses
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 255)
  %i.cb = trunc nuw i32 %i.ca to i8
  %i.cc = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %indvars.iv.i
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !11
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = trunc nsw i64 %indvars.iv.next.i to i32
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 255)
  %i.ch = trunc nuw i32 %i.cg to i8
  %i.ci = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %indvars.iv.next.i
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !11
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 640
  br i1 %exitcond.not.i.1, label %bb.bc, label %bb.bb, !llvm.loop !23

bb.bc:                                            ; preds = %bb.bb
  %i.ck = load i32, ptr @Reference_IDCT_Flag, align 4, !tbaa !4
  %.not6.i = icmp eq i32 %i.ck, 0
  br i1 %.not6.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @Initialize_Reference_IDCT() #18
  br label %Initialize_Decoder.exit.preheader

bb.be:                                            ; preds = %bb.bc
  tail call void @Initialize_Fast_IDCT() #18
  br label %Initialize_Decoder.exit.preheader

Initialize_Decoder.exit.preheader:                ; preds = %bb.bd, %bb.be
  br label %Initialize_Decoder.exit

Initialize_Decoder.exit:                          ; preds = %Initialize_Decoder.exit.backedge, %Initialize_Decoder.exit.preheader
  %.0.i = phi i32 [ 0, %Initialize_Decoder.exit.preheader ], [ %.1.i.i, %Initialize_Decoder.exit.backedge ] ; 2 uses
  store ptr @base, ptr @ld, align 8, !tbaa !19
  %i.cl = tail call i32 @Get_Hdr() #18            ; 2 uses
  %i.cm = load i32, ptr @Two_Streams, align 4, !tbaa !4
  %.not.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i, label %Headers.exit.i, label %bb.bf

bb.bf:                                            ; preds = %Initialize_Decoder.exit
  store ptr @enhan, ptr @ld, align 8, !tbaa !19
  %i.cn = tail call i32 @Get_Hdr() #18
  %i.co = icmp eq i32 %i.cn, %i.cl
  %i.cp = load i32, ptr @Quiet_Flag, align 4
  %i.cq = icmp ne i32 %i.cp, 0
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cs = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr %i.cr) #21 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr @base, ptr @ld, align 8, !tbaa !19
  br label %Headers.exit.i

Headers.exit.i:                                   ; preds = %bb.bh, %Initialize_Decoder.exit
  %i.ct = icmp eq i32 %i.cl, 1
  br i1 %i.ct, label %bb.bi, label %Decode_Bitstream.exit

bb.bi:                                            ; preds = %Headers.exit.i
  %i.cu = load i32, ptr @Two_Streams, align 4, !tbaa !4
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @enhan, i64 3148), align 4
  %i.cx = icmp ne i32 %i.cw, 3
  %or.cond.i.i.i = select i1 %i.cv, i1 %i.cx, i1 false
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3148), align 4
  %.fr53.i.i.i = freeze i32 %i.cy                 ; 2 uses
  %i.cz = icmp ne i32 %.fr53.i.i.i, 1
  %or.cond3.i.i.i = and i1 %or.cond.i.i.i, %i.cz
  br i1 %or.cond3.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @Error(ptr noundef nonnull @.str.21)
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3144), align 8, !tbaa !24
  %.not.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.bl

.thread.i.i.i:                                    ; preds = %bb.bk
  store i32 1, ptr @progressive_sequence, align 4, !tbaa !4
  store i32 1, ptr @progressive_frame, align 4, !tbaa !4
  store i32 3, ptr @picture_structure, align 4, !tbaa !4
  store i32 1, ptr @frame_pred_frame_dct, align 4, !tbaa !4
  store i32 1, ptr @chroma_format, align 4, !tbaa !4
  store i32 5, ptr @matrix_coefficients, align 4, !tbaa !4
  %i.db = load i32, ptr @horizontal_size, align 4, !tbaa !4
  %i.dc = add nsw i32 %i.db, 15
  %i.dd = sdiv i32 %i.dc, 16                      ; 2 uses
  store i32 %i.dd, ptr @mb_width, align 4, !tbaa !4
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %.pre.i.i.i = load i32, ptr @progressive_sequence, align 4
  %.not67.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  %i.de = load i32, ptr @horizontal_size, align 4, !tbaa !4
  %i.df = add nsw i32 %i.de, 15
  %i.dg = sdiv i32 %i.df, 16                      ; 3 uses
  store i32 %i.dg, ptr @mb_width, align 4, !tbaa !4
  br i1 %.not67.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.dh = load i32, ptr @vertical_size, align 4, !tbaa !4
  %i.di = add nsw i32 %i.dh, 31
  %i.dj = sdiv i32 %i.di, 32
  %i.dk = shl nsw i32 %i.dj, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %.thread.i.i.i
  %i.dl = phi i32 [ %i.dd, %.thread.i.i.i ], [ %i.dg, %bb.bl ]
  %i.dm = load i32, ptr @vertical_size, align 4, !tbaa !4
  %i.dn = add nsw i32 %i.dm, 15
  %i.do = sdiv i32 %i.dn, 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.dp = phi i32 [ %i.dg, %bb.bm ], [ %i.dl, %bb.bn ] ; 2 uses
  %i.dq = phi i32 [ %i.dk, %bb.bm ], [ %i.do, %bb.bn ] ; 2 uses
  store i32 %i.dq, ptr @mb_height, align 4, !tbaa !4
  %i.dr = shl nsw i32 %i.dp, 4                    ; 3 uses
  store i32 %i.dr, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.ds = shl nsw i32 %i.dq, 4                    ; 3 uses
  store i32 %i.ds, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.dt = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 3 uses
  %i.du = icmp eq i32 %i.dt, 3
  %i.dv = shl nsw i32 %i.dp, 3
  %i.dw = select i1 %i.du, i32 %i.dr, i32 %i.dv   ; 2 uses
  store i32 %i.dw, ptr @Chroma_Width, align 4, !tbaa !4
  %.not21.i.i.i = icmp eq i32 %i.dt, 1
  %i.dx = zext i1 %.not21.i.i.i to i32
  %i.dy = ashr exact i32 %i.ds, %i.dx             ; 2 uses
  store i32 %i.dy, ptr @Chroma_Height, align 4, !tbaa !4
  %i.dz = sext i32 %i.dt to i64
  %i.ea = getelementptr [4 x i8], ptr @Initialize_Sequence.Table_6_20, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  store i32 %i.ec, ptr @block_count, align 4, !tbaa !4
  %i.ed = mul nsw i32 %i.dy, %i.dw                ; 4 uses
  %i.ee = mul nsw i32 %i.ds, %i.dr
  %i.ef = load i32, ptr @Ersatz_Flag, align 4
  %.fr.i.i.i = freeze i32 %i.ef
  %.not26.i.i.i = icmp eq i32 %.fr.i.i.i, 0       ; 2 uses
  %i.eg = icmp eq i32 %.fr53.i.i.i, 2
  %i.eh = load i32, ptr @lower_layer_prediction_horizontal_size, align 4 ; 2 uses
  %i.ei = load i32, ptr @lower_layer_prediction_vertical_size, align 4 ; 2 uses
  %i.ej = mul nsw i32 %i.ei, %i.eh                ; 3 uses
  %2 = sdiv i32 %i.ej, 4                          ; 2 uses
  %i.ek = sext i32 %i.ee to i64                   ; 11 uses
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.el, ptr @backward_reference_frame, align 16, !tbaa !8
  %.not23.us.i.i.i = icmp eq ptr %i.el, null      ; 4 uses
  br i1 %i.eg, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.bo
  br i1 %.not26.i.i.i, label %.split.us.preheader.i.i.i, label %.split.us.split.preheader.i.i.i

.split.us.split.preheader.i.i.i:                  ; preds = %.split.us.i.i.i
  br i1 %.not23.us.i.i.i, label %.split33.us.i.i.i, label %18

.split.us.preheader.i.i.i:                        ; preds = %.split.us.i.i.i
  br i1 %.not23.us.i.i.i, label %.split33.us.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.split.us.preheader.i.i.i
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.em, ptr @forward_reference_frame, align 16, !tbaa !8
  %.not24.us.i.i.i.a = icmp eq ptr %i.em, null
  br i1 %.not24.us.i.i.i.a, label %.split35.us.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.en = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.en, ptr @auxframe, align 16, !tbaa !8
  %.not25.us.i.i.i.a = icmp eq ptr %i.en, null
  br i1 %.not25.us.i.i.i.a, label %.split37.us.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %3 = sext i32 %i.ej to i64                      ; 2 uses
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20 ; 2 uses
  store ptr %4, ptr @llframe0, align 16, !tbaa !8
  %.not29.us.us.i.i.i = icmp eq ptr %4, null
  br i1 %.not29.us.us.i.i.i, label %.split41.us.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eo = tail call noalias ptr @malloc(i64 noundef %3) #20 ; 2 uses
  store ptr %i.eo, ptr @llframe1, align 16, !tbaa !8
  %.not27.us.i.i.i.a = icmp eq ptr %i.eo, null
  br i1 %.not27.us.i.i.i.a, label %.split43.us.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ep = sext i32 %i.ed to i64                   ; 6 uses
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %i.eq, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !8
  %.not29.us.i.i.i.a = icmp eq ptr %i.eq, null
  br i1 %.not29.us.i.i.i.a, label %.split33.us.i.i.i, label %5

5:                                                ; preds = %bb.bt
  %6 = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %6, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !8
  %.not24.us.us.1.i.i.i = icmp eq ptr %6, null
  br i1 %.not24.us.us.1.i.i.i, label %.split35.us.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %5
  %i.er = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %i.er, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 8), align 8, !tbaa !8
  %.not30.us.i.i.i.a = icmp eq ptr %i.er, null
  br i1 %.not30.us.i.i.i.a, label %.split37.us.i.i.i, label %.split.us.1.i.i.i

.split.us.1.i.i.i:                                ; preds = %bb.bu
  %i.es = sext i32 %2 to i64                      ; 4 uses
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.es) #20 ; 2 uses
  store ptr %i.et, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 8), align 8, !tbaa !8
  %.not23.us.1.i.i.i.a = icmp eq ptr %i.et, null
  br i1 %.not23.us.1.i.i.i.a, label %.split41.us.i.i.i, label %7

7:                                                ; preds = %.split.us.1.i.i.i
  %8 = tail call noalias ptr @malloc(i64 noundef %i.es) #20 ; 2 uses
  store ptr %8, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 8), align 8, !tbaa !8
  %.not30.us.us.1.i.i.i = icmp eq ptr %8, null
  br i1 %.not30.us.us.1.i.i.i, label %.split43.us.i.i.i, label %.split.us.split.us.2.i.i.i

.split.us.split.us.2.i.i.i:                       ; preds = %7
  %9 = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %9, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 16), align 16, !tbaa !8
  %.not23.us.us.2.i.i.i = icmp eq ptr %9, null
  br i1 %.not23.us.us.2.i.i.i, label %.split33.us.i.i.i, label %10

10:                                               ; preds = %.split.us.split.us.2.i.i.i
  %11 = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %11, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 16), align 16, !tbaa !8
  %.not24.us.us.2.i.i.i = icmp eq ptr %11, null
  br i1 %.not24.us.us.2.i.i.i, label %.split35.us.i.i.i, label %12

12:                                               ; preds = %10
  %13 = tail call noalias ptr @malloc(i64 noundef %i.ep) #20 ; 2 uses
  store ptr %13, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 16), align 16, !tbaa !8
  %.not25.us.us.2.i.i.i = icmp eq ptr %13, null
  br i1 %.not25.us.us.2.i.i.i, label %.split37.us.i.i.i, label %14

14:                                               ; preds = %12
  %15 = tail call noalias ptr @malloc(i64 noundef %i.es) #20 ; 2 uses
  store ptr %15, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 16), align 16, !tbaa !8
  %.not29.us.us.2.i.i.i = icmp eq ptr %15, null
  br i1 %.not29.us.us.2.i.i.i, label %.split41.us.i.i.i, label %16

16:                                               ; preds = %14
  %17 = tail call noalias ptr @malloc(i64 noundef %i.es) #20 ; 2 uses
  store ptr %17, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 16), align 16, !tbaa !8
  %.not30.us.us.2.i.i.i = icmp eq ptr %17, null
  br i1 %.not30.us.us.2.i.i.i, label %.split43.us.i.i.i, label %.split45.us.i.i.i

18:                                               ; preds = %.split.us.split.preheader.i.i.i
  %19 = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %19, ptr @forward_reference_frame, align 16, !tbaa !8
  %.not24.us.i.i.i = icmp eq ptr %19, null
  br i1 %.not24.us.i.i.i, label %.split35.us.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %18
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.eu, ptr @auxframe, align 16, !tbaa !8
  %.not24.us.1.i.i.i.a = icmp eq ptr %i.eu, null
  br i1 %.not24.us.1.i.i.i.a, label %.split37.us.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ev = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.ev, ptr @substitute_frame, align 16, !tbaa !8
  %.not25.us.1.i.i.i.a = icmp eq ptr %i.ev, null
  br i1 %.not25.us.1.i.i.i.a, label %.split39.us.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %20 = sext i32 %i.ej to i64                     ; 2 uses
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #20 ; 2 uses
  store ptr %21, ptr @llframe0, align 16, !tbaa !8
  %.not29.us.i.i.i = icmp eq ptr %21, null
  br i1 %.not29.us.i.i.i, label %.split41.us.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ew = tail call noalias ptr @malloc(i64 noundef %20) #20 ; 2 uses
  store ptr %i.ew, ptr @llframe1, align 16, !tbaa !8
  %.not27.us.1.i.i.i.a = icmp eq ptr %i.ew, null
  br i1 %.not27.us.1.i.i.i.a, label %.split43.us.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ex = sext i32 %i.ed to i64                   ; 8 uses
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %i.ey, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !8
  %.not29.us.1.i.i.i.a = icmp eq ptr %i.ey, null
  br i1 %.not29.us.1.i.i.i.a, label %.split33.us.i.i.i, label %22

22:                                               ; preds = %bb.bz
  %23 = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %23, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !8
  %.not24.us.1.i.i.i = icmp eq ptr %23, null
  br i1 %.not24.us.1.i.i.i, label %.split35.us.i.i.i, label %24

24:                                               ; preds = %22
  %25 = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %25, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 8), align 8, !tbaa !8
  %.not25.us.1.i.i.i = icmp eq ptr %25, null
  br i1 %.not25.us.1.i.i.i, label %.split37.us.i.i.i, label %26

26:                                               ; preds = %24
  %27 = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %27, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !8
  %.not27.us.1.i.i.i = icmp eq ptr %27, null
  br i1 %.not27.us.1.i.i.i, label %.split39.us.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %26
  %28 = sext i32 %2 to i64                        ; 4 uses
  %i.ez = tail call noalias ptr @malloc(i64 noundef %28) #20 ; 2 uses
  store ptr %i.ez, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 8), align 8, !tbaa !8
  %.not30.us.1.i.i.i.a = icmp eq ptr %i.ez, null
  br i1 %.not30.us.1.i.i.i.a, label %.split41.us.i.i.i, label %.split.us.2.i.i.i

.split.us.2.i.i.i:                                ; preds = %bb.ca
  %i.fa = tail call noalias ptr @malloc(i64 noundef %28) #20 ; 2 uses
  store ptr %i.fa, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 8), align 8, !tbaa !8
  %.not23.us.2.i.i.i.a = icmp eq ptr %i.fa, null
  br i1 %.not23.us.2.i.i.i.a, label %.split43.us.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.split.us.2.i.i.i
  %i.fb = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %i.fb, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 16), align 16, !tbaa !8
  %.not24.us.2.i.i.i.a = icmp eq ptr %i.fb, null
  br i1 %.not24.us.2.i.i.i.a, label %.split33.us.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %i.fc, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 16), align 16, !tbaa !8
  %.not25.us.2.i.i.i.a = icmp eq ptr %i.fc, null
  br i1 %.not25.us.2.i.i.i.a, label %.split35.us.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %29 = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %29, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 16), align 16, !tbaa !8
  %.not25.us.2.i.i.i = icmp eq ptr %29, null
  br i1 %.not25.us.2.i.i.i, label %.split37.us.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fd = tail call noalias ptr @malloc(i64 noundef %i.ex) #20 ; 2 uses
  store ptr %i.fd, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !8
  %.not27.us.2.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not27.us.2.i.i.i, label %.split39.us.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fe = tail call noalias ptr @malloc(i64 noundef %28) #20 ; 2 uses
  store ptr %i.fe, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 16), align 16, !tbaa !8
  %.not29.us.2.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not29.us.2.i.i.i, label %.split41.us.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ff = tail call noalias ptr @malloc(i64 noundef %28) #20 ; 2 uses
  store ptr %i.ff, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 16), align 16, !tbaa !8
  %.not30.us.2.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not30.us.2.i.i.i, label %.split43.us.i.i.i, label %.split45.us.i.i.i

.split.i.i.i:                                     ; preds = %bb.bo
  br i1 %.not26.i.i.i, label %.split.split.us.preheader.i.i.i, label %.split.split.preheader.i.i.i

.split.split.preheader.i.i.i:                     ; preds = %.split.i.i.i
  br i1 %.not23.us.i.i.i, label %.split33.us.i.i.i, label %bb.cn

.split.split.us.preheader.i.i.i:                  ; preds = %.split.i.i.i
  br i1 %.not23.us.i.i.i, label %.split33.us.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.split.split.us.preheader.i.i.i
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.fg, ptr @forward_reference_frame, align 16, !tbaa !8
  %.not24.us49.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not24.us49.i.i.i, label %.split35.us.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.fh, ptr @auxframe, align 16, !tbaa !8
  %.not25.us50.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not25.us50.i.i.i, label %.split37.us.i.i.i, label %.split.split.us.1.i.i.i

.split.split.us.1.i.i.i:                          ; preds = %bb.ci
  %i.fi = sext i32 %i.ed to i64                   ; 6 uses
  %i.fj = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fj, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !8
  %.not23.us48.1.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not23.us48.1.i.i.i, label %.split33.us.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.split.split.us.1.i.i.i
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fk, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !8
  %.not24.us49.1.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not24.us49.1.i.i.i, label %.split35.us.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fl, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 8), align 8, !tbaa !8
  %.not25.us50.1.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not25.us50.1.i.i.i, label %.split37.us.i.i.i, label %.split.split.us.2.i.i.i

.split.split.us.2.i.i.i:                          ; preds = %bb.ck
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fm, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 16), align 16, !tbaa !8
  %.not23.us48.2.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not23.us48.2.i.i.i, label %.split33.us.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.split.split.us.2.i.i.i
  %i.fn = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fn, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 16), align 16, !tbaa !8
  %.not24.us49.2.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not24.us49.2.i.i.i, label %.split35.us.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fo = tail call noalias ptr @malloc(i64 noundef %i.fi) #20 ; 2 uses
  store ptr %i.fo, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 16), align 16, !tbaa !8
  %.not25.us50.2.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not25.us50.2.i.i.i, label %.split37.us.i.i.i, label %Initialize_Sequence.exit.i.i

.split33.us.i.i.i:                                ; preds = %.split.split.2.i.i.i, %.split.split.1.i.i.i, %.split.split.us.2.i.i.i, %.split.split.us.1.i.i.i, %.split.split.us.preheader.i.i.i, %.split.split.preheader.i.i.i, %bb.cb, %bb.bz, %.split.us.split.us.2.i.i.i, %bb.bt, %.split.us.preheader.i.i.i, %.split.us.split.preheader.i.i.i
  tail call void @Error(ptr noundef nonnull @.str.22)
  unreachable

bb.cn:                                            ; preds = %.split.split.preheader.i.i.i
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.fp, ptr @forward_reference_frame, align 16, !tbaa !8
  %.not24.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not24.i.i.i, label %.split35.us.i.i.i, label %bb.co

.split35.us.i.i.i:                                ; preds = %bb.ct, %bb.cq, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cc, %22, %18, %10, %5, %bb.bp
  tail call void @Error(ptr noundef nonnull @.str.23)
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.fq = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.fq, ptr @auxframe, align 16, !tbaa !8
  %.not25.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not25.i.i.i, label %.split37.us.i.i.i, label %bb.cp

.split37.us.i.i.i:                                ; preds = %bb.cu, %bb.cr, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cd, %24, %bb.bv, %12, %bb.bu, %bb.bq
  tail call void @Error(ptr noundef nonnull @.str.24)
  unreachable

bb.cp:                                            ; preds = %bb.co
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 2 uses
  store ptr %i.fr, ptr @substitute_frame, align 16, !tbaa !8
  %.not27.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not27.i.i.i, label %.split39.us.i.i.i, label %.split.split.1.i.i.i

.split39.us.i.i.i:                                ; preds = %bb.cv, %bb.cs, %bb.cp, %bb.ce, %26, %bb.bw
  tail call void @Error(ptr noundef nonnull @.str.25)
  unreachable

.split.split.1.i.i.i:                             ; preds = %bb.cp
  %i.fs = sext i32 %i.ed to i64                   ; 8 uses
  %i.ft = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !8
  %.not23.1.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not23.1.i.i.i, label %.split33.us.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.split.split.1.i.i.i
  %i.fu = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fu, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !8
  %.not24.1.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not24.1.i.i.i, label %.split35.us.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fv, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 8), align 8, !tbaa !8
  %.not25.1.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not25.1.i.i.i, label %.split37.us.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fw = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fw, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !8
  %.not27.1.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not27.1.i.i.i, label %.split39.us.i.i.i, label %.split.split.2.i.i.i

.split.split.2.i.i.i:                             ; preds = %bb.cs
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fx, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 16), align 16, !tbaa !8
  %.not23.2.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not23.2.i.i.i, label %.split33.us.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.split.split.2.i.i.i
  %i.fy = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fy, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 16), align 16, !tbaa !8
  %.not24.2.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not24.2.i.i.i, label %.split35.us.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fz = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.fz, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 16), align 16, !tbaa !8
  %.not25.2.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not25.2.i.i.i, label %.split37.us.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 2 uses
  store ptr %i.ga, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !8
  %.not27.2.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not27.2.i.i.i, label %.split39.us.i.i.i, label %Initialize_Sequence.exit.i.i

.split41.us.i.i.i:                                ; preds = %bb.cf, %bb.ca, %bb.bx, %14, %.split.us.1.i.i.i, %bb.br
  tail call void @Error(ptr noundef nonnull @.str.26)
  unreachable

.split43.us.i.i.i:                                ; preds = %bb.cg, %.split.us.2.i.i.i, %bb.by, %16, %7, %bb.bs
  tail call void @Error(ptr noundef nonnull @.str.27)
  unreachable

.split45.us.i.i.i:                                ; preds = %bb.cg, %16
  %i.gb = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !4
  %i.gc = mul nsw i32 %i.gb, %i.ei
  %i.gd = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !4
  %i.ge = sdiv i32 %i.gc, %i.gd
  %i.gf = mul nsw i32 %i.ge, %i.eh
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 1
  %i.gi = tail call noalias ptr @malloc(i64 noundef %i.gh) #20 ; 2 uses
  store ptr %i.gi, ptr @lltmp, align 8, !tbaa !25
  %.not22.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not22.i.i.i, label %bb.cw, label %Initialize_Sequence.exit.i.i

bb.cw:                                            ; preds = %.split45.us.i.i.i
  tail call void @Error(ptr noundef nonnull @.str.28)
  unreachable

Initialize_Sequence.exit.i.i:                     ; preds = %.split45.us.i.i.i, %bb.cv, %bb.cm
  tail call void @Decode_Picture(i32 noundef %.0.i, i32 noundef 0) #18
  %i.gj = load i32, ptr @Second_Field, align 4, !tbaa !4
  %.not.i2.i = icmp eq i32 %i.gj, 0
  %spec.select.i.i = zext i1 %.not.i2.i to i32    ; 2 uses
  %spec.select20.i.i = add nsw i32 %.0.i, %spec.select.i.i
  br label %bb.cx

bb.cx:                                            ; preds = %bb.db, %Initialize_Sequence.exit.i.i
  %.114.i.i = phi i32 [ %spec.select.i.i, %Initialize_Sequence.exit.i.i ], [ %.215.i.i, %bb.db ] ; 3 uses
  %.1.i.i = phi i32 [ %spec.select20.i.i, %Initialize_Sequence.exit.i.i ], [ %.2.i.i, %bb.db ] ; 4 uses
  store ptr @base, ptr @ld, align 8, !tbaa !19
  %i.gk = tail call i32 @Get_Hdr() #18            ; 2 uses
  %i.gl = load i32, ptr @Two_Streams, align 4, !tbaa !4
  %.not.i21.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i21.i.i, label %Headers.exit.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr @enhan, ptr @ld, align 8, !tbaa !19
  %i.gm = tail call i32 @Get_Hdr() #18
  %i.gn = icmp eq i32 %i.gm, %i.gk
  %i.go = load i32, ptr @Quiet_Flag, align 4
  %i.gp = icmp ne i32 %i.go, 0
  %or.cond.i22.i.i = select i1 %i.gn, i1 true, i1 %i.gp
  br i1 %or.cond.i22.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.gr = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr %i.gq) #21 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store ptr @base, ptr @ld, align 8, !tbaa !19
  br label %Headers.exit.i.i

Headers.exit.i.i:                                 ; preds = %bb.da, %bb.cx
  %.not17.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not17.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %Headers.exit.i.i
  tail call void @Decode_Picture(i32 noundef %.1.i.i, i32 noundef %.114.i.i) #18
  %i.gs = load i32, ptr @Second_Field, align 4, !tbaa !4
  %.not19.i.i = icmp eq i32 %i.gs, 0
  %i.gt = zext i1 %.not19.i.i to i32              ; 2 uses
  %.215.i.i = add nuw nsw i32 %.114.i.i, %i.gt
  %.2.i.i = add nsw i32 %.1.i.i, %i.gt
  br label %bb.cx, !llvm.loop !27

bb.dc:                                            ; preds = %Headers.exit.i.i
  %.not18.i.i = icmp eq i32 %.114.i.i, 0
  br i1 %.not18.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @Output_Last_Frame_of_Sequence(i32 noundef %.1.i.i) #18
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3144), align 8, !tbaa !24
  %i.gu = load ptr, ptr @backward_reference_frame, align 16, !tbaa !8
  tail call void @free(ptr noundef %i.gu) #18
  %i.gv = load ptr, ptr @forward_reference_frame, align 16, !tbaa !8
  tail call void @free(ptr noundef %i.gv) #18
  %i.gw = load ptr, ptr @auxframe, align 16, !tbaa !8
  tail call void @free(ptr noundef %i.gw) #18
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3148), align 4, !tbaa !28
  %i.gy = icmp eq i32 %i.gx, 2
  br i1 %i.gy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.gz = load ptr, ptr @llframe0, align 16, !tbaa !8
  tail call void @free(ptr noundef %i.gz) #18
  %i.ha = load ptr, ptr @llframe1, align 16, !tbaa !8
  tail call void @free(ptr noundef %i.ha) #18
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 8), align 8, !tbaa !8
  tail call void @free(ptr noundef %i.hb) #18
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 8), align 8, !tbaa !8
  tail call void @free(ptr noundef %i.hc) #18
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 8), align 8, !tbaa !8
  tail call void @free(ptr noundef %i.hd) #18
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3148), align 4, !tbaa !28
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 8), align 8, !tbaa !8
  tail call void @free(ptr noundef %i.hg) #18
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 8), align 8, !tbaa !8
  tail call void @free(ptr noundef %i.hh) #18
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @backward_reference_frame, i64 16), align 16, !tbaa !8
  tail call void @free(ptr noundef %i.hi) #18
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @forward_reference_frame, i64 16), align 16, !tbaa !8
  tail call void @free(ptr noundef %i.hj) #18
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxframe, i64 16), align 16, !tbaa !8
  tail call void @free(ptr noundef %i.hk) #18
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3148), align 4, !tbaa !28
  %i.hm = icmp eq i32 %i.hl, 2
  br i1 %i.hm, label %bb.dj, label %Initialize_Decoder.exit.backedge

bb.dj:                                            ; preds = %bb.di
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @llframe0, i64 16), align 16, !tbaa !8
  tail call void @free(ptr noundef %i.hn) #18
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @llframe1, i64 16), align 16, !tbaa !8
  tail call void @free(ptr noundef %i.ho) #18
  %.pre.i24.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3148), align 4, !tbaa !28
  %i.hp = icmp eq i32 %.pre.i24.i.i, 2
  br i1 %i.hp, label %bb.dk, label %Initialize_Decoder.exit.backedge

bb.dk:                                            ; preds = %bb.dj
  %i.hq = load ptr, ptr @lltmp, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.hq) #18
  br label %Initialize_Decoder.exit.backedge

Initialize_Decoder.exit.backedge:                 ; preds = %bb.dk, %bb.dj, %bb.di
  br label %Initialize_Decoder.exit

Decode_Bitstream.exit:                            ; preds = %Headers.exit.i
  %i.hr = load i32, ptr @base, align 8, !tbaa !21
  %i.hs = tail call i32 @close(i32 noundef %i.hr) #18 ; 0 uses
  %i.ht = load i32, ptr @Two_Streams, align 4, !tbaa !4
  %.not5 = icmp eq i32 %i.ht, 0
  br i1 %.not5, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %Decode_Bitstream.exit
  %i.hu = load i32, ptr @enhan, align 8, !tbaa !21
  %i.hv = tail call i32 @close(i32 noundef %i.hu) #18 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %Decode_Bitstream.exit
  ret i32 0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare void @Initialize_Buffer() local_unnamed_addr #4

declare i32 @Show_Bits(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @Error(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef %0) #19 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

declare void @next_start_code() local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @Print_Bits(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.b = xor i32 %.06, -1
  %i.c = add i32 %1, %i.b
  %i.d = lshr i32 %0, %i.c
  %i.e = and i32 %i.d, 1
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.e) ; 0 uses
  %i.g = add nuw nsw i32 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, %2
end_hunk_0
