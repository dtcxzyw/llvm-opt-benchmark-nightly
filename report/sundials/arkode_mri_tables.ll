Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mri_tables?download=true
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@MRIStepCoupling_Space:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %2, align 8, !tbaa !96
  %i.g = add nsw i64 %i.f, %i.e
  store i64 %i.g, ptr %2, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  %i.o = mul i32 %i.m, %i.k
  %i.p = mul i32 %i.o, %i.n
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8, !tbaa !96
  %i.s = add nsw i64 %i.r, %i.q
  store i64 %i.s, ptr %2, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %.not23 = icmp eq ptr %i.u, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  %i.aa = mul i32 %i.y, %i.w
  %i.ab = mul i32 %i.aa, %i.z
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr %2, align 8, !tbaa !96
  %i.ae = add nsw i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %2, align 8, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33
  %.not24 = icmp eq ptr %i.ag, null
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load i64, ptr %1, align 8, !tbaa !96
  %i.am = add nsw i64 %i.al, %i.ak
  store i64 %i.am, ptr %1, align 8, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define void @MRIStepCoupling_Write(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not124 = icmp eq ptr %i.b, null
  br i1 %.not124, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %.not125 = icmp eq ptr %i.d, null
  br i1 %.not125, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not126 = icmp eq ptr %i.f, null
  br i1 %.not126, label %.loopexit, label %.loopexit175

.thread:                                          ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not126287 = icmp eq ptr %i.h, null
  br i1 %.not126287, label %.loopexit, label %.preheader174

.preheader174:                                    ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph180, label %.loopexit175

.lr.ph180:                                        ; preds = %.preheader174
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count231 = zext nneg i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph180, %._crit_edge
  %indvars.iv228 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next229, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv228
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not158 = icmp eq ptr %i.n, null
  br i1 %.not158, label %.loopexit, label %.preheader172

.preheader172:                                    ; preds = %bb.e
  %i.o = load i32, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %.not159177 = icmp slt i32 %i.o, 0
  br i1 %.not159177, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader172
  %i.p = add nuw i32 %i.o, 1
  %wide.trip.count = zext i32 %i.p to i64
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %.not160 = icmp eq ptr %i.r, null
  br i1 %.not160, label %.loopexit, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader172
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %.loopexit175, label %bb.e

.loopexit175:                                     ; preds = %._crit_edge, %bb.d, %.preheader174
  %i.s = phi ptr [ %i.e, %bb.d ], [ %i.g, %.preheader174 ], [ %i.g, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.not128 = icmp eq ptr %i.u, null
  br i1 %.not128, label %.loopexit170, label %.preheader169

.preheader169:                                    ; preds = %.loopexit175
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph186, label %.loopexit170

.lr.ph186:                                        ; preds = %.preheader169
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count241 = zext nneg i32 %i.w to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph186, %._crit_edge184
  %indvars.iv238 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next239, %._crit_edge184 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv238
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %.not155 = icmp eq ptr %i.aa, null
  br i1 %.not155, label %.loopexit, label %.preheader167

.preheader167:                                    ; preds = %bb.g
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !42  ; 2 uses
  %.not156181 = icmp slt i32 %i.ab, 0
  br i1 %.not156181, label %._crit_edge184, label %.lr.ph183.preheader

.lr.ph183.preheader:                              ; preds = %.preheader167
  %i.ac = add nuw i32 %i.ab, 1
  %wide.trip.count236 = zext i32 %i.ac to i64
  br label %.lr.ph183

bb.h:                                             ; preds = %.lr.ph183
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader, %bb.h
  %indvars.iv233 = phi i64 [ 0, %.lr.ph183.preheader ], [ %indvars.iv.next234, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv233
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %.not157 = icmp eq ptr %i.ae, null
  br i1 %.not157, label %.loopexit, label %bb.h

._crit_edge184:                                   ; preds = %bb.h, %.preheader167
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit170, label %bb.g

.loopexit170:                                     ; preds = %._crit_edge184, %.preheader169, %.loopexit175
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %.not129 = icmp eq ptr %i.ag, null
  br i1 %.not129, label %.loopexit165, label %.preheader164

.preheader164:                                    ; preds = %.loopexit170
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph188.preheader, label %.loopexit165

.lr.ph188.preheader:                              ; preds = %.preheader164
  %wide.trip.count246 = zext nneg i32 %i.ai to i64
  br label %.lr.ph188

bb.i:                                             ; preds = %.lr.ph188
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.loopexit165, label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %bb.i
  %indvars.iv243 = phi i64 [ 0, %.lr.ph188.preheader ], [ %indvars.iv.next244, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv243
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %.not154 = icmp eq ptr %i.al, null
  br i1 %.not154, label %.loopexit, label %bb.i

.loopexit165:                                     ; preds = %bb.i, %.preheader164, %.loopexit170
  %i.am = load i32, ptr %0, align 8, !tbaa !40
  switch i32 %i.am, label %bb.o [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.j:                                             ; preds = %.loopexit165
  %fwrite133 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %.loopexit165
  %fwrite132 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %.loopexit165
  %fwrite131 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 18, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %.loopexit165
  %fwrite130 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 14, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %.loopexit165
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.35, i64 15, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.loopexit165
  %fwrite134 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 17, i64 1, ptr %1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %i.ao) #16 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %i.ar) #16 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %i.au) #16 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !20
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %i.ax) #16 ; 0 uses
  %fwrite135 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr %1) ; 0 uses
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %bb.p, %.lr.ph191
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph191 ], [ 0, %bb.p ] ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv248
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !23
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, double noundef %i.bd) #16 ; 0 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next249, %i.bg
  br i1 %i.bh, label %.lr.ph191, label %._crit_edge192

._crit_edge192:                                   ; preds = %.lr.ph191, %bb.p
  %fputc = tail call i32 @fputc(i32 10, ptr %1)   ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not137 = icmp eq ptr %i.bi, null
  br i1 %.not137, label %.loopexit163, label %.preheader162

.preheader162:                                    ; preds = %._crit_edge192
  %i.bj = load i32, ptr %i.an, align 4, !tbaa !41
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph203, label %.loopexit163

.lr.ph203:                                        ; preds = %.preheader162, %._crit_edge201
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %._crit_edge201 ], [ 0, %.preheader162 ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv257 to i32
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %i.bl) #16 ; 0 uses
  %i.bn = load i32, ptr %i.aq, align 8, !tbaa !42
  %.not148197 = icmp slt i32 %i.bn, 0
  br i1 %.not148197, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph203, %._crit_edge196
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge196 ], [ 0, %.lr.ph203 ] ; 3 uses
  %fwrite151 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 6, i64 1, ptr %1) ; 0 uses
  %i.bo = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.lr.ph200, %.lr.ph195
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph195 ], [ 0, %.lr.ph200 ] ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv257
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv254
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv251
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !23
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, double noundef %i.bw) #16 ; 0 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.by = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next252, %i.bz
  br i1 %i.ca, label %.lr.ph195, label %._crit_edge196

._crit_edge196:                                   ; preds = %.lr.ph195, %.lr.ph200
  %fputc153 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %i.cb = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.cc = sext i32 %i.cb to i64
  %.not148.not = icmp slt i64 %indvars.iv254, %i.cc
  br i1 %.not148.not, label %.lr.ph200, label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge196, %.lr.ph203
  %fputc150 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next258, %i.ce
  br i1 %i.cf, label %.lr.ph203, label %.loopexit163

.loopexit163:                                     ; preds = %._crit_edge201, %.preheader162, %._crit_edge192
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !27
  %.not138 = icmp eq ptr %i.cg, null
  br i1 %.not138, label %.loopexit161, label %.preheader

.preheader:                                       ; preds = %.loopexit163
  %i.ch = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph214, label %.loopexit161

.lr.ph214:                                        ; preds = %.preheader, %._crit_edge212
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %._crit_edge212 ], [ 0, %.preheader ] ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv266 to i32
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %i.cj) #16 ; 0 uses
  %i.cl = load i32, ptr %i.aq, align 8, !tbaa !42
  %.not142208 = icmp slt i32 %i.cl, 0
  br i1 %.not142208, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph214, %._crit_edge207
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %._crit_edge207 ], [ 0, %.lr.ph214 ] ; 3 uses
  %fwrite145 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 6, i64 1, ptr %1) ; 0 uses
  %i.cm = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.lr.ph211, %.lr.ph206
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.lr.ph206 ], [ 0, %.lr.ph211 ] ; 2 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv266
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv263
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv260
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !23
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, double noundef %i.cu) #16 ; 0 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.cw = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next261, %i.cx
  br i1 %i.cy, label %.lr.ph206, label %._crit_edge207

._crit_edge207:                                   ; preds = %.lr.ph206, %.lr.ph211
  %fputc147 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1
  %i.cz = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.da = sext i32 %i.cz to i64
  %.not142.not = icmp slt i64 %indvars.iv263, %i.da
  br i1 %.not142.not, label %.lr.ph211, label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge207, %.lr.ph214
  %fputc144 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.db = load i32, ptr %i.an, align 4, !tbaa !41
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next267, %i.dc
  br i1 %i.dd, label %.lr.ph214, label %.loopexit161

.loopexit161:                                     ; preds = %._crit_edge212, %.preheader, %.loopexit163
  %i.de = load ptr, ptr %i.af, align 8, !tbaa !33
  %.not139 = icmp eq ptr %i.de, null
  br i1 %.not139, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.loopexit161
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !32
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %i.dg) #16 ; 0 uses
  %i.di = load i32, ptr %i.df, align 8, !tbaa !32
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph221, label %.loopexit

.lr.ph221:                                        ; preds = %bb.q, %._crit_edge218
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %._crit_edge218 ], [ 0, %bb.q ] ; 3 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv272 to i32
  %i.dl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %i.dk) #16 ; 0 uses
  %i.dm = load i32, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph217.a, label %._crit_edge218

.lr.ph217.a:                                      ; preds = %.lr.ph221, %bb.s
  %i.do = phi i32 [ %i.dv, %bb.s ], [ %i.dm, %.lr.ph221 ]
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %bb.s ], [ 0, %.lr.ph221 ] ; 2 uses
  %2 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv272
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv269
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph217.a
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %i.ds) #16 ; 0 uses
  %.pre.a = load i32, ptr %i.aq, align 8, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph217.a, %bb.r
  %i.dv = phi i32 [ %i.do, %.lr.ph217.a ], [ %.pre.a, %bb.r ] ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next270, %i.dw
  br i1 %i.dx, label %.lr.ph217.a, label %._crit_edge218

._crit_edge218:                                   ; preds = %bb.s, %.lr.ph221
  %fputc141 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.dy = load i32, ptr %i.df, align 8, !tbaa !32
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next273, %i.dz
  br i1 %i.ea, label %.lr.ph221, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %bb.g, %.lr.ph183, %.lr.ph188, %._crit_edge218, %.thread, %bb.q, %.loopexit161, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -44, 4) i32 @mriStepCoupling_GetStageType(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 16 uses
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %1, 0
  br i1 %i.e, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8, !tbaa !40
  %.off = add i32 %i.f, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i32 %1, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 8 uses
  %.not118 = icmp eq ptr %i.i, null               ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  br i1 %.not118, label %.loopexit126, label %.preheader125

.preheader125:                                    ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph155.split.us.preheader, label %.loopexit126

.lr.ph155.split.us.preheader:                     ; preds = %.preheader125
  %i.m = zext nneg i32 %1 to i64                  ; 5 uses
  %wide.trip.count217 = zext nneg i32 %i.k to i64
  %wide.trip.count212 = zext i32 %i.c to i64      ; 2 uses
  %xtraiter275 = and i64 %wide.trip.count212, 1
  %i.n = icmp eq i32 %i.c, 1
  %unroll_iter279 = and i64 %wide.trip.count212, 4294967294
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod278 = trunc i32 %i.c to i1
  br label %.lr.ph155.split.us

.lr.ph155.split.us:                               ; preds = %.lr.ph155.split.us.preheader, %._crit_edge.us159
  %indvars.iv214 = phi i64 [ 0, %.lr.ph155.split.us.preheader ], [ %indvars.iv.next215, %._crit_edge.us159 ] ; 3 uses
  %.090154.us = phi i32 [ 0, %.lr.ph155.split.us.preheader ], [ %.lcssa252, %._crit_edge.us159 ] ; 2 uses
  %.097153.us = phi i32 [ 0, %.lr.ph155.split.us.preheader ], [ %i.x, %._crit_edge.us159 ]
  %.not121.us = icmp eq i32 %.097153.us, 0
  br i1 %.not121.us, label %bb.g, label %.lr.ph.us158

bb.g:                                             ; preds = %.lr.ph155.split.us
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv214
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load double, ptr %i.s, align 8, !tbaa !23
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp ogt double %i.u, f0x3D19000000000000
  %i.w = zext i1 %i.v to i32
  br label %.lr.ph.us158

.lr.ph.us158:                                     ; preds = %bb.g, %.lr.ph155.split.us
  %i.x = phi i32 [ 1, %.lr.ph155.split.us ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv214 ; 3 uses
  br i1 %i.n, label %.epil.preheader274, label %.lr.ph.us158.new

.lr.ph.us158.new:                                 ; preds = %.lr.ph.us158, %.critedge
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %.critedge ], [ 0, %.lr.ph.us158 ] ; 3 uses
  %.191151.us = phi i32 [ %i.ap, %.critedge ], [ %.090154.us, %.lr.ph.us158 ]
  %niter280 = phi i64 [ %niter280.next.1, %.critedge ], [ 0, %.lr.ph.us158 ]
  %.not122.us = icmp eq i32 %.191151.us, 0
  br i1 %.not122.us, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.us158.new
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.m
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv209
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !23
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, f0x3D19000000000000
  br i1 %i.af, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.m
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv209
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !23
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ogt double %i.am, f0x3D19000000000000
  %i.ao = zext i1 %i.an to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.us158.new, %bb.i, %bb.h
  %i.ap = phi i32 [ 1, %bb.h ], [ %i.ao, %bb.i ], [ 1, %.lr.ph.us158.new ] ; 3 uses
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %niter280.next.1 = add i64 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %._crit_edge.us159.unr-lcssa, label %.lr.ph.us158.new

._crit_edge.us159.unr-lcssa:                      ; preds = %.critedge
  br i1 %lcmp.mod276.not, label %._crit_edge.us159, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge.us159.unr-lcssa, %.lr.ph.us158
  %indvars.iv209.epil.init = phi i64 [ 0, %.lr.ph.us158 ], [ %indvars.iv.next210.1, %._crit_edge.us159.unr-lcssa ]
  %.191151.us.epil.init = phi i32 [ %.090154.us, %.lr.ph.us158 ], [ %i.ap, %._crit_edge.us159.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %.not122.us.epil = icmp eq i32 %.191151.us.epil.init, 0
  br i1 %.not122.us.epil, label %bb.j, label %._crit_edge.us159

bb.j:                                             ; preds = %.epil.preheader274
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.m
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv209.epil.init
  %i.au = load double, ptr %i.at, align 8, !tbaa !23
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp ogt double %i.av, f0x3D19000000000000
  %i.ax = zext i1 %i.aw to i32
  br label %._crit_edge.us159

._crit_edge.us159:                                ; preds = %.epil.preheader274, %bb.j, %._crit_edge.us159.unr-lcssa
  %.lcssa252 = phi i32 [ %i.ap, %._crit_edge.us159.unr-lcssa ], [ 1, %.epil.preheader274 ], [ %i.ax, %bb.j ] ; 2 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %.loopexit126, label %.lr.ph155.split.us

.loopexit126:                                     ; preds = %._crit_edge.us159, %.preheader125, %bb.f
  %.198 = phi i32 [ 0, %bb.f ], [ 0, %.preheader125 ], [ %i.x, %._crit_edge.us159 ]
  %.292 = phi i32 [ 0, %bb.f ], [ 0, %.preheader125 ], [ %.lcssa252, %._crit_edge.us159 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %.not119 = icmp eq ptr %i.az, null
  br i1 %.not119, label %.loopexit, label %.preheader124

.preheader124:                                    ; preds = %.loopexit126
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader124
  %i.bd = zext nneg i32 %1 to i64                 ; 3 uses
  %wide.trip.count227 = zext nneg i32 %i.bb to i64
  %wide.trip.count222 = zext i32 %i.c to i64      ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count222, 1
  %i.be = icmp eq i32 %i.c, 1
  %unroll_iter286 = and i64 %wide.trip.count222, 4294967294
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod285 = trunc i32 %i.c to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us169
  %indvars.iv224 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next225, %._crit_edge.us169 ] ; 2 uses
  %.089166.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.lcssa, %._crit_edge.us169 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv224 ; 3 uses
  br i1 %i.be, label %.epil.preheader281, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.critedge296
  %indvars.iv219 = phi i64 [ %indvars.iv.next220.1, %.critedge296 ], [ 0, %.preheader.us ] ; 3 uses
  %.1164.us = phi i32 [ %i.bw, %.critedge296 ], [ %.089166.us, %.preheader.us ]
  %niter287 = phi i64 [ %niter287.next.1, %.critedge296 ], [ 0, %.preheader.us ]
  %.not120.us = icmp eq i32 %.1164.us, 0
  br i1 %.not120.us, label %bb.k, label %.critedge296

bb.k:                                             ; preds = %.preheader.us.new
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv219
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !23
end_hunk_0
