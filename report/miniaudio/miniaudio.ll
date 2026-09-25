Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_flac_read_pcm_frames_s16:bb.a

.lr.ph203.preheader538:                           ; preds = %.lr.ph203.preheader, %middle.block371
  %.1.i111201.ph = phi i64 [ %i.akc, %.lr.ph203.preheader ], [ %i.akh, %middle.block371 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader538, %.lr.ph203
  %.1.i111201 = phi i64 [ %i.ale, %.lr.ph203 ], [ %.1.i111201.ph, %.lr.ph203.preheader538 ] ; 4 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i111201
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !118
  %i.aku = shl i32 %i.akt, %i.ahy
  %i.akv = lshr i32 %i.aku, 16
  %i.akw = trunc nuw i32 %i.akv to i16
  %.idx128 = shl nuw nsw i64 %.1.i111201, 2
  %i.akx = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx128 ; 2 uses
  store i16 %i.akw, ptr %i.akx, align 2, !tbaa !122
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i111201
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !118
  %i.ala = shl i32 %i.akz, %i.aia
  %i.alb = lshr i32 %i.ala, 16
  %i.alc = trunc nuw i32 %i.alb to i16
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akx, i64 2
  store i16 %i.alc, ptr %i.ald, align 2, !tbaa !122
  %i.ale = add nuw nsw i64 %.1.i111201, 1         ; 2 uses
  %i.alf = icmp samesign ult i64 %i.ale, %spec.select
  br i1 %i.alf, label %.lr.ph203, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !2329

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %.078214 = phi i64 [ %i.amy, %._crit_edge213 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.alg = mul nuw nsw i64 %.078214, %i.bg
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %.081217, i64 %i.alg ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ali = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !733
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %.078214
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %i.bc
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !118
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ali, i64 1
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !734
  %i.alq = zext i8 %i.alp to i32
  %i.alr = add nsw i32 %i.z, %i.alq
  %i.als = shl i32 %i.aln, %i.alr
  %i.alt = lshr i32 %i.als, 16
  %i.alu = trunc nuw i32 %i.alt to i16
  %i.alv = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !122
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.next ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !733
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %.078214
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.bc
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !118
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !734
  %i.ame = zext i8 %i.amd to i32
  %i.amf = add nsw i32 %i.z, %i.ame
  %i.amg = shl i32 %i.amb, %i.amf
  %i.amh = lshr i32 %i.amg, 16
  %i.ami = trunc nuw i32 %i.amh to i16
  %i.amj = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv.next
  store i16 %i.ami, ptr %i.amj, align 2, !tbaa !122
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge213.unr-lcssa, label %.preheader.new, !llvm.loop !2330

._crit_edge213.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge213, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge213.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge213.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod554)
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.epil.init ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !733
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.amm, i64 %.078214
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %i.bc
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !118
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amk, i64 1
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !734
  %i.ams = zext i8 %i.amr to i32
  %i.amt = add nsw i32 %i.z, %i.ams
  %i.amu = shl i32 %i.amp, %i.amt
  %i.amv = lshr i32 %i.amu, 16
  %i.amw = trunc nuw i32 %i.amv to i16
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv.epil.init
  store i16 %i.amw, ptr %i.amx, align 2, !tbaa !122
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge213.unr-lcssa, %.epil.preheader
  %i.amy = add nuw nsw i64 %.078214, 1            ; 2 uses
  %exitcond275.not = icmp eq i64 %i.amy, %spec.select
  br i1 %exitcond275.not, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.preheader, !llvm.loop !2331

ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit: ; preds = %scalar.ph478, %scalar.ph459, %scalar.ph442, %.lr.ph175, %.lr.ph182, %.lr.ph189, %.lr.ph196, %.lr.ph203, %.lr.ph210, %._crit_edge213, %middle.block494, %middle.block475, %middle.block456, %middle.block439, %middle.block422, %middle.block405, %middle.block388, %middle.block371, %middle.block, %.loopexit, %._crit_edge, %._crit_edge165, %._crit_edge172, %._crit_edge179, %._crit_edge186, %._crit_edge193, %._crit_edge200, %._crit_edge207
  %i.amz = add i64 %spec.select, %.080220
  %i.ana = zext i8 %i.ay to i64
  %i.anb = mul nuw nsw i64 %spec.select, %i.ana
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %.081217, i64 %i.anb
  %i.and = sub nuw i64 %.083216, %spec.select
  %i.ane = load i64, ptr %i.aj, align 8, !tbaa !729
  %i.anf = add i64 %i.ane, %spec.select
  store i64 %i.anf, ptr %i.aj, align 8, !tbaa !729
  %i.ang = trunc nuw i64 %spec.select to i32
  %i.anh = load i32, ptr %i.aa, align 8, !tbaa !727
  %i.ani = sub i32 %i.anh, %i.ang
  store i32 %i.ani, ptr %i.aa, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit
  %.184 = phi i64 [ %i.and, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.083216, %bb.h ] ; 2 uses
  %.182 = phi ptr [ %i.anc, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.081217, %bb.h ]
  %.1 = phi i64 [ %i.amz, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.080220, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.184, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !2332

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader244, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.080220, %bb.h ], [ %.080220, %.preheader244 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_s32(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph220

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i111, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !727  ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !728
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub nuw i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i111 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq i64 %.117.i, 0
  br i1 %.not.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !59

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i111, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !729
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !729
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph220:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !728   ; 3 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = icmp ult i8 %i.x, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %3 = sub nsw i32 31, %i.y                       ; 6 uses
  %i.ai = icmp eq i8 %i.x, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert611 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ap = shufflevector <2 x i32> %broadcast.splatinsert611, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.aq = shufflevector <2 x i32> %broadcast.splatinsert577, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph220, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.078218 = phi i64 [ 0, %.lr.ph220 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.079215 = phi ptr [ %2, %.lr.ph220 ], [ %.180, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 49 uses
  %.081214 = phi i64 [ %1, %.lr.ph220 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.ar = load i32, ptr %i.aa, align 8, !tbaa !727 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.preheader242, label %bb.i

.preheader242:                                    ; preds = %bb.g, %bb.h
  %i.at = load i8, ptr %i.w, align 1, !tbaa !728
  %i.au = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.al, i8 noundef zeroext %i.at, ptr noundef %i.am)
  %.not.i112 = icmp eq i32 %i.au, 0
  br i1 %.not.i112, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader242
  %i.av = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.av, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader242
  ]

bb.i:                                             ; preds = %bb.g
  %i.aw = load i8, ptr %i.ab, align 2, !tbaa !730 ; 3 uses
  %i.ax = sext i8 %i.aw to i64                    ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !119 ; 3 uses
  %i.ba = load i16, ptr %i.ac, align 8, !tbaa !731
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub i32 %i.bb, %i.ar
  %i.bd = zext i32 %i.bc to i64                   ; 23 uses
  %i.be = zext i32 %i.ar to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.081214, i64 %i.be) ; 59 uses
  %i.bf = shl nuw i64 1, %i.ax
  %i.bg = and i64 %i.bf, 1794
  %.not115 = icmp eq i64 %i.bg, 0
  br i1 %.not115, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bh = zext i8 %i.az to i64
  %i.bi = tail call i8 @llvm.umax.i8(i8 %i.az, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bi to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bj = icmp eq i8 %i.aw, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod647 = trunc i8 %i.bi to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !733 ; 19 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bd ; 39 uses
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !733 ; 19 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bd ; 39 uses
  %.b.i92 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.aw, label %bb.aa [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.l, label %._crit_edge278

._crit_edge278:                                   ; preds = %bb.k
  %.pre279 = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre281 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.w, align 1, !tbaa !728
  %i.bp = icmp ult i8 %i.bo, 25
  %.pre280 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre282 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = lshr i64 %spec.select, 2                ; 4 uses
  %i.br = zext i8 %.pre280 to i32
  %i.bs = add nsw i32 %i.z, %i.br                 ; 3 uses
  %i.bt = zext i8 %.pre282 to i32
  %i.bu = add nsw i32 %i.z, %i.bt                 ; 3 uses
  %.not234 = icmp eq i64 %i.bq, 0
  br i1 %.not234, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.m, %.lr.ph190
  %.0.i188 = phi i64 [ %i.cg, %.lr.ph190 ], [ 0, %bb.m ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.0.i188
  %i.bw = load <4 x i32>, ptr %i.bv, align 1, !tbaa !119
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bw, i32 range(i32 -232, 288) %i.bs) ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.0.i188
  %i.bz = load <4 x i32>, ptr %i.by, align 1, !tbaa !119
  %i.ca = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bz, i32 range(i32 -232, 288) %i.bu)
  %i.cb = sub <4 x i32> %i.bx, %i.ca              ; 2 uses
  %.idx.i = shl nuw nsw i64 %.0.i188, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i ; 2 uses
  %i.cd = shufflevector <4 x i32> %i.bx, <4 x i32> %i.cb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.cd, ptr %i.cc, align 1, !tbaa !119
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = shufflevector <4 x i32> %i.bx, <4 x i32> %i.cb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.cf, ptr %i.ce, align 1, !tbaa !119
  %i.cg = add nuw nsw i64 %.0.i188, 1             ; 2 uses
  %exitcond267.not = icmp eq i64 %i.cg, %i.bq
  br i1 %exitcond267.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !2333

._crit_edge191:                                   ; preds = %.lr.ph190, %bb.m
  %i.ch = and i64 %spec.select, 4294967292        ; 8 uses
  %.not235 = icmp eq i64 %i.ch, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge191
  %i.ci = or disjoint i64 %i.ch, 1
  %i.cj = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ci) ; 2 uses
  %i.ck = sub nsw i64 %i.cj, %i.ch                ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check410, label %.lr.ph194.preheader633, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph194.preheader
  %i.cl = shl nuw nsw i64 %i.bq, 5
  %scevgep395 = getelementptr i8, ptr %.079215, i64 %i.cl ; 2 uses
  %i.cm = or disjoint i64 %i.ch, 1
  %umax396 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cm) ; 2 uses
  %i.cn = shl nuw nsw i64 %umax396, 3
  %scevgep397 = getelementptr i8, ptr %.079215, i64 %i.cn ; 2 uses
  %i.co = shl nuw nsw i64 %i.bq, 4
  %i.cp = shl nuw nsw i64 %i.bd, 2
  %i.cq = add nuw nsw i64 %i.co, %i.cp            ; 2 uses
  %scevgep398 = getelementptr i8, ptr %i.bk, i64 %i.cq
  %i.cr = add nuw nsw i64 %umax396, %i.bd
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  %scevgep399 = getelementptr i8, ptr %i.bk, i64 %i.cs
  %scevgep400 = getelementptr i8, ptr %i.bm, i64 %i.cq
  %scevgep401 = getelementptr i8, ptr %i.bm, i64 %i.cs
  %bound0402 = icmp ult ptr %scevgep395, %scevgep399
  %bound1403 = icmp ult ptr %scevgep398, %scevgep397
  %found.conflict404 = and i1 %bound0402, %bound1403
  %bound0405 = icmp ult ptr %scevgep395, %scevgep401
  %bound1406 = icmp ult ptr %scevgep400, %scevgep397
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %found.conflict404, %found.conflict407
  br i1 %conflict.rdx408, label %.lr.ph194.preheader633, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck394
  %i.ct = and i64 %i.cj, 1                        ; 2 uses
  %n.vec412 = sub nsw i64 %i.ck, %i.ct            ; 2 uses
  %i.cu = add nsw i64 %i.ch, %n.vec412
  %broadcast.splatinsert413 = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat414 = shufflevector <2 x i32> %broadcast.splatinsert413, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert415 = insertelement <2 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat416 = shufflevector <2 x i32> %broadcast.splatinsert415, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next422, %vector.body417 ] ; 2 uses
  %i.cv = add nuw i64 %i.ch, %index418            ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cv
  %wide.load419 = load <2 x i32>, ptr %i.cw, align 4, !tbaa !118, !alias.scope !2400
  %i.cx = shl <2 x i32> %wide.load419, %broadcast.splat414 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cv
  %wide.load420 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !118, !alias.scope !2401
  %i.cz = shl <2 x i32> %wide.load420, %broadcast.splat416
  %i.da = sub <2 x i32> %i.cx, %i.cz
  %i.db = shl nuw nsw i64 %i.cv, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.db
  %interleaved.vec421 = shufflevector <2 x i32> %i.cx, <2 x i32> %i.da, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec421, ptr %i.dc, align 4, !tbaa !118, !alias.scope !2402, !noalias !2403
  %index.next422 = add nuw i64 %index418, 2       ; 2 uses
  %i.dd = icmp eq i64 %index.next422, %n.vec412
  br i1 %i.dd, label %middle.block423, label %vector.body417, !llvm.loop !2338

middle.block423:                                  ; preds = %vector.body417
  %cmp.n424 = icmp eq i64 %i.ct, 0
  br i1 %cmp.n424, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader633

.lr.ph194.preheader633:                           ; preds = %vector.memcheck394, %.lr.ph194.preheader, %middle.block423
  %.1.i192.ph = phi i64 [ %i.ch, %vector.memcheck394 ], [ %i.ch, %.lr.ph194.preheader ], [ %i.cu, %middle.block423 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader633, %.lr.ph194
  %.1.i192 = phi i64 [ %i.dn, %.lr.ph194 ], [ %.1.i192.ph, %.lr.ph194.preheader633 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.1.i192
  %i.df = load i32, ptr %i.de, align 4, !tbaa !118
  %i.dg = shl i32 %i.df, %i.bs                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.1.i192
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !118
  %i.dj = shl i32 %i.di, %i.bu
  %i.dk = sub i32 %i.dg, %i.dj
  %.idx125 = shl nuw nsw i64 %.1.i192, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx125 ; 2 uses
  store i32 %i.dg, ptr %i.dl, align 4, !tbaa !118
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !118
  %i.dn = add nuw nsw i64 %.1.i192, 1             ; 2 uses
  %i.do = icmp samesign ult i64 %i.dn, %spec.select
  br i1 %i.do, label %.lr.ph194, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2339

bb.n:                                             ; preds = %._crit_edge278, %bb.l
  %i.dp = phi i8 [ %.pre281, %._crit_edge278 ], [ %.pre282, %bb.l ]
end_hunk_0
begin_hunk_1_@ma_dr_flac_read_pcm_frames_s32:bb.a
  %i.lm = icmp eq i64 %index.next518, %n.vec508
  br i1 %i.lm, label %middle.block519, label %vector.body513, !llvm.loop !2359

middle.block519:                                  ; preds = %vector.body513
  %cmp.n520 = icmp eq i64 %i.lc, 0
  br i1 %cmp.n520, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph173.preheader639

.lr.ph173.preheader639:                           ; preds = %vector.memcheck490, %.lr.ph173.preheader, %middle.block519
  %.1.i99171.ph = phi i64 [ %i.kq, %vector.memcheck490 ], [ %i.kq, %.lr.ph173.preheader ], [ %i.ld, %middle.block519 ]
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader639, %.lr.ph173
  %.1.i99171 = phi i64 [ %i.lw, %.lr.ph173 ], [ %.1.i99171.ph, %.lr.ph173.preheader639 ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.1.i99171
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !118
  %i.lp = shl i32 %i.lo, %i.iy
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.1.i99171
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !118
  %i.ls = shl i32 %i.lr, %i.ja                    ; 2 uses
  %i.lt = add i32 %i.ls, %i.lp
  %.idx120 = shl nuw nsw i64 %.1.i99171, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx120 ; 2 uses
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !118
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i32 %i.ls, ptr %i.lv, align 4, !tbaa !118
  %i.lw = add nuw nsw i64 %.1.i99171, 1           ; 2 uses
  %i.lx = icmp samesign ult i64 %i.lw, %spec.select
  br i1 %i.lx, label %.lr.ph173, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2360

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ly = load i8, ptr %i.w, align 1, !tbaa !728
  %i.lz = icmp ult i8 %i.ly, 25
  br i1 %i.lz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ma = lshr i64 %spec.select, 2                ; 7 uses
  %.not226 = icmp eq i64 %i.ma, 0                 ; 2 uses
  br i1 %i.ai, label %.preheader138, label %bb.v

.preheader138:                                    ; preds = %bb.u
  br i1 %.not226, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader138, %.lr.ph162
  %.0.i101161 = phi i64 [ %i.mw, %.lr.ph162 ], [ 0, %.preheader138 ] ; 4 uses
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.0.i101161
  %i.mc = load <4 x i32>, ptr %i.mb, align 1, !tbaa !119
  %i.md = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.me = zext i8 %i.md to i32
  %i.mf = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mc, i32 range(i32 -232, 288) %i.me)
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.0.i101161
  %i.mh = load <4 x i32>, ptr %i.mg, align 1, !tbaa !119
  %i.mi = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.mj = zext i8 %i.mi to i32
  %i.mk = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mh, i32 range(i32 -232, 288) %i.mj) ; 3 uses
  %i.ml = shl <4 x i32> %i.mf, splat (i32 1)
  %i.mm = and <4 x i32> %i.mk, splat (i32 1)
  %i.mn = or disjoint <4 x i32> %i.mm, %i.ml      ; 2 uses
  %i.mo = add <4 x i32> %i.mn, %i.mk
  %i.mp = ashr <4 x i32> %i.mo, splat (i32 1)     ; 2 uses
  %i.mq = sub <4 x i32> %i.mn, %i.mk
  %i.mr = ashr <4 x i32> %i.mq, splat (i32 1)     ; 2 uses
  %.idx98.i = shl nuw nsw i64 %.0.i101161, 5
  %i.ms = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx98.i ; 2 uses
  %i.mt = shufflevector <4 x i32> %i.mp, <4 x i32> %i.mr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.mt, ptr %i.ms, align 1, !tbaa !119
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mv = shufflevector <4 x i32> %i.mp, <4 x i32> %i.mr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.mv, ptr %i.mu, align 1, !tbaa !119
  %i.mw = add nuw nsw i64 %.0.i101161, 1          ; 2 uses
  %exitcond263.not = icmp eq i64 %i.mw, %i.ma
  br i1 %exitcond263.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !2361

._crit_edge163:                                   ; preds = %.lr.ph162, %.preheader138
  %i.mx = and i64 %spec.select, 4294967292        ; 8 uses
  %.not227 = icmp eq i64 %i.mx, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge163
  %i.my = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.mz = zext nneg i8 %i.my to i32               ; 2 uses
  %i.na = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.nb = zext nneg i8 %i.na to i32               ; 2 uses
  %i.nc = or disjoint i64 %i.mx, 1
  %i.nd = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.nc) ; 2 uses
  %i.ne = sub nsw i64 %i.nd, %i.mx                ; 2 uses
  %min.iters.check538 = icmp ult i64 %i.ne, 6
  br i1 %min.iters.check538, label %scalar.ph537.preheader, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph166
  %i.nf = shl nuw nsw i64 %i.ma, 5
  %scevgep523 = getelementptr i8, ptr %.079215, i64 %i.nf ; 2 uses
  %i.ng = or disjoint i64 %i.mx, 1
  %umax524 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ng) ; 2 uses
  %i.nh = shl nuw nsw i64 %umax524, 3
  %scevgep525 = getelementptr i8, ptr %.079215, i64 %i.nh ; 2 uses
  %i.ni = shl nuw nsw i64 %i.ma, 4
  %i.nj = shl nuw nsw i64 %i.bd, 2
  %i.nk = add nuw nsw i64 %i.ni, %i.nj            ; 2 uses
  %scevgep526 = getelementptr i8, ptr %i.bk, i64 %i.nk
  %i.nl = add nuw nsw i64 %umax524, %i.bd
  %i.nm = shl nuw nsw i64 %i.nl, 2                ; 2 uses
  %scevgep527 = getelementptr i8, ptr %i.bk, i64 %i.nm
  %scevgep528 = getelementptr i8, ptr %i.bm, i64 %i.nk
  %scevgep529 = getelementptr i8, ptr %i.bm, i64 %i.nm
  %bound0530 = icmp ult ptr %scevgep523, %scevgep527
  %bound1531 = icmp ult ptr %scevgep526, %scevgep525
  %found.conflict532 = and i1 %bound0530, %bound1531
  %bound0533 = icmp ult ptr %scevgep523, %scevgep529
  %bound1534 = icmp ult ptr %scevgep528, %scevgep525
  %found.conflict535 = and i1 %bound0533, %bound1534
  %conflict.rdx536 = or i1 %found.conflict532, %found.conflict535
  br i1 %conflict.rdx536, label %scalar.ph537.preheader, label %vector.ph539

vector.ph539:                                     ; preds = %vector.memcheck522
  %i.nn = and i64 %i.nd, 1                        ; 2 uses
  %n.vec540 = sub nsw i64 %i.ne, %i.nn            ; 2 uses
  %i.no = add nsw i64 %i.mx, %n.vec540
  %broadcast.splatinsert541 = insertelement <2 x i32> poison, i32 %i.mz, i64 0
  %broadcast.splat542 = shufflevector <2 x i32> %broadcast.splatinsert541, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert543 = insertelement <2 x i32> poison, i32 %i.nb, i64 0
  %broadcast.splat544 = shufflevector <2 x i32> %broadcast.splatinsert543, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph539
  %index546 = phi i64 [ 0, %vector.ph539 ], [ %index.next550, %vector.body545 ] ; 2 uses
  %i.np = add nuw i64 %i.mx, %index546            ; 3 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.np
  %wide.load547 = load <2 x i32>, ptr %i.nq, align 4, !tbaa !118, !alias.scope !2416
  %i.nr = shl <2 x i32> %wide.load547, %broadcast.splat542
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.np
  %wide.load548 = load <2 x i32>, ptr %i.ns, align 4, !tbaa !118, !alias.scope !2417
  %i.nt = shl <2 x i32> %wide.load548, %broadcast.splat544 ; 3 uses
  %i.nu = shl <2 x i32> %i.nr, splat (i32 1)
  %i.nv = and <2 x i32> %i.nt, splat (i32 1)
  %i.nw = or disjoint <2 x i32> %i.nv, %i.nu      ; 2 uses
  %i.nx = add <2 x i32> %i.nw, %i.nt
  %i.ny = shl nuw nsw i64 %i.np, 3
  %i.nz = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.ny
  %i.oa = sub <2 x i32> %i.nw, %i.nt
  %i.ob = shufflevector <2 x i32> %i.nx, <2 x i32> %i.oa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec549 = ashr <4 x i32> %i.ob, splat (i32 1)
  store <4 x i32> %interleaved.vec549, ptr %i.nz, align 4, !tbaa !118, !alias.scope !2418, !noalias !2419
  %index.next550 = add nuw i64 %index546, 2       ; 2 uses
  %i.oc = icmp eq i64 %index.next550, %n.vec540
  br i1 %i.oc, label %middle.block551, label %vector.body545, !llvm.loop !2366

middle.block551:                                  ; preds = %vector.body545
  %cmp.n552 = icmp eq i64 %i.nn, 0
  br i1 %cmp.n552, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph537.preheader

scalar.ph537.preheader:                           ; preds = %vector.memcheck522, %.lr.ph166, %middle.block551
  %.1.i102164.ph = phi i64 [ %i.mx, %vector.memcheck522 ], [ %i.mx, %.lr.ph166 ], [ %i.no, %middle.block551 ]
  br label %scalar.ph537

scalar.ph537:                                     ; preds = %scalar.ph537.preheader, %scalar.ph537
  %.1.i102164 = phi i64 [ %i.os, %scalar.ph537 ], [ %.1.i102164.ph, %scalar.ph537.preheader ] ; 4 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.1.i102164
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !118
  %i.of = shl i32 %i.oe, %i.mz
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.1.i102164
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !118
  %i.oi = shl i32 %i.oh, %i.nb                    ; 3 uses
  %i.oj = shl i32 %i.of, 1
  %i.ok = and i32 %i.oi, 1
  %i.ol = or disjoint i32 %i.ok, %i.oj            ; 2 uses
  %i.om = add i32 %i.ol, %i.oi
  %i.on = ashr i32 %i.om, 1
  %.idx119 = shl nuw nsw i64 %.1.i102164, 3
  %i.oo = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx119 ; 2 uses
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !118
  %i.op = sub i32 %i.ol, %i.oi
  %i.oq = ashr i32 %i.op, 1
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !118
  %i.os = add nuw nsw i64 %.1.i102164, 1          ; 2 uses
  %i.ot = icmp samesign ult i64 %i.os, %spec.select
  br i1 %i.ot, label %scalar.ph537, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2367

bb.v:                                             ; preds = %bb.u
  br i1 %.not226, label %._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.v, %.lr.ph157
  %.2.i156 = phi i64 [ %i.pp, %.lr.ph157 ], [ 0, %bb.v ] ; 4 uses
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.2.i156
  %i.ov = load <4 x i32>, ptr %i.ou, align 1, !tbaa !119
  %i.ow = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.ox = zext i8 %i.ow to i32
  %i.oy = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ov, i32 range(i32 -232, 288) %i.ox)
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.2.i156
  %i.pa = load <4 x i32>, ptr %i.oz, align 1, !tbaa !119
  %i.pb = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.pc = zext i8 %i.pb to i32
  %i.pd = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pa, i32 range(i32 -232, 288) %i.pc) ; 3 uses
  %i.pe = shl <4 x i32> %i.oy, splat (i32 1)
  %i.pf = and <4 x i32> %i.pd, splat (i32 1)
  %i.pg = or disjoint <4 x i32> %i.pf, %i.pe      ; 2 uses
  %i.ph = add <4 x i32> %i.pg, %i.pd
  %i.pi = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ph, i32 range(i32 -232, 288) %3) ; 2 uses
  %i.pj = sub <4 x i32> %i.pg, %i.pd
  %i.pk = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pj, i32 range(i32 -232, 288) %3) ; 2 uses
  %.idx.i100 = shl nuw nsw i64 %.2.i156, 5
  %i.pl = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i100 ; 2 uses
  %i.pm = shufflevector <4 x i32> %i.pi, <4 x i32> %i.pk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.pm, ptr %i.pl, align 1, !tbaa !119
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.po = shufflevector <4 x i32> %i.pi, <4 x i32> %i.pk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.po, ptr %i.pn, align 1, !tbaa !119
  %i.pp = add nuw nsw i64 %.2.i156, 1             ; 2 uses
  %exitcond262.not = icmp eq i64 %i.pp, %i.ma
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph157, !llvm.loop !2368

._crit_edge:                                      ; preds = %.lr.ph157, %bb.v
  %i.pq = and i64 %spec.select, 4294967292        ; 8 uses
  %.not225 = icmp eq i64 %i.pq, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph160

.lr.ph160:                                        ; preds = %._crit_edge
  %i.pr = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.ps = zext nneg i8 %i.pr to i32               ; 2 uses
  %i.pt = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.pu = zext nneg i8 %i.pt to i32               ; 2 uses
  %i.pv = or disjoint i64 %i.pq, 1
  %i.pw = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.pv) ; 2 uses
  %i.px = sub nsw i64 %i.pw, %i.pq                ; 2 uses
  %min.iters.check570 = icmp ult i64 %i.px, 6
  br i1 %min.iters.check570, label %scalar.ph569.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.lr.ph160
  %i.py = shl nuw nsw i64 %i.ma, 5
  %scevgep555 = getelementptr i8, ptr %.079215, i64 %i.py ; 2 uses
  %i.pz = or disjoint i64 %i.pq, 1
  %umax556 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.pz) ; 2 uses
  %i.qa = shl nuw nsw i64 %umax556, 3
  %scevgep557 = getelementptr i8, ptr %.079215, i64 %i.qa ; 2 uses
  %i.qb = shl nuw nsw i64 %i.ma, 4
  %i.qc = shl nuw nsw i64 %i.bd, 2
  %i.qd = add nuw nsw i64 %i.qb, %i.qc            ; 2 uses
  %scevgep558 = getelementptr i8, ptr %i.bk, i64 %i.qd
  %i.qe = add nuw nsw i64 %umax556, %i.bd
  %i.qf = shl nuw nsw i64 %i.qe, 2                ; 2 uses
  %scevgep559 = getelementptr i8, ptr %i.bk, i64 %i.qf
  %scevgep560 = getelementptr i8, ptr %i.bm, i64 %i.qd
  %scevgep561 = getelementptr i8, ptr %i.bm, i64 %i.qf
  %bound0562 = icmp ult ptr %scevgep555, %scevgep559
  %bound1563 = icmp ult ptr %scevgep558, %scevgep557
  %found.conflict564 = and i1 %bound0562, %bound1563
  %bound0565 = icmp ult ptr %scevgep555, %scevgep561
  %bound1566 = icmp ult ptr %scevgep560, %scevgep557
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %found.conflict564, %found.conflict567
  br i1 %conflict.rdx568, label %scalar.ph569.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck554
  %i.qg = and i64 %i.pw, 1                        ; 2 uses
  %n.vec572 = sub nsw i64 %i.px, %i.qg            ; 2 uses
  %i.qh = add nsw i64 %i.pq, %n.vec572
  %broadcast.splatinsert573 = insertelement <2 x i32> poison, i32 %i.ps, i64 0
  %broadcast.splat574 = shufflevector <2 x i32> %broadcast.splatinsert573, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert575 = insertelement <2 x i32> poison, i32 %i.pu, i64 0
  %broadcast.splat576 = shufflevector <2 x i32> %broadcast.splatinsert575, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph571
  %index580 = phi i64 [ 0, %vector.ph571 ], [ %index.next584, %vector.body579 ] ; 2 uses
  %i.qi = add nuw i64 %i.pq, %index580            ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.qi
  %wide.load581 = load <2 x i32>, ptr %i.qj, align 4, !tbaa !118, !alias.scope !2420
  %i.qk = shl <2 x i32> %wide.load581, %broadcast.splat574
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.qi
  %wide.load582 = load <2 x i32>, ptr %i.ql, align 4, !tbaa !118, !alias.scope !2421
  %i.qm = shl <2 x i32> %wide.load582, %broadcast.splat576 ; 3 uses
  %i.qn = shl <2 x i32> %i.qk, splat (i32 1)
  %i.qo = and <2 x i32> %i.qm, splat (i32 1)
  %i.qp = or disjoint <2 x i32> %i.qo, %i.qn      ; 2 uses
  %i.qq = add <2 x i32> %i.qp, %i.qm
  %i.qr = shl nuw nsw i64 %i.qi, 3
  %i.qs = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.qr
  %i.qt = sub <2 x i32> %i.qp, %i.qm
  %i.qu = shufflevector <2 x i32> %i.qq, <2 x i32> %i.qt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec583 = shl <4 x i32> %i.qu, %i.aq
  store <4 x i32> %interleaved.vec583, ptr %i.qs, align 4, !tbaa !118, !alias.scope !2422, !noalias !2423
  %index.next584 = add nuw i64 %index580, 2       ; 2 uses
  %i.qv = icmp eq i64 %index.next584, %n.vec572
  br i1 %i.qv, label %middle.block585, label %vector.body579, !llvm.loop !2373

middle.block585:                                  ; preds = %vector.body579
  %cmp.n586 = icmp eq i64 %i.qg, 0
  br i1 %cmp.n586, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph569.preheader

scalar.ph569.preheader:                           ; preds = %vector.memcheck554, %.lr.ph160, %middle.block585
  %.3.i158.ph = phi i64 [ %i.pq, %vector.memcheck554 ], [ %i.pq, %.lr.ph160 ], [ %i.qh, %middle.block585 ]
  br label %scalar.ph569

scalar.ph569:                                     ; preds = %scalar.ph569.preheader, %scalar.ph569
  %.3.i158 = phi i64 [ %i.rl, %scalar.ph569 ], [ %.3.i158.ph, %scalar.ph569.preheader ] ; 4 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.3.i158
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !118
  %i.qy = shl i32 %i.qx, %i.ps
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.3.i158
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !118
  %i.rb = shl i32 %i.ra, %i.pu                    ; 3 uses
  %i.rc = shl i32 %i.qy, 1
  %i.rd = and i32 %i.rb, 1
  %i.re = or disjoint i32 %i.rd, %i.rc            ; 2 uses
  %i.rf = add i32 %i.re, %i.rb
  %i.rg = shl i32 %i.rf, %3
  %.idx118 = shl nuw nsw i64 %.3.i158, 3
  %i.rh = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx118 ; 2 uses
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !118
  %i.ri = sub i32 %i.re, %i.rb
  %i.rj = shl i32 %i.ri, %3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !118
  %i.rl = add nuw nsw i64 %.3.i158, 1             ; 2 uses
  %i.rm = icmp samesign ult i64 %i.rl, %spec.select
  br i1 %i.rm, label %scalar.ph569, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !2374

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.rn = lshr i64 %spec.select, 2                ; 5 uses
  %.not222 = icmp eq i64 %i.rn, 0                 ; 2 uses
  br i1 %i.af, label %bb.x, label %.preheader141

.preheader141:                                    ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader141
  %i.ro = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.rp = zext i8 %i.ro to i32
  %i.rq = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.rr = zext i8 %i.rq to i32
  %i.rs = insertelement <2 x i32> poison, i32 %i.rr, i64 0
  %i.rt = shufflevector <2 x i32> %i.rs, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ru = insertelement <2 x i32> poison, i32 %i.rp, i64 0
  %i.rv = shufflevector <2 x i32> %i.ru, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.x
  %i.rw = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.rx = zext i8 %i.rw to i32
  %i.ry = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.rz = zext i8 %i.ry to i32
  %i.sa = insertelement <2 x i32> poison, i32 %i.rz, i64 0
  %i.sb = shufflevector <2 x i32> %i.sa, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sc = insertelement <2 x i32> poison, i32 %i.rx, i64 0
  %i.sd = shufflevector <2 x i32> %i.sc, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph153, %bb.y
  %.0.i105152 = phi i64 [ 0, %.lr.ph153 ], [ %i.tm, %bb.y ] ; 3 uses
  %i.se = shl nuw nsw i64 %.0.i105152, 2          ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.se
  %i.sg = or disjoint i64 %i.se, 2                ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.sg
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.se
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.sg
  %.idx117 = shl nuw nsw i64 %.0.i105152, 5
  %i.sk = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx117 ; 2 uses
  %i.sl = load <2 x i32>, ptr %i.sf, align 4, !tbaa !118
  %i.sm = shl <2 x i32> %i.sl, %i.sd
  %i.sn = load <2 x i32>, ptr %i.si, align 4, !tbaa !118
  %i.so = shl <2 x i32> %i.sn, %i.sb              ; 2 uses
  %i.sp = shl <2 x i32> %i.sm, splat (i32 1)
  %i.sq = and <2 x i32> %i.so, splat (i32 1)
  %i.sr = or disjoint <2 x i32> %i.sq, %i.sp
  %i.ss = shufflevector <2 x i32> %i.sr, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.st = shufflevector <2 x i32> %i.so, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.su = add <4 x i32> %i.ss, %i.st
  %i.sv = sub <4 x i32> %i.ss, %i.st
  %i.sw = shufflevector <4 x i32> %i.su, <4 x i32> %i.sv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.sx = shl <4 x i32> %i.sw, %i.ao
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sz = load <2 x i32>, ptr %i.sh, align 4, !tbaa !118
  %i.ta = shl <2 x i32> %i.sz, %i.sd
  %i.tb = load <2 x i32>, ptr %i.sj, align 4, !tbaa !118
  %i.tc = shl <2 x i32> %i.tb, %i.sb              ; 2 uses
  %i.td = shl <2 x i32> %i.ta, splat (i32 1)
  %i.te = and <2 x i32> %i.tc, splat (i32 1)
  %i.tf = or disjoint <2 x i32> %i.te, %i.td
  %i.tg = shufflevector <2 x i32> %i.tf, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.th = shufflevector <2 x i32> %i.tc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ti = add <4 x i32> %i.tg, %i.th
  %i.tj = sub <4 x i32> %i.tg, %i.th
  %i.tk = shufflevector <4 x i32> %i.ti, <4 x i32> %i.tj, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.tl = shl <4 x i32> %i.tk, %i.ao
  store <4 x i32> %i.sx, ptr %i.sk, align 4, !tbaa !118
  store <4 x i32> %i.tl, ptr %i.sy, align 4, !tbaa !118
  %i.tm = add nuw nsw i64 %.0.i105152, 1          ; 2 uses
  %exitcond261.not = icmp eq i64 %i.tm, %i.rn
  br i1 %exitcond261.not, label %.loopexit, label %bb.y, !llvm.loop !2375

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.1.i103151 = phi i64 [ 0, %.lr.ph ], [ %i.uv, %bb.z ] ; 3 uses
  %i.tn = shl nuw nsw i64 %.1.i103151, 2          ; 3 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.tn
  %i.tp = or disjoint i64 %i.tn, 2                ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.tp
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.tn
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.tp
  %.idx = shl nuw nsw i64 %.1.i103151, 5
  %i.tt = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx ; 2 uses
  %i.tu = load <2 x i32>, ptr %i.to, align 4, !tbaa !118
  %i.tv = shl <2 x i32> %i.tu, %i.rv
  %i.tw = load <2 x i32>, ptr %i.tr, align 4, !tbaa !118
  %i.tx = shl <2 x i32> %i.tw, %i.rt              ; 2 uses
  %i.ty = shl <2 x i32> %i.tv, splat (i32 1)
  %i.tz = and <2 x i32> %i.tx, splat (i32 1)
  %i.ua = or disjoint <2 x i32> %i.tz, %i.ty
  %i.ub = shufflevector <2 x i32> %i.ua, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.uc = shufflevector <2 x i32> %i.tx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ud = add <4 x i32> %i.ub, %i.uc
  %i.ue = sub <4 x i32> %i.ub, %i.uc
  %i.uf = shufflevector <4 x i32> %i.ud, <4 x i32> %i.ue, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ug = ashr <4 x i32> %i.uf, splat (i32 1)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.ui = load <2 x i32>, ptr %i.tq, align 4, !tbaa !118
  %i.uj = shl <2 x i32> %i.ui, %i.rv
  %i.uk = load <2 x i32>, ptr %i.ts, align 4, !tbaa !118
  %i.ul = shl <2 x i32> %i.uk, %i.rt              ; 2 uses
  %i.um = shl <2 x i32> %i.uj, splat (i32 1)
  %i.un = and <2 x i32> %i.ul, splat (i32 1)
  %i.uo = or disjoint <2 x i32> %i.un, %i.um
  %i.up = shufflevector <2 x i32> %i.uo, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.uq = shufflevector <2 x i32> %i.ul, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ur = add <4 x i32> %i.up, %i.uq
  %i.us = sub <4 x i32> %i.up, %i.uq
  %i.ut = shufflevector <4 x i32> %i.ur, <4 x i32> %i.us, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.uu = ashr <4 x i32> %i.ut, splat (i32 1)
  store <4 x i32> %i.ug, ptr %i.tt, align 4, !tbaa !118
  store <4 x i32> %i.uu, ptr %i.uh, align 4, !tbaa !118
  %i.uv = add nuw nsw i64 %.1.i103151, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.uv, %i.rn
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !2376

.loopexit:                                        ; preds = %bb.z, %bb.y, %.preheader141, %bb.x
  %i.uw = and i64 %spec.select, 4294967292        ; 8 uses
  %.not223 = icmp eq i64 %i.uw, %spec.select
  br i1 %.not223, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.loopexit
  %i.ux = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.uy = zext nneg i8 %i.ux to i32               ; 2 uses
  %i.uz = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.va = zext nneg i8 %i.uz to i32               ; 2 uses
  %i.vb = or disjoint i64 %i.uw, 1
  %i.vc = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vb) ; 2 uses
  %i.vd = sub nsw i64 %i.vc, %i.uw                ; 2 uses
  %min.iters.check604 = icmp ult i64 %i.vd, 6
  br i1 %min.iters.check604, label %scalar.ph603.preheader, label %vector.memcheck588

vector.memcheck588:                               ; preds = %.lr.ph155
  %i.ve = shl nuw nsw i64 %i.rn, 5
  %scevgep589 = getelementptr i8, ptr %.079215, i64 %i.ve ; 2 uses
  %i.vf = or disjoint i64 %i.uw, 1
  %umax590 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vf) ; 2 uses
  %i.vg = shl nuw nsw i64 %umax590, 3
  %scevgep591 = getelementptr i8, ptr %.079215, i64 %i.vg ; 2 uses
  %i.vh = shl nuw nsw i64 %i.rn, 4
  %i.vi = shl nuw nsw i64 %i.bd, 2
  %i.vj = add nuw nsw i64 %i.vh, %i.vi            ; 2 uses
  %scevgep592 = getelementptr i8, ptr %i.bk, i64 %i.vj
  %i.vk = add nuw nsw i64 %umax590, %i.bd
  %i.vl = shl nuw nsw i64 %i.vk, 2                ; 2 uses
  %scevgep593 = getelementptr i8, ptr %i.bk, i64 %i.vl
  %scevgep594 = getelementptr i8, ptr %i.bm, i64 %i.vj
  %scevgep595 = getelementptr i8, ptr %i.bm, i64 %i.vl
  %bound0596 = icmp ult ptr %scevgep589, %scevgep593
  %bound1597 = icmp ult ptr %scevgep592, %scevgep591
  %found.conflict598 = and i1 %bound0596, %bound1597
  %bound0599 = icmp ult ptr %scevgep589, %scevgep595
  %bound1600 = icmp ult ptr %scevgep594, %scevgep591
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %found.conflict598, %found.conflict601
  br i1 %conflict.rdx602, label %scalar.ph603.preheader, label %vector.ph605

vector.ph605:                                     ; preds = %vector.memcheck588
  %i.vm = and i64 %i.vc, 1                        ; 2 uses
  %n.vec606 = sub nsw i64 %i.vd, %i.vm            ; 2 uses
  %i.vn = add nsw i64 %i.uw, %n.vec606
  %broadcast.splatinsert607 = insertelement <2 x i32> poison, i32 %i.uy, i64 0
  %broadcast.splat608 = shufflevector <2 x i32> %broadcast.splatinsert607, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %broadcast.splat610 = shufflevector <2 x i32> %broadcast.splatinsert609, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph605
  %index614 = phi i64 [ 0, %vector.ph605 ], [ %index.next618, %vector.body613 ] ; 2 uses
  %i.vo = add nuw i64 %i.uw, %index614            ; 3 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.vo
  %wide.load615 = load <2 x i32>, ptr %i.vp, align 4, !tbaa !118, !alias.scope !2424
  %i.vq = shl <2 x i32> %wide.load615, %broadcast.splat608
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.vo
  %wide.load616 = load <2 x i32>, ptr %i.vr, align 4, !tbaa !118, !alias.scope !2425
  %i.vs = shl <2 x i32> %wide.load616, %broadcast.splat610 ; 3 uses
  %i.vt = shl <2 x i32> %i.vq, splat (i32 1)
  %i.vu = and <2 x i32> %i.vs, splat (i32 1)
  %i.vv = or disjoint <2 x i32> %i.vu, %i.vt      ; 2 uses
  %i.vw = add <2 x i32> %i.vv, %i.vs
  %i.vx = shl nuw nsw i64 %i.vo, 3
  %i.vy = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.vx
  %i.vz = sub <2 x i32> %i.vv, %i.vs
  %i.wa = shufflevector <2 x i32> %i.vw, <2 x i32> %i.vz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wb = ashr <4 x i32> %i.wa, splat (i32 1)
  %interleaved.vec617 = shl <4 x i32> %i.wb, %i.ap
  store <4 x i32> %interleaved.vec617, ptr %i.vy, align 4, !tbaa !118, !alias.scope !2426, !noalias !2427
  %index.next618 = add nuw i64 %index614, 2       ; 2 uses
  %i.wc = icmp eq i64 %index.next618, %n.vec606
  br i1 %i.wc, label %middle.block619, label %vector.body613, !llvm.loop !2381

end_hunk_1
