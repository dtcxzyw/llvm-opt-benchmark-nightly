inline.NumInlined: 32
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external local_unnamed_addr global ptr, align 8
@start_frame_no_in_this_IGOP = external local_unnamed_addr global i32, align 4
@enc_picture = external local_unnamed_addr global ptr, align 8
@decs = external local_unnamed_addr global ptr, align 8
@enc_frame_picture = external local_unnamed_addr global ptr, align 8
@input = external local_unnamed_addr global ptr, align 8
@color_formats = common dso_local local_unnamed_addr global i32 0, align 4
@top_pic = common dso_local local_unnamed_addr global ptr null, align 8
@bottom_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_1 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_2 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_3 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_si = common dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_sub_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@PicPos = common dso_local local_unnamed_addr global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@me_tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@me_time = common dso_local local_unnamed_addr global i64 0, align 8
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_com = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_com = common dso_local local_unnamed_addr global ptr null, align 8
@direct_ref_idx = common dso_local local_unnamed_addr global ptr null, align 8
@direct_pdir = common dso_local local_unnamed_addr global ptr null, align 8
@pixel_map = common dso_local local_unnamed_addr global ptr null, align 8
@refresh_map = common dso_local local_unnamed_addr global ptr null, align 8
@intras = common dso_local local_unnamed_addr global i32 0, align 4
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@rddata_top_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad = common dso_local local_unnamed_addr global i32 0, align 4
@width_pad = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4
@width_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @decode_one_b8block(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [4 x [4 x i32]]], align 16   ; 13 uses
  %i.b = alloca [16 x [16 x i32]], align 16       ; 16 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !8    ; 10 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %i.e = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29
  %i.j = srem i32 %i.g, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = srem i32 %2, 2                           ; 2 uses
  %i.l = shl nsw i32 %i.k, 3                      ; 5 uses
  %i.m = add nsw i32 %i.l, 8                      ; 3 uses
  %i.n = shl nsw i32 %i.k, 1                      ; 5 uses
  %i.o = sdiv i32 %2, 2                           ; 5 uses
  %i.p = shl i32 %i.o, 3                          ; 6 uses
  %i.q = add nsw i32 %i.p, 8                      ; 4 uses
  %i.r = ashr exact i32 %i.p, 2
  %i.s = add nsw i32 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30   ; 3 uses
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %.preheader164, label %bb.d

.preheader164:                                    ; preds = %bb.a
  %i.w = load ptr, ptr @enc_picture, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6440
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr @decs, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = sext i32 %0 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 8 uses
  %i.aj = sext i32 %i.p to i64                    ; 8 uses
  %i.ak = sext i32 %i.aa to i64                   ; 8 uses
  %i.al = sext i32 %i.q to i64
  %i.am = sext i32 %i.l to i64
  %i.an = sext i32 %i.ac to i64
  %wide.trip.count272 = zext nneg i32 %i.m to i64
  %i.ao = add nsw i64 %i.ak, %i.aj                ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ao
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  %indvars.iv.next267 = or disjoint i64 %i.aj, 1  ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next267, %i.al
  %i.au = add nsw i64 %indvars.iv.next267, %i.ak  ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.au
  %indvars.iv.next267.1 = or disjoint i64 %i.aj, 2
  %i.ax = add nsw i64 %indvars.iv.next267.1, %i.ak ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ax
  %indvars.iv.next267.2 = or disjoint i64 %i.aj, 3
  %i.ba = add nsw i64 %indvars.iv.next267.2, %i.ak ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ba
  %indvars.iv.next267.3 = or disjoint i64 %i.aj, 4
  %i.bd = add nsw i64 %indvars.iv.next267.3, %i.ak ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bd
  %indvars.iv.next267.4 = or disjoint i64 %i.aj, 5
  %i.bg = add nsw i64 %indvars.iv.next267.4, %i.ak ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bg
  %indvars.iv.next267.5 = or disjoint i64 %i.aj, 6
  %i.bj = add nsw i64 %indvars.iv.next267.5, %i.ak ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bj
  %indvars.iv.next267.6 = or disjoint i64 %i.aj, 7
  %i.bm = add nsw i64 %indvars.iv.next267.6, %i.ak ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bm
  br label %.preheader

.preheader:                                       ; preds = %.preheader164, %bb.c
  %indvars.iv269 = phi i64 [ %i.am, %.preheader164 ], [ %indvars.iv.next270, %bb.c ] ; 2 uses
  %i.bp = add nsw i64 %indvars.iv269, %i.an       ; 16 uses
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !50
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.bp
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !50
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !48
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.bp
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !50
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !48
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.bp
  store i16 %i.bv, ptr %i.bx, align 2, !tbaa !50
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bp
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !50
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.bp
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !50
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.bp
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !50
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.bp
  store i16 %i.cf, ptr %i.ch, align 2, !tbaa !50
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.bp
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !50
  %i.cl = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.bp
  store i16 %i.ck, ptr %i.cm, align 2, !tbaa !50
  %i.cn = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.co = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.bp
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !50
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.bp
  store i16 %i.cp, ptr %i.cr, align 2, !tbaa !50
  %i.cs = load ptr, ptr %i.bk, align 8, !tbaa !48
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.bp
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !50
  %i.cv = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.bp
  store i16 %i.cu, ptr %i.cw, align 2, !tbaa !50
  %i.cx = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.bp
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !50
  %i.da = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.db = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.bp
  store i16 %i.cz, ptr %i.db, align 2, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %.loopexit, label %.preheader, !llvm.loop !51

bb.d:                                             ; preds = %bb.a
  %i.dc = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %i.dc, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i32 %i.u, label %bb.h [
    i32 0, label %.preheader181
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 15360
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !53
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader181, label %bb.h

.preheader181:                                    ; preds = %bb.e, %bb.f
  %i.dg = sext i32 %i.p to i64                    ; 22 uses
  %i.dh = sext i32 %i.q to i64
  %i.di = sext i32 %i.l to i64                    ; 9 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.di ; 8 uses
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  store i32 0, ptr %gep, align 16, !tbaa !4
  %indvars.iv.next = or disjoint i64 %i.dg, 1     ; 3 uses
  %i.dj = icmp slt i64 %indvars.iv.next, %i.dh
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %i.di ; 2 uses
  br i1 %i.dj, label %bb.g, label %.preheader181.7

.preheader181.7:                                  ; preds = %.preheader181
  %i.dl = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.1 = getelementptr i8, ptr %i.dl, i64 4
  %gep.1211 = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.dg
  store <4 x i32> zeroinitializer, ptr %gep.1211, align 4, !tbaa !4
  %i.dm = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.5 = getelementptr i8, ptr %i.dm, i64 20
  %gep.5219 = getelementptr [64 x i8], ptr %invariant.gep.5, i64 %i.dg
  store i32 0, ptr %gep.5219, align 4, !tbaa !4
  %invariant.gep.6 = getelementptr i8, ptr %i.dk, i64 24
  %gep.6221 = getelementptr [64 x i8], ptr %invariant.gep.6, i64 %i.dg
  store i32 0, ptr %gep.6221, align 8, !tbaa !4
  %i.dn = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.7 = getelementptr i8, ptr %i.dn, i64 28
  %gep.7223 = getelementptr [64 x i8], ptr %invariant.gep.7, i64 %i.dg
  store i32 0, ptr %gep.7223, align 4, !tbaa !4
  br label %.loopexit171.thread

bb.g:                                             ; preds = %.preheader181
  %gep.1 = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.do = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.2 = getelementptr i8, ptr %i.do, i64 128
  %i.dp = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.3 = getelementptr i8, ptr %i.dp, i64 192
  %i.dq = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.4 = getelementptr i8, ptr %i.dq, i64 256
  %i.dr = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.5 = getelementptr i8, ptr %i.dr, i64 320
  %i.ds = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.6 = getelementptr i8, ptr %i.ds, i64 384
  %i.dt = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.dg
  %gep.7 = getelementptr i8, ptr %i.dt, i64 448
  %invariant.gep.1281 = getelementptr i8, ptr %i.dk, i64 4
  %gep.1211282 = getelementptr [64 x i8], ptr %invariant.gep.1281, i64 %i.dg
  store <4 x i32> zeroinitializer, ptr %gep.1, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.2, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.3, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.5, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.6, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.7, align 16, !tbaa !4
  %i.du = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.4290 = getelementptr i8, ptr %i.du, i64 16 ; 7 uses
  store <4 x i32> zeroinitializer, ptr %gep.1211282, align 4, !tbaa !4
  %gep.1.4 = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %indvars.iv.next
  %i.dv = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.2.4 = getelementptr i8, ptr %i.dv, i64 128
  %i.dw = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.3.4 = getelementptr i8, ptr %i.dw, i64 192
  %i.dx = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.4.4 = getelementptr i8, ptr %i.dx, i64 256
  %i.dy = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.5.4 = getelementptr i8, ptr %i.dy, i64 320
  %i.dz = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.6.4 = getelementptr i8, ptr %i.dz, i64 384
  %i.ea = getelementptr [64 x i8], ptr %invariant.gep.4290, i64 %i.dg
  %gep.7.4 = getelementptr i8, ptr %i.ea, i64 448
  %i.eb = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.5293 = getelementptr i8, ptr %i.eb, i64 20
  %gep.5219294 = getelementptr [64 x i8], ptr %invariant.gep.5293, i64 %i.dg
  store i32 0, ptr %gep.5219294, align 4, !tbaa !4
  %i.ec = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.6296 = getelementptr i8, ptr %i.ec, i64 24
  %gep.6221297 = getelementptr [64 x i8], ptr %invariant.gep.6296, i64 %i.dg
  store i32 0, ptr %gep.6221297, align 8, !tbaa !4
  %i.ed = getelementptr [4 x i8], ptr %i.b, i64 %i.di
  %invariant.gep.7299 = getelementptr i8, ptr %i.ed, i64 28
  %gep.7223300 = getelementptr [64 x i8], ptr %invariant.gep.7299, i64 %i.dg
  store i32 0, ptr %gep.7223300, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.1.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.2.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.3.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.4.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.5.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.6.4, align 16, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %gep.7.4, align 16, !tbaa !4
  br label %.loopexit171.thread

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ee = add i32 %3, -1                          ; 2 uses
  %or.cond = icmp ult i32 %i.ee, 7
  br i1 %or.cond, label %.preheader173, label %.preheader176

.preheader176:                                    ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.eg = sext i32 %i.n to i64                    ; 5 uses
  %i.eh = trunc i32 %i.o to i30
  %i.ei = shl i30 %i.eh, 1
  %i.ej = sext i30 %i.ei to i64                   ; 3 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.eg
  store i32 0, ptr %i.em, align 8, !tbaa !4
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eg
  store i32 0, ptr %i.en, align 8, !tbaa !4
  %indvars.iv.next228 = or disjoint i64 %i.eg, 1  ; 4 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %indvars.iv.next228
  store i32 0, ptr %i.eo, align 4, !tbaa !4
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv.next228
  store i32 0, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next230 = or disjoint i64 %i.ej, 1  ; 2 uses
  %i.eq = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %indvars.iv.next230 ; 2 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.next230 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.eg
  store i32 0, ptr %i.es, align 8, !tbaa !4
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.eg
  store i32 0, ptr %i.et, align 8, !tbaa !4
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv.next228
  store i32 0, ptr %i.eu, align 4, !tbaa !4
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv.next228
  store i32 0, ptr %i.ev, align 4, !tbaa !4
  br label %.loopexit174

.preheader173:                                    ; preds = %bb.h
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 14384
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54 ; 2 uses
  %i.ey = sext i32 %4 to i64                      ; 4 uses
  %i.ez = zext nneg i32 %3 to i64                 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.fb = sext i32 %i.n to i64                    ; 7 uses
  %i.fc = trunc i32 %i.o to i30
  %i.fd = shl i30 %i.fc, 1
  %i.fe = sext i30 %i.fd to i64                   ; 4 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !55 ; 2 uses
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.fe ; 2 uses
  %i.fi = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.fe ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fb
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !57
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ey
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !47
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ez
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !48 ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !50
  %i.fr = sext i16 %i.fq to i32
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fb
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !50
  %i.fv = sext i16 %i.fu to i32
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fb
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !4
  %indvars.iv.next232 = or disjoint i64 %i.fb, 1  ; 6 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv.next232
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !57
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ey
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !47
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ez
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !48 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !50
  %i.gf = sext i16 %i.ge to i32
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %indvars.iv.next232
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !50
  %i.gj = sext i16 %i.gi to i32
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %indvars.iv.next232
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !4
  %indvars.iv.next234 = or disjoint i64 %i.fe, 1  ; 3 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv.next234
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !55 ; 2 uses
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.next234 ; 2 uses
  %i.go = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %indvars.iv.next234 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.fb
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !57
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.ey
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !47
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ez
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !48 ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !50
  %i.gx = sext i16 %i.gw to i32
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.fb
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !50
  %i.hb = sext i16 %i.ha to i32
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.fb
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !4
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %indvars.iv.next232
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !57
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.ey
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !47
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.ez
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !48 ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !50
  %i.hl = sext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %indvars.iv.next232
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !50
  %i.hp = sext i16 %i.ho to i32
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %indvars.iv.next232
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !4
  br label %.loopexit174

.loopexit174:                                     ; preds = %.preheader176, %.preheader173
  %i.hr = load ptr, ptr @decs, align 8, !tbaa !8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !58 ; 8 uses
  %i.ht = sext i32 %i.p to i64                    ; 9 uses
  %i.hu = sext i32 %i.q to i64
  %i.hv = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.m to i64
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ht
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !59
  %indvars.iv.next236 = or disjoint i64 %i.ht, 1  ; 3 uses
  %i.hw = icmp slt i64 %indvars.iv.next236, %i.hu
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236
  %indvars.iv.next236.1 = or disjoint i64 %i.ht, 2 ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.1
  %indvars.iv.next236.2 = or disjoint i64 %i.ht, 3 ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.2
  %indvars.iv.next236.3 = or disjoint i64 %i.ht, 4 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.3
  %indvars.iv.next236.4 = or disjoint i64 %i.ht, 5 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.4
  %indvars.iv.next236.5 = or disjoint i64 %i.ht, 6 ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.5
  %indvars.iv.next236.6 = or disjoint i64 %i.ht, 7 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %indvars.iv.next236.6
  br label %.preheader170

.preheader170:                                    ; preds = %.loopexit174, %bb.j
  %indvars.iv = phi i64 [ %i.hv, %.loopexit174 ], [ %indvars.iv.next238, %bb.j ] ; 10 uses
  %invariant.gep190 = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv ; 8 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  %gep191 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %i.ht
  store i32 %i.if, ptr %gep191, align 4, !tbaa !4
  br i1 %i.hw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader170
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !59
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %gep191.1 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236
  store i32 %i.ii, ptr %gep191.1, align 4, !tbaa !4
  %i.ij = load ptr, ptr %i.hy, align 8, !tbaa !59
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4
  %gep191.2 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.1
  store i32 %i.il, ptr %gep191.2, align 4, !tbaa !4
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !59
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %indvars.iv
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %gep191.3 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.2
  store i32 %i.io, ptr %gep191.3, align 4, !tbaa !4
  %i.ip = load ptr, ptr %i.ia, align 8, !tbaa !59
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %gep191.4 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.3
  store i32 %i.ir, ptr %gep191.4, align 4, !tbaa !4
  %i.is = load ptr, ptr %i.ib, align 8, !tbaa !59
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %indvars.iv
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %gep191.5 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.4
  store i32 %i.iu, ptr %gep191.5, align 4, !tbaa !4
  %i.iv = load ptr, ptr %i.ic, align 8, !tbaa !59
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %gep191.6 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.5
  store i32 %i.ix, ptr %gep191.6, align 4, !tbaa !4
  %i.iy = load ptr, ptr %i.id, align 8, !tbaa !59
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %indvars.iv
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %gep191.7 = getelementptr [64 x i8], ptr %invariant.gep190, i64 %indvars.iv.next236.6
  store i32 %i.ja, ptr %gep191.7, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader170
  %indvars.iv.next238 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit171, label %.preheader170, !llvm.loop !60

.loopexit171:                                     ; preds = %bb.j
  %or.cond3 = icmp ult i32 %i.ee, 7
  br i1 %or.cond3, label %bb.m, label %bb.k

.loopexit171.thread:                              ; preds = %bb.g, %.preheader181.7
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jc = sext i32 %i.n to i64                    ; 5 uses
  %i.jd = trunc i32 %i.o to i30
  %i.je = shl i30 %i.jd, 1
  %i.jf = sext i30 %i.je to i64                   ; 3 uses
  %i.jg = getelementptr inbounds [16 x i8], ptr %i.jb, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.jf ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jc
  store i32 0, ptr %i.ji, align 8, !tbaa !4
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jc
  store i32 0, ptr %i.jj, align 8, !tbaa !4
  %indvars.iv.next224 = or disjoint i64 %i.jc, 1  ; 4 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %indvars.iv.next224
  store i32 0, ptr %i.jk, align 4, !tbaa !4
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %indvars.iv.next224
  store i32 0, ptr %i.jl, align 4, !tbaa !4
  %indvars.iv.next226 = or disjoint i64 %i.jf, 1  ; 2 uses
  %i.jm = getelementptr inbounds [16 x i8], ptr %i.jb, i64 %indvars.iv.next226 ; 2 uses
  %i.jn = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.next226 ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jc
  store i32 0, ptr %i.jo, align 8, !tbaa !4
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jc
  store i32 0, ptr %i.jp, align 8, !tbaa !4
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %indvars.iv.next224
  store i32 0, ptr %i.jq, align 4, !tbaa !4
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %indvars.iv.next224
  store i32 0, ptr %i.jr, align 4, !tbaa !4
  %.pre274 = add i32 %3, -1
  %or.cond3303 = icmp ult i32 %.pre274, 7
  br i1 %or.cond3303, label %bb.m, label %.thread

bb.k:                                             ; preds = %.loopexit171
  br i1 %i.dc, label %.thread, label %bb.r

.thread:                                          ; preds = %.loopexit171.thread, %bb.k
  switch i32 %i.u, label %bb.r [
    i32 0, label %bb.m
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %.thread
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 15360
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !53
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.loopexit171.thread, %.thread, %.loopexit171, %bb.l
  %i.jv = sext i32 %0 to i64                      ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.jx = sext i32 %i.n to i64                    ; 4 uses
  %i.jy = trunc i32 %i.o to i30
  %i.jz = shl i30 %i.jy, 1
  %i.ka = sext i30 %i.jz to i64
  %wide.trip.count264 = sext i32 %i.s to i64
  %i.kb = shl nsw i64 %i.jx, 2                    ; 7 uses
  %i.kc = or disjoint i64 %i.kb, 1                ; 4 uses
  %i.kd = or disjoint i64 %i.kb, 2                ; 4 uses
  %i.ke = or disjoint i64 %i.kb, 3                ; 4 uses
  %indvars.iv.next257 = or disjoint i64 %i.jx, 1  ; 4 uses
  %i.kf = trunc nsw i64 %indvars.iv.next257 to i32
  %i.kg = shl nsw i64 %indvars.iv.next257, 2      ; 7 uses
  %i.kh = or disjoint i64 %i.kg, 1                ; 4 uses
  %i.ki = or disjoint i64 %i.kg, 2                ; 4 uses
  %i.kj = or disjoint i64 %i.kg, 3                ; 4 uses
  br label %.preheader166

.preheader166:                                    ; preds = %bb.m, %.preheader165.1
  %indvars.iv261 = phi i64 [ %i.ka, %bb.m ], [ %indvars.iv.next262, %.preheader165.1 ] ; 5 uses
  %.0156200 = phi i32 [ %i.j, %bb.m ], [ %.2158.1, %.preheader165.1 ] ; 2 uses
  %i.kk = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv261 ; 2 uses
  %i.kl = getelementptr inbounds [16 x i8], ptr %i.jw, i64 %indvars.iv261 ; 2 uses
  %i.km = shl nsw i64 %indvars.iv261, 2           ; 4 uses
  %i.kn = getelementptr [64 x i8], ptr %i.b, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 192    ; 8 uses
  %i.kp = trunc nsw i64 %indvars.iv261 to i32     ; 2 uses
  %i.kq = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.km ; 8 uses
  %i.kr = getelementptr [64 x i8], ptr %i.b, i64 %i.km
  %i.ks = getelementptr i8, ptr %i.kr, i64 64     ; 8 uses
  %i.kt = getelementptr [64 x i8], ptr %i.b, i64 %i.km
  %i.ku = getelementptr i8, ptr %i.kt, i64 128    ; 8 uses
  %i.kv = load ptr, ptr @img, align 8, !tbaa !8   ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 168
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !61
  %i.ky = add nsw i32 %i.kx, %i.n                 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 172
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !62
  %i.lb = add nsw i32 %i.la, %i.kp                ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !30
  %i.le = icmp eq i32 %i.ld, 1
  br i1 %i.le, label %bb.n, label %.preheader165

bb.n:                                             ; preds = %.preheader166
  %i.lf = load ptr, ptr @enc_picture, align 8, !tbaa !31
  %i.lg = load ptr, ptr @enc_frame_picture, align 8, !tbaa !31
  %.not = icmp eq ptr %i.lf, %i.lg
  br i1 %.not, label %.preheader165, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lh = load i32, ptr %i.kv, align 8, !tbaa !10
  %i.li = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.lj = add i32 %i.lh, -2
  %i.lk = add i32 %4, %i.li
  %i.ll = sub i32 %i.lj, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !29
  %i.lo = srem i32 %i.ll, %i.ln
  br label %.preheader165

.preheader165:                                    ; preds = %bb.o, %bb.n, %.preheader166
  %.2158 = phi i32 [ %i.lo, %bb.o ], [ %.0156200, %bb.n ], [ %.0156200, %.preheader166 ] ; 3 uses
  %i.lp = load ptr, ptr @decs, align 8, !tbaa !8  ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !63
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.jv
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !57
  %i.lu = sext i32 %.2158 to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !47
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.jx
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !4
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.jx
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
end_hunk_0
begin_hunk_1_@Build_Status_Map:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4720
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90
  %i.ad = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.v, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv nnan <2 x double> %i.af, splat (double f0x41DFFFFFFFC00000)
  %i.ah = fmul nnan <2 x double> %i.ag, splat (double 1.000000e+02)
  %i.ai = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.y, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = fcmp olt <2 x double> %i.ah, %i.ak      ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 1
  %.2 = select i1 %i.am, i32 3, i32 0             ; 2 uses
  %i.an = add nuw nsw i32 %.2, 2
  %i.ao = extractelement <2 x i1> %i.al, i64 0
  %.3 = select i1 %i.ao, i32 %i.an, i32 %.2
  %i.ap = tail call i32 @rand() #7
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = fdiv nnan double %i.aq, f0x41DFFFFFFFC00000
  %i.as = fmul nnan double %i.ar, 1.000000e+02
  %i.at = load ptr, ptr @input, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4716
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fcmp olt double %i.as, %i.aw
  %i.ay = add nsw i32 %.12738, 1                  ; 2 uses
  br i1 %i.ax, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.228 = phi i32 [ %i.ay, %bb.d ], [ %.12738, %bb.c ] ; 2 uses
  %.5 = phi i32 [ %.3, %bb.d ], [ %.141, %bb.c ]  ; 2 uses
  %.not30 = icmp eq i32 %.5, 0
  br i1 %.not30, label %.sink.split, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.536 = phi i32 [ %.5, %bb.e ], [ 1, %bb.d ]    ; 3 uses
  %.22835 = phi i32 [ %.228, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %i.az = trunc nuw nsw i32 %.536 to i8
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !73
  %i.bc = load ptr, ptr @input, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4016
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !92
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.thread, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %.thread ]
  %.537.ph = phi i32 [ 0, %bb.e ], [ %.536, %.thread ]
  %.22834.ph = phi i32 [ %.228, %bb.e ], [ %.22835, %.thread ]
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.thread
  %.537 = phi i32 [ %.536, %.thread ], [ %.537.ph, %.sink.split ] ; 2 uses
  %.22834 = phi i32 [ %.22835, %.thread ], [ %.22834.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.f
  %i.bi = add nuw nsw i64 %i.l, %.02445
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge48.split, label %.preheader, !llvm.loop !94

._crit_edge48.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Error_Concealment(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.f = icmp sgt i32 %i.c, 15
  %i.g = icmp sgt i32 %i.e, 15
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.h = lshr i32 %i.e, 4
  %i.i = lshr i32 %i.c, 4
  %wide.trip.count21 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.k = trunc nuw nsw i64 %indvars.iv18 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !73
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @Conceal_Error(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.o, ptr noundef %2, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %.preheader, !llvm.loop !82

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @DecOneForthPix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !10
  %i.f = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 15240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83
  %i.j = srem i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %i.a, %.lr.ph ], [ %i.w, %bb.b ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.p, ptr align 2 %i.r, i64 %i.v, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !75
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @compute_residue_b8block(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %0, 2
  %i.b = shl nsw i32 %i.a, 3                      ; 3 uses
  %i.c = add nsw i32 %i.b, 8                      ; 2 uses
  %i.d = sdiv i32 %0, 2
  %i.e = shl i32 %i.d, 3                          ; 3 uses
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = icmp sgt i32 %1, -1
  %i.h = load ptr, ptr @enc_picture, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 16 uses
  %i.k = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 180 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 16 uses
  br i1 %i.g, label %.preheader37, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12624
  %i.o = load ptr, ptr @decs, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 8 uses
  %i.q = sext i32 %i.e to i64                     ; 10 uses
  %i.r = sext i32 %i.f to i64
  %i.s = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  %invariant.gep60 = getelementptr [8 x i8], ptr %i.j, i64 %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %indvars.iv.next = or disjoint i64 %i.q, 1      ; 4 uses
  %i.v = icmp slt i64 %indvars.iv.next, %i.r
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %indvars.iv.next.1 = or disjoint i64 %i.q, 2    ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %indvars.iv.next.2 = or disjoint i64 %i.q, 3    ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %indvars.iv.next.3 = or disjoint i64 %i.q, 4    ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.3
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.3
  %indvars.iv.next.4 = or disjoint i64 %i.q, 5    ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.4
  %i.af = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.4
  %indvars.iv.next.5 = or disjoint i64 %i.q, 6    ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.5
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.5
  %indvars.iv.next.6 = or disjoint i64 %i.q, 7    ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next.6
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.6
  br label %.preheader38

.preheader37:                                     ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4816
  %i.al = zext nneg i32 %1 to i64
  %i.am = getelementptr inbounds nuw [512 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr @decs, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 8 uses
  %i.ap = sext i32 %i.e to i64                    ; 10 uses
  %i.aq = sext i32 %i.f to i64
  %i.ar = sext i32 %i.b to i64
  %wide.trip.count57 = zext nneg i32 %i.c to i64
  %invariant.gep62 = getelementptr [8 x i8], ptr %i.j, i64 %i.ap
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %indvars.iv.next52 = or disjoint i64 %i.ap, 1   ; 4 uses
  %i.au = icmp slt i64 %indvars.iv.next52, %i.aq
  %i.av = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52
  %indvars.iv.next52.1 = or disjoint i64 %i.ap, 2 ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.1
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.1
  %indvars.iv.next52.2 = or disjoint i64 %i.ap, 3 ; 3 uses
  %i.az = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.2
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.2
  %indvars.iv.next52.3 = or disjoint i64 %i.ap, 4 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.3
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.3
  %indvars.iv.next52.4 = or disjoint i64 %i.ap, 5 ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.4
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.4
  %indvars.iv.next52.5 = or disjoint i64 %i.ap, 6 ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.5
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.5
  %indvars.iv.next52.6 = or disjoint i64 %i.ap, 7 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next52.6
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next52.6
  br label %.preheader

.preheader:                                       ; preds = %.preheader37, %bb.c
  %indvars.iv54 = phi i64 [ %i.ar, %.preheader37 ], [ %indvars.iv.next55, %bb.c ] ; 18 uses
  %invariant.gep43 = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv54 ; 8 uses
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !42
  %i.bk = sext i32 %i.bj to i64
  %gep63 = getelementptr [8 x i8], ptr %invariant.gep62, i64 %i.bk
  %i.bl = load ptr, ptr %gep63, align 8, !tbaa !48
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !43
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [2 x i8], ptr %i.bl, i64 %indvars.iv54
  %i.bp = getelementptr [2 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !50
  %i.br = zext i16 %i.bq to i32
  %gep44 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %i.ap
  %i.bs = load i16, ptr %gep44, align 2, !tbaa !50
  %i.bt = zext i16 %i.bs to i32
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv54
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.bw = load i32, ptr %i.l, align 4, !tbaa !42
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.av, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !43
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [2 x i8], ptr %i.bz, i64 %indvars.iv54
  %i.cd = getelementptr [2 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !50
  %i.cf = zext i16 %i.ce to i32
  %gep44.1 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52
  %i.cg = load i16, ptr %gep44.1, align 2, !tbaa !50
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = load ptr, ptr %i.aw, align 8, !tbaa !59
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv54
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !4
  %i.cl = load i32, ptr %i.l, align 4, !tbaa !42
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %i.ax, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.cp = load i32, ptr %i.m, align 8, !tbaa !43
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [2 x i8], ptr %i.co, i64 %indvars.iv54
  %i.cs = getelementptr [2 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !50
  %i.cu = zext i16 %i.ct to i32
  %gep44.2 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.1
  %i.cv = load i16, ptr %gep44.2, align 2, !tbaa !50
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv54
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !4
  %i.da = load i32, ptr %i.l, align 4, !tbaa !42
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.az, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !48
  %i.de = load i32, ptr %i.m, align 8, !tbaa !43
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.dd, i64 %indvars.iv54
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !50
  %i.dj = zext i16 %i.di to i32
  %gep44.3 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.2
  %i.dk = load i16, ptr %gep44.3, align 2, !tbaa !50
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.dj, %i.dl
  %i.dn = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %indvars.iv54
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !4
  %i.dp = load i32, ptr %i.l, align 4, !tbaa !42
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %i.bb, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.dt = load i32, ptr %i.m, align 8, !tbaa !43
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr [2 x i8], ptr %i.ds, i64 %indvars.iv54
  %i.dw = getelementptr [2 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !50
  %i.dy = zext i16 %i.dx to i32
  %gep44.4 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.3
  %i.dz = load i16, ptr %gep44.4, align 2, !tbaa !50
  %i.ea = zext i16 %i.dz to i32
  %i.eb = sub nsw i32 %i.dy, %i.ea
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !59
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv54
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !4
  %i.ee = load i32, ptr %i.l, align 4, !tbaa !42
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [8 x i8], ptr %i.bd, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !48
  %i.ei = load i32, ptr %i.m, align 8, !tbaa !43
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [2 x i8], ptr %i.eh, i64 %indvars.iv54
  %i.el = getelementptr [2 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i16, ptr %i.el, align 2, !tbaa !50
  %i.en = zext i16 %i.em to i32
  %gep44.5 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.4
  %i.eo = load i16, ptr %gep44.5, align 2, !tbaa !50
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.en, %i.ep
  %i.er = load ptr, ptr %i.be, align 8, !tbaa !59
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv54
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !4
  %i.et = load i32, ptr %i.l, align 4, !tbaa !42
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [8 x i8], ptr %i.bf, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !48
  %i.ex = load i32, ptr %i.m, align 8, !tbaa !43
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [2 x i8], ptr %i.ew, i64 %indvars.iv54
  %i.fa = getelementptr [2 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !50
  %i.fc = zext i16 %i.fb to i32
  %gep44.6 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.5
  %i.fd = load i16, ptr %gep44.6, align 2, !tbaa !50
  %i.fe = zext i16 %i.fd to i32
  %i.ff = sub nsw i32 %i.fc, %i.fe
  %i.fg = load ptr, ptr %i.bg, align 8, !tbaa !59
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv54
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !4
  %i.fi = load i32, ptr %i.l, align 4, !tbaa !42
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr [8 x i8], ptr %i.bh, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !48
  %i.fm = load i32, ptr %i.m, align 8, !tbaa !43
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr [2 x i8], ptr %i.fl, i64 %indvars.iv54
  %i.fp = getelementptr [2 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !50
  %i.fr = zext i16 %i.fq to i32
  %gep44.7 = getelementptr [32 x i8], ptr %invariant.gep43, i64 %indvars.iv.next52.6
  %i.fs = load i16, ptr %gep44.7, align 2, !tbaa !50
  %i.ft = zext i16 %i.fs to i32
  %i.fu = sub nsw i32 %i.fr, %i.ft
  %i.fv = load ptr, ptr %i.bi, align 8, !tbaa !59
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %indvars.iv54
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.loopexit, label %.preheader, !llvm.loop !95

.preheader38:                                     ; preds = %.preheader39, %bb.e
  %indvars.iv = phi i64 [ %i.s, %.preheader39 ], [ %indvars.iv.next49, %bb.e ] ; 18 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.n, i64 %indvars.iv ; 8 uses
  %i.fx = load i32, ptr %i.l, align 4, !tbaa !42
  %i.fy = sext i32 %i.fx to i64
  %gep61 = getelementptr [8 x i8], ptr %invariant.gep60, i64 %i.fy
  %i.fz = load ptr, ptr %gep61, align 8, !tbaa !48
  %i.ga = load i32, ptr %i.m, align 8, !tbaa !43
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [2 x i8], ptr %i.fz, i64 %indvars.iv
  %i.gd = getelementptr [2 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !50
  %i.gf = zext i16 %i.ge to i32
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.q
  %i.gg = load i16, ptr %gep, align 2, !tbaa !50
  %i.gh = zext i16 %i.gg to i32
  %i.gi = sub nsw i32 %i.gf, %i.gh
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !4
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader38
  %i.gk = load i32, ptr %i.l, align 4, !tbaa !42
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr [8 x i8], ptr %i.w, i64 %i.gl
end_hunk_1
