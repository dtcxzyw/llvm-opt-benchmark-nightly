Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_limitdiff?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@limitdiff_slice:bb.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !45  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40 ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !49
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !40
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = mul nsw i64 %i.av, %i.o
  %i.ax = sdiv i64 %i.aw, %i.p                    ; 2 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = mul nsw i64 %i.av, %i.r
  %i.ba = sdiv i64 %i.az, %i.p
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %sext = shl i64 %i.ax, 32
  %i.be = ashr exact i64 %sext, 32                ; 4 uses
  %i.bf = mul nsw i64 %i.be, %i.z
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !79
  %i.bj = mul nsw i64 %i.be, %i.ao
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = load i32, ptr %i.s, align 4, !tbaa !80
  %i.bo = and i32 %i.bn, %i.bm
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40
  %i.br = sub nsw i32 %i.bb, %i.ay
  tail call void @av_image_copy_plane(ptr noundef %i.bk, i32 noundef %i.an, ptr noundef %i.bg, i32 noundef %i.y, i32 noundef %i.bq, i32 noundef %i.br) #9
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !79
  %i.bv = mul nsw i64 %i.be, %i.ae
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !79
  %i.bz = mul nsw i64 %i.be, %i.aj
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.081 = phi i32 [ %i.cg, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ]
  %.07280 = phi ptr [ %i.cc, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %.07379 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ca, %.lr.ph.preheader ] ; 2 uses
  %.07478 = phi ptr [ %i.ce, %.lr.ph ], [ %i.bw, %.lr.ph.preheader ] ; 2 uses
  %.07577 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !51
  tail call void %i.cb(ptr noundef %.07577, ptr noundef %.07280, ptr noundef %.07478, ptr noundef %.07379, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.d) #9
  %i.cc = getelementptr inbounds i8, ptr %.07280, i64 %i.ao
  %i.cd = getelementptr inbounds i8, ptr %.07577, i64 %i.z
  %i.ce = getelementptr inbounds i8, ptr %.07478, i64 %i.ae
  %i.cf = getelementptr inbounds i8, ptr %.07379, i64 %i.aj
  %i.cg = add i32 %.081, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.bb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !48
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.b, label %._crit_edge, !llvm.loop !78
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 3 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !82
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.i, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load i32, ptr %i.e, align 4, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.k, i32 noundef %i.l, i32 noundef %i.n) #9 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !84
  %i.s = zext nneg i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = sub nsw i32 0, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !85
  %i.y = zext nneg i8 %i.x to i32
  %i.z = ashr i32 %i.v, %i.y
  %i.aa = sub nsw i32 0, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !40
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !40
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !38
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = ashr i32 %i.ai, %i.s
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !40
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !38  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !40
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !87 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load float, ptr %i.at, align 8, !tbaa !88
  %notmask = shl nsw i32 -1, %i.ar
  %i.av = xor i32 %notmask, -1
  %i.aw = uitofp nsz nneg i32 %i.av to float
  %i.ax = fmul nsz float %i.au, %i.aw
  %i.ay = fptosi float %i.ax to i32               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !49
  %i.ba = sitofp nsz i32 %i.ay to float
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !89
  %i.bd = fmul nsz float %i.bc, %i.ba
  %i.be = fptosi float %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !50
  %i.bg = icmp eq i32 %i.ar, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %limitdiff8.limitdiff16 = select i1 %i.bg, ptr @limitdiff8, ptr @limitdiff16
  store ptr %limitdiff8.limitdiff16, ptr %i.bh, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.o, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @ff_append_inpad(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @limitdiff8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %3 to i64
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.f = sub nsw i32 %5, %4                       ; 25 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.g = sub i64 %i.a, %i.c
  %diff.check = icmp ugt i64 %i.g, -16
  %i.h = sub i64 %i.b, %i.c
  %diff.check50 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check50
  %i.i = sub i64 %i.d, %i.c
  %diff.check51 = icmp ugt i64 %i.i, -16
  %conflict.rdx52 = or i1 %conflict.rdx, %diff.check51
  br i1 %conflict.rdx52, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i32 %6, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat55 = shufflevector <16 x i32> %broadcast.splatinsert54, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.sdiv.continue87
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.sdiv.continue87 ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !tbaa !93 ; 2 uses
  %i.l = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load56 = load <16 x i8>, ptr %i.m, align 1, !tbaa !93 ; 2 uses
  %i.n = zext <16 x i8> %wide.load56 to <16 x i32> ; 2 uses
  %i.o = sub nsw <16 x i32> %i.l, %i.n            ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load57 = load <16 x i8>, ptr %i.p, align 1, !tbaa !93
  %i.q = zext <16 x i8> %wide.load57 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.l, %i.q
  %i.s = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.r, i1 true) ; 18 uses
  %i.t = icmp sgt <16 x i32> %i.s, %broadcast.splat ; 2 uses
  %i.u = icmp slt <16 x i32> %i.s, %broadcast.splat55 ; 2 uses
  %i.v = and <16 x i1> %i.t, %i.u                 ; 16 uses
  %i.w = extractelement <16 x i1> %i.v, i64 0
  br i1 %i.w, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.x = extractelement <16 x i32> %i.s, i64 0
  %i.y = sub nuw nsw i32 %5, %i.x
  %i.z = extractelement <16 x i32> %i.o, i64 0
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = sdiv i32 %i.aa, %i.f
  %i.ac = insertelement <16 x i32> poison, i32 %i.ab, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.ad = phi <16 x i32> [ poison, %vector.body ], [ %i.ac, %pred.sdiv.if ] ; 2 uses
  %i.ae = extractelement <16 x i1> %i.v, i64 1
  br i1 %i.ae, label %pred.sdiv.if58, label %pred.sdiv.continue59

pred.sdiv.if58:                                   ; preds = %pred.sdiv.continue
  %i.af = extractelement <16 x i32> %i.s, i64 1
  %i.ag = sub nuw nsw i32 %5, %i.af
  %i.ah = extractelement <16 x i32> %i.o, i64 1
  %i.ai = mul nsw i32 %i.ag, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.f
  %i.ak = insertelement <16 x i32> %i.ad, i32 %i.aj, i64 1
  br label %pred.sdiv.continue59

pred.sdiv.continue59:                             ; preds = %pred.sdiv.if58, %pred.sdiv.continue
  %i.al = phi <16 x i32> [ %i.ad, %pred.sdiv.continue ], [ %i.ak, %pred.sdiv.if58 ] ; 2 uses
  %i.am = extractelement <16 x i1> %i.v, i64 2
  br i1 %i.am, label %pred.sdiv.if60, label %pred.sdiv.continue61

pred.sdiv.if60:                                   ; preds = %pred.sdiv.continue59
  %i.an = extractelement <16 x i32> %i.s, i64 2
  %i.ao = sub nuw nsw i32 %5, %i.an
  %i.ap = extractelement <16 x i32> %i.o, i64 2
  %i.aq = mul nsw i32 %i.ao, %i.ap
  %i.ar = sdiv i32 %i.aq, %i.f
  %i.as = insertelement <16 x i32> %i.al, i32 %i.ar, i64 2
  br label %pred.sdiv.continue61

pred.sdiv.continue61:                             ; preds = %pred.sdiv.if60, %pred.sdiv.continue59
  %i.at = phi <16 x i32> [ %i.al, %pred.sdiv.continue59 ], [ %i.as, %pred.sdiv.if60 ] ; 2 uses
  %i.au = extractelement <16 x i1> %i.v, i64 3
  br i1 %i.au, label %pred.sdiv.if62, label %pred.sdiv.continue63

pred.sdiv.if62:                                   ; preds = %pred.sdiv.continue61
  %i.av = extractelement <16 x i32> %i.s, i64 3
  %i.aw = sub nuw nsw i32 %5, %i.av
  %i.ax = extractelement <16 x i32> %i.o, i64 3
  %i.ay = mul nsw i32 %i.aw, %i.ax
  %i.az = sdiv i32 %i.ay, %i.f
  %i.ba = insertelement <16 x i32> %i.at, i32 %i.az, i64 3
  br label %pred.sdiv.continue63

pred.sdiv.continue63:                             ; preds = %pred.sdiv.if62, %pred.sdiv.continue61
  %i.bb = phi <16 x i32> [ %i.at, %pred.sdiv.continue61 ], [ %i.ba, %pred.sdiv.if62 ] ; 2 uses
  %i.bc = extractelement <16 x i1> %i.v, i64 4
  br i1 %i.bc, label %pred.sdiv.if64, label %pred.sdiv.continue65

pred.sdiv.if64:                                   ; preds = %pred.sdiv.continue63
  %i.bd = extractelement <16 x i32> %i.s, i64 4
  %i.be = sub nuw nsw i32 %5, %i.bd
  %i.bf = extractelement <16 x i32> %i.o, i64 4
  %i.bg = mul nsw i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, %i.f
  %i.bi = insertelement <16 x i32> %i.bb, i32 %i.bh, i64 4
  br label %pred.sdiv.continue65

pred.sdiv.continue65:                             ; preds = %pred.sdiv.if64, %pred.sdiv.continue63
  %i.bj = phi <16 x i32> [ %i.bb, %pred.sdiv.continue63 ], [ %i.bi, %pred.sdiv.if64 ] ; 2 uses
  %i.bk = extractelement <16 x i1> %i.v, i64 5
  br i1 %i.bk, label %pred.sdiv.if66, label %pred.sdiv.continue67

pred.sdiv.if66:                                   ; preds = %pred.sdiv.continue65
  %i.bl = extractelement <16 x i32> %i.s, i64 5
  %i.bm = sub nuw nsw i32 %5, %i.bl
  %i.bn = extractelement <16 x i32> %i.o, i64 5
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = sdiv i32 %i.bo, %i.f
  %i.bq = insertelement <16 x i32> %i.bj, i32 %i.bp, i64 5
  br label %pred.sdiv.continue67

pred.sdiv.continue67:                             ; preds = %pred.sdiv.if66, %pred.sdiv.continue65
  %i.br = phi <16 x i32> [ %i.bj, %pred.sdiv.continue65 ], [ %i.bq, %pred.sdiv.if66 ] ; 2 uses
  %i.bs = extractelement <16 x i1> %i.v, i64 6
  br i1 %i.bs, label %pred.sdiv.if68, label %pred.sdiv.continue69

pred.sdiv.if68:                                   ; preds = %pred.sdiv.continue67
  %i.bt = extractelement <16 x i32> %i.s, i64 6
  %i.bu = sub nuw nsw i32 %5, %i.bt
  %i.bv = extractelement <16 x i32> %i.o, i64 6
  %i.bw = mul nsw i32 %i.bu, %i.bv
  %i.bx = sdiv i32 %i.bw, %i.f
  %i.by = insertelement <16 x i32> %i.br, i32 %i.bx, i64 6
  br label %pred.sdiv.continue69

pred.sdiv.continue69:                             ; preds = %pred.sdiv.if68, %pred.sdiv.continue67
  %i.bz = phi <16 x i32> [ %i.br, %pred.sdiv.continue67 ], [ %i.by, %pred.sdiv.if68 ] ; 2 uses
  %i.ca = extractelement <16 x i1> %i.v, i64 7
  br i1 %i.ca, label %pred.sdiv.if70, label %pred.sdiv.continue71

pred.sdiv.if70:                                   ; preds = %pred.sdiv.continue69
  %i.cb = extractelement <16 x i32> %i.s, i64 7
  %i.cc = sub nuw nsw i32 %5, %i.cb
  %i.cd = extractelement <16 x i32> %i.o, i64 7
  %i.ce = mul nsw i32 %i.cc, %i.cd
  %i.cf = sdiv i32 %i.ce, %i.f
  %i.cg = insertelement <16 x i32> %i.bz, i32 %i.cf, i64 7
  br label %pred.sdiv.continue71

pred.sdiv.continue71:                             ; preds = %pred.sdiv.if70, %pred.sdiv.continue69
  %i.ch = phi <16 x i32> [ %i.bz, %pred.sdiv.continue69 ], [ %i.cg, %pred.sdiv.if70 ] ; 2 uses
  %i.ci = extractelement <16 x i1> %i.v, i64 8
  br i1 %i.ci, label %pred.sdiv.if72, label %pred.sdiv.continue73

pred.sdiv.if72:                                   ; preds = %pred.sdiv.continue71
  %i.cj = extractelement <16 x i32> %i.s, i64 8
  %i.ck = sub nuw nsw i32 %5, %i.cj
  %i.cl = extractelement <16 x i32> %i.o, i64 8
  %i.cm = mul nsw i32 %i.ck, %i.cl
  %i.cn = sdiv i32 %i.cm, %i.f
  %i.co = insertelement <16 x i32> %i.ch, i32 %i.cn, i64 8
  br label %pred.sdiv.continue73

pred.sdiv.continue73:                             ; preds = %pred.sdiv.if72, %pred.sdiv.continue71
  %i.cp = phi <16 x i32> [ %i.ch, %pred.sdiv.continue71 ], [ %i.co, %pred.sdiv.if72 ] ; 2 uses
  %i.cq = extractelement <16 x i1> %i.v, i64 9
  br i1 %i.cq, label %pred.sdiv.if74, label %pred.sdiv.continue75

pred.sdiv.if74:                                   ; preds = %pred.sdiv.continue73
  %i.cr = extractelement <16 x i32> %i.s, i64 9
  %i.cs = sub nuw nsw i32 %5, %i.cr
  %i.ct = extractelement <16 x i32> %i.o, i64 9
  %i.cu = mul nsw i32 %i.cs, %i.ct
  %i.cv = sdiv i32 %i.cu, %i.f
  %i.cw = insertelement <16 x i32> %i.cp, i32 %i.cv, i64 9
  br label %pred.sdiv.continue75

pred.sdiv.continue75:                             ; preds = %pred.sdiv.if74, %pred.sdiv.continue73
  %i.cx = phi <16 x i32> [ %i.cp, %pred.sdiv.continue73 ], [ %i.cw, %pred.sdiv.if74 ] ; 2 uses
  %i.cy = extractelement <16 x i1> %i.v, i64 10
  br i1 %i.cy, label %pred.sdiv.if76, label %pred.sdiv.continue77

pred.sdiv.if76:                                   ; preds = %pred.sdiv.continue75
  %i.cz = extractelement <16 x i32> %i.s, i64 10
  %i.da = sub nuw nsw i32 %5, %i.cz
  %i.db = extractelement <16 x i32> %i.o, i64 10
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sdiv i32 %i.dc, %i.f
  %i.de = insertelement <16 x i32> %i.cx, i32 %i.dd, i64 10
  br label %pred.sdiv.continue77

pred.sdiv.continue77:                             ; preds = %pred.sdiv.if76, %pred.sdiv.continue75
  %i.df = phi <16 x i32> [ %i.cx, %pred.sdiv.continue75 ], [ %i.de, %pred.sdiv.if76 ] ; 2 uses
  %i.dg = extractelement <16 x i1> %i.v, i64 11
  br i1 %i.dg, label %pred.sdiv.if78, label %pred.sdiv.continue79

pred.sdiv.if78:                                   ; preds = %pred.sdiv.continue77
  %i.dh = extractelement <16 x i32> %i.s, i64 11
  %i.di = sub nuw nsw i32 %5, %i.dh
  %i.dj = extractelement <16 x i32> %i.o, i64 11
  %i.dk = mul nsw i32 %i.di, %i.dj
  %i.dl = sdiv i32 %i.dk, %i.f
  %i.dm = insertelement <16 x i32> %i.df, i32 %i.dl, i64 11
  br label %pred.sdiv.continue79

end_hunk_0
