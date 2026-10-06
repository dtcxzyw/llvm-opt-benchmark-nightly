Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_waveform?download=true
inline.NumInlined: 250
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 37
begin_hunk_0_@envelope16:bb.a
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !84
  %i.du = mul nsw i32 %i.dt, %i.g
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dv
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %indvars.iv233.i
  store i16 %i.di, ptr %i.dx, align 2, !tbaa !106
  %indvars.iv.next234.i = add nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %i.dy = icmp slt i64 %indvars.iv.next234.i, %i.dk
  br i1 %i.dy, label %bb.w, label %envelope_peak16.exit, !llvm.loop !201

._crit_edge213.i.loopexit:                        ; preds = %.critedge6.us.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !136
  br label %._crit_edge213.i

._crit_edge213.i:                                 ; preds = %.lr.ph212.i, %._crit_edge213.i.loopexit, %.preheader.i
  %i.dz = phi i32 [ %i.b, %.preheader.i ], [ %.pre, %._crit_edge213.i.loopexit ], [ %i.b, %.lr.ph212.i ]
  %i.ea = icmp eq i32 %i.dz, 3
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge213.i
  tail call fastcc void @envelope_instant16(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge213.i
  br i1 %i.cb, label %.lr.ph217.i, label %envelope_peak16.exit

.lr.ph217.i:                                      ; preds = %bb.y
  %i.eb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !104
  %i.ed = trunc i32 %i.p to i16                   ; 2 uses
  %i.ee = sext i32 %4 to i64                      ; 2 uses
  %i.ef = sext i32 %i.g to i64
  %i.eg = sext i32 %i.ca to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph217.i
  %indvars.iv256.i = phi i64 [ %i.ee, %.lr.ph217.i ], [ %indvars.iv.next257.i, %bb.z ] ; 3 uses
  %i.eh = mul nsw i64 %indvars.iv256.i, %i.ef
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.eh ; 2 uses
  %i.ej = sub nsw i64 %indvars.iv256.i, %i.ee     ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !84
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.em
  store i16 %i.ed, ptr %i.en, align 2, !tbaa !106
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ej
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !84
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.eq
  store i16 %i.ed, ptr %i.er, align 2, !tbaa !106
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next257.i, %i.eg
  br i1 %i.es, label %bb.z, label %envelope_peak16.exit, !llvm.loop !202

envelope_peak16.exit:                             ; preds = %bb.w, %bb.z, %bb.y, %bb.v, %bb.a, %bb.b
  ret void
}

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @envelope_instant(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = sext i32 %3 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %i.b
  %i.g = load i8, ptr %i.f, align 1, !tbaa !96    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  %i.j = icmp eq i32 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !137  ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !138  ; 2 uses
  %i.o = sdiv i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !139
  %i.r = sdiv i32 %i.q, %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %i.o, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.v = phi i32 [ %i.r, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = sext i32 %2 to i64                       ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !84   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !84 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.preheader, label %.preheader86

.preheader86:                                     ; preds = %bb.d
  %i.af = icmp sgt i32 %i.v, 0
  br i1 %i.af, label %.preheader84.lr.ph, label %.loopexit82

.preheader84.lr.ph:                               ; preds = %.preheader86
  %i.ag = add nsw i32 %i.v, %4
  %i.ah = icmp slt i32 %i.z, %i.ac
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.aj = sext i32 %i.d to i64                    ; 2 uses
  %i.ak = sext i32 %4 to i64                      ; 2 uses
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  br i1 %i.ah, label %.preheader84.us.preheader, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.am = sext i32 %i.ac to i64                   ; 0 uses
  %i.an = sext i32 %i.z to i64                    ; 0 uses
  br label %.preheader84

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph
  %i.ao = sext i32 %i.z to i64                    ; 2 uses
  %i.ap = sext i32 %i.ac to i64
  br label %.preheader84.us

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %.loopexit83.us
  %indvars.iv122 = phi i64 [ %i.ak, %.preheader84.us.preheader ], [ %indvars.iv.next123, %.loopexit83.us ] ; 5 uses
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !104
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph170.preheader, label %bb.f, !llvm.loop !203

bb.f:                                             ; preds = %.preheader84.us, %bb.e
  %indvars.iv116 = phi i64 [ %i.ao, %.preheader84.us ], [ %indvars.iv.next117, %bb.e ] ; 2 uses
  %i.ar = mul nsw i64 %indvars.iv116, %i.aj
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %indvars.iv122
  %i.au = load i8, ptr %i.at, align 1, !tbaa !96
  %.not78.us = icmp eq i8 %i.au, %i.g
  br i1 %.not78.us, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %indvars.iv122
  store i8 -1, ptr %i.av, align 1, !tbaa !96
  br label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.g, %bb.e
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !104
  br label %.lr.ph170

bb.h:                                             ; preds = %.lr.ph170
  %.not79.not.us = icmp sgt i64 %indvars.iv.next120, %i.ao
  br i1 %.not79.not.us, label %.lr.ph170, label %.loopexit83.us, !llvm.loop !204

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.h
  %indvars.iv119169 = phi i64 [ %indvars.iv.next120, %bb.h ], [ %i.ap, %.lr.ph170.preheader ]
  %indvars.iv.next120 = add nsw i64 %indvars.iv119169, -1 ; 3 uses
  %i.ax = mul nsw i64 %indvars.iv.next120, %i.aj
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %indvars.iv122
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !96
  %.not80.us = icmp eq i8 %i.ba, %i.g
  br i1 %.not80.us, label %bb.h, label %bb.i, !llvm.loop !204

bb.i:                                             ; preds = %.lr.ph170
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %indvars.iv122
  store i8 -1, ptr %i.bb, align 1, !tbaa !96
  br label %.loopexit83.us

.loopexit83.us:                                   ; preds = %bb.h, %bb.i
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.bc = icmp slt i64 %indvars.iv.next123, %i.al
  br i1 %i.bc, label %.preheader84.us, label %.loopexit82, !llvm.loop !205

.preheader:                                       ; preds = %bb.d
  %i.bd = icmp sgt i32 %i.u, 0
  br i1 %i.bd, label %.lr.ph101, label %.loopexit82

.lr.ph101:                                        ; preds = %.preheader
  %i.be = add nsw i32 %i.u, %4
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.bg = icmp slt i32 %i.z, %i.ac
  %i.bh = sext i32 %4 to i64                      ; 2 uses
  %i.bi = sext i32 %i.d to i64                    ; 2 uses
  %i.bj = sext i32 %i.be to i64                   ; 2 uses
  br i1 %i.bg, label %.lr.ph.us.preheader, label %.loopexit81.preheader

.loopexit81.preheader:                            ; preds = %.lr.ph101
  %i.bk = sext i32 %i.ac to i64                   ; 0 uses
  %i.bl = sext i32 %i.z to i64                    ; 0 uses
  %.pre142 = load ptr, ptr %i.bf, align 8, !tbaa !104
  br label %.loopexit81

.lr.ph.us.preheader:                              ; preds = %.lr.ph101
  %i.bm = sext i32 %i.z to i64                    ; 2 uses
  %i.bn = sext i32 %i.ac to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv139 = phi i64 [ %i.bh, %.lr.ph.us.preheader ], [ %indvars.iv.next140, %.loopexit.us ] ; 2 uses
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !104
  %i.bp = mul nsw i64 %indvars.iv139, %i.bi
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next132 to i32
  %exitcond135.not = icmp eq i32 %i.ac, %lftr.wideiv134
  br i1 %exitcond135.not, label %.lr.ph176.preheader, label %bb.k, !llvm.loop !206

bb.k:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv131 = phi i64 [ %i.bm, %.lr.ph.us ], [ %indvars.iv.next132, %bb.j ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv131
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %.not75.us = icmp eq i8 %i.bs, %i.g
  br i1 %.not75.us, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv131
  store i8 -1, ptr %i.bt, align 1, !tbaa !96
  br label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %bb.l, %bb.j
  br label %.lr.ph176

bb.m:                                             ; preds = %.lr.ph176
  %.not76.not.us = icmp sgt i64 %indvars.iv.next137, %i.bm
  br i1 %.not76.not.us, label %.lr.ph176, label %.loopexit.us, !llvm.loop !207

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.m
  %indvars.iv136175 = phi i64 [ %indvars.iv.next137, %bb.m ], [ %i.bn, %.lr.ph176.preheader ]
  %indvars.iv.next137 = add nsw i64 %indvars.iv136175, -1 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv.next137
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !96
  %.not77.us = icmp eq i8 %i.bv, %i.g
  br i1 %.not77.us, label %bb.m, label %bb.n, !llvm.loop !207

bb.n:                                             ; preds = %.lr.ph176
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv.next137
  store i8 -1, ptr %i.bw, align 1, !tbaa !96
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.m, %bb.n
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next140, %i.bj
  br i1 %i.bx, label %.lr.ph.us, label %.loopexit82, !llvm.loop !208

.preheader84:                                     ; preds = %.preheader84.preheader, %.preheader84
  %indvars.iv113 = phi i64 [ %i.ak, %.preheader84.preheader ], [ %indvars.iv.next114, %.preheader84 ]
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.by = icmp slt i64 %indvars.iv.next114, %i.al
  br i1 %i.by, label %.preheader84, label %.loopexit82, !llvm.loop !205

.loopexit81:                                      ; preds = %.loopexit81.preheader, %.loopexit81
  %5 = phi ptr [ %.pre142, %.loopexit81.preheader ], [ %5, %.loopexit81 ] ; 2 uses
  %indvars.iv128 = phi i64 [ %i.bh, %.loopexit81.preheader ], [ %indvars.iv.next129, %.loopexit81 ] ; 2 uses
  %i.bz = mul nsw i64 %indvars.iv128, %i.bi
  %i.ca = getelementptr inbounds i8, ptr %5, i64 %i.bz ; 0 uses
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next129, %i.bj
  br i1 %i.cb, label %.loopexit81, label %.loopexit82, !llvm.loop !208

.loopexit82:                                      ; preds = %.preheader84, %.loopexit83.us, %.loopexit81, %.loopexit.us, %.preheader86, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @envelope_instant16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = sext i32 %3 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = sdiv i32 %i.d, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !96
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94   ; 2 uses
  %i.l = sdiv i32 %i.k, 256
  %i.m = mul nsw i32 %i.l, %i.i                   ; 4 uses
  %i.n = add nsw i32 %i.k, -1                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !115
  %i.q = icmp eq i32 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !137  ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !138  ; 2 uses
  %i.v = sdiv i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139
  %i.y = sdiv i32 %i.x, %i.u
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = phi i32 [ %i.v, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.ac = phi i32 [ %i.y, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = sext i32 %2 to i64                      ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !84 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !116
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader, label %.preheader92

.preheader92:                                     ; preds = %bb.d
  %i.am = add nsw i32 %i.ac, %4                   ; 2 uses
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %.preheader90.lr.ph, label %.loopexit88

.preheader90.lr.ph:                               ; preds = %.preheader92
  %i.ao = icmp slt i32 %i.ag, %i.aj
  %i.ap = trunc i32 %i.n to i16                   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  br i1 %i.ao, label %.preheader90.lr.ph.split.us, label %.preheader90.preheader

.preheader90.preheader:                           ; preds = %.preheader90.lr.ph
  %i.ar = sext i32 %i.aj to i64                   ; 0 uses
  %i.as = sext i32 %i.e to i64                    ; 0 uses
  %i.at = sext i32 %i.ag to i64                   ; 0 uses
  %i.au = sext i32 %4 to i64
  %i.av = sext i32 %i.am to i64
  br label %.preheader90

.preheader90.lr.ph.split.us:                      ; preds = %.preheader90.lr.ph
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.ax = sext i32 %i.ag to i64                   ; 2 uses
  %i.ay = sext i32 %i.e to i64                    ; 2 uses
  %i.az = sext i32 %i.aj to i64
  %i.ba = sext i32 %4 to i64
  %i.bb = sext i32 %i.am to i64
  br label %.preheader90.us

.preheader90.us:                                  ; preds = %.loopexit89.us, %.preheader90.lr.ph.split.us
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.loopexit89.us ], [ %i.ba, %.preheader90.lr.ph.split.us ] ; 5 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next123 to i32
  %exitcond.not = icmp eq i32 %i.aj, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph176.preheader, label %bb.f, !llvm.loop !209

bb.f:                                             ; preds = %.preheader90.us, %bb.e
  %indvars.iv122 = phi i64 [ %i.ax, %.preheader90.us ], [ %indvars.iv.next123, %bb.e ] ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv122, %i.ay
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %indvars.iv128
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !106
  %i.bg = zext i16 %i.bf to i32
  %.not84.us = icmp eq i32 %i.m, %i.bg
  br i1 %.not84.us, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %indvars.iv128
  store i16 %i.ap, ptr %i.bh, align 2, !tbaa !106
  br label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %bb.g, %bb.e
  br label %.lr.ph176

bb.h:                                             ; preds = %.lr.ph176
  %.not85.not.us = icmp sgt i64 %indvars.iv.next126, %i.ax
  br i1 %.not85.not.us, label %.lr.ph176, label %.loopexit89.us, !llvm.loop !210

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.h
  %indvars.iv125175 = phi i64 [ %indvars.iv.next126, %bb.h ], [ %i.az, %.lr.ph176.preheader ]
  %indvars.iv.next126 = add nsw i64 %indvars.iv125175, -1 ; 3 uses
  %i.bi = mul nsw i64 %indvars.iv.next126, %i.ay
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %indvars.iv128
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !106
  %i.bm = zext i16 %i.bl to i32
  %.not86.us = icmp eq i32 %i.m, %i.bm
  br i1 %.not86.us, label %bb.h, label %bb.i, !llvm.loop !210

bb.i:                                             ; preds = %.lr.ph176
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %indvars.iv128
  store i16 %i.ap, ptr %i.bn, align 2, !tbaa !106
  br label %.loopexit89.us

.loopexit89.us:                                   ; preds = %bb.h, %bb.i
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next129, %i.bb
  br i1 %i.bo, label %.preheader90.us, label %.loopexit88, !llvm.loop !211

.preheader:                                       ; preds = %bb.d
  %i.bp = icmp sgt i32 %i.ab, 0
  br i1 %i.bp, label %.lr.ph107, label %.loopexit88

.lr.ph107:                                        ; preds = %.preheader
  %i.bq = add nsw i32 %i.ab, %4
  %i.br = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !104 ; 2 uses
  %i.bt = icmp slt i32 %i.ag, %i.aj
  %i.bu = trunc i32 %i.n to i16                   ; 2 uses
  %i.bv = sext i32 %4 to i64                      ; 2 uses
  %i.bw = sext i32 %i.e to i64                    ; 2 uses
  %i.bx = sext i32 %i.bq to i64                   ; 2 uses
  br i1 %i.bt, label %.lr.ph.us.preheader, label %.loopexit87.preheader

.loopexit87.preheader:                            ; preds = %.lr.ph107
  %i.by = sext i32 %i.aj to i64                   ; 0 uses
  %i.bz = sext i32 %i.ag to i64                   ; 0 uses
  br label %.loopexit87

.lr.ph.us.preheader:                              ; preds = %.lr.ph107
  %i.ca = sext i32 %i.ag to i64                   ; 2 uses
  %i.cb = sext i32 %i.aj to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv145 = phi i64 [ %i.bv, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %.loopexit.us ] ; 2 uses
  %i.cc = mul nsw i64 %indvars.iv145, %i.bw
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.cc ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %lftr.wideiv140 = trunc i64 %indvars.iv.next138 to i32
  %exitcond141.not = icmp eq i32 %i.aj, %lftr.wideiv140
  br i1 %exitcond141.not, label %.lr.ph182.preheader, label %bb.k, !llvm.loop !212

bb.k:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv137 = phi i64 [ %i.ca, %.lr.ph.us ], [ %indvars.iv.next138, %bb.j ] ; 3 uses
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %indvars.iv137
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !106
  %i.cg = zext i16 %i.cf to i32
  %.not81.us = icmp eq i32 %i.m, %i.cg
  br i1 %.not81.us, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %indvars.iv137
  store i16 %i.bu, ptr %i.ch, align 2, !tbaa !106
  br label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %bb.l, %bb.j
  br label %.lr.ph182

bb.m:                                             ; preds = %.lr.ph182
  %.not82.not.us = icmp sgt i64 %indvars.iv.next143, %i.ca
  br i1 %.not82.not.us, label %.lr.ph182, label %.loopexit.us, !llvm.loop !213
end_hunk_0
