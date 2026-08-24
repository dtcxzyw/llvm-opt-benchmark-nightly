Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_datascope?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pick_color16:bb.a
  store i16 %i.w, ptr %i.g, align 4, !tbaa !54
  br label %.loopexit.peel

.preheader.preheader.peel:                        ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !84
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !85
  %i.ab = mul nsw i32 %i.aa, %4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !85
  %i.af = mul nsw i32 %i.ae, %3
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !54 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  store i32 %i.aj, ptr %5, align 4, !tbaa !85
  store i16 %i.ai, ptr %i.g, align 2, !tbaa !54
  %i.ak = load ptr, ptr %2, align 8, !tbaa !84
  %i.al = load i32, ptr %i.e, align 8, !tbaa !85
  %i.am = mul nsw i32 %i.al, %4
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !85
  %i.aq = mul nsw i32 %i.ap, %3
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 1, !tbaa !54 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.au, ptr %i.ax, align 2, !tbaa !54
  %i.ay = load ptr, ptr %2, align 8, !tbaa !84
  %i.az = load i32, ptr %i.e, align 8, !tbaa !85
  %i.ba = mul nsw i32 %i.az, %4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.y, align 8, !tbaa !85
  %i.be = mul nsw i32 %i.bd, %3
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !54 ; 2 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bi, ptr %i.bl, align 2, !tbaa !54
  %i.bm = load ptr, ptr %2, align 8, !tbaa !84
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !85
  %i.bo = mul nsw i32 %i.bn, %4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = load i32, ptr %i.y, align 8, !tbaa !85
  %i.bs = mul nsw i32 %i.br, %3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !54 ; 2 uses
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bw, ptr %i.bz, align 2, !tbaa !54
  br label %.loopexit.peel

.loopexit.peel:                                   ; preds = %.preheader.preheader.peel, %bb.b
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !94
  %i.cb = icmp ugt i32 %i.ca, 1
  br i1 %i.cb, label %.loopexit, label %._crit_edge

.loopexit:                                        ; preds = %.loopexit.peel, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 1, %.loopexit.peel ] ; 7 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !54
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = ashr i32 %4, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !85
  %i.ck = mul nsw i32 %i.ch, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.cd, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !54
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = ashr i32 %3, %i.cp
  %i.cr = shl nsw i32 %i.cq, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cm, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !54 ; 2 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !85
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  store i16 %i.cu, ptr %i.cx, align 4, !tbaa !54
  %.pre = load i32, ptr %i.b, align 4, !tbaa !94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = zext i32 %.pre to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %.loopexit, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.peel, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @reverse_color16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((3, 4)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 -1, ptr %i.a, align 1, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !94
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  %i.j = shl nuw i32 1, %i.i                      ; 2 uses
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !54
  %i.n = zext i16 %i.m to i32
  %i.o = icmp samesign ult i32 %i.k, %i.n
  %i.p = trunc i32 %i.j to i16
  %i.q = add i16 %i.p, -1                         ; 3 uses
  %i.r = select i1 %i.o, i16 0, i16 %i.q
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  store i16 %i.r, ptr %i.s, align 4, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !54
  %i.v = zext i16 %i.u to i32
  %i.w = icmp samesign ult i32 %i.k, %i.v
  %i.x = select i1 %i.w, i16 0, i16 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !54
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp samesign ult i32 %i.k, %i.ab
  %i.ad = select i1 %i.ac, i16 0, i16 %i.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.b, align 4, !tbaa !94
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56)) %0) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !85
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.g, align 8, !tbaa !85
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !85
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_draw_supported_pixel_formats(i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @pixscope_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = alloca [4 x float], align 16             ; 9 uses
  %i.e = alloca [4 x double], align 16            ; 12 uses
  %i.f = alloca [4 x double], align 16            ; 8 uses
  %i.g = alloca [128 x i8], align 16              ; 10 uses
  %2 = alloca %struct.FFDrawColor, align 4        ; 5 uses
  %i.h = alloca [4 x i32], align 16               ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 28 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61
  %i.t = tail call ptr @ff_get_video_buffer(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.s) #14 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.oscilloscope_filter_frame.min, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.v = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.t, ptr noundef nonnull %1) #14 ; 0 uses
  %i.w = tail call i32 @av_frame_copy(ptr noundef nonnull %i.t, ptr noundef nonnull %1) #14 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 6 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !102  ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 10 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !104 ; 3 uses
  %i.ab = sdiv i32 %i.y, %i.aa                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 10 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !105 ; 3 uses
  %i.ae = sdiv i32 %i.y, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ag = load float, ptr %i.af, align 8, !tbaa !106 ; 3 uses
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.y
  %i.aj = sitofp nsz i32 %i.ai to float
  %.sink = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ak = fmul nsz float %.sink, %i.aj
  %.0278 = fptosi float %i.ak to i32              ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !107 ; 3 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !61  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !108 ; 5 uses
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = sitofp nsz i32 %i.aq to float
  %.sink503 = tail call float @llvm.fabs.f32(float %i.am)
  %i.as = fmul nsz float %.sink503, %i.ar
  %.0276 = fptosi float %i.as to i32              ; 7 uses
  %i.at = fcmp nsz olt float %i.ag, 0.000000e+00
  br i1 %i.at, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !109
  %i.aw = add nsw i32 %i.av, %i.aa                ; 2 uses
  %.not300 = icmp slt i32 %i.aw, %.0278
  %i.ax = add nsw i32 %i.y, %.0278
  %.not301 = icmp sgt i32 %i.aw, %i.ax
  %or.cond = select i1 %.not300, i1 true, i1 %.not301
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !110
  %i.ba = add nsw i32 %i.az, %i.ad                ; 2 uses
  %.not302 = icmp slt i32 %i.ba, %.0276
  %i.bb = add nsw i32 %i.ap, %.0276
  %.not303 = icmp sgt i32 %i.ba, %i.bb
  %or.cond501 = select i1 %.not302, i1 true, i1 %.not303
  br i1 %or.cond501, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = sub nsw i32 %i.ah, %i.y
  %i.bd = sitofp nsz i32 %i.bc to float
  %i.be = fadd nnan nsz float %i.ag, 1.000000e+00
  %i.bf = fmul nsz float %i.be, %i.bd
  %i.bg = fptosi float %i.bf to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %.1279 = phi i32 [ %i.bg, %bb.f ], [ %.0278, %bb.d ], [ %.0278, %bb.e ], [ %.0278, %bb.c ] ; 5 uses
  %i.bh = fcmp nsz olt float %i.am, 0.000000e+00
  br i1 %i.bh, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !109
  %i.bk = add nsw i32 %i.bj, %i.aa                ; 2 uses
  %.not304 = icmp slt i32 %i.bk, %.1279
  %i.bl = add nsw i32 %.1279, %i.y
  %.not305 = icmp sgt i32 %i.bk, %i.bl
  %or.cond332 = select i1 %.not304, i1 true, i1 %.not305
  br i1 %or.cond332, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !110
  %i.bo = add nsw i32 %i.bn, %i.ad                ; 2 uses
  %.not306 = icmp slt i32 %i.bo, %.0276
  %i.bp = add nsw i32 %i.ap, %.0276
  %.not307 = icmp sgt i32 %i.bo, %i.bp
  %or.cond502 = select i1 %.not306, i1 true, i1 %.not307
  br i1 %or.cond502, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = sub nsw i32 %i.an, %i.ap
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = fadd nnan nsz float %i.am, 1.000000e+00
  %i.bt = fmul nsz float %i.bs, %i.br
  %i.bu = fptosi float %i.bt to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.1277 = phi i32 [ %i.bu, %bb.j ], [ %.0276, %bb.h ], [ %.0276, %bb.i ], [ %.0276, %bb.g ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 14 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 13 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 108 ; 13 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61
  tail call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %.1279, i32 noundef %.1277, i32 noundef %i.y, i32 noundef %i.ap) #14
  %i.cc = load i32, ptr %i.ac, align 4, !tbaa !105 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  %.pre390 = load i32, ptr %i.z, align 8, !tbaa !104 ; 4 uses
  br i1 %i.cd, label %.preheader336.lr.ph, label %._crit_edge344

.preheader336.lr.ph:                              ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 51848
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ch = add i32 %.1277, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 648
  %i.cj = icmp sgt i32 %.pre390, 0
  br i1 %i.cj, label %.preheader336.preheader, label %._crit_edge344

.preheader336.preheader:                          ; preds = %.preheader336.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.d, align 16    ; 2 uses
  %i.cn = load <4 x i32>, ptr %i.c, align 16      ; 2 uses
  %i.co = load <4 x i32>, ptr %i.b, align 16      ; 2 uses
  %i.cp = load <2 x double>, ptr %i.cl, align 16
  %i.cq = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cr = shufflevector <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 poison>, <4 x i32> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cs = shufflevector <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, <4 x i32> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.preheader336

.preheader336:                                    ; preds = %.preheader336.preheader, %._crit_edge
  %i.ct = phi i32 [ %i.cc, %.preheader336.preheader ], [ %i.fe, %._crit_edge ]
  %i.cu = phi i32 [ %.pre390, %.preheader336.preheader ], [ %i.ff, %._crit_edge ] ; 2 uses
  %indvars.iv363 = phi i64 [ 0, %.preheader336.preheader ], [ %indvars.iv.next364, %._crit_edge ] ; 4 uses
  %i.cv = phi <2 x double> [ zeroinitializer, %.preheader336.preheader ], [ %i.fg, %._crit_edge ] ; 2 uses
  %i.cw = phi <4 x float> [ %i.cq, %.preheader336.preheader ], [ %i.fi, %._crit_edge ] ; 2 uses
  %i.cx = phi <4 x float> [ %i.cm, %.preheader336.preheader ], [ %i.fh, %._crit_edge ]
  %i.cy = phi <4 x i32> [ %i.cr, %.preheader336.preheader ], [ %i.fk, %._crit_edge ] ; 2 uses
  %i.cz = phi <4 x i32> [ %i.cn, %.preheader336.preheader ], [ %i.fj, %._crit_edge ]
  %i.da = phi <4 x i32> [ %i.cs, %.preheader336.preheader ], [ %i.fm, %._crit_edge ] ; 2 uses
  %i.db = phi <4 x i32> [ %i.co, %.preheader336.preheader ], [ %i.fl, %._crit_edge ]
  %i.dc = phi <2 x double> [ undef, %.preheader336.preheader ], [ %i.fn, %._crit_edge ]
  %i.dd = phi <2 x double> [ zeroinitializer, %.preheader336.preheader ], [ %i.fp, %._crit_edge ] ; 2 uses
  %i.de = phi <2 x double> [ %i.cp, %.preheader336.preheader ], [ %i.fo, %._crit_edge ]
  %i.df = icmp sgt i32 %i.cu, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader336
  %i.dg = trunc i64 %indvars.iv363 to i32
  %i.dh = mul i32 %i.ae, %i.dg
  %i.di = add i32 %i.ch, %i.dh
  %invariant.gep342 = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv363
  %i.dj = trunc nuw nsw i64 %indvars.iv363 to i32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.dk = phi <2 x double> [ %i.cv, %.lr.ph ], [ %i.em, %bb.l ]
  %i.dl = phi <4 x float> [ %i.cw, %.lr.ph ], [ %i.ew, %bb.l ]
  %i.dm = phi <4 x i32> [ %i.cy, %.lr.ph ], [ %i.ey, %bb.l ]
  %i.dn = phi <4 x i32> [ %i.da, %.lr.ph ], [ %i.fa, %bb.l ]
  %i.do = phi <2 x double> [ %i.dd, %.lr.ph ], [ %i.ev, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
end_hunk_0
begin_hunk_1_@pixscope_filter_frame:bb.a
  %i.ee = add i32 %i.ed, %.1279
  %i.ef = add i32 %i.ee, %i.eb
  call void @ff_fill_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.ef, i32 noundef %i.di, i32 noundef %i.ab, i32 noundef %i.ae) #14
  %gep = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep342, i64 %indvars.iv ; 4 uses
  %gep339.1 = getelementptr inbounds nuw i8, ptr %gep, i64 12800
  %i.eg = load <2 x i32>, ptr %i.h, align 16, !tbaa !85 ; 6 uses
  %i.eh = bitcast <2 x i32> %i.eg to <4 x i16>
  %i.ei = extractelement <4 x i16> %i.eh, i64 0
  store i16 %i.ei, ptr %gep, align 2, !tbaa !112
  %i.ej = sitofp <2 x i32> %i.eg to <2 x double>  ; 2 uses
  %i.ek = bitcast <2 x i32> %i.eg to <4 x i16>
  %i.el = extractelement <4 x i16> %i.ek, i64 2
  store i16 %i.el, ptr %gep339.1, align 2, !tbaa !112
  %i.em = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ej, <2 x double> %i.dk) ; 3 uses
  %gep339.2 = getelementptr inbounds nuw i8, ptr %gep, i64 25600
  %gep339.3 = getelementptr inbounds nuw i8, ptr %gep, i64 38400
  %i.en = load <2 x i32>, ptr %i.ck, align 8, !tbaa !85 ; 6 uses
  %i.eo = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = sitofp <4 x i32> %i.eo to <4 x float>
  %i.eq = bitcast <2 x i32> %i.en to <4 x i16>
  %i.er = extractelement <4 x i16> %i.eq, i64 0
  store i16 %i.er, ptr %gep339.2, align 2, !tbaa !112
  %i.es = sitofp <2 x i32> %i.en to <2 x double>  ; 2 uses
  %i.et = bitcast <2 x i32> %i.en to <4 x i16>
  %i.eu = extractelement <4 x i16> %i.et, i64 2
  store i16 %i.eu, ptr %gep339.3, align 2, !tbaa !112
  %i.ev = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.es, <2 x double> %i.do) ; 3 uses
  %i.ew = fadd nsz <4 x float> %i.dl, %i.ep       ; 3 uses
  %i.ex = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ey = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dm, <4 x i32> %i.ex) ; 3 uses
  %i.ez = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dn, <4 x i32> %i.ez) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = load i32, ptr %i.z, align 8, !tbaa !104 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !114

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader336
  %i.fe = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ct, %.preheader336 ] ; 2 uses
  %i.ff = phi i32 [ %i.fb, %._crit_edge.loopexit ], [ %i.cu, %.preheader336 ] ; 2 uses
  %i.fg = phi <2 x double> [ %i.em, %._crit_edge.loopexit ], [ %i.cv, %.preheader336 ] ; 2 uses
  %i.fh = phi <4 x float> [ %i.ew, %._crit_edge.loopexit ], [ %i.cx, %.preheader336 ] ; 2 uses
  %i.fi = phi <4 x float> [ %i.ew, %._crit_edge.loopexit ], [ %i.cw, %.preheader336 ] ; 2 uses
  %i.fj = phi <4 x i32> [ %i.ey, %._crit_edge.loopexit ], [ %i.cz, %.preheader336 ] ; 2 uses
  %i.fk = phi <4 x i32> [ %i.ey, %._crit_edge.loopexit ], [ %i.cy, %.preheader336 ]
  %i.fl = phi <4 x i32> [ %i.fa, %._crit_edge.loopexit ], [ %i.db, %.preheader336 ] ; 2 uses
  %i.fm = phi <4 x i32> [ %i.fa, %._crit_edge.loopexit ], [ %i.da, %.preheader336 ]
  %i.fn = phi <2 x double> [ %i.em, %._crit_edge.loopexit ], [ %i.dc, %.preheader336 ] ; 2 uses
  %i.fo = phi <2 x double> [ %i.ev, %._crit_edge.loopexit ], [ %i.de, %.preheader336 ] ; 2 uses
  %i.fp = phi <2 x double> [ %i.ev, %._crit_edge.loopexit ], [ %i.dd, %.preheader336 ]
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.fq = sext i32 %i.fe to i64
  %i.fr = icmp slt i64 %indvars.iv.next364, %i.fq
  br i1 %i.fr, label %.preheader336, label %._crit_edge344.loopexit, !llvm.loop !115

._crit_edge344.loopexit:                          ; preds = %._crit_edge
  store <2 x double> %i.fn, ptr %i.f, align 16
  store <4 x float> %i.fh, ptr %i.d, align 16
  store <4 x i32> %i.fj, ptr %i.c, align 16
  store <4 x i32> %i.fl, ptr %i.b, align 16
  store <2 x double> %i.fo, ptr %i.cl, align 16
  %i.fs = extractelement <4 x float> %i.fi, i64 0
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %.preheader336.lr.ph, %bb.k
  %i.ft = phi float [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.preheader336.lr.ph ], [ %i.fs, %._crit_edge344.loopexit ]
  %i.fu = phi i32 [ %.pre390, %bb.k ], [ %.pre390, %.preheader336.lr.ph ], [ %i.ff, %._crit_edge344.loopexit ]
  %i.fv = phi <2 x double> [ zeroinitializer, %bb.k ], [ zeroinitializer, %.preheader336.lr.ph ], [ %i.fg, %._crit_edge344.loopexit ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 276 ; 4 uses
  %i.fx = load i32, ptr %i.by, align 8, !tbaa !55
  %i.fy = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 8 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.gb = add nsw i32 %i.ga, -2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 8 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.ge = add nsw i32 %i.gd, -2
  %i.gf = add nsw i32 %i.fu, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef %i.gb, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 1) #14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 6 uses
  %i.gh = load i32, ptr %i.by, align 8, !tbaa !55
  %i.gi = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.gj = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.gk = add nsw i32 %i.gj, -1
  %i.gl = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.gm = add nsw i32 %i.gl, -1
  %i.gn = load i32, ptr %i.z, align 8, !tbaa !104
  %i.go = add nsw i32 %i.gn, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gh, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef %i.gm, i32 noundef %i.go, i32 noundef 1) #14
  %i.gp = load i32, ptr %i.by, align 8, !tbaa !55
  %i.gq = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.gr = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.gs = add nsw i32 %i.gr, -1
  %i.gt = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.gw = add nsw i32 %i.gv, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef 1, i32 noundef %i.gw) #14
  %i.gx = load i32, ptr %i.by, align 8, !tbaa !55
  %i.gy = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.gz = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.ha = add nsw i32 %i.gz, -2
  %i.hb = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.hc = add nsw i32 %i.hb, -2
  %i.hd = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.he = add nsw i32 %i.hd, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.ha, i32 noundef %i.hc, i32 noundef 1, i32 noundef %i.he) #14
  %i.hf = load i32, ptr %i.by, align 8, !tbaa !55
  %i.hg = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.hh = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.hk = add nsw i32 %i.hj, 1
  %i.hl = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.hm = add nsw i32 %i.hk, %i.hl
  %i.hn = load i32, ptr %i.z, align 8, !tbaa !104
  %i.ho = add nsw i32 %i.hn, 3
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef %i.hi, i32 noundef %i.hm, i32 noundef %i.ho, i32 noundef 1) #14
  %i.hp = load i32, ptr %i.by, align 8, !tbaa !55
  %i.hq = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.hr = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.hs = add nsw i32 %i.hr, -2
  %i.ht = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.hu = add nsw i32 %i.ht, 2
  %i.hv = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.hw = add nsw i32 %i.hu, %i.hv
  %i.hx = load i32, ptr %i.z, align 8, !tbaa !104
  %i.hy = add nsw i32 %i.hx, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.hs, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef 1) #14
  %i.hz = load i32, ptr %i.by, align 8, !tbaa !55
  %i.ia = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.ib = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.ic = add nsw i32 %i.ib, 1
  %i.id = load i32, ptr %i.z, align 8, !tbaa !104
  %i.ie = add nsw i32 %i.ic, %i.id
  %i.if = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.ig = add nsw i32 %i.if, -1
  %i.ih = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.ii = add nsw i32 %i.ih, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hz, i32 noundef %i.ia, i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef 1, i32 noundef %i.ii) #14
  %i.ij = load i32, ptr %i.by, align 8, !tbaa !55
  %i.ik = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.il = load i32, ptr %i.fz, align 4, !tbaa !109
  %i.im = add nsw i32 %i.il, 2
  %i.in = load i32, ptr %i.z, align 8, !tbaa !104
  %i.io = add nsw i32 %i.im, %i.in
  %i.ip = load i32, ptr %i.gc, align 8, !tbaa !110
  %i.iq = add nsw i32 %i.ip, -2
  %i.ir = load i32, ptr %i.ac, align 4, !tbaa !105
  %i.is = add nsw i32 %i.ir, 5
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.io, i32 noundef %i.iq, i32 noundef 1, i32 noundef %i.is) #14
  %i.it = load i32, ptr %i.z, align 8, !tbaa !104 ; 3 uses
  %i.iu = load i32, ptr %i.ac, align 4, !tbaa !105 ; 3 uses
  %i.iv = mul nsw i32 %i.iu, %i.it                ; 2 uses
  %i.iw = sitofp nsz i32 %i.iv to double
  %i.ix = sitofp nsz i32 %i.iv to float
  %i.iy = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ja = fdiv nsz <2 x double> %i.fv, %i.iz
  %i.jb = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ja)
  store <2 x double> %i.jb, ptr %i.f, align 16, !tbaa !117
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !119
  %i.je = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.jf = insertelement <2 x float> %i.je, float %i.jd, i64 1
  %i.jg = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = fdiv nsz <2 x float> %i.jf, %i.jh       ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jl = load <2 x double>, ptr %i.jj, align 16, !tbaa !117
  %i.jm = fdiv nsz <2 x double> %i.jl, %i.iz
  %i.jn = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jm)
  store <2 x double> %i.jn, ptr %i.jj, align 16, !tbaa !117
  %i.jo = load <2 x float>, ptr %i.jk, align 8, !tbaa !119
  %i.jp = fdiv nsz <2 x float> %i.jo, %i.jh       ; 2 uses
  %i.jq = shufflevector <2 x float> %i.ji, <2 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.jq, ptr %i.d, align 16, !tbaa !119
  %i.jr = icmp sgt i32 %i.iu, 0
  br i1 %i.jr, label %.preheader334.lr.ph, label %._crit_edge344..preheader_crit_edge

._crit_edge344..preheader_crit_edge:              ; preds = %._crit_edge344
  %.pre403 = load double, ptr %i.e, align 16, !tbaa !117
  br label %.preheader

.preheader334.lr.ph:                              ; preds = %._crit_edge344
  %i.js = icmp sgt i32 %i.it, 0
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 648
  %.pre404 = load double, ptr %i.e, align 16, !tbaa !117 ; 2 uses
  br i1 %i.js, label %.preheader334.preheader, label %.preheader

.preheader334.preheader:                          ; preds = %.preheader334.lr.ph
  %wide.trip.count378 = zext nneg i32 %i.iu to i64
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre392.pre = load double, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !117
  %.phi.trans.insert393.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ju = load <2 x double>, ptr %.phi.trans.insert393.phi.trans.insert, align 16, !tbaa !117
  %wide.trip.count = zext nneg i32 %i.it to i64
  %i.jv = insertelement <2 x double> poison, double %.pre404, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %.pre392.pre, i64 1
  br label %.preheader334

.preheader334:                                    ; preds = %.preheader334.preheader, %._crit_edge351
  %indvars.iv375 = phi i64 [ 0, %.preheader334.preheader ], [ %indvars.iv.next376, %._crit_edge351 ] ; 2 uses
  %i.jx = phi <2 x double> [ %i.jw, %.preheader334.preheader ], [ %i.la, %._crit_edge351 ]
  %i.jy = phi <2 x double> [ %i.ju, %.preheader334.preheader ], [ %i.lj, %._crit_edge351 ]
  %invariant.gep352 = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv375
  br label %.preheader333

.preheader.loopexit:                              ; preds = %._crit_edge351
  store <2 x double> %i.la, ptr %i.e, align 16, !tbaa !117
  store <2 x double> %i.lj, ptr %.phi.trans.insert393.phi.trans.insert, align 16, !tbaa !117
  %i.jz = extractelement <2 x double> %i.la, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge344..preheader_crit_edge, %.preheader334.lr.ph
  %i.ka = phi double [ %.pre403, %._crit_edge344..preheader_crit_edge ], [ %.pre404, %.preheader334.lr.ph ], [ %i.jz, %.preheader.loopexit ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !117
  %i.kd = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.kc, i64 1
  %i.kf = fdiv nsz <2 x double> %i.ke, %i.iz
  %i.kg = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kf)
  store <2 x double> %i.kg, ptr %i.e, align 16, !tbaa !117
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ki = load <2 x double>, ptr %i.kh, align 16, !tbaa !117
  %i.kj = fdiv nsz <2 x double> %i.ki, %i.iz
  %i.kk = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kj)
  store <2 x double> %i.kk, ptr %i.kh, align 16, !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.g, ptr noundef nonnull align 1 dereferenceable(31) @.str.38, i64 31, i1 false)
  %i.kl = add nsw i32 %.1279, 28                  ; 8 uses
  %i.km = load i32, ptr %i.x, align 4, !tbaa !102
  %i.kn = add i32 %.1277, 5
  %i.ko = add i32 %i.kn, %i.km
  %i.kp = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i

.preheader333:                                    ; preds = %.preheader334, %.preheader333
  %indvars.iv372 = phi i64 [ 0, %.preheader334 ], [ %indvars.iv.next373, %.preheader333 ] ; 2 uses
  %i.kq = phi <2 x double> [ %i.jx, %.preheader334 ], [ %i.la, %.preheader333 ]
  %i.kr = phi <2 x double> [ %i.jy, %.preheader334 ], [ %i.lj, %.preheader333 ]
  %gep353 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep352, i64 %indvars.iv372 ; 4 uses
  %i.ks = load i16, ptr %gep353, align 2, !tbaa !112
  %gep348.1 = getelementptr inbounds nuw i8, ptr %gep353, i64 12800
  %i.kt = load i16, ptr %gep348.1, align 2, !tbaa !112
  %i.ku = insertelement <2 x i16> poison, i16 %i.ks, i64 0
  %i.kv = insertelement <2 x i16> %i.ku, i16 %i.kt, i64 1
  %i.kw = uitofp <2 x i16> %i.kv to <2 x float>
  %i.kx = fsub nsz <2 x float> %i.kw, %i.ji       ; 2 uses
  %i.ky = fmul nsz <2 x float> %i.kx, %i.kx
  %i.kz = fpext <2 x float> %i.ky to <2 x double>
  %i.la = fadd nsz <2 x double> %i.kq, %i.kz      ; 4 uses
  %gep348.2 = getelementptr inbounds nuw i8, ptr %gep353, i64 25600
  %i.lb = load i16, ptr %gep348.2, align 2, !tbaa !112
  %gep348.3 = getelementptr inbounds nuw i8, ptr %gep353, i64 38400
  %i.lc = load i16, ptr %gep348.3, align 2, !tbaa !112
  %i.ld = insertelement <2 x i16> poison, i16 %i.lb, i64 0
  %i.le = insertelement <2 x i16> %i.ld, i16 %i.lc, i64 1
  %i.lf = uitofp <2 x i16> %i.le to <2 x float>
  %i.lg = fsub nsz <2 x float> %i.lf, %i.jp       ; 2 uses
  %i.lh = fmul nsz <2 x float> %i.lg, %i.lg
  %i.li = fpext <2 x float> %i.lh to <2 x double>
  %i.lj = fadd nsz <2 x double> %i.kr, %i.li      ; 3 uses
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge351, label %.preheader333, !llvm.loop !120

._crit_edge351:                                   ; preds = %.preheader333
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %.preheader.loopexit, label %.preheader334, !llvm.loop !121

.split.us.i:                                      ; preds = %bb.o, %.preheader
  %i.lk = phi i8 [ %.pre397, %bb.o ], [ 67, %.preheader ] ; 2 uses
  %.021.us.i = phi ptr [ %i.ly, %bb.o ], [ %i.g, %.preheader ]
  %.019.us.i = phi i32 [ %.120.us.i, %bb.o ], [ %i.ko, %.preheader ] ; 3 uses
  %.0.us.i = phi i32 [ %.1.us.i, %bb.o ], [ %i.kl, %.preheader ] ; 2 uses
  switch i8 %i.lk, label %bb.n [
    i8 0, label %draw_text.exit.preheader
    i8 10, label %bb.m
  ]

draw_text.exit.preheader:                         ; preds = %.split.us.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !122
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph357, label %draw_text.exit._crit_edge

.lr.ph357:                                        ; preds = %draw_text.exit.preheader
  %i.lo = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.lq = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  br label %bb.p

bb.m:                                             ; preds = %.split.us.i
  %i.lr = add nsw i32 %.019.us.i, 8
  br label %bb.o

bb.n:                                             ; preds = %.split.us.i
  %i.ls = zext i8 %i.lk to i64
  %i.lt = load i32, ptr %i.by, align 8, !tbaa !55
  %i.lu = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.lv = shl nuw nsw i64 %i.ls, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lv
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.lt, i32 noundef %i.lu, ptr noundef nonnull %i.lw, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i, i32 noundef %.019.us.i) #14
  %i.lx = add nsw i32 %.0.us.i, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.120.us.i = phi i32 [ %i.lr, %bb.m ], [ %.019.us.i, %bb.n ]
  %.1.us.i = phi i32 [ %i.kl, %bb.m ], [ %i.lx, %bb.n ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 1 ; 2 uses
  %.pre397 = load i8, ptr %i.ly, align 1, !tbaa !54
  br label %.split.us.i, !llvm.loop !62

draw_text.exit.loopexit:                          ; preds = %.split.us.i311
  %i.lz = load i32, ptr %i.ll, align 8, !tbaa !122
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next385, %i.ma
  br i1 %i.mb, label %bb.p, label %draw_text.exit._crit_edge, !llvm.loop !123

bb.p:                                             ; preds = %.lr.ph357, %draw_text.exit.loopexit
  %indvars.iv384 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next385, %draw_text.exit.loopexit ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lo, i64 %indvars.iv384
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !54
  %i.me = load i32, ptr %i.lp, align 4, !tbaa !124
  %.not309 = icmp eq i32 %i.me, 0
  %.in310.in.v = select i1 %.not309, ptr @__const.oscilloscope_filter_frame.yuva, ptr @__const.oscilloscope_filter_frame.rgba
  %.in310.in = getelementptr inbounds nuw i8, ptr %.in310.in.v, i64 %indvars.iv384
  %.in310 = load i8, ptr %.in310.in, align 1, !tbaa !54
  %i.mf = sext i8 %.in310 to i32
  %i.mg = zext i8 %i.md to i64                    ; 4 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mg
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !119
  %i.mj = fpext nsz float %i.mi to double
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mg
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !85
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mg
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !85
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mg
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !117
  %i.mq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.39, i32 noundef %i.mf, double noundef %i.mj, i32 noundef %i.ml, i32 noundef %i.mn, double noundef %i.mp) #14 ; 0 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv384
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !125
  %i.mt = load i32, ptr %i.x, align 4, !tbaa !102
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 3 uses
  %i.mu = trunc i64 %indvars.iv.next385 to i32
  %i.mv = mul i32 %i.mu, 15
  %i.mw = add i32 %i.mv, %.1277
  %i.mx = add i32 %i.mw, %i.mt
  %i.my = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i311

.split.us.i311:                                   ; preds = %bb.s, %bb.p
  %.021.us.i312 = phi ptr [ %i.nh, %bb.s ], [ %i.g, %bb.p ] ; 2 uses
  %.019.us.i313 = phi i32 [ %.120.us.i315, %bb.s ], [ %i.mx, %bb.p ] ; 3 uses
  %.0.us.i314 = phi i32 [ %.1.us.i316, %bb.s ], [ %i.kl, %bb.p ] ; 2 uses
  %i.mz = load i8, ptr %.021.us.i312, align 1, !tbaa !54 ; 2 uses
  switch i8 %i.mz, label %bb.r [
    i8 0, label %draw_text.exit.loopexit
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %.split.us.i311
  %i.na = add nsw i32 %.019.us.i313, 8
  br label %bb.s

bb.r:                                             ; preds = %.split.us.i311
  %i.nb = zext i8 %i.mz to i64
  %i.nc = load i32, ptr %i.by, align 8, !tbaa !55
  %i.nd = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.ne = shl nuw nsw i64 %i.nb, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef %i.ms, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.nc, i32 noundef %i.nd, ptr noundef nonnull %i.nf, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i314, i32 noundef %.019.us.i313) #14
  %i.ng = add nsw i32 %.0.us.i314, 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.120.us.i315 = phi i32 [ %i.na, %bb.q ], [ %.019.us.i313, %bb.r ]
  %.1.us.i316 = phi i32 [ %i.kl, %bb.q ], [ %i.ng, %bb.r ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.021.us.i312, i64 1
  br label %.split.us.i311, !llvm.loop !62

draw_text.exit._crit_edge:                        ; preds = %draw_text.exit.loopexit, %draw_text.exit.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.40, i64 10, i1 false)
  %i.ni = load i32, ptr %i.x, align 4, !tbaa !102
  %i.nj = add i32 %.1277, 75
  %i.nk = add i32 %i.nj, %i.ni
  %i.nl = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i318

.split.us.i318:                                   ; preds = %bb.v, %draw_text.exit._crit_edge
  %i.nm = phi i8 [ %.pre398, %bb.v ], [ 67, %draw_text.exit._crit_edge ] ; 2 uses
  %.021.us.i319 = phi ptr [ %i.oa, %bb.v ], [ %i.g, %draw_text.exit._crit_edge ]
  %.019.us.i320 = phi i32 [ %.120.us.i322, %bb.v ], [ %i.nk, %draw_text.exit._crit_edge ] ; 3 uses
  %.0.us.i321 = phi i32 [ %.1.us.i323, %bb.v ], [ %i.kl, %draw_text.exit._crit_edge ] ; 2 uses
  switch i8 %i.nm, label %bb.u [
    i8 0, label %draw_text.exit324.preheader
    i8 10, label %bb.t
  ]

draw_text.exit324.preheader:                      ; preds = %.split.us.i318
  %i.nn = load i32, ptr %i.ll, align 8, !tbaa !122
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph359, label %draw_text.exit324._crit_edge

.lr.ph359:                                        ; preds = %draw_text.exit324.preheader
  %i.np = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.nr = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.ns = add i32 %.1277, 90
  br label %bb.w

bb.t:                                             ; preds = %.split.us.i318
  %i.nt = add nsw i32 %.019.us.i320, 8
  br label %bb.v

bb.u:                                             ; preds = %.split.us.i318
  %i.nu = zext i8 %i.nm to i64
  %i.nv = load i32, ptr %i.by, align 8, !tbaa !55
  %i.nw = load i32, ptr %i.ca, align 4, !tbaa !61
  %i.nx = shl nuw nsw i64 %i.nu, 3
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nx
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.nv, i32 noundef %i.nw, ptr noundef nonnull %i.ny, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i321, i32 noundef %.019.us.i320) #14
  %i.nz = add nsw i32 %.0.us.i321, 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.120.us.i322 = phi i32 [ %i.nt, %bb.t ], [ %.019.us.i320, %bb.u ]
  %.1.us.i323 = phi i32 [ %i.kl, %bb.t ], [ %i.nz, %bb.u ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.021.us.i319, i64 1 ; 2 uses
  %.pre398 = load i8, ptr %i.oa, align 1, !tbaa !54
  br label %.split.us.i318, !llvm.loop !62

bb.w:                                             ; preds = %.lr.ph359, %draw_text.exit331
  %indvars.iv387 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next388, %draw_text.exit331 ] ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.np, i64 %indvars.iv387
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !54
  %i.od = load i32, ptr %i.nq, align 4, !tbaa !124
  %.not308 = icmp eq i32 %i.od, 0
  %.in.in.v = select i1 %.not308, ptr @__const.oscilloscope_filter_frame.yuva, ptr @__const.oscilloscope_filter_frame.rgba
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv387
  %.in = load i8, ptr %.in.in, align 1, !tbaa !54
  %i.oe = sext i8 %.in to i32
  %i.of = zext i8 %i.oc to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !117
  %i.oi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.41, i32 noundef %i.oe, double noundef %i.oh) #14 ; 0 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv387
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !125
  %i.ol = load i32, ptr %i.x, align 4, !tbaa !102
  %i.om = trunc nuw nsw i64 %indvars.iv387 to i32
  %i.on = mul i32 %i.om, 15
  %i.oo = add i32 %i.ns, %i.on
  %i.op = add i32 %i.oo, %i.ol
  %i.oq = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i325

.split.us.i325:                                   ; preds = %bb.z, %bb.w
  %.021.us.i326 = phi ptr [ %i.oz, %bb.z ], [ %i.g, %bb.w ] ; 2 uses
  %.019.us.i327 = phi i32 [ %.120.us.i329, %bb.z ], [ %i.op, %bb.w ] ; 3 uses
  %.0.us.i328 = phi i32 [ %.1.us.i330, %bb.z ], [ %i.kl, %bb.w ] ; 2 uses
  %i.or = load i8, ptr %.021.us.i326, align 1, !tbaa !54 ; 2 uses
end_hunk_1
