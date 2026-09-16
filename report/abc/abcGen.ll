Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcGen?download=true
inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_WriteKLut:bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  %.not = icmp eq i32 %1, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04764 = phi i32 [ %i.d, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %.04764) #22 ; 0 uses
  %i.d = add nuw nsw i32 %.04764, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %fputc52 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite53 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge, %.lr.ph67
  %.14865 = phi i32 [ %i.g, %.lr.ph67 ], [ 0, %._crit_edge ] ; 2 uses
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.104, i32 noundef %.14865) #22 ; 0 uses
  %i.g = add nuw nsw i32 %.14865, 1               ; 2 uses
  %exitcond76.not = icmp eq i32 %i.g, %1
  br i1 %exitcond76.not, label %._crit_edge68, label %.lr.ph67, !llvm.loop !87

._crit_edge68:                                    ; preds = %.lr.ph67, %._crit_edge
  %fputc55 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 11, i64 1, ptr %0) ; 0 uses
  %fwrite57 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 13, i64 1, ptr %0) ; 0 uses
  %fwrite58 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 4, i64 1, ptr %0) ; 0 uses
  %i.h = icmp sgt i32 %i.a, 1
  br i1 %i.h, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge68
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  %.neg75 = lshr i32 %i.a, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph73, %bb.e
  %.071 = phi i32 [ 2, %.lr.ph73 ], [ %.1, %bb.e ] ; 2 uses
  %.04570 = phi i32 [ 0, %.lr.ph73 ], [ %.146, %bb.e ]
  %.269 = phi i32 [ 1, %.lr.ph73 ], [ %i.t, %bb.e ] ; 6 uses
  %i.j = icmp eq i32 %.269, %.071
  %i.k = zext i1 %i.j to i32                      ; 2 uses
  %.146 = add nuw nsw i32 %.04570, %i.k           ; 3 uses
  %.1 = shl nsw i32 %.071, %i.k
  %i.l = icmp eq i32 %.146, %i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i32 %.269, %.neg75
  %i.n = shl nsw i32 %i.m, 1                      ; 2 uses
  %i.o = or disjoint i32 %i.n, 1
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %i.i, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %.269) #22 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i32 %.269, 1                 ; 2 uses
  %i.r = or disjoint i32 %i.q, 1
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %.146, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %.269) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %fwrite62 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 6, i64 1, ptr %0) ; 0 uses
  %fwrite63 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 6, i64 1, ptr %0) ; 0 uses
  %i.t = add nuw nsw i32 %.269, 1                 ; 2 uses
  %exitcond77.not = icmp eq i32 %i.t, %i.a
  br i1 %exitcond77.not, label %._crit_edge74, label %bb.b, !llvm.loop !88

._crit_edge74:                                    ; preds = %bb.e, %._crit_edge68
  %fwrite59 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %0) ; 0 uses
  %fputc61 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenFpga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1
  %i.b = add nsw i32 %3, %2                       ; 2 uses
  %i.c = add nsw i32 %i.b, -1                     ; 6 uses
  %i.d = icmp ult i32 %i.c, 2
  %i.e = add i32 %i.b, -2
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %i.c, i32 %i.g
  %.09.i.fr = freeze i32 %.09.i                   ; 9 uses
  %i.h = shl nuw i32 1, %.09.i.fr                 ; 2 uses
  %i.i = shl i32 %2, %1                           ; 2 uses
  %i.j = mul i32 %2, %1
  %i.k = mul i32 %i.j, %.09.i.fr                  ; 2 uses
  %i.l = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 88 uses
  %i.m = tail call ptr (...) @Extra_TimeStamp() #22
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.111, i32 noundef %2, i32 noundef %1, i32 noundef %3, ptr noundef %i.m) #22 ; 0 uses
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.112, i32 noundef %2, i32 noundef %1, i32 noundef %3) #22 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.p = icmp sgt i32 %i.i, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0135176 = phi i32 [ %i.r, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.113, i32 noundef %.0135176) #22 ; 0 uses
  %i.r = add nuw nsw i32 %.0135176, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite147 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %._crit_edge, %.lr.ph179
  %.1136177 = phi i32 [ %i.u, %.lr.ph179 ], [ 0, %._crit_edge ] ; 2 uses
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.114, i32 noundef %.1136177) #22 ; 0 uses
  %i.u = add nuw nsw i32 %.1136177, 1             ; 2 uses
  %exitcond231.not = icmp eq i32 %i.u, %i.k
  br i1 %exitcond231.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !90

._crit_edge180:                                   ; preds = %.lr.ph179, %._crit_edge
  %fputc149 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite150 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %i.l) ; 0 uses
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %.lr.ph183, label %._crit_edge188.critedge

.lr.ph183:                                        ; preds = %._crit_edge180, %.lr.ph183
  %.2137181 = phi i32 [ %i.x, %.lr.ph183 ], [ 0, %._crit_edge180 ] ; 2 uses
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.115, i32 noundef %.2137181) #22 ; 0 uses
  %i.x = add nuw nsw i32 %.2137181, 1             ; 2 uses
  %exitcond232.not = icmp eq i32 %i.x, %3
  br i1 %exitcond232.not, label %._crit_edge184, label %.lr.ph183, !llvm.loop !91

._crit_edge184:                                   ; preds = %.lr.ph183
  %fputc152 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite153 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %i.l) ; 0 uses
  %fwrite154 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 4, i64 1, ptr %i.l) ; 0 uses
  %fputc156 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite157 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 11, i64 1, ptr %i.l) ; 0 uses
  %fwrite158 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.119, i32 noundef %i.c) #22 ; 0 uses
  %fwrite159 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 10, i64 1, ptr %i.l) ; 0 uses
  %fwrite160 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %._crit_edge184, %.lr.ph187
  %.3138185 = phi i32 [ %i.aa, %.lr.ph187 ], [ 0, %._crit_edge184 ] ; 2 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.115, i32 noundef %.3138185) #22 ; 0 uses
  %i.aa = add nuw nsw i32 %.3138185, 1            ; 2 uses
  %exitcond233.not = icmp eq i32 %i.aa, %3
  br i1 %exitcond233.not, label %.lr.ph191.preheader, label %.lr.ph187, !llvm.loop !92

._crit_edge188.critedge:                          ; preds = %._crit_edge180
  %fputc152.c = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite153.c = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %i.l) ; 0 uses
  %fwrite154.c = tail call i64 @fwrite(ptr nonnull @.str.116, i64 4, i64 1, ptr %i.l) ; 0 uses
  %fputc156.c = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %fwrite157.c = tail call i64 @fwrite(ptr nonnull @.str.117, i64 11, i64 1, ptr %i.l) ; 0 uses
  %fwrite158.c = tail call i64 @fwrite(ptr nonnull @.str.118, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.119, i32 noundef %i.c) #22 ; 0 uses
  %fwrite159.c = tail call i64 @fwrite(ptr nonnull @.str.120, i64 10, i64 1, ptr %i.l) ; 0 uses
  %fwrite160.c = tail call i64 @fwrite(ptr nonnull @.str.121, i64 6, i64 1, ptr %i.l) ; 0 uses
  %fwrite161 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %._crit_edge192

.lr.ph191.preheader:                              ; preds = %.lr.ph187
  %fwrite161269 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 6, i64 1, ptr %i.l) ; 0 uses
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %.lr.ph191
  %.4189 = phi i32 [ %i.ac, %.lr.ph191 ], [ 0, %.lr.ph191.preheader ]
  %fputc171 = tail call i32 @fputc(i32 49, ptr %i.l) ; 0 uses
  %i.ac = add nuw nsw i32 %.4189, 1               ; 2 uses
  %exitcond234.not = icmp eq i32 %i.ac, %3
  br i1 %exitcond234.not, label %._crit_edge192, label %.lr.ph191, !llvm.loop !93

._crit_edge192:                                   ; preds = %.lr.ph191, %._crit_edge188.critedge
  %fwrite162 = tail call i64 @fwrite(ptr nonnull @.str.124, i64 3, i64 1, ptr %i.l) ; 0 uses
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph201, label %._crit_edge220.split

.lr.ph201:                                        ; preds = %._crit_edge192
  %.not225 = icmp eq i32 %1, 31
  %i.ae = icmp sgt i32 %1, 0
  br label %bb.k

.preheader174:                                    ; preds = %._crit_edge198
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %.preheader173.lr.ph.split, label %._crit_edge220.split

.preheader173.lr.ph.split:                        ; preds = %.preheader174
  switch i32 %.09.i.fr, label %.preheader173.us.us.preheader [
    i32 31, label %.preheader173.us223
    i32 0, label %.preheader173.us
  ]

.preheader173.us.us.preheader:                    ; preds = %.preheader173.lr.ph.split
  %smax238 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  br label %.preheader173.us.us

.preheader173.us.us:                              ; preds = %.preheader173.us.us.preheader, %._crit_edge210.split.us.us.split.us.us
  %.6219.us.us = phi i32 [ %i.at, %._crit_edge210.split.us.us.split.us.us ], [ 0, %.preheader173.us.us.preheader ] ; 3 uses
  %i.ag = add i32 %.6219.us.us, %3
  %invariant.smin.us.us = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.ag)
  %i.ah = mul nuw nsw i32 %.6219.us.us, %1
  br label %.lr.ph204.us.us.us.us

.lr.ph204.us.us.us.us:                            ; preds = %._crit_edge207.us.us.us.us, %.preheader173.us.us
  %.0134208.us.us.us.us = phi i32 [ 0, %.preheader173.us.us ], [ %i.as, %._crit_edge207.us.us.us.us ] ; 2 uses
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef %.09.i.fr) #22 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph204.us.us.us.us
  %.2202.us.us.us.us = phi i32 [ 0, %.lr.ph204.us.us.us.us ], [ %i.al, %bb.e ] ; 5 uses
  %or.cond.us.us.us.us = icmp slt i32 %.2202.us.us.us.us, %invariant.smin.us.us
  br i1 %or.cond.us.us.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.131, i32 noundef %.2202.us.us.us.us) #22 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.130, i32 noundef %.2202.us.us.us.us, i32 noundef %.2202.us.us.us.us) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = add nuw nsw i32 %.2202.us.us.us.us, 1   ; 2 uses
  %exitcond239.not = icmp eq i32 %i.al, %smax238
  br i1 %exitcond239.not, label %..preheader_crit_edge.us.us.us.us, label %bb.b, !llvm.loop !94

..preheader_crit_edge.us.us.us.us:                ; preds = %bb.e
  %i.am = add nuw nsw i32 %.0134208.us.us.us.us, %i.ah ; 2 uses
  %i.an = mul nsw i32 %i.am, %.09.i.fr
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %..preheader_crit_edge.us.us.us.us
  %.3205.us.us.us.us = phi i32 [ 0, %..preheader_crit_edge.us.us.us.us ], [ %i.aq, %bb.f ] ; 3 uses
  %i.ao = add nsw i32 %.3205.us.us.us.us, %i.an
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef %.3205.us.us.us.us, i32 noundef %i.ao) #22 ; 0 uses
  %i.aq = add nuw i32 %.3205.us.us.us.us, 1       ; 2 uses
  %exitcond240.not = icmp eq i32 %i.aq, %.09.i.fr
  br i1 %exitcond240.not, label %._crit_edge207.us.us.us.us, label %bb.f, !llvm.loop !95

._crit_edge207.us.us.us.us:                       ; preds = %bb.f
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.am) #22 ; 0 uses
  %fputc167.us.us.us.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.as = add nuw nsw i32 %.0134208.us.us.us.us, 1 ; 2 uses
  %exitcond241.not = icmp eq i32 %i.as, %1
  br i1 %exitcond241.not, label %._crit_edge210.split.us.us.split.us.us, label %.lr.ph204.us.us.us.us, !llvm.loop !96

._crit_edge210.split.us.us.split.us.us:           ; preds = %._crit_edge207.us.us.us.us
  %i.at = add nuw nsw i32 %.6219.us.us, 1         ; 2 uses
  %exitcond242.not = icmp eq i32 %i.at, %2
  br i1 %exitcond242.not, label %._crit_edge220.split, label %.preheader173.us.us, !llvm.loop !97

.preheader173.us:                                 ; preds = %.preheader173.lr.ph.split, %._crit_edge210.split.us.us.split
  %.6219.us = phi i32 [ %i.bd, %._crit_edge210.split.us.us.split ], [ %.09.i.fr, %.preheader173.lr.ph.split ] ; 3 uses
  %i.au = add i32 %.6219.us, %3
  %invariant.smin.us = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.au)
  %i.av = mul nuw nsw i32 %.6219.us, %1
  br label %.lr.ph204.us.us

.lr.ph204.us.us:                                  ; preds = %..preheader_crit_edge.us.us, %.preheader173.us
  %.0134208.us.us = phi i32 [ 0, %.preheader173.us ], [ %i.bc, %..preheader_crit_edge.us.us ] ; 2 uses
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef 0) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph204.us.us
  %.2202.us.us = phi i32 [ 0, %.lr.ph204.us.us ], [ %i.az, %bb.j ] ; 5 uses
  %or.cond.us.us = icmp slt i32 %.2202.us.us, %invariant.smin.us
  br i1 %or.cond.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.131, i32 noundef %.2202.us.us) #22 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.130, i32 noundef %.2202.us.us, i32 noundef %.2202.us.us) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = add nuw nsw i32 %.2202.us.us, 1         ; 2 uses
  %exitcond244.not = icmp eq i32 %i.az, %i.h
  br i1 %exitcond244.not, label %..preheader_crit_edge.us.us, label %bb.g, !llvm.loop !94

..preheader_crit_edge.us.us:                      ; preds = %bb.j
  %i.ba = add nuw nsw i32 %.0134208.us.us, %i.av
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.ba) #22 ; 0 uses
  %fputc167.us.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.bc = add nuw nsw i32 %.0134208.us.us, 1      ; 2 uses
  %exitcond245.not = icmp eq i32 %i.bc, %1
  br i1 %exitcond245.not, label %._crit_edge210.split.us.us.split, label %.lr.ph204.us.us, !llvm.loop !96

._crit_edge210.split.us.us.split:                 ; preds = %..preheader_crit_edge.us.us
  %i.bd = add nuw nsw i32 %.6219.us, 1            ; 2 uses
  %exitcond246.not = icmp eq i32 %i.bd, %2
  br i1 %exitcond246.not, label %._crit_edge220.split, label %.preheader173.us, !llvm.loop !97

.preheader173.us223:                              ; preds = %.preheader173.lr.ph.split, %._crit_edge210.split.split.us.us
  %.6219.us224 = phi i32 [ %i.dt, %._crit_edge210.split.split.us.us ], [ 0, %.preheader173.lr.ph.split ] ; 2 uses
  %i.be = mul nuw nsw i32 %.6219.us224, %1
  br label %.preheader.us212.us

.preheader.us212.us:                              ; preds = %.preheader.us212.us, %.preheader173.us223
  %.0134208.us213.us = phi i32 [ 0, %.preheader173.us223 ], [ %i.ds, %.preheader.us212.us ] ; 2 uses
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef 31) #22 ; 0 uses
  %i.bg = add nuw nsw i32 %.0134208.us213.us, %i.be ; 2 uses
  %i.bh = mul nuw nsw i32 %i.bg, 31               ; 31 uses
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef %i.bh) #22 ; 0 uses
  %i.bj = add nuw nsw i32 %i.bh, 1
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 1, i32 noundef %i.bj) #22 ; 0 uses
  %i.bl = add nuw nsw i32 %i.bh, 2
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 2, i32 noundef %i.bl) #22 ; 0 uses
  %i.bn = add nuw nsw i32 %i.bh, 3
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 3, i32 noundef %i.bn) #22 ; 0 uses
  %i.bp = add nuw nsw i32 %i.bh, 4
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 4, i32 noundef %i.bp) #22 ; 0 uses
  %i.br = add nuw nsw i32 %i.bh, 5
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 5, i32 noundef %i.br) #22 ; 0 uses
  %i.bt = add nuw nsw i32 %i.bh, 6
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 6, i32 noundef %i.bt) #22 ; 0 uses
  %i.bv = add nuw nsw i32 %i.bh, 7
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 7, i32 noundef %i.bv) #22 ; 0 uses
  %i.bx = add nuw nsw i32 %i.bh, 8
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 8, i32 noundef %i.bx) #22 ; 0 uses
  %i.bz = add nuw nsw i32 %i.bh, 9
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 9, i32 noundef %i.bz) #22 ; 0 uses
  %i.cb = add nuw nsw i32 %i.bh, 10
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 10, i32 noundef %i.cb) #22 ; 0 uses
  %i.cd = add nuw nsw i32 %i.bh, 11
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 11, i32 noundef %i.cd) #22 ; 0 uses
  %i.cf = add nuw nsw i32 %i.bh, 12
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 12, i32 noundef %i.cf) #22 ; 0 uses
  %i.ch = add nuw nsw i32 %i.bh, 13
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 13, i32 noundef %i.ch) #22 ; 0 uses
  %i.cj = add nuw nsw i32 %i.bh, 14
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 14, i32 noundef %i.cj) #22 ; 0 uses
  %i.cl = add nuw nsw i32 %i.bh, 15
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 15, i32 noundef %i.cl) #22 ; 0 uses
  %i.cn = add nuw nsw i32 %i.bh, 16
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 16, i32 noundef %i.cn) #22 ; 0 uses
  %i.cp = add nuw nsw i32 %i.bh, 17
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 17, i32 noundef %i.cp) #22 ; 0 uses
  %i.cr = add nuw nsw i32 %i.bh, 18
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 18, i32 noundef %i.cr) #22 ; 0 uses
  %i.ct = add nuw nsw i32 %i.bh, 19
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 19, i32 noundef %i.ct) #22 ; 0 uses
  %i.cv = add nuw nsw i32 %i.bh, 20
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 20, i32 noundef %i.cv) #22 ; 0 uses
  %i.cx = add nuw nsw i32 %i.bh, 21
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 21, i32 noundef %i.cx) #22 ; 0 uses
  %i.cz = add nuw nsw i32 %i.bh, 22
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 22, i32 noundef %i.cz) #22 ; 0 uses
  %i.db = add nuw nsw i32 %i.bh, 23
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 23, i32 noundef %i.db) #22 ; 0 uses
  %i.dd = add nuw nsw i32 %i.bh, 24
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 24, i32 noundef %i.dd) #22 ; 0 uses
  %i.df = add nuw nsw i32 %i.bh, 25
  %i.dg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 25, i32 noundef %i.df) #22 ; 0 uses
  %i.dh = add nuw nsw i32 %i.bh, 26
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 26, i32 noundef %i.dh) #22 ; 0 uses
  %i.dj = add nuw nsw i32 %i.bh, 27
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 27, i32 noundef %i.dj) #22 ; 0 uses
  %i.dl = add nuw nsw i32 %i.bh, 28
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 28, i32 noundef %i.dl) #22 ; 0 uses
  %i.dn = add nuw nsw i32 %i.bh, 29
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 29, i32 noundef %i.dn) #22 ; 0 uses
  %i.dp = add nuw nsw i32 %i.bh, 30
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.132, i32 noundef 30, i32 noundef %i.dp) #22 ; 0 uses
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.133, i32 noundef %i.bg) #22 ; 0 uses
  %fputc167.us217.us = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ds = add nuw nsw i32 %.0134208.us213.us, 1   ; 2 uses
  %exitcond248.not = icmp eq i32 %i.ds, %1
  br i1 %exitcond248.not, label %._crit_edge210.split.split.us.us, label %.preheader.us212.us, !llvm.loop !96

._crit_edge210.split.split.us.us:                 ; preds = %.preheader.us212.us
  %i.dt = add nuw nsw i32 %.6219.us224, 1         ; 2 uses
  %exitcond249.not = icmp eq i32 %i.dt, %2
  br i1 %exitcond249.not, label %._crit_edge220.split, label %.preheader173.us223, !llvm.loop !97

bb.k:                                             ; preds = %.lr.ph201, %._crit_edge198
  %.5199 = phi i32 [ 0, %.lr.ph201 ], [ %i.ef, %._crit_edge198 ] ; 4 uses
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.126, i32 noundef %1) #22 ; 0 uses
  br i1 %.not225, label %.lr.ph197, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.k
  %i.dv = shl i32 %.5199, %1
  br label %bb.l

.preheader175:                                    ; preds = %bb.l
  br i1 %i.ae, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %bb.k, %.preheader175
  %i.dw = mul nuw nsw i32 %.5199, %1
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph195, %bb.l
  %.0193 = phi i32 [ 0, %.lr.ph195 ], [ %i.dz, %bb.l ] ; 3 uses
  %i.dx = add nsw i32 %.0193, %i.dv
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.127, i32 noundef %.0193, i32 noundef %i.dx) #22 ; 0 uses
  %i.dz = add nuw nsw i32 %.0193, 1               ; 2 uses
  %exitcond235.not = icmp eq i32 %i.dz, %i.a
  br i1 %exitcond235.not, label %.preheader175, label %bb.l, !llvm.loop !98

bb.m:                                             ; preds = %.lr.ph197, %bb.m
  %.1196 = phi i32 [ 0, %.lr.ph197 ], [ %i.ec, %bb.m ] ; 3 uses
  %i.ea = add nuw nsw i32 %.1196, %i.dw
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.128, i32 noundef %.1196, i32 noundef %i.ea) #22 ; 0 uses
  %i.ec = add nuw nsw i32 %.1196, 1               ; 2 uses
  %exitcond236.not = icmp eq i32 %i.ec, %1
  br i1 %exitcond236.not, label %._crit_edge198, label %bb.m, !llvm.loop !99

._crit_edge198:                                   ; preds = %bb.m, %.preheader175
  %i.ed = add nsw i32 %.5199, %3
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.129, i32 noundef %i.ed) #22 ; 0 uses
  %fputc169 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  %i.ef = add nuw nsw i32 %.5199, 1               ; 2 uses
  %exitcond237.not = icmp eq i32 %i.ef, %2
  br i1 %exitcond237.not, label %.preheader174, label %bb.k, !llvm.loop !100

._crit_edge220.split:                             ; preds = %._crit_edge210.split.us.us.split, %._crit_edge210.split.split.us.us, %._crit_edge210.split.us.us.split.us.us, %._crit_edge192, %.preheader174
  %fwrite163 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %i.l) ; 0 uses
  %fputc165 = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  tail call void @Abc_WriteKLut(ptr noundef %i.l, i32 noundef %1)
  %.not = icmp eq i32 %.09.i.fr, %1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge220.split
  tail call void @Abc_WriteKLut(ptr noundef %i.l, i32 noundef %.09.i.fr)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge220.split
  %i.eg = tail call i32 @fclose(ptr noundef %i.l) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenOneHot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 13 uses
  %i.b = tail call ptr (...) @Extra_TimeStamp() #22
end_hunk_0
