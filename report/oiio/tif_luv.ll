Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Luv32toRGB:bb.a
  %i.bw = fcmp ugt double %i.be, 0.000000e+00
  br i1 %i.bw, label %bb.i, label %XYZtoRGB24.exit

bb.i:                                             ; preds = %bb.h
  %i.bx = fcmp ult double %i.be, 1.000000e+00
  br i1 %i.bx, label %bb.j, label %XYZtoRGB24.exit

bb.j:                                             ; preds = %bb.i
  %i.by = tail call double @sqrt(double noundef %i.be) #16, !tbaa !6
  %i.bz = fmul double %i.by, 2.560000e+02
  %i.ca = fptosi double %i.bz to i32
  %i.cb = trunc i32 %i.ca to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %i.cc = phi i8 [ 0, %bb.h ], [ %i.cb, %bb.j ], [ -1, %bb.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.09, i64 2
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.09, i64 3
  %i.cf = icmp samesign ugt i64 %.067, 1
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LogL16InitState(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !46   ; 2 uses
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %i.e) #16
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i16, ptr %i.i, align 4, !tbaa !47
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.n = load i16, ptr %i.m, align 2, !tbaa !48
  %i.o = zext i16 %i.n to i32
  %i.p = or i32 %i.l, %i.o
  %i.q = or i32 %i.p, 8
  switch i32 %i.q, label %bb.g [
    i32 2059, label %LogL16GuessDataFmt.exit
    i32 1036, label %bb.e
    i32 1034, label %bb.e
    i32 1033, label %bb.e
    i32 524, label %bb.f
    i32 521, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %LogL16GuessDataFmt.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %LogL16GuessDataFmt.exit

bb.g:                                             ; preds = %bb.d
  br label %LogL16GuessDataFmt.exit

LogL16GuessDataFmt.exit:                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %bb.g ], [ 3, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  store i32 %.0.i, ptr %i.f, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %LogL16GuessDataFmt.exit, %bb.c
  %i.r = phi i32 [ %.0.i, %LogL16GuessDataFmt.exit ], [ %i.g, %bb.c ]
  switch i32 %i.r, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.13) #16
  br label %bb.t

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.i
  %.sink = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sink, ptr %i.s, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %i.v = and i32 %i.u, 1024
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !53
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.y, i64 noundef range(i64 0, 4294967296) %i.ab, ptr noundef null) #16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !54
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = icmp ult i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = zext i32 %i.af to i64
  %i.ao = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.an, ptr noundef null) #16 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !54
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.ar = phi i64 [ %i.ao, %bb.o ], [ %i.aq, %bb.p ], [ %i.ac, %bb.m ]
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.ar, i64 noundef 2, ptr noundef null) #16
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !54
  %i.aw = shl i64 %i.av, 1
  %i.ax = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aw) #16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !49
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.8) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.s ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogL16Decode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %.fr120 = freeze i32 %i.d
  %i.e = sext i32 %.fr120 to i64
  %i.f = sdiv i64 %2, %i.e                        ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16Decode.module, ptr noundef nonnull @.str.9) #16
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.059 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 29 uses
  %i.o = shl i64 %i.f, 1
  tail call void @_TIFFmemset(ptr noundef %.059, i32 noundef 0, i64 noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 5 uses
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %.preheader79.preheader, label %.split.us

.preheader79.preheader:                           ; preds = %bb.e
  %i.u = icmp sgt i64 %i.s, 0
  br i1 %i.u, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.preheader79.preheader
  %scevgep195 = getelementptr i8, ptr %.059, i64 2
  br label %.lr.ph100

.split.us:                                        ; preds = %bb.e
  %.not77.us = icmp eq i64 %i.f, 0
  br i1 %.not77.us, label %.split116.us, label %.split112.us

.preheader79.1:                                   ; preds = %._crit_edge
  %i.v = icmp sgt i64 %.158.lcssa, 0
  br i1 %i.v, label %.lr.ph100.1.preheader, label %._crit_edge.1

.lr.ph100.1.preheader:                            ; preds = %.preheader79.1
  %scevgep251 = getelementptr i8, ptr %.059, i64 2
  br label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100.1.preheader, %.critedge.1
  %.15899.1 = phi i64 [ %.3.1, %.critedge.1 ], [ %.158.lcssa, %.lr.ph100.1.preheader ]
  %.16198.1 = phi ptr [ %.363.1, %.critedge.1 ], [ %.161.lcssa, %.lr.ph100.1.preheader ] ; 6 uses
  %.06497.1 = phi i64 [ %.367.1, %.critedge.1 ], [ 0, %.lr.ph100.1.preheader ] ; 27 uses
  %.15899.1.fr = freeze i64 %.15899.1             ; 5 uses
  %i.w = load i8, ptr %.16198.1, align 1, !tbaa !9 ; 4 uses
  %i.x = zext i8 %i.w to i32                      ; 5 uses
  %i.y = icmp slt i8 %i.w, 0
  br i1 %i.y, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph100.1
  %.26282.1 = getelementptr i8, ptr %.16198.1, i64 1 ; 6 uses
  %i.z = add nsw i64 %.15899.1.fr, -1             ; 4 uses
  %.not83.1 = icmp eq i64 %i.z, 0
  br i1 %.not83.1, label %._crit_edge.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %.preheader.1
  %i.aa = add i64 %.15899.1.fr, -2
  %i.ab = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.ac = sub i64 %i.ab, %.06497.1
  %i.ad = zext nneg i8 %i.w to i64
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae) ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check262 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check262, label %.lr.ph.1.preheader278, label %vector.memcheck249

vector.memcheck249:                               ; preds = %.lr.ph.1.preheader
  %i.ah = shl i64 %.06497.1, 1
  %scevgep250 = getelementptr i8, ptr %.059, i64 %i.ah
  %i.ai = add i64 %.15899.1.fr, -2
  %smax252 = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.aj = sub i64 %smax252, %.06497.1
  %i.ak = zext nneg i8 %i.w to i64
  %umin253 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak)
  %umin254 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %umin253) ; 2 uses
  %i.al = add i64 %.06497.1, %umin254
  %i.am = shl i64 %i.al, 1
  %scevgep255 = getelementptr i8, ptr %scevgep251, i64 %i.am
  %scevgep256 = getelementptr i8, ptr %.16198.1, i64 2
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %umin254
  %bound0258 = icmp ult ptr %scevgep250, %scevgep257
  %bound1259 = icmp ult ptr %.26282.1, %scevgep255
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.lr.ph.1.preheader278, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck249
  %i.an = and i64 %i.ag, 15                       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 16, i64 %i.an
  %n.vec264 = sub nsw i64 %i.ag, %i.ap            ; 5 uses
  %i.aq = sub i64 %i.z, %n.vec264
  %i.ar = getelementptr i8, ptr %.26282.1, i64 %n.vec264
  %i.as = trunc nsw i64 %n.vec264 to i32
  %i.at = sub nsw i32 %i.x, %i.as
  %i.au = add i64 %.06497.1, %n.vec264
  %i.av = getelementptr [2 x i8], ptr %.059, i64 %.06497.1
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body265 ] ; 3 uses
  %next.gep267 = getelementptr i8, ptr %.26282.1, i64 %index266 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep267, i64 8
  %wide.load268 = load <8 x i8>, ptr %next.gep267, align 1, !tbaa !9, !alias.scope !144
  %wide.load269 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !9, !alias.scope !144
  %i.ax = getelementptr [2 x i8], ptr %i.av, i64 %index266 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load270 = load <8 x i16>, ptr %i.ax, align 2, !tbaa !63, !alias.scope !145, !noalias !144
  %wide.load271 = load <8 x i16>, ptr %i.ay, align 2, !tbaa !63, !alias.scope !145, !noalias !144
  %i.az = zext <8 x i8> %wide.load268 to <8 x i16>
  %i.ba = zext <8 x i8> %wide.load269 to <8 x i16>
  %i.bb = or <8 x i16> %wide.load270, %i.az
  %i.bc = or <8 x i16> %wide.load271, %i.ba
  store <8 x i16> %i.bb, ptr %i.ax, align 2, !tbaa !63, !alias.scope !145, !noalias !144
  store <8 x i16> %i.bc, ptr %i.ay, align 2, !tbaa !63, !alias.scope !145, !noalias !144
  %index.next272 = add nuw i64 %index266, 16      ; 2 uses
  %i.bd = icmp eq i64 %index.next272, %n.vec264
  br i1 %i.bd, label %.lr.ph.1.preheader278, label %vector.body265, !llvm.loop !133

.lr.ph.1.preheader278:                            ; preds = %vector.body265, %vector.memcheck249, %.lr.ph.1.preheader
  %.ph = phi i64 [ %i.z, %vector.memcheck249 ], [ %i.z, %.lr.ph.1.preheader ], [ %i.aq, %vector.body265 ]
  %.26286.1.ph = phi ptr [ %.26282.1, %vector.memcheck249 ], [ %.26282.1, %.lr.ph.1.preheader ], [ %i.ar, %vector.body265 ]
  %.185.1.ph = phi i32 [ %i.x, %vector.memcheck249 ], [ %i.x, %.lr.ph.1.preheader ], [ %i.at, %vector.body265 ]
  %.26684.1.ph = phi i64 [ %.06497.1, %vector.memcheck249 ], [ %.06497.1, %.lr.ph.1.preheader ], [ %i.au, %vector.body265 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader278, %bb.f
  %i.be = phi i64 [ %i.bn, %bb.f ], [ %.ph, %.lr.ph.1.preheader278 ] ; 2 uses
  %.26286.1 = phi ptr [ %.262.1, %bb.f ], [ %.26286.1.ph, %.lr.ph.1.preheader278 ] ; 3 uses
  %.185.1 = phi i32 [ %i.bg, %bb.f ], [ %.185.1.ph, %.lr.ph.1.preheader278 ] ; 2 uses
  %.26684.1 = phi i64 [ %i.bi, %bb.f ], [ %.26684.1.ph, %.lr.ph.1.preheader278 ] ; 4 uses
  %.not76.1 = icmp ne i32 %.185.1, 0
  %i.bf = icmp slt i64 %.26684.1, %i.f
  %or.cond.1 = select i1 %.not76.1, i1 %i.bf, i1 false
  br i1 %or.cond.1, label %bb.f, label %.critedge.1

bb.f:                                             ; preds = %.lr.ph.1
  %i.bg = add nsw i32 %.185.1, -1
  %i.bh = load i8, ptr %.26286.1, align 1, !tbaa !9
  %i.bi = add nsw i64 %.26684.1, 1                ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.059, i64 %.26684.1 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !63
  %i.bl = zext i8 %i.bh to i16
  %i.bm = or i16 %i.bk, %i.bl
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !63
  %.262.1 = getelementptr inbounds nuw i8, ptr %.26286.1, i64 1 ; 2 uses
  %i.bn = add nsw i64 %i.be, -1                   ; 2 uses
  %.not.1 = icmp eq i64 %i.bn, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !134

bb.g:                                             ; preds = %.lr.ph100.1
  %i.bo = icmp samesign ult i64 %.15899.1.fr, 2
  br i1 %i.bo, label %._crit_edge.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.16198.1, i64 2 ; 4 uses
  %i.bq = add nsw i64 %.15899.1.fr, -2            ; 4 uses
  %i.br = icmp slt i64 %.06497.1, %i.f
  br i1 %i.br, label %iter.check232, label %.critedge.1

iter.check232:                                    ; preds = %bb.h
  %i.bs = add nsw i32 %i.x, -126                  ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.16198.1, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i16                    ; 3 uses
  %i.bw = xor i64 %.06497.1, -1
  %i.bx = add i64 %i.f, %i.bw
  %i.by = add nsw i32 %i.x, -127
  %i.bz = zext nneg i32 %i.by to i64
  %umin216 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bz) ; 3 uses
  %i.ca = add nuw nsw i64 %umin216, 1             ; 5 uses
  %min.iters.check218 = icmp samesign ult i64 %umin216, 3
  br i1 %min.iters.check218, label %vec.epilog.scalar.ph234.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %iter.check232
  %min.iters.check220 = icmp samesign ult i64 %umin216, 15
  br i1 %min.iters.check220, label %vec.epilog.ph236, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check219
  %i.cb = and i64 %i.ca, 12
  %n.vec222 = and i64 %i.ca, 4294967280           ; 11 uses
  %i.cc = trunc nuw i64 %n.vec222 to i32
  %i.cd = sub i32 %i.bs, %i.cc
  %i.ce = add i64 %.06497.1, %n.vec222            ; 2 uses
  %broadcast.splatinsert223 = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat224 = shufflevector <8 x i16> %broadcast.splatinsert223, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.cf = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load227 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !63
  %wide.load228 = load <8 x i16>, ptr %4, align 2, !tbaa !63
  %5 = or <8 x i16> %wide.load227, %broadcast.splat224
  %6 = or <8 x i16> %wide.load228, %broadcast.splat224
  store <8 x i16> %5, ptr %i.cf, align 2, !tbaa !63
  store <8 x i16> %6, ptr %4, align 2, !tbaa !63
  %7 = icmp eq i64 %n.vec222, 16
  br i1 %7, label %middle.block230, label %vector.body225.1

vector.body225.1:                                 ; preds = %vector.ph221
  %8 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %9 = getelementptr i8, ptr %8, i64 32           ; 2 uses
  %10 = getelementptr i8, ptr %8, i64 48          ; 2 uses
  %wide.load227.1 = load <8 x i16>, ptr %9, align 2, !tbaa !63
  %wide.load228.1 = load <8 x i16>, ptr %10, align 2, !tbaa !63
  %11 = or <8 x i16> %wide.load227.1, %broadcast.splat224
  %12 = or <8 x i16> %wide.load228.1, %broadcast.splat224
  store <8 x i16> %11, ptr %9, align 2, !tbaa !63
  store <8 x i16> %12, ptr %10, align 2, !tbaa !63
  %13 = icmp eq i64 %n.vec222, 32
  br i1 %13, label %middle.block230, label %vector.body225.2

vector.body225.2:                                 ; preds = %vector.body225.1
  %14 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %15 = getelementptr i8, ptr %14, i64 64         ; 2 uses
  %16 = getelementptr i8, ptr %14, i64 80         ; 2 uses
  %wide.load227.2 = load <8 x i16>, ptr %15, align 2, !tbaa !63
  %wide.load228.2 = load <8 x i16>, ptr %16, align 2, !tbaa !63
  %17 = or <8 x i16> %wide.load227.2, %broadcast.splat224
  %18 = or <8 x i16> %wide.load228.2, %broadcast.splat224
  store <8 x i16> %17, ptr %15, align 2, !tbaa !63
  store <8 x i16> %18, ptr %16, align 2, !tbaa !63
  %19 = icmp eq i64 %n.vec222, 48
  br i1 %19, label %middle.block230, label %vector.body225.3

vector.body225.3:                                 ; preds = %vector.body225.2
  %20 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %21 = getelementptr i8, ptr %20, i64 96         ; 2 uses
  %22 = getelementptr i8, ptr %20, i64 112        ; 2 uses
  %wide.load227.3 = load <8 x i16>, ptr %21, align 2, !tbaa !63
  %wide.load228.3 = load <8 x i16>, ptr %22, align 2, !tbaa !63
  %23 = or <8 x i16> %wide.load227.3, %broadcast.splat224
  %24 = or <8 x i16> %wide.load228.3, %broadcast.splat224
  store <8 x i16> %23, ptr %21, align 2, !tbaa !63
  store <8 x i16> %24, ptr %22, align 2, !tbaa !63
  %25 = icmp eq i64 %n.vec222, 64
  br i1 %25, label %middle.block230, label %vector.body225.4

vector.body225.4:                                 ; preds = %vector.body225.3
  %26 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %27 = getelementptr i8, ptr %26, i64 128        ; 2 uses
  %28 = getelementptr i8, ptr %26, i64 144        ; 2 uses
  %wide.load227.4 = load <8 x i16>, ptr %27, align 2, !tbaa !63
  %wide.load228.4 = load <8 x i16>, ptr %28, align 2, !tbaa !63
  %29 = or <8 x i16> %wide.load227.4, %broadcast.splat224
  %30 = or <8 x i16> %wide.load228.4, %broadcast.splat224
  store <8 x i16> %29, ptr %27, align 2, !tbaa !63
  store <8 x i16> %30, ptr %28, align 2, !tbaa !63
  %31 = icmp eq i64 %n.vec222, 80
  br i1 %31, label %middle.block230, label %vector.body225.5

vector.body225.5:                                 ; preds = %vector.body225.4
  %32 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %33 = getelementptr i8, ptr %32, i64 160        ; 2 uses
  %34 = getelementptr i8, ptr %32, i64 176        ; 2 uses
  %wide.load227.5 = load <8 x i16>, ptr %33, align 2, !tbaa !63
  %wide.load228.5 = load <8 x i16>, ptr %34, align 2, !tbaa !63
  %35 = or <8 x i16> %wide.load227.5, %broadcast.splat224
  %36 = or <8 x i16> %wide.load228.5, %broadcast.splat224
  store <8 x i16> %35, ptr %33, align 2, !tbaa !63
  store <8 x i16> %36, ptr %34, align 2, !tbaa !63
  %37 = icmp eq i64 %n.vec222, 96
  br i1 %37, label %middle.block230, label %vector.body225

vector.body225:                                   ; preds = %vector.body225.5
  %38 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %39 = getelementptr i8, ptr %38, i64 192        ; 2 uses
  %i.cg = getelementptr i8, ptr %38, i64 208      ; 2 uses
  %wide.load227.a = load <8 x i16>, ptr %39, align 2, !tbaa !63
  %wide.load228.a = load <8 x i16>, ptr %i.cg, align 2, !tbaa !63
  %i.ch = or <8 x i16> %wide.load227.a, %broadcast.splat224
  %i.ci = or <8 x i16> %wide.load228.a, %broadcast.splat224
  store <8 x i16> %i.ch, ptr %39, align 2, !tbaa !63
  store <8 x i16> %i.ci, ptr %i.cg, align 2, !tbaa !63
  %i.cj = icmp eq i64 %n.vec222, 112
  br i1 %i.cj, label %middle.block230, label %vector.body225.7

vector.body225.7:                                 ; preds = %vector.body225
  %40 = getelementptr [2 x i8], ptr %.059, i64 %.06497.1 ; 2 uses
  %41 = getelementptr i8, ptr %40, i64 224        ; 2 uses
  %42 = getelementptr i8, ptr %40, i64 240        ; 2 uses
  %wide.load227.7 = load <8 x i16>, ptr %41, align 2, !tbaa !63
  %wide.load228.7 = load <8 x i16>, ptr %42, align 2, !tbaa !63
  %43 = or <8 x i16> %wide.load227.7, %broadcast.splat224
  %44 = or <8 x i16> %wide.load228.7, %broadcast.splat224
  store <8 x i16> %43, ptr %41, align 2, !tbaa !63
  store <8 x i16> %44, ptr %42, align 2, !tbaa !63
  br label %middle.block230

middle.block230:                                  ; preds = %vector.body225.7, %vector.body225, %vector.body225.5, %vector.body225.4, %vector.body225.3, %vector.body225.2, %vector.body225.1, %vector.ph221
  %cmp.n231 = icmp eq i64 %i.ca, %n.vec222
  br i1 %cmp.n231, label %.critedge.1, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block230
  %min.epilog.iters.check235 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check235, label %vec.epilog.scalar.ph234.preheader, label %vec.epilog.ph236, !prof !64

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check233
  %vec.epilog.resume.val237 = phi i64 [ %n.vec222, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec238 = and i64 %i.ca, 4294967292           ; 4 uses
  %i.ck = trunc nuw i64 %n.vec238 to i32
  %i.cl = sub i32 %i.bs, %i.ck
  %i.cm = add i64 %.06497.1, %n.vec238            ; 2 uses
  %broadcast.splatinsert239 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat240 = shufflevector <4 x i16> %broadcast.splatinsert239, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cn = getelementptr [2 x i8], ptr %.059, i64 %.06497.1
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph236
  %index242 = phi i64 [ %vec.epilog.resume.val237, %vec.epilog.ph236 ], [ %index.next244, %vec.epilog.vector.body241 ] ; 2 uses
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %index242 ; 2 uses
  %wide.load243 = load <4 x i16>, ptr %i.co, align 2, !tbaa !63
  %i.cp = or <4 x i16> %wide.load243, %broadcast.splat240
  store <4 x i16> %i.cp, ptr %i.co, align 2, !tbaa !63
  %index.next244 = add nuw i64 %index242, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next244, %n.vec238
  br i1 %i.cq, label %vec.epilog.middle.block245, label %vec.epilog.vector.body241, !llvm.loop !135

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body241
  %cmp.n246 = icmp eq i64 %i.ca, %n.vec238
  br i1 %cmp.n246, label %.critedge.1, label %vec.epilog.scalar.ph234.preheader

vec.epilog.scalar.ph234.preheader:                ; preds = %iter.check232, %vec.epilog.iter.check233, %vec.epilog.middle.block245
  %.094.1.ph = phi i32 [ %i.bs, %iter.check232 ], [ %i.cd, %vec.epilog.iter.check233 ], [ %i.cl, %vec.epilog.middle.block245 ]
  %.16593.1.ph = phi i64 [ %.06497.1, %iter.check232 ], [ %i.ce, %vec.epilog.iter.check233 ], [ %i.cm, %vec.epilog.middle.block245 ]
  br label %vec.epilog.scalar.ph234

vec.epilog.scalar.ph234:                          ; preds = %vec.epilog.scalar.ph234.preheader, %vec.epilog.scalar.ph234
  %.094.1 = phi i32 [ %i.cr, %vec.epilog.scalar.ph234 ], [ %.094.1.ph, %vec.epilog.scalar.ph234.preheader ]
  %.16593.1 = phi i64 [ %i.cs, %vec.epilog.scalar.ph234 ], [ %.16593.1.ph, %vec.epilog.scalar.ph234.preheader ] ; 2 uses
  %i.cr = add nsw i32 %.094.1, -1                 ; 2 uses
  %i.cs = add nsw i64 %.16593.1, 1                ; 3 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr %.059, i64 %.16593.1 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !63
  %i.cv = or i16 %i.cu, %i.bv
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !63
  %i.cw = icmp ne i32 %i.cr, 0
  %i.cx = icmp slt i64 %i.cs, %i.f
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %vec.epilog.scalar.ph234, label %.critedge.1, !llvm.loop !136

.critedge.1:                                      ; preds = %.lr.ph.1, %vec.epilog.scalar.ph234, %middle.block230, %vec.epilog.middle.block245, %bb.h
  %.367.1 = phi i64 [ %i.cs, %vec.epilog.scalar.ph234 ], [ %.06497.1, %bb.h ], [ %i.cm, %vec.epilog.middle.block245 ], [ %i.ce, %middle.block230 ], [ %.26684.1, %.lr.ph.1 ] ; 3 uses
  %.363.1 = phi ptr [ %i.bp, %vec.epilog.scalar.ph234 ], [ %i.bp, %bb.h ], [ %i.bp, %vec.epilog.middle.block245 ], [ %i.bp, %middle.block230 ], [ %.26286.1, %.lr.ph.1 ] ; 2 uses
  %.3.1 = phi i64 [ %i.bq, %vec.epilog.scalar.ph234 ], [ %i.bq, %bb.h ], [ %i.bq, %vec.epilog.middle.block245 ], [ %i.bq, %middle.block230 ], [ %i.be, %.lr.ph.1 ] ; 3 uses
  %i.cz = icmp slt i64 %.367.1, %i.f
  %i.da = icmp sgt i64 %.3.1, 0
  %i.db = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %i.db, label %.lr.ph100.1, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.preheader.1, %bb.g, %.critedge.1, %bb.f, %._crit_edge.thread, %.preheader79.1
  %.064.lcssa.1 = phi i64 [ 0, %.preheader79.1 ], [ 0, %._crit_edge.thread ], [ %i.bi, %bb.f ], [ %.06497.1, %.preheader.1 ], [ %.06497.1, %bb.g ], [ %.367.1, %.critedge.1 ] ; 2 uses
  %.161.lcssa.1 = phi ptr [ %.161.lcssa, %.preheader79.1 ], [ %.363.ph, %._crit_edge.thread ], [ %.262.1, %bb.f ], [ %.26282.1, %.preheader.1 ], [ %.16198.1, %bb.g ], [ %.363.1, %.critedge.1 ] ; 2 uses
  %.158.lcssa.1 = phi i64 [ %.158.lcssa, %.preheader79.1 ], [ 0, %._crit_edge.thread ], [ 0, %bb.f ], [ 0, %.preheader.1 ], [ 1, %bb.g ], [ %.3.1, %.critedge.1 ] ; 2 uses
  %.not77.1 = icmp eq i64 %.064.lcssa.1, %i.f
  br i1 %.not77.1, label %.split116.us, label %.split112.us

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.critedge
  %.15899 = phi i64 [ %.3, %.critedge ], [ %i.s, %.lr.ph100.preheader ]
  %.16198 = phi ptr [ %.363, %.critedge ], [ %i.q, %.lr.ph100.preheader ] ; 6 uses
  %.06497 = phi i64 [ %.367, %.critedge ], [ 0, %.lr.ph100.preheader ] ; 27 uses
  %.15899.fr = freeze i64 %.15899                 ; 5 uses
  %i.dc = load i8, ptr %.16198, align 1, !tbaa !9 ; 4 uses
  %i.dd = zext i8 %i.dc to i32                    ; 5 uses
  %i.de = icmp slt i8 %i.dc, 0
  br i1 %i.de, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.lr.ph100
  %.26282 = getelementptr i8, ptr %.16198, i64 1  ; 6 uses
  %i.df = add nsw i64 %.15899.fr, -1              ; 4 uses
  %.not83 = icmp eq i64 %i.df, 0
  br i1 %.not83, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dg = add i64 %.15899.fr, -2
  %i.dh = tail call i64 @llvm.smax.i64(i64 %.06497, i64 %i.f)
  %i.di = sub i64 %i.dh, %.06497
  %i.dj = zext nneg i8 %i.dc to i64
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dj)
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dk) ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check201 = icmp samesign ult i64 %i.dl, 16
  br i1 %min.iters.check201, label %.lr.ph.preheader286, label %vector.memcheck

.lr.ph.preheader286:                              ; preds = %vector.body204, %vector.memcheck, %.lr.ph.preheader
  %.ph287 = phi i64 [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.preheader ], [ %i.dw, %vector.body204 ]
  %.26286.ph = phi ptr [ %.26282, %vector.memcheck ], [ %.26282, %.lr.ph.preheader ], [ %i.dx, %vector.body204 ]
  %.185.ph = phi i32 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.preheader ], [ %i.dz, %vector.body204 ]
  %.26684.ph = phi i64 [ %.06497, %vector.memcheck ], [ %.06497, %.lr.ph.preheader ], [ %i.ea, %vector.body204 ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dn = shl i64 %.06497, 1
  %scevgep = getelementptr i8, ptr %.059, i64 %i.dn
  %i.do = add i64 %.15899.fr, -2
  %smax = tail call i64 @llvm.smax.i64(i64 %.06497, i64 %i.f)
  %i.dp = sub i64 %smax, %.06497
  %i.dq = zext nneg i8 %i.dc to i64
  %umin196 = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq)
  %umin197 = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %umin196) ; 2 uses
  %i.dr = add i64 %.06497, %umin197
  %i.ds = shl i64 %i.dr, 1
  %scevgep198 = getelementptr i8, ptr %scevgep195, i64 %i.ds
  %scevgep199 = getelementptr i8, ptr %.16198, i64 2
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %umin197
  %bound0 = icmp ult ptr %scevgep, %scevgep200
  %bound1 = icmp ult ptr %.26282, %scevgep198
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader286, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck
  %i.dt = and i64 %i.dm, 15                       ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = select i1 %i.du, i64 16, i64 %i.dt
  %n.vec203 = sub nsw i64 %i.dm, %i.dv            ; 5 uses
  %i.dw = sub i64 %i.df, %n.vec203
  %i.dx = getelementptr i8, ptr %.26282, i64 %n.vec203
  %i.dy = trunc nsw i64 %n.vec203 to i32
  %i.dz = sub nsw i32 %i.dd, %i.dy
  %i.ea = add i64 %.06497, %n.vec203
  %i.eb = getelementptr [2 x i8], ptr %.059, i64 %.06497
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next210, %vector.body204 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.26282, i64 %index205 ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 8
  %wide.load206 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !9, !alias.scope !146
  %wide.load207 = load <8 x i8>, ptr %i.ec, align 1, !tbaa !9, !alias.scope !146
  %i.ed = zext <8 x i8> %wide.load206 to <8 x i16>
  %i.ee = zext <8 x i8> %wide.load207 to <8 x i16>
  %i.ef = shl nuw <8 x i16> %i.ed, splat (i16 8)
  %i.eg = shl nuw <8 x i16> %i.ee, splat (i16 8)
  %i.eh = getelementptr [2 x i8], ptr %i.eb, i64 %index205 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load208 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !63, !alias.scope !147, !noalias !146
  %wide.load209 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !63, !alias.scope !147, !noalias !146
  %i.ej = or <8 x i16> %wide.load208, %i.ef
  %i.ek = or <8 x i16> %wide.load209, %i.eg
  store <8 x i16> %i.ej, ptr %i.eh, align 2, !tbaa !63, !alias.scope !147, !noalias !146
  store <8 x i16> %i.ek, ptr %i.ei, align 2, !tbaa !63, !alias.scope !147, !noalias !146
  %index.next210 = add nuw i64 %index205, 16      ; 2 uses
  %i.el = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.el, label %.lr.ph.preheader286, label %vector.body204, !llvm.loop !140

bb.i:                                             ; preds = %.lr.ph100
  %i.em = icmp samesign ult i64 %.15899.fr, 2
  br i1 %i.em, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %.16198, i64 2 ; 4 uses
  %i.eo = add nsw i64 %.15899.fr, -2              ; 4 uses
  %i.ep = icmp slt i64 %.06497, %i.f
  br i1 %i.ep, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.j
  %i.eq = add nsw i32 %i.dd, -126                 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.16198, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9
  %i.et = zext i8 %i.es to i16
  %i.eu = shl nuw i16 %i.et, 8                    ; 3 uses
  %i.ev = xor i64 %.06497, -1
  %i.ew = add i64 %i.f, %i.ev
  %i.ex = add nsw i32 %i.dd, -127
  %i.ey = zext nneg i32 %i.ex to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.ey) ; 3 uses
  %i.ez = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check185 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fa = and i64 %i.ez, 12
  %n.vec = and i64 %i.ez, 4294967280              ; 11 uses
  %i.fb = trunc nuw i64 %n.vec to i32
  %i.fc = sub i32 %i.eq, %i.fb
  %i.fd = add i64 %.06497, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.eu, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.fe = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 3 uses
  %45 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.fe, align 2, !tbaa !63
  %wide.load186 = load <8 x i16>, ptr %45, align 2, !tbaa !63
  %46 = or <8 x i16> %wide.load, %broadcast.splat
  %47 = or <8 x i16> %wide.load186, %broadcast.splat
  store <8 x i16> %46, ptr %i.fe, align 2, !tbaa !63
  store <8 x i16> %47, ptr %45, align 2, !tbaa !63
  %48 = icmp eq i64 %n.vec, 16
  br i1 %48, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %49 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %50 = getelementptr i8, ptr %49, i64 32         ; 2 uses
  %51 = getelementptr i8, ptr %49, i64 48         ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %50, align 2, !tbaa !63
  %wide.load186.1 = load <8 x i16>, ptr %51, align 2, !tbaa !63
  %52 = or <8 x i16> %wide.load.1, %broadcast.splat
  %53 = or <8 x i16> %wide.load186.1, %broadcast.splat
  store <8 x i16> %52, ptr %50, align 2, !tbaa !63
  store <8 x i16> %53, ptr %51, align 2, !tbaa !63
  %54 = icmp eq i64 %n.vec, 32
  br i1 %54, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %55 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %56 = getelementptr i8, ptr %55, i64 64         ; 2 uses
  %57 = getelementptr i8, ptr %55, i64 80         ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %56, align 2, !tbaa !63
  %wide.load186.2 = load <8 x i16>, ptr %57, align 2, !tbaa !63
  %58 = or <8 x i16> %wide.load.2, %broadcast.splat
  %59 = or <8 x i16> %wide.load186.2, %broadcast.splat
  store <8 x i16> %58, ptr %56, align 2, !tbaa !63
  store <8 x i16> %59, ptr %57, align 2, !tbaa !63
  %60 = icmp eq i64 %n.vec, 48
  br i1 %60, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %61 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %62 = getelementptr i8, ptr %61, i64 96         ; 2 uses
  %63 = getelementptr i8, ptr %61, i64 112        ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %62, align 2, !tbaa !63
  %wide.load186.3 = load <8 x i16>, ptr %63, align 2, !tbaa !63
  %64 = or <8 x i16> %wide.load.3, %broadcast.splat
  %65 = or <8 x i16> %wide.load186.3, %broadcast.splat
  store <8 x i16> %64, ptr %62, align 2, !tbaa !63
  store <8 x i16> %65, ptr %63, align 2, !tbaa !63
  %66 = icmp eq i64 %n.vec, 64
  br i1 %66, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %67 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %68 = getelementptr i8, ptr %67, i64 128        ; 2 uses
  %69 = getelementptr i8, ptr %67, i64 144        ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %68, align 2, !tbaa !63
  %wide.load186.4 = load <8 x i16>, ptr %69, align 2, !tbaa !63
  %70 = or <8 x i16> %wide.load.4, %broadcast.splat
  %71 = or <8 x i16> %wide.load186.4, %broadcast.splat
  store <8 x i16> %70, ptr %68, align 2, !tbaa !63
  store <8 x i16> %71, ptr %69, align 2, !tbaa !63
  %72 = icmp eq i64 %n.vec, 80
  br i1 %72, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %73 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %74 = getelementptr i8, ptr %73, i64 160        ; 2 uses
  %75 = getelementptr i8, ptr %73, i64 176        ; 2 uses
  %wide.load.5 = load <8 x i16>, ptr %74, align 2, !tbaa !63
  %wide.load186.5 = load <8 x i16>, ptr %75, align 2, !tbaa !63
  %76 = or <8 x i16> %wide.load.5, %broadcast.splat
  %77 = or <8 x i16> %wide.load186.5, %broadcast.splat
  store <8 x i16> %76, ptr %74, align 2, !tbaa !63
  store <8 x i16> %77, ptr %75, align 2, !tbaa !63
  %78 = icmp eq i64 %n.vec, 96
  br i1 %78, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.5
  %79 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %80 = getelementptr i8, ptr %79, i64 192        ; 2 uses
  %i.ff = getelementptr i8, ptr %79, i64 208      ; 2 uses
  %wide.load.a = load <8 x i16>, ptr %80, align 2, !tbaa !63
  %wide.load186.a = load <8 x i16>, ptr %i.ff, align 2, !tbaa !63
  %i.fg = or <8 x i16> %wide.load.a, %broadcast.splat
  %i.fh = or <8 x i16> %wide.load186.a, %broadcast.splat
  store <8 x i16> %i.fg, ptr %80, align 2, !tbaa !63
  store <8 x i16> %i.fh, ptr %i.ff, align 2, !tbaa !63
  %i.fi = icmp eq i64 %n.vec, 112
  br i1 %i.fi, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body
  %81 = getelementptr [2 x i8], ptr %.059, i64 %.06497 ; 2 uses
  %82 = getelementptr i8, ptr %81, i64 224        ; 2 uses
  %83 = getelementptr i8, ptr %81, i64 240        ; 2 uses
  %wide.load.7 = load <8 x i16>, ptr %82, align 2, !tbaa !63
  %wide.load186.7 = load <8 x i16>, ptr %83, align 2, !tbaa !63
  %84 = or <8 x i16> %wide.load.7, %broadcast.splat
  %85 = or <8 x i16> %wide.load186.7, %broadcast.splat
  store <8 x i16> %84, ptr %82, align 2, !tbaa !63
  store <8 x i16> %85, ptr %83, align 2, !tbaa !63
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %i.ez, 4294967292           ; 4 uses
  %i.fj = trunc nuw i64 %n.vec187 to i32
  %i.fk = sub i32 %i.eq, %i.fj
  %i.fl = add i64 %.06497, %n.vec187              ; 2 uses
  %broadcast.splatinsert188 = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %broadcast.splat189 = shufflevector <4 x i16> %broadcast.splatinsert188, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.fm = getelementptr [2 x i8], ptr %.059, i64 %.06497
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 2 uses
  %i.fn = getelementptr [2 x i8], ptr %i.fm, i64 %index190 ; 2 uses
  %wide.load191 = load <4 x i16>, ptr %i.fn, align 2, !tbaa !63
  %i.fo = or <4 x i16> %wide.load191, %broadcast.splat189
  store <4 x i16> %i.fo, ptr %i.fn, align 2, !tbaa !63
  %index.next192 = add nuw i64 %index190, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n193 = icmp eq i64 %i.ez, %n.vec187
  br i1 %cmp.n193, label %.critedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.094.ph = phi i32 [ %i.eq, %iter.check ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ]
  %.16593.ph = phi i64 [ %.06497, %iter.check ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.094 = phi i32 [ %i.fq, %vec.epilog.scalar.ph ], [ %.094.ph, %vec.epilog.scalar.ph.preheader ]
  %.16593 = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.16593.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.fq = add nsw i32 %.094, -1                   ; 2 uses
  %i.fr = add nsw i64 %.16593, 1                  ; 3 uses
  %i.fs = getelementptr inbounds [2 x i8], ptr %.059, i64 %.16593 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !63
  %i.fu = or i16 %i.ft, %i.eu
  store i16 %i.fu, ptr %i.fs, align 2, !tbaa !63
  %i.fv = icmp ne i32 %i.fq, 0
  %i.fw = icmp slt i64 %i.fr, %i.f
  %i.fx = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %i.fx, label %vec.epilog.scalar.ph, label %.critedge, !llvm.loop !142

.lr.ph:                                           ; preds = %.lr.ph.preheader286, %bb.k
  %i.fy = phi i64 [ %i.gi, %bb.k ], [ %.ph287, %.lr.ph.preheader286 ] ; 2 uses
  %.26286 = phi ptr [ %.262, %bb.k ], [ %.26286.ph, %.lr.ph.preheader286 ] ; 3 uses
  %.185 = phi i32 [ %i.ga, %bb.k ], [ %.185.ph, %.lr.ph.preheader286 ] ; 2 uses
  %.26684 = phi i64 [ %i.ge, %bb.k ], [ %.26684.ph, %.lr.ph.preheader286 ] ; 4 uses
  %.not76 = icmp ne i32 %.185, 0
  %i.fz = icmp slt i64 %.26684, %i.f
  %or.cond = select i1 %.not76, i1 %i.fz, i1 false
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.ga = add nsw i32 %.185, -1
  %i.gb = load i8, ptr %.26286, align 1, !tbaa !9
  %i.gc = zext i8 %i.gb to i16
  %i.gd = shl nuw i16 %i.gc, 8
  %i.ge = add nsw i64 %.26684, 1                  ; 2 uses
  %i.gf = getelementptr inbounds [2 x i8], ptr %.059, i64 %.26684 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !63
  %i.gh = or i16 %i.gg, %i.gd
  store i16 %i.gh, ptr %i.gf, align 2, !tbaa !63
  %.262 = getelementptr inbounds nuw i8, ptr %.26286, i64 1 ; 2 uses
  %i.gi = add nsw i64 %i.fy, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gi, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !143

.critedge:                                        ; preds = %.lr.ph, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.j
  %.367 = phi i64 [ %i.fr, %vec.epilog.scalar.ph ], [ %.06497, %bb.j ], [ %i.fl, %vec.epilog.middle.block ], [ %i.fd, %middle.block ], [ %.26684, %.lr.ph ] ; 3 uses
  %.363 = phi ptr [ %i.en, %vec.epilog.scalar.ph ], [ %i.en, %bb.j ], [ %i.en, %vec.epilog.middle.block ], [ %i.en, %middle.block ], [ %.26286, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %i.eo, %vec.epilog.scalar.ph ], [ %i.eo, %bb.j ], [ %i.eo, %vec.epilog.middle.block ], [ %i.eo, %middle.block ], [ %i.fy, %.lr.ph ] ; 3 uses
  %i.gj = icmp slt i64 %.367, %i.f
  %i.gk = icmp sgt i64 %.3, 0
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph100, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.i, %.preheader79.preheader
  %.064.lcssa = phi i64 [ 0, %.preheader79.preheader ], [ %.06497, %bb.i ], [ %.367, %.critedge ] ; 2 uses
  %.161.lcssa = phi ptr [ %i.q, %.preheader79.preheader ], [ %.16198, %bb.i ], [ %.363, %.critedge ] ; 3 uses
  %.158.lcssa = phi i64 [ %i.s, %.preheader79.preheader ], [ 1, %bb.i ], [ %.3, %.critedge ] ; 4 uses
  %.not77 = icmp eq i64 %.064.lcssa, %i.f
  br i1 %.not77, label %.preheader79.1, label %.split112.us

._crit_edge.thread:                               ; preds = %.preheader, %bb.k
  %.367.ph = phi i64 [ %i.ge, %bb.k ], [ %.06497, %.preheader ] ; 2 uses
  %.363.ph = phi ptr [ %.262, %bb.k ], [ %.26282, %.preheader ] ; 2 uses
  %.not77144 = icmp eq i64 %.367.ph, %i.f
  br i1 %.not77144, label %._crit_edge.1, label %.split112.us

.split112.us:                                     ; preds = %._crit_edge.thread, %._crit_edge, %._crit_edge.1, %.split.us
  %.us-phi = phi i64 [ 0, %.split.us ], [ %.064.lcssa, %._crit_edge ], [ %.064.lcssa.1, %._crit_edge.1 ], [ %.367.ph, %._crit_edge.thread ]
  %.us-phi113 = phi ptr [ %i.q, %.split.us ], [ %.161.lcssa, %._crit_edge ], [ %.161.lcssa.1, %._crit_edge.1 ], [ %.363.ph, %._crit_edge.thread ]
  %.us-phi114 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa, %._crit_edge ], [ %.158.lcssa.1, %._crit_edge.1 ], [ 0, %._crit_edge.thread ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !62
  %i.go = sub nsw i64 %i.f, %.us-phi
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LogL16Decode.module, ptr noundef nonnull @.str.10, i32 noundef %i.gn, i64 noundef %i.go) #16
  store ptr %.us-phi113, ptr %i.p, align 8, !tbaa !58
  store i64 %.us-phi114, ptr %i.r, align 8, !tbaa !59
  br label %bb.l

.split116.us:                                     ; preds = %._crit_edge.1, %.split.us
  %.us-phi117 = phi ptr [ %i.q, %.split.us ], [ %.161.lcssa.1, %._crit_edge.1 ]
  %.us-phi118 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa.1, %._crit_edge.1 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !38
  tail call void %i.gq(ptr noundef %i.b, ptr noundef %1, i64 noundef %i.f) #16
  store ptr %.us-phi117, ptr %i.p, align 8, !tbaa !58
  store i64 %.us-phi118, ptr %i.r, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %.split116.us, %.split112.us, %bb.c
  %.069 = phi i32 [ 0, %.split112.us ], [ 1, %.split116.us ], [ 0, %bb.c ]
  ret i32 %.069
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @L16toY(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %LogL16toY.exit
  %.09 = phi ptr [ %i.o, %LogL16toY.exit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.048 = phi ptr [ %i.e, %LogL16toY.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.057 = phi i64 [ %i.d, %LogL16toY.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.057, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.048, i64 2
  %i.f = load i16, ptr %.048, align 2, !tbaa !63  ; 2 uses
  %i.g = and i16 %i.f, 32767                      ; 2 uses
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %LogL16toY.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = uitofp nneg i16 %i.g to double
  %i.i = fadd double %i.h, 5.000000e-01
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.k = tail call double @exp(double noundef %i.j) #16, !tbaa !6 ; 2 uses
  %i.l = fneg double %i.k
  %.not7.i6 = icmp slt i16 %i.f, 0
  %i.m = select i1 %.not7.i6, double %i.l, double %i.k
  %i.n = fptrunc double %i.m to float
  br label %LogL16toY.exit

LogL16toY.exit:                                   ; preds = %.lr.ph, %bb.b
  %.0.i = phi float [ %i.n, %bb.b ], [ 0.000000e+00, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %.09, i64 4
  store float %.0.i, ptr %.09, align 4, !tbaa !8
  %i.p = icmp samesign ugt i64 %.057, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %LogL16toY.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @L16toGry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %LogL16toY.exit.thread
  %.in = phi i64 [ %i.d, %LogL16toY.exit.thread ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.013 = phi ptr [ %i.u, %LogL16toY.exit.thread ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0712 = phi ptr [ %i.e, %LogL16toY.exit.thread ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.0712, i64 2
  %i.f = load i16, ptr %.0712, align 2, !tbaa !63 ; 2 uses
  %i.g = and i16 %i.f, 32767                      ; 2 uses
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %LogL16toY.exit.thread, label %LogL16toY.exit

LogL16toY.exit:                                   ; preds = %.lr.ph
  %i.h = uitofp nneg i16 %i.g to double
  %i.i = fadd double %i.h, 5.000000e-01
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.k = tail call double @exp(double noundef %i.j) #16, !tbaa !6 ; 2 uses
  %i.l = fneg double %i.k
  %.not7.i11 = icmp slt i16 %i.f, 0
  %i.m = select i1 %.not7.i11, double %i.l, double %i.k ; 3 uses
  %i.n = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %LogL16toY.exit.thread

bb.b:                                             ; preds = %LogL16toY.exit
  %i.o = fcmp ult double %i.m, 1.000000e+00
  br i1 %i.o, label %bb.c, label %LogL16toY.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = tail call double @sqrt(double noundef %i.m) #16, !tbaa !6
  %i.q = fmul double %i.p, 2.560000e+02
  %i.r = fptosi double %i.q to i32
  %i.s = trunc i32 %i.r to i8
  br label %LogL16toY.exit.thread

LogL16toY.exit.thread:                            ; preds = %.lr.ph, %bb.c, %bb.b, %LogL16toY.exit
  %i.t = phi i8 [ 0, %LogL16toY.exit ], [ %i.s, %bb.c ], [ -1, %bb.b ], [ 0, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013, i64 1
  store i8 %i.t, ptr %.013, align 1, !tbaa !9
  %i.v = icmp samesign ugt i64 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %LogL16toY.exit.thread, %bb.a
  ret void
}

declare i64 @_TIFFMultiplySSize(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #10

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvEncode24(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvEncode24.module, ptr noundef nonnull @.str.9) #16
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void %i.p(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = sub nsw i64 %i.t, %i.v                   ; 2 uses
  %.not50 = icmp eq i64 %i.f, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
end_hunk_0
begin_hunk_1_@LogLuvEncode32:bb.a

bb.f:                                             ; preds = %.lr.ph211.us, %bb.v
  %.1209.us = phi i32 [ %.0113218.us, %.lr.ph211.us ], [ %.5.us, %bb.v ]
  %.1115208.us = phi i64 [ %.0114217.us, %.lr.ph211.us ], [ %.7.us, %bb.v ] ; 3 uses
  %.1123207.us = phi ptr [ %.0122216.us, %.lr.ph211.us ], [ %.7129.us, %bb.v ] ; 2 uses
  %.0133205.us = phi i64 [ 0, %.lr.ph211.us ], [ %i.ek, %bb.v ] ; 10 uses
  %i.y = icmp slt i64 %.1115208.us, 4
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %.1123207.us, ptr %i.q, align 8, !tbaa !58
  %i.z = load i64, ptr %i.s, align 8, !tbaa !65
  %i.aa = sub nsw i64 %i.z, %.1115208.us
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !59
  %i.ab = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us = icmp eq i32 %i.ab, 0
  br i1 %.not.us, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !59
  %i.af = sub nsw i64 %i.ad, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.2124.us = phi ptr [ %i.ac, %bb.h ], [ %.1123207.us, %bb.f ] ; 5 uses
  %.2116.us = phi i64 [ %i.af, %bb.h ], [ %.1115208.us, %bb.f ] ; 3 uses
  %i.ag = icmp slt i64 %.0133205.us, %i.f
  br i1 %i.ag, label %.lr.ph.us, label %.critedge.thread.us

.lr.ph.us:                                        ; preds = %bb.i, %.critedge.us
  %.0112182.us = phi i64 [ %.lcssa272, %.critedge.us ], [ %.0133205.us, %bb.i ] ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0112182.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !6  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.us
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.1, %bb.n ] ; 5 uses
  %i.aj = add nsw i64 %.0112182.us, %indvars.iv   ; 4 uses
  %i.ak = icmp slt i64 %i.aj, %i.f
  br i1 %i.ak, label %bb.k, label %.critedge.us.thread

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds [4 x i8], ptr %.0121, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !6
  %i.an = xor i32 %i.am, %i.ai
  %i.ao = and i32 %i.an, %i.x
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %.critedge.us

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = add nsw i64 %.0112182.us, %indvars.iv.next ; 4 uses
  %i.ar = icmp slt i64 %i.aq, %i.f
  br i1 %i.ar, label %bb.m, label %.critedge.us.thread

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds [4 x i8], ptr %.0121, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = xor i32 %i.at, %i.ai
  %i.av = and i32 %i.au, %i.x
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %.critedge.us

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 129
  br i1 %exitcond.not.1, label %.critedge.thread.us, label %bb.j

.critedge.us:                                     ; preds = %bb.m, %bb.k
  %indvars.iv.lcssa274 = phi i64 [ %indvars.iv, %bb.k ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.lcssa272 = phi i64 [ %i.aj, %bb.k ], [ %i.aq, %bb.m ]
  %i.ax = icmp samesign ugt i64 %indvars.iv.lcssa274, 3
  br i1 %i.ax, label %.critedge.thread.us.loopexit242, label %.lr.ph.us

.critedge.us.thread:                              ; preds = %bb.l, %bb.j
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.j ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.lcssa = phi i64 [ %i.aj, %bb.j ], [ %i.aq, %bb.l ]
  %i.ay = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.az = icmp samesign ugt i64 %indvars.iv.lcssa, 3
  %spec.select = select i1 %i.az, i64 %.0112182.us, i64 %.lcssa
  br label %.critedge.thread.us

.critedge.thread.us.loopexit242:                  ; preds = %.critedge.us
  %i.ba = trunc nuw nsw i64 %indvars.iv.lcssa274 to i32
  br label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %bb.n, %.critedge.us.thread, %.critedge.thread.us.loopexit242, %bb.i
  %.0112166.us = phi i64 [ %spec.select, %.critedge.us.thread ], [ %.0133205.us, %bb.i ], [ %.0112182.us, %.critedge.thread.us.loopexit242 ], [ %.0112182.us, %bb.n ] ; 10 uses
  %.4.us = phi i32 [ %i.ay, %.critedge.us.thread ], [ %.1209.us, %bb.i ], [ %i.ba, %.critedge.thread.us.loopexit242 ], [ 129, %bb.n ] ; 3 uses
  %i.bb = sub nsw i64 %.0112166.us, %.0133205.us
  %i.bc = and i64 %i.bb, -2
  %or.cond.us = icmp eq i64 %i.bc, 2
  br i1 %or.cond.us, label %bb.o, label %.loopexit161.us

bb.o:                                             ; preds = %.critedge.thread.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0133205.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !6
  %i.bf = and i32 %i.be, %i.x                     ; 2 uses
  %i.bg = add nsw i64 %.0133205.us, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0131.us = phi i64 [ %i.bg, %bb.o ], [ %i.bl, %bb.q ] ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0131.us
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !6
  %i.bj = and i32 %i.bi, %i.x
  %i.bk = icmp eq i32 %i.bj, %i.bf
  br i1 %i.bk, label %bb.q, label %.loopexit161.us

bb.q:                                             ; preds = %bb.p
  %i.bl = add nsw i64 %.0131.us, 1                ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %.0112166.us
  br i1 %i.bm, label %.loopexit161.us.thread, label %bb.p

.loopexit161.us.thread:                           ; preds = %bb.q
  %i.bn = xor i64 %.0133205.us, -1
  %reass.sub = add i64 %.0112166.us, %i.bn
  %i.bo = trunc i64 %reass.sub to i8
  %i.bp = add i8 %i.bo, 127
  %i.bq = getelementptr inbounds nuw i8, ptr %.2124.us, i64 1
  store i8 %i.bp, ptr %.2124.us, align 1, !tbaa !9
  %i.br = lshr i32 %i.bf, %.0137215.us
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.2124.us, i64 2
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !9
  %i.bu = add nsw i64 %.2116.us, -2
  br label %._crit_edge.us

.loopexit161.us:                                  ; preds = %bb.p, %.critedge.thread.us
  %i.bv = icmp slt i64 %.0133205.us, %.0112166.us
  br i1 %i.bv, label %.lr.ph200.us, label %._crit_edge.us

.lr.ph200.us:                                     ; preds = %.loopexit161.us, %.loopexit.us
  %.4118199.us = phi i64 [ %i.el, %.loopexit.us ], [ %.2116.us, %.loopexit161.us ] ; 3 uses
  %.4126198.us = phi ptr [ %.6128.us.lcssa, %.loopexit.us ], [ %.2124.us, %.loopexit161.us ] ; 2 uses
  %.2135197.us = phi i64 [ %.lcssa263, %.loopexit.us ], [ %.0133205.us, %.loopexit161.us ] ; 8 uses
  %i.bw = sub nsw i64 %.0112166.us, %.2135197.us
  %spec.store.select.us = tail call i64 @llvm.smin.i64(i64 %i.bw, i64 127) ; 11 uses
  %i.bx = add nuw nsw i64 %spec.store.select.us, 3
  %i.by = icmp slt i64 %.4118199.us, %i.bx
  br i1 %i.by, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph200.us
  store ptr %.4126198.us, ptr %i.q, align 8, !tbaa !58
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ca = sub nsw i64 %i.bz, %.4118199.us
  store i64 %i.ca, ptr %i.u, align 8, !tbaa !59
  %i.cb = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not148.us = icmp eq i32 %i.cb, 0
  br i1 %.not148.us, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ce = load i64, ptr %i.u, align 8, !tbaa !59
  %i.cf = sub nsw i64 %i.cd, %i.ce
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph200.us
  %.5127.us = phi ptr [ %i.cc, %bb.s ], [ %.4126198.us, %.lr.ph200.us ] ; 3 uses
  %.5119.us = phi i64 [ %i.cf, %bb.s ], [ %.4118199.us, %.lr.ph200.us ]
  %i.cg = trunc i64 %spec.store.select.us to i8
  store i8 %i.cg, ptr %.5127.us, align 1, !tbaa !9
  %.6128186.us = getelementptr i8, ptr %.5127.us, i64 1 ; 6 uses
  %.6120187.us = add i64 %.5119.us, -1            ; 2 uses
  %.not150188.us = icmp eq i64 %.0112166.us, %.2135197.us
  br i1 %.not150188.us, label %._crit_edge.us, label %.lr.ph193.us.preheader

.lr.ph193.us.preheader:                           ; preds = %bb.t
  %min.iters.check = icmp ult i64 %spec.store.select.us, 8
  br i1 %min.iters.check, label %.lr.ph193.us.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph193.us.preheader
  %scevgep = getelementptr i8, ptr %.5127.us, i64 1
  %scevgep264 = getelementptr i8, ptr %scevgep, i64 %spec.store.select.us
  %i.ch = shl i64 %.2135197.us, 2
  %scevgep265 = getelementptr i8, ptr %.0121, i64 %i.ch
  %i.ci = add i64 %.2135197.us, %spec.store.select.us
  %i.cj = shl i64 %i.ci, 2
  %scevgep266 = getelementptr i8, ptr %.0121, i64 %i.cj
  %bound0 = icmp ult ptr %.6128186.us, %scevgep266
  %bound1 = icmp ult ptr %scevgep265, %scevgep264
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph193.us.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.store.select.us, -8      ; 4 uses
  %i.ck = getelementptr i8, ptr %.6128186.us, i64 %n.vec ; 2 uses
  %i.cl = and i64 %spec.store.select.us, 7
  %i.cm = add i64 %.2135197.us, %n.vec            ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %.0121, i64 %.2135197.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.6128186.us, i64 %index ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !6, !alias.scope !154
  %wide.load267 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !6, !alias.scope !154
  %i.cq = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.cr = lshr <4 x i32> %wide.load267, %broadcast.splat
  %i.cs = trunc <4 x i32> %i.cq to <4 x i8>
  %i.ct = trunc <4 x i32> %i.cr to <4 x i8>
  %i.cu = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.cs, ptr %next.gep, align 1, !tbaa !9, !alias.scope !155, !noalias !154
  store <4 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !9, !alias.scope !155, !noalias !154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.store.select.us, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph193.us.preheader270

.lr.ph193.us.preheader270:                        ; preds = %vector.memcheck, %.lr.ph193.us.preheader, %middle.block
  %.6128191.us.ph = phi ptr [ %.6128186.us, %vector.memcheck ], [ %.6128186.us, %.lr.ph193.us.preheader ], [ %i.ck, %middle.block ] ; 2 uses
  %.1132190.us.ph = phi i64 [ %spec.store.select.us, %vector.memcheck ], [ %spec.store.select.us, %.lr.ph193.us.preheader ], [ %i.cl, %middle.block ] ; 4 uses
  %.3136189.us.ph = phi i64 [ %.2135197.us, %vector.memcheck ], [ %.2135197.us, %.lr.ph193.us.preheader ], [ %i.cm, %middle.block ] ; 2 uses
  %i.cw = add nsw i64 %.1132190.us.ph, -1
  %xtraiter = and i64 %.1132190.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph193.us.prol.loopexit, label %.lr.ph193.us.prol

.lr.ph193.us.prol:                                ; preds = %.lr.ph193.us.preheader270, %.lr.ph193.us.prol
  %.6128191.us.prol = phi ptr [ %.6128.us.prol, %.lr.ph193.us.prol ], [ %.6128191.us.ph, %.lr.ph193.us.preheader270 ] ; 2 uses
  %.1132190.us.prol = phi i64 [ %i.cx, %.lr.ph193.us.prol ], [ %.1132190.us.ph, %.lr.ph193.us.preheader270 ]
  %.3136189.us.prol = phi i64 [ %i.cy, %.lr.ph193.us.prol ], [ %.3136189.us.ph, %.lr.ph193.us.preheader270 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph193.us.prol ], [ 0, %.lr.ph193.us.preheader270 ]
  %i.cx = add nsw i64 %.1132190.us.prol, -1       ; 2 uses
  %i.cy = add nsw i64 %.3136189.us.prol, 1        ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.3136189.us.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !6
  %i.db = lshr i32 %i.da, %.0137215.us
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %.6128191.us.prol, align 1, !tbaa !9
  %.6128.us.prol = getelementptr inbounds nuw i8, ptr %.6128191.us.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph193.us.prol.loopexit, label %.lr.ph193.us.prol, !llvm.loop !152

.lr.ph193.us.prol.loopexit:                       ; preds = %.lr.ph193.us.prol, %.lr.ph193.us.preheader270
  %.lcssa279.unr = phi i64 [ poison, %.lr.ph193.us.preheader270 ], [ %i.cy, %.lr.ph193.us.prol ]
  %.6128.us.lcssa278.unr = phi ptr [ poison, %.lr.ph193.us.preheader270 ], [ %.6128.us.prol, %.lr.ph193.us.prol ]
  %.6128191.us.unr = phi ptr [ %.6128191.us.ph, %.lr.ph193.us.preheader270 ], [ %.6128.us.prol, %.lr.ph193.us.prol ]
  %.1132190.us.unr = phi i64 [ %.1132190.us.ph, %.lr.ph193.us.preheader270 ], [ %i.cx, %.lr.ph193.us.prol ]
  %.3136189.us.unr = phi i64 [ %.3136189.us.ph, %.lr.ph193.us.preheader270 ], [ %i.cy, %.lr.ph193.us.prol ]
  %i.dd = icmp ult i64 %i.cw, 3
  br i1 %i.dd, label %.loopexit.us, label %.lr.ph193.us

.lr.ph193.us:                                     ; preds = %.lr.ph193.us.prol.loopexit, %.lr.ph193.us
  %.6128191.us = phi ptr [ %.6128.us.3, %.lr.ph193.us ], [ %.6128191.us.unr, %.lr.ph193.us.prol.loopexit ] ; 5 uses
  %.1132190.us = phi i64 [ %i.ds, %.lr.ph193.us ], [ %.1132190.us.unr, %.lr.ph193.us.prol.loopexit ]
  %.3136189.us = phi i64 [ %i.dt, %.lr.ph193.us ], [ %.3136189.us.unr, %.lr.ph193.us.prol.loopexit ] ; 5 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.3136189.us
  %i.df = load i32, ptr %i.de, align 4, !tbaa !6
  %i.dg = lshr i32 %i.df, %.0137215.us
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %.6128191.us, align 1, !tbaa !9
  %.6128.us = getelementptr inbounds nuw i8, ptr %.6128191.us, i64 1
  %i.di = getelementptr [4 x i8], ptr %.0121, i64 %.3136189.us
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !6
  %i.dl = lshr i32 %i.dk, %.0137215.us
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %.6128.us, align 1, !tbaa !9
  %.6128.us.1 = getelementptr inbounds nuw i8, ptr %.6128191.us, i64 2
  %i.dn = getelementptr [4 x i8], ptr %.0121, i64 %.3136189.us
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dq = lshr i32 %i.dp, %.0137215.us
  %i.dr = trunc i32 %i.dq to i8
  store i8 %i.dr, ptr %.6128.us.1, align 1, !tbaa !9
  %.6128.us.2 = getelementptr inbounds nuw i8, ptr %.6128191.us, i64 3
  %i.ds = add nsw i64 %.1132190.us, -4            ; 2 uses
  %i.dt = add nsw i64 %.3136189.us, 4             ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %.0121, i64 %.3136189.us
  %i.dv = getelementptr i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !6
  %i.dx = lshr i32 %i.dw, %.0137215.us
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %.6128.us.2, align 1, !tbaa !9
  %.6128.us.3 = getelementptr inbounds nuw i8, ptr %.6128191.us, i64 4 ; 2 uses
  %.not150.us.3 = icmp eq i64 %i.ds, 0
  br i1 %.not150.us.3, label %.loopexit.us, label %.lr.ph193.us, !llvm.loop !153

._crit_edge.us:                                   ; preds = %bb.t, %.loopexit.us, %.loopexit161.us.thread, %.loopexit161.us
  %.2135.lcssa.us = phi i64 [ %.0133205.us, %.loopexit161.us ], [ %.0112166.us, %.loopexit161.us.thread ], [ %.0112166.us, %bb.t ], [ %.lcssa263, %.loopexit.us ]
  %.4126.lcssa.us = phi ptr [ %.2124.us, %.loopexit161.us ], [ %i.bt, %.loopexit161.us.thread ], [ %.6128186.us, %bb.t ], [ %.6128.us.lcssa, %.loopexit.us ] ; 4 uses
  %.4118.lcssa.us = phi i64 [ %.2116.us, %.loopexit161.us ], [ %i.bu, %.loopexit161.us.thread ], [ %.6120187.us, %bb.t ], [ %i.el, %.loopexit.us ] ; 2 uses
  %i.dz = icmp sgt i32 %.4.us, 3
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.us
  %i.ea = trunc i32 %.4.us to i8
  %i.eb = add i8 %i.ea, 126
  %i.ec = getelementptr inbounds nuw i8, ptr %.4126.lcssa.us, i64 1
  store i8 %i.eb, ptr %.4126.lcssa.us, align 1, !tbaa !9
  %i.ed = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0112166.us
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !6
  %i.ef = lshr i32 %i.ee, %.0137215.us
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.4126.lcssa.us, i64 2
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !9
  %i.ei = add nsw i64 %.4118.lcssa.us, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.us
  %.7129.us = phi ptr [ %i.eh, %bb.u ], [ %.4126.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.7.us = phi i64 [ %i.ei, %bb.u ], [ %.4118.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.5.us = phi i32 [ %.4.us, %bb.u ], [ 0, %._crit_edge.us ] ; 3 uses
  %i.ej = zext nneg i32 %.5.us to i64
  %i.ek = add nsw i64 %.2135.lcssa.us, %i.ej      ; 2 uses
  %.not149.us = icmp slt i64 %i.ek, %i.f
  br i1 %.not149.us, label %bb.f, label %..thread154_crit_edge.us

.loopexit.us:                                     ; preds = %.lr.ph193.us.prol.loopexit, %.lr.ph193.us, %middle.block
  %.lcssa263 = phi i64 [ %i.cm, %middle.block ], [ %.lcssa279.unr, %.lr.ph193.us.prol.loopexit ], [ %i.dt, %.lr.ph193.us ] ; 3 uses
  %.6128.us.lcssa = phi ptr [ %i.ck, %middle.block ], [ %.6128.us.lcssa278.unr, %.lr.ph193.us.prol.loopexit ], [ %.6128.us.3, %.lr.ph193.us ] ; 2 uses
  %i.el = sub i64 %.6120187.us, %spec.store.select.us ; 2 uses
  %i.em = icmp slt i64 %.lcssa263, %.0112166.us
  br i1 %i.em, label %.lr.ph200.us, label %._crit_edge.us

..thread154_crit_edge.us:                         ; preds = %bb.v
  %i.en = add nsw i32 %.0137215.us, -8
  %.not = icmp eq i32 %.0137215.us, 0
  br i1 %.not, label %.split220.us.loopexit, label %.lr.ph211.us

.split220.us.loopexit:                            ; preds = %..thread154_crit_edge.us
  %.pre = load i64, ptr %i.s, align 8, !tbaa !65
  br label %.split220.us

.split220.us:                                     ; preds = %bb.e, %.split220.us.loopexit
  %i.eo = phi i64 [ %.pre, %.split220.us.loopexit ], [ %i.t, %bb.e ]
  %.us-phi = phi ptr [ %.7129.us, %.split220.us.loopexit ], [ %i.r, %bb.e ]
  %.us-phi221 = phi i64 [ %.7.us, %.split220.us.loopexit ], [ %i.w, %bb.e ]
  store ptr %.us-phi, ptr %i.q, align 8, !tbaa !58
  %i.ep = sub nsw i64 %i.eo, %.us-phi221
  store i64 %i.ep, ptr %i.u, align 8, !tbaa !59
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.r, %.split220.us, %bb.c
  %.2140 = phi i32 [ 0, %bb.r ], [ 1, %.split220.us ], [ 0, %bb.c ], [ 0, %bb.g ]
  ret i32 %.2140
}

; Function Attrs: nounwind uwtable
define internal void @Luv32fromXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.078 = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = add nsw i64 %.078, -1
  %i.f = load i32, ptr %i.d, align 8, !tbaa !37
  %i.g = tail call i32 @LogLuv32fromXYZ(ptr noundef %.010, i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i32 %i.g, ptr %.069, align 4, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 12
  %i.j = icmp samesign ugt i64 %.078, 1
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Luv32fromLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp sgt i64 %2, 0                       ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader25

.preheader25:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.g = mul i64 %n.vec, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = shl i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  %i.k = and i64 %2, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = mul i64 %index, 6                        ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.l  ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 %i.l       ; 3 uses
  %next.gep41 = getelementptr i8, ptr %i.m, i64 6
  %i.n = getelementptr i8, ptr %1, i64 %i.l       ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.n, i64 12
  %i.o = getelementptr i8, ptr %1, i64 %i.l       ; 3 uses
  %next.gep43 = getelementptr i8, ptr %i.o, i64 18
  %i.p = shl i64 %index, 2
  %next.gep44 = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = load i16, ptr %next.gep, align 2, !tbaa !63
  %i.r = load i16, ptr %next.gep41, align 2, !tbaa !63
  %i.s = load i16, ptr %next.gep42, align 2, !tbaa !63
  %i.t = load i16, ptr %next.gep43, align 2, !tbaa !63
  %i.u = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 1
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 2
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 3
  %i.y = sext <4 x i16> %i.x to <4 x i32>
  %i.z = shl nsw <4 x i32> %i.y, splat (i32 16)
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ab = getelementptr i8, ptr %i.m, i64 8
  %i.ac = getelementptr i8, ptr %i.n, i64 14
  %i.ad = getelementptr i8, ptr %i.o, i64 20
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !63
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !63
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !63
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !63
  %i.ai = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 3
  %i.am = sext <4 x i16> %i.al to <4 x i32>
  %i.an = mul nsw <4 x i32> %i.am, splat (i32 410)
  %i.ao = lshr <4 x i32> %i.an, splat (i32 7)
  %i.ap = and <4 x i32> %i.ao, splat (i32 65280)
  %i.aq = or disjoint <4 x i32> %i.ap, %i.z
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.as = getelementptr i8, ptr %i.m, i64 10
  %i.at = getelementptr i8, ptr %i.n, i64 16
  %i.au = getelementptr i8, ptr %i.o, i64 22
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !63
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !63
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !63
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !63
  %i.az = insertelement <4 x i16> poison, i16 %i.av, i64 0
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 1
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 2
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.ay, i64 3
  %i.bd = sext <4 x i16> %i.bc to <4 x i32>
  %i.be = mul nsw <4 x i32> %i.bd, splat (i32 410)
  %i.bf = lshr <4 x i32> %i.be, splat (i32 15)
  %i.bg = and <4 x i32> %i.bf, splat (i32 255)
  %i.bh = or disjoint <4 x i32> %i.aq, %i.bg
  store <4 x i32> %i.bh, ptr %next.gep44, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %middle.block, %.lr.ph33.preheader
  %.032.ph = phi ptr [ %1, %.lr.ph33.preheader ], [ %i.h, %middle.block ] ; 9 uses
  %.01631.ph = phi ptr [ %i.b, %.lr.ph33.preheader ], [ %i.j, %middle.block ] ; 3 uses
  %.01830.ph = phi i64 [ %2, %.lr.ph33.preheader ], [ %i.k, %middle.block ] ; 2 uses
  %i.bj = load i16, ptr %.032.ph, align 2, !tbaa !63
  %i.bk = sext i16 %i.bj to i32
  %i.bl = shl nsw i32 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.032.ph, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !63
  %i.bo = sext i16 %i.bn to i32
  %i.bp = mul nsw i32 %i.bo, 410
  %i.bq = lshr i32 %i.bp, 7
  %i.br = and i32 %i.bq, 65280
  %i.bs = or disjoint i32 %i.br, %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %.032.ph, i64 4
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !63
  %i.bv = sext i16 %i.bu to i32
  %i.bw = mul nsw i32 %i.bv, 410
  %i.bx = lshr i32 %i.bw, 15
  %i.by = and i32 %i.bx, 255
  %i.bz = or disjoint i32 %i.bs, %i.by
  store i32 %i.bz, ptr %.01631.ph, align 4, !tbaa !6
  %i.ca = icmp samesign ugt i64 %.01830.ph, 1
  br i1 %i.ca, label %.lr.ph33.1, label %.loopexit

.lr.ph33.1:                                       ; preds = %.lr.ph33
  %i.cb = getelementptr inbounds nuw i8, ptr %.032.ph, i64 6
  %i.cc = getelementptr inbounds nuw i8, ptr %.01631.ph, i64 4
  %i.cd = load i16, ptr %i.cb, align 2, !tbaa !63
  %i.ce = sext i16 %i.cd to i32
  %i.cf = shl nsw i32 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.032.ph, i64 8
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !63
  %i.ci = sext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.ci, 410
  %i.ck = lshr i32 %i.cj, 7
  %i.cl = and i32 %i.ck, 65280
  %i.cm = or disjoint i32 %i.cl, %i.cf
  %i.cn = getelementptr inbounds nuw i8, ptr %.032.ph, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !63
  %i.cp = sext i16 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, 410
  %i.cr = lshr i32 %i.cq, 15
  %i.cs = and i32 %i.cr, 255
  %i.ct = or disjoint i32 %i.cm, %i.cs
  store i32 %i.ct, ptr %i.cc, align 4, !tbaa !6
  %i.cu = icmp eq i64 %.01830.ph, 3
  br i1 %i.cu, label %.lr.ph33.2, label %.loopexit

.lr.ph33.2:                                       ; preds = %.lr.ph33.1
  %i.cv = getelementptr inbounds nuw i8, ptr %.032.ph, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %.01631.ph, i64 8
  %i.cx = load i16, ptr %i.cv, align 2, !tbaa !63
  %i.cy = sext i16 %i.cx to i32
  %i.cz = shl nsw i32 %i.cy, 16
  %i.da = getelementptr inbounds nuw i8, ptr %.032.ph, i64 14
  %i.db = load i16, ptr %i.da, align 2, !tbaa !63
  %i.dc = sext i16 %i.db to i32
  %i.dd = mul nsw i32 %i.dc, 410
  %i.de = lshr i32 %i.dd, 7
  %i.df = and i32 %i.de, 65280
  %i.dg = or disjoint i32 %i.df, %i.cz
  %i.dh = getelementptr inbounds nuw i8, ptr %.032.ph, i64 16
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !63
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, 410
  %i.dl = lshr i32 %i.dk, 15
  %i.dm = and i32 %i.dl, 255
  %i.dn = or disjoint i32 %i.dg, %i.dm
  store i32 %i.dn, ptr %i.cw, align 4, !tbaa !6
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader25, %tiff_itrunc.exit24
  %.129 = phi ptr [ %i.fg, %tiff_itrunc.exit24 ], [ %1, %.preheader25 ] ; 4 uses
  %.11728 = phi ptr [ %i.ff, %tiff_itrunc.exit24 ], [ %i.b, %.preheader25 ] ; 2 uses
  %.11927 = phi i64 [ %i.do, %tiff_itrunc.exit24 ], [ %2, %.preheader25 ] ; 2 uses
  %i.do = add nsw i64 %.11927, -1
  %i.dp = load i16, ptr %.129, align 2, !tbaa !63
  %i.dq = sext i16 %i.dp to i32
  %i.dr = shl nsw i32 %i.dq, 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.129, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !63
  %i.du = sitofp i16 %i.dt to double
  %i.dv = fmul nnan double %i.du, f0x3F89A00000000000 ; 2 uses
  %i.dw = load i32, ptr %i.c, align 8, !tbaa !37
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %tiff_itrunc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.dy = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !6 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i, label %bb.c, label %_TIFFRand.exit.i

bb.c:                                             ; preds = %bb.b
  %i.dz = tail call i64 @time(ptr noundef null) #16
  %i.ea = trunc i64 %i.dz to i32
  %.pre.pre = load i32, ptr %i.c, align 8, !tbaa !37
  %i.eb = icmp eq i32 %.pre.pre, 0
  br label %_TIFFRand.exit.i

_TIFFRand.exit.i:                                 ; preds = %bb.c, %bb.b
  %.pre = phi i1 [ %i.eb, %bb.c ], [ false, %bb.b ]
  %i.ec = phi i32 [ %i.ea, %bb.c ], [ %i.dy, %bb.b ]
  %i.ed = mul i32 %i.ec, 1103515245
  %i.ee = add i32 %i.ed, 1103527590               ; 2 uses
  store i32 %i.ee, ptr @_TIFFRand.nCounter, align 4, !tbaa !6
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = and i32 %i.ef, 32767
  %i.eh = uitofp nneg i32 %i.eg to double
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double f0x3F00002000400080, double %i.dv)
  %i.ej = fadd double %i.ei, -5.000000e-01
  br label %tiff_itrunc.exit

tiff_itrunc.exit:                                 ; preds = %.lr.ph, %_TIFFRand.exit.i
  %i.ek = phi i1 [ %.pre, %_TIFFRand.exit.i ], [ true, %.lr.ph ]
  %.0.in.i = phi double [ %i.ej, %_TIFFRand.exit.i ], [ %i.dv, %.lr.ph ]
  %.0.i = fptosi double %.0.in.i to i32
  %i.el = shl i32 %.0.i, 8
  %i.em = and i32 %i.el, 65280
  %i.en = or disjoint i32 %i.em, %i.dr
  %i.eo = getelementptr inbounds nuw i8, ptr %.129, i64 4
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !63
  %i.eq = sitofp i16 %i.ep to double
  %i.er = fmul nnan double %i.eq, f0x3F89A00000000000 ; 2 uses
  br i1 %i.ek, label %tiff_itrunc.exit24, label %bb.d

bb.d:                                             ; preds = %tiff_itrunc.exit
  %i.es = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !6 ; 2 uses
  %.not.i.i20 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i20, label %bb.e, label %_TIFFRand.exit.i21

bb.e:                                             ; preds = %bb.d
  %i.et = tail call i64 @time(ptr noundef null) #16
  %i.eu = trunc i64 %i.et to i32
  br label %_TIFFRand.exit.i21

_TIFFRand.exit.i21:                               ; preds = %bb.e, %bb.d
  %i.ev = phi i32 [ %i.eu, %bb.e ], [ %i.es, %bb.d ]
  %i.ew = mul i32 %i.ev, 1103515245
  %i.ex = add i32 %i.ew, 1103527590               ; 2 uses
  store i32 %i.ex, ptr @_TIFFRand.nCounter, align 4, !tbaa !6
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = and i32 %i.ey, 32767
  %i.fa = uitofp nneg i32 %i.ez to double
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double f0x3F00002000400080, double %i.er)
  %i.fc = fadd double %i.fb, -5.000000e-01
  br label %tiff_itrunc.exit24

tiff_itrunc.exit24:                               ; preds = %tiff_itrunc.exit, %_TIFFRand.exit.i21
  %.0.in.i22 = phi double [ %i.fc, %_TIFFRand.exit.i21 ], [ %i.er, %tiff_itrunc.exit ]
  %.0.i23 = fptosi double %.0.in.i22 to i32
  %i.fd = and i32 %.0.i23, 255
  %i.fe = or disjoint i32 %i.fd, %i.en
  %i.ff = getelementptr inbounds nuw i8, ptr %.11728, i64 4
  store i32 %i.fe, ptr %.11728, align 4, !tbaa !6
  %i.fg = getelementptr inbounds nuw i8, ptr %.129, i64 6
  %i.fh = icmp samesign ugt i64 %.11927, 1
  br i1 %i.fh, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %tiff_itrunc.exit24, %.lr.ph33, %.lr.ph33.1, %.lr.ph33.2, %middle.block, %.preheader25, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogL16Encode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16Encode.module, ptr noundef nonnull @.str.9) #16
  br label %.loopexit144

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void %i.p(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.e

end_hunk_1
begin_hunk_2_@LogL16Encode:bb.a
bb.f:                                             ; preds = %.preheader.us.preheader
  store ptr %.1120191.us, ptr %i.q, align 8, !tbaa !58
  %i.z = load i64, ptr %i.s, align 8, !tbaa !65
  %i.aa = sub nsw i64 %i.z, %.1113192.us
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !59
  %i.ab = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us = icmp eq i32 %i.ab, 0
  br i1 %.not.us, label %.loopexit144, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !59
  %i.af = sub nsw i64 %i.ad, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us.preheader
  %.2121.us = phi ptr [ %i.ac, %bb.g ], [ %.1120191.us, %.preheader.us.preheader ] ; 5 uses
  %.2114.us = phi i64 [ %i.af, %bb.g ], [ %.1113192.us, %.preheader.us.preheader ] ; 3 uses
  %i.ag = icmp slt i64 %.0129189.us, %i.f
  br i1 %i.ag, label %.lr.ph.us, label %.critedge.thread.us

.lr.ph.us:                                        ; preds = %bb.h, %.critedge.us
  %.0167.us = phi i64 [ %.lcssa360, %.critedge.us ], [ %.0129189.us, %bb.h ] ; 6 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0167.us
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !63
  %i.aj = and i16 %i.ai, -256
  %i.ak = sext i16 %i.aj to i32                   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.us
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.1369, %bb.m ] ; 5 uses
  %i.al = add nsw i64 %.0167.us, %indvars.iv      ; 4 uses
  %i.am = icmp slt i64 %i.al, %i.f
  br i1 %i.am, label %bb.j, label %.critedge.us.thread

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.al
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !63
  %i.ap = and i16 %i.ao, -256
  %i.aq = zext i16 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, %i.ak
  br i1 %i.ar, label %bb.k, label %.critedge.us

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.as = add nsw i64 %.0167.us, %indvars.iv.next ; 4 uses
  %i.at = icmp slt i64 %i.as, %i.f
  br i1 %i.at, label %bb.l, label %.critedge.us.thread

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.as
  %i.av = load i16, ptr %i.au, align 2, !tbaa !63
  %i.aw = and i16 %i.av, -256
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, %i.ak
  br i1 %i.ay, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.1369 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1369, 129
  br i1 %exitcond.not.1, label %.critedge.thread.us, label %bb.i

.critedge.us:                                     ; preds = %bb.l, %bb.j
  %indvars.iv.lcssa362 = phi i64 [ %indvars.iv, %bb.j ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.lcssa360 = phi i64 [ %i.al, %bb.j ], [ %i.as, %bb.l ]
  %i.az = icmp samesign ugt i64 %indvars.iv.lcssa362, 3
  br i1 %i.az, label %.critedge.thread.us.loopexit251, label %.lr.ph.us

.critedge.us.thread:                              ; preds = %bb.k, %bb.i
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.i ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.lcssa359 = phi i64 [ %i.al, %bb.i ], [ %i.as, %bb.k ]
  %i.ba = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.bb = icmp samesign ugt i64 %indvars.iv.lcssa, 3
  %spec.select = select i1 %i.bb, i64 %.0167.us, i64 %.lcssa359
  br label %.critedge.thread.us

.critedge.thread.us.loopexit251:                  ; preds = %.critedge.us
  %i.bc = trunc nuw nsw i64 %indvars.iv.lcssa362 to i32
  br label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %bb.m, %.critedge.us.thread, %.critedge.thread.us.loopexit251, %bb.h
  %.0150.us = phi i64 [ %spec.select, %.critedge.us.thread ], [ %.0129189.us, %bb.h ], [ %.0167.us, %.critedge.thread.us.loopexit251 ], [ %.0167.us, %bb.m ] ; 10 uses
  %.4.us = phi i32 [ %i.ba, %.critedge.us.thread ], [ %.1193.us, %bb.h ], [ %i.bc, %.critedge.thread.us.loopexit251 ], [ 129, %bb.m ] ; 3 uses
  %i.bd = sub nsw i64 %.0150.us, %.0129189.us
  %i.be = and i64 %i.bd, -2
  %or.cond.us = icmp eq i64 %i.be, 2
  br i1 %or.cond.us, label %bb.n, label %.loopexit145.us

bb.n:                                             ; preds = %.critedge.thread.us
  %i.bf = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0129189.us
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !63 ; 2 uses
  %i.bh = and i16 %i.bg, -256
  %i.bi = add nsw i64 %.0129189.us, 1
  %i.bj = sext i16 %i.bh to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0127.us = phi i64 [ %i.bi, %bb.n ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0127.us
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !63
  %i.bm = and i16 %i.bl, -256
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, %i.bj
  br i1 %i.bo, label %bb.p, label %.loopexit145.us

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i64 %.0127.us, 1                ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %.0150.us
  br i1 %i.bq, label %.loopexit145.us.thread, label %bb.o

.loopexit145.us.thread:                           ; preds = %bb.p
  %i.br = xor i64 %.0129189.us, -1
  %reass.sub = add i64 %.0150.us, %i.br
  %i.bs = trunc i64 %reass.sub to i8
  %i.bt = add i8 %i.bs, 127
  %i.bu = getelementptr inbounds nuw i8, ptr %.2121.us, i64 1
  store i8 %i.bt, ptr %.2121.us, align 1, !tbaa !9
  %i.bv = lshr i16 %i.bg, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.2121.us, i64 2
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !9
  %i.by = add nsw i64 %.2114.us, -2
  br label %._crit_edge.us

.loopexit145.us:                                  ; preds = %bb.o, %.critedge.thread.us
  %i.bz = icmp slt i64 %.0129189.us, %.0150.us
  br i1 %i.bz, label %.lr.ph185.us, label %._crit_edge.us

.lr.ph185.us:                                     ; preds = %.loopexit145.us, %.loopexit.us
  %.4116184.us = phi i64 [ %i.ez, %.loopexit.us ], [ %.2114.us, %.loopexit145.us ] ; 3 uses
  %.4123183.us = phi ptr [ %.6125.us.lcssa, %.loopexit.us ], [ %.2121.us, %.loopexit145.us ] ; 2 uses
  %.2131182.us = phi i64 [ %.lcssa296, %.loopexit.us ], [ %.0129189.us, %.loopexit145.us ] ; 10 uses
  %i.ca = sub nsw i64 %.0150.us, %.2131182.us
  %spec.store.select.us = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 127) ; 16 uses
  %i.cb = add nuw nsw i64 %spec.store.select.us, 3
  %i.cc = icmp slt i64 %.4116184.us, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph185.us
  store ptr %.4123183.us, ptr %i.q, align 8, !tbaa !58
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ce = sub nsw i64 %i.cd, %.4116184.us
  store i64 %i.ce, ptr %i.u, align 8, !tbaa !59
  %i.cf = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not142.us = icmp eq i32 %i.cf, 0
  br i1 %.not142.us, label %.loopexit144, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !59
  %i.cj = sub nsw i64 %i.ch, %i.ci
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph185.us
  %.5124.us = phi ptr [ %i.cg, %bb.r ], [ %.4123183.us, %.lr.ph185.us ] ; 3 uses
  %.5117.us = phi i64 [ %i.cj, %bb.r ], [ %.4116184.us, %.lr.ph185.us ]
  %i.ck = trunc i64 %spec.store.select.us to i8
  store i8 %i.ck, ptr %.5124.us, align 1, !tbaa !9
  %.6125171.us = getelementptr i8, ptr %.5124.us, i64 1 ; 8 uses
  %.6172.us = add i64 %.5117.us, -1               ; 2 uses
  %.not143173.us = icmp eq i64 %.0150.us, %.2131182.us
  br i1 %.not143173.us, label %._crit_edge.us, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %spec.store.select.us, 4
  br i1 %min.iters.check, label %.lr.ph178.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.5124.us, i64 1
  %scevgep297 = getelementptr i8, ptr %scevgep, i64 %spec.store.select.us
  %i.cl = shl i64 %.2131182.us, 1
  %scevgep298 = getelementptr i8, ptr %.0118, i64 %i.cl
  %i.cm = add i64 %.2131182.us, %spec.store.select.us
  %i.cn = shl i64 %i.cm, 1
  %scevgep299 = getelementptr i8, ptr %.0118, i64 %i.cn
  %bound0 = icmp ult ptr %.6125171.us, %scevgep299
  %bound1 = icmp ult ptr %scevgep298, %scevgep297
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph178.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check300 = icmp ult i64 %spec.store.select.us, 16
  br i1 %min.iters.check300, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %spec.store.select.us, 12
  %n.vec = and i64 %spec.store.select.us, -16     ; 5 uses
  %i.cp = getelementptr i8, ptr %.6125171.us, i64 %n.vec ; 2 uses
  %i.cq = and i64 %spec.store.select.us, 15
  %i.cr = add i64 %.2131182.us, %n.vec            ; 2 uses
  %i.cs = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.6125171.us, i64 %index ; 2 uses
  %i.ct = getelementptr [2 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <8 x i16>, ptr %i.ct, align 2, !tbaa !63, !alias.scope !171
  %wide.load301 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !63, !alias.scope !171
  %i.cv = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.cw = lshr <8 x i16> %wide.load301, splat (i16 8)
  %i.cx = trunc nuw <8 x i16> %i.cv to <8 x i8>
  %i.cy = trunc nuw <8 x i16> %i.cw to <8 x i8>
  %i.cz = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.cx, ptr %next.gep, align 1, !tbaa !9, !alias.scope !172, !noalias !171
  store <8 x i8> %i.cy, ptr %i.cz, align 1, !tbaa !9, !alias.scope !172, !noalias !171
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.store.select.us, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph178.us.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec302 = and i64 %spec.store.select.us, -4   ; 4 uses
  %i.db = getelementptr i8, ptr %.6125171.us, i64 %n.vec302 ; 2 uses
  %i.dc = and i64 %spec.store.select.us, 3
  %i.dd = add i64 %.2131182.us, %n.vec302         ; 2 uses
  %i.de = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index303 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next306, %vec.epilog.vector.body ] ; 3 uses
  %next.gep304 = getelementptr i8, ptr %.6125171.us, i64 %index303
  %i.df = getelementptr [2 x i8], ptr %i.de, i64 %index303
  %wide.load305 = load <4 x i16>, ptr %i.df, align 2, !tbaa !63, !alias.scope !171
  %i.dg = lshr <4 x i16> %wide.load305, splat (i16 8)
  %i.dh = trunc nuw <4 x i16> %i.dg to <4 x i8>
  store <4 x i8> %i.dh, ptr %next.gep304, align 1, !tbaa !9, !alias.scope !172, !noalias !171
  %index.next306 = add nuw i64 %index303, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next306, %n.vec302
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !161

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n307 = icmp eq i64 %spec.store.select.us, %n.vec302
  br i1 %cmp.n307, label %.loopexit.us, label %.lr.ph178.us.preheader

.lr.ph178.us.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.6125176.us.ph = phi ptr [ %.6125171.us, %iter.check ], [ %.6125171.us, %vector.memcheck ], [ %i.cp, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ] ; 2 uses
  %.1128175.us.ph = phi i64 [ %spec.store.select.us, %iter.check ], [ %spec.store.select.us, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 4 uses
  %.3132174.us.ph = phi i64 [ %.2131182.us, %iter.check ], [ %.2131182.us, %vector.memcheck ], [ %i.cr, %vec.epilog.iter.check ], [ %i.dd, %vec.epilog.middle.block ] ; 2 uses
  %i.dj = add nsw i64 %.1128175.us.ph, -1
  %xtraiter = and i64 %.1128175.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol

.lr.ph178.us.prol:                                ; preds = %.lr.ph178.us.preheader, %.lr.ph178.us.prol
  %.6125176.us.prol = phi ptr [ %.6125.us.prol, %.lr.ph178.us.prol ], [ %.6125176.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %.1128175.us.prol = phi i64 [ %i.dk, %.lr.ph178.us.prol ], [ %.1128175.us.ph, %.lr.ph178.us.preheader ]
  %.3132174.us.prol = phi i64 [ %i.dl, %.lr.ph178.us.prol ], [ %.3132174.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph178.us.prol ], [ 0, %.lr.ph178.us.preheader ]
  %i.dk = add nsw i64 %.1128175.us.prol, -1       ; 2 uses
  %i.dl = add nsw i64 %.3132174.us.prol, 1        ; 3 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.prol
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !63
  %i.do = lshr i16 %i.dn, 8
  %i.dp = trunc nuw i16 %i.do to i8
  store i8 %i.dp, ptr %.6125176.us.prol, align 1, !tbaa !9
  %.6125.us.prol = getelementptr inbounds nuw i8, ptr %.6125176.us.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol, !llvm.loop !162

.lr.ph178.us.prol.loopexit:                       ; preds = %.lr.ph178.us.prol, %.lr.ph178.us.preheader
  %.lcssa367.unr = phi i64 [ poison, %.lr.ph178.us.preheader ], [ %i.dl, %.lr.ph178.us.prol ]
  %.6125.us.lcssa366.unr = phi ptr [ poison, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.6125176.us.unr = phi ptr [ %.6125176.us.ph, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.1128175.us.unr = phi i64 [ %.1128175.us.ph, %.lr.ph178.us.preheader ], [ %i.dk, %.lr.ph178.us.prol ]
  %.3132174.us.unr = phi i64 [ %.3132174.us.ph, %.lr.ph178.us.preheader ], [ %i.dl, %.lr.ph178.us.prol ]
  %i.dq = icmp ult i64 %i.dj, 3
  br i1 %i.dq, label %.loopexit.us, label %.lr.ph178.us

.lr.ph178.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us
  %.6125176.us = phi ptr [ %.6125.us.3, %.lr.ph178.us ], [ %.6125176.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %.1128175.us = phi i64 [ %i.ef, %.lr.ph178.us ], [ %.1128175.us.unr, %.lr.ph178.us.prol.loopexit ]
  %.3132174.us = phi i64 [ %i.eg, %.lr.ph178.us ], [ %.3132174.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !63
  %i.dt = lshr i16 %i.ds, 8
  %i.du = trunc nuw i16 %i.dt to i8
  store i8 %i.du, ptr %.6125176.us, align 1, !tbaa !9
  %.6125.us = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 1
  %i.dv = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !63
  %i.dy = lshr i16 %i.dx, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  store i8 %i.dz, ptr %.6125.us, align 1, !tbaa !9
  %.6125.us.1373 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 2
  %i.ea = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !63
  %i.ed = lshr i16 %i.ec, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  store i8 %i.ee, ptr %.6125.us.1373, align 1, !tbaa !9
  %.6125.us.2 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 3
  %i.ef = add nsw i64 %.1128175.us, -4            ; 2 uses
  %i.eg = add nsw i64 %.3132174.us, 4             ; 2 uses
  %i.eh = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ei = getelementptr i8, ptr %i.eh, i64 6
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !63
  %i.ek = lshr i16 %i.ej, 8
  %i.el = trunc nuw i16 %i.ek to i8
  store i8 %i.el, ptr %.6125.us.2, align 1, !tbaa !9
  %.6125.us.3 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 4 ; 2 uses
  %.not143.us.3 = icmp eq i64 %i.ef, 0
  br i1 %.not143.us.3, label %.loopexit.us, label %.lr.ph178.us, !llvm.loop !163

._crit_edge.us:                                   ; preds = %bb.s, %.loopexit.us, %.loopexit145.us.thread, %.loopexit145.us
  %.2131.lcssa.us = phi i64 [ %.0129189.us, %.loopexit145.us ], [ %.0150.us, %.loopexit145.us.thread ], [ %.0150.us, %bb.s ], [ %.lcssa296, %.loopexit.us ]
  %.4123.lcssa.us = phi ptr [ %.2121.us, %.loopexit145.us ], [ %i.bx, %.loopexit145.us.thread ], [ %.6125171.us, %bb.s ], [ %.6125.us.lcssa, %.loopexit.us ] ; 4 uses
  %.4116.lcssa.us = phi i64 [ %.2114.us, %.loopexit145.us ], [ %i.by, %.loopexit145.us.thread ], [ %.6172.us, %bb.s ], [ %i.ez, %.loopexit.us ] ; 2 uses
  %i.em = icmp sgt i32 %.4.us, 3
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.us
  %i.en = trunc i32 %.4.us to i8
  %i.eo = add i8 %i.en, 126
  %i.ep = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 1
  store i8 %i.eo, ptr %.4123.lcssa.us, align 1, !tbaa !9
  %i.eq = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0150.us
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !63
  %i.es = lshr i16 %i.er, 8
  %i.et = trunc nuw i16 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 2
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !9
  %i.ev = add nsw i64 %.4116.lcssa.us, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.us
  %.7126.us = phi ptr [ %i.eu, %bb.t ], [ %.4123.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.7.us = phi i64 [ %i.ev, %bb.t ], [ %.4116.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.5.us = phi i32 [ %.4.us, %bb.t ], [ 0, %._crit_edge.us ] ; 3 uses
  %i.ew = zext nneg i32 %.5.us to i64
  %i.ex = add nsw i64 %.2131.lcssa.us, %i.ew      ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %i.f
  br i1 %i.ey, label %.preheader.us.preheader, label %._crit_edge195.us

.loopexit.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us, %vec.epilog.middle.block, %middle.block
  %.lcssa296 = phi i64 [ %i.dd, %vec.epilog.middle.block ], [ %i.cr, %middle.block ], [ %.lcssa367.unr, %.lr.ph178.us.prol.loopexit ], [ %i.eg, %.lr.ph178.us ] ; 3 uses
  %.6125.us.lcssa = phi ptr [ %i.db, %vec.epilog.middle.block ], [ %i.cp, %middle.block ], [ %.6125.us.lcssa366.unr, %.lr.ph178.us.prol.loopexit ], [ %.6125.us.3, %.lr.ph178.us ] ; 2 uses
  %i.ez = sub i64 %.6172.us, %spec.store.select.us ; 2 uses
  %i.fa = icmp slt i64 %.lcssa296, %.0150.us
  br i1 %i.fa, label %.lr.ph185.us, label %._crit_edge.us

._crit_edge195.us:                                ; preds = %bb.u, %bb.ak
  %.1193.us.1 = phi i32 [ %.5.us.1, %bb.ak ], [ %.5.us, %bb.u ]
  %.1113192.us.1 = phi i64 [ %.7.us.1, %bb.ak ], [ %.7.us, %bb.u ] ; 3 uses
  %.1120191.us.1 = phi ptr [ %.7126.us.1, %bb.ak ], [ %.7126.us, %bb.u ] ; 2 uses
  %.0129189.us.1 = phi i64 [ %i.jo, %bb.ak ], [ 0, %bb.u ] ; 10 uses
  %i.fb = icmp slt i64 %.1113192.us.1, 4
  br i1 %i.fb, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge195.us
  store ptr %.1120191.us.1, ptr %i.q, align 8, !tbaa !58
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !65
  %i.fd = sub nsw i64 %i.fc, %.1113192.us.1
  store i64 %i.fd, ptr %i.u, align 8, !tbaa !59
  %i.fe = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us.1 = icmp eq i32 %i.fe, 0
  br i1 %.not.us.1, label %.loopexit144, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.fg = load i64, ptr %i.s, align 8, !tbaa !65
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !59
  %i.fi = sub nsw i64 %i.fg, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge195.us
  %.2121.us.1 = phi ptr [ %i.ff, %bb.w ], [ %.1120191.us.1, %._crit_edge195.us ] ; 5 uses
  %.2114.us.1 = phi i64 [ %i.fi, %bb.w ], [ %.1113192.us.1, %._crit_edge195.us ] ; 3 uses
  %i.fj = icmp slt i64 %.0129189.us.1, %i.f
  br i1 %i.fj, label %.lr.ph.us.1, label %.critedge.thread.us.1

.lr.ph.us.1:                                      ; preds = %bb.x, %.critedge.us.1
  %.0167.us.1 = phi i64 [ %.lcssa349, %.critedge.us.1 ], [ %.0129189.us.1, %bb.x ] ; 6 uses
  %i.fk = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0167.us.1
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !63 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ 1, %.lr.ph.us.1 ], [ %indvars.iv.next.1.1, %bb.ac ] ; 5 uses
  %i.fm = add nsw i64 %.0167.us.1, %indvars.iv.1  ; 4 uses
  %i.fn = icmp slt i64 %i.fm, %i.f
  br i1 %i.fn, label %bb.z, label %.critedge.us.1.thread

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fm
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !63
  %i.fq = xor i16 %i.fp, %i.fl
  %i.fr = and i16 %i.fq, 255
  %i.fs = icmp eq i16 %i.fr, 0
  br i1 %i.fs, label %bb.aa, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %bb.ab, %bb.z
  %indvars.iv.1.lcssa351 = phi i64 [ %indvars.iv.1, %bb.z ], [ %indvars.iv.next.1, %bb.ab ] ; 2 uses
  %.lcssa349 = phi i64 [ %i.fm, %bb.z ], [ %i.fw, %bb.ab ]
  %i.ft = icmp samesign ugt i64 %indvars.iv.1.lcssa351, 3
  br i1 %i.ft, label %.critedge.thread.us.1.loopexit248, label %.lr.ph.us.1

.critedge.us.1.thread:                            ; preds = %bb.aa, %bb.y
  %indvars.iv.1.lcssa = phi i64 [ %indvars.iv.1, %bb.y ], [ %indvars.iv.next.1, %bb.aa ] ; 2 uses
  %.lcssa = phi i64 [ %i.fm, %bb.y ], [ %i.fw, %bb.aa ]
  %i.fu = trunc nuw nsw i64 %indvars.iv.1.lcssa to i32
  %i.fv = icmp samesign ugt i64 %indvars.iv.1.lcssa, 3
  %spec.select278 = select i1 %i.fv, i64 %.0167.us.1, i64 %.lcssa
  br label %.critedge.thread.us.1

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fw = add nsw i64 %.0167.us.1, %indvars.iv.next.1 ; 4 uses
  %i.fx = icmp slt i64 %i.fw, %i.f
  br i1 %i.fx, label %bb.ab, label %.critedge.us.1.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fw
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !63
  %i.ga = xor i16 %i.fz, %i.fl
  %i.gb = and i16 %i.ga, 255
  %i.gc = icmp eq i16 %i.gb, 0
  br i1 %i.gc, label %bb.ac, label %.critedge.us.1

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 129
  br i1 %exitcond.1.not.1, label %.critedge.thread.us.1, label %bb.y

.critedge.thread.us.1.loopexit248:                ; preds = %.critedge.us.1
  %i.gd = trunc nuw nsw i64 %indvars.iv.1.lcssa351 to i32
  br label %.critedge.thread.us.1

.critedge.thread.us.1:                            ; preds = %bb.ac, %.critedge.us.1.thread, %.critedge.thread.us.1.loopexit248, %bb.x
  %.0150.us.1 = phi i64 [ %spec.select278, %.critedge.us.1.thread ], [ %.0129189.us.1, %bb.x ], [ %.0167.us.1, %.critedge.thread.us.1.loopexit248 ], [ %.0167.us.1, %bb.ac ] ; 10 uses
  %.4.us.1 = phi i32 [ %i.fu, %.critedge.us.1.thread ], [ %.1193.us.1, %bb.x ], [ %i.gd, %.critedge.thread.us.1.loopexit248 ], [ 129, %bb.ac ] ; 3 uses
  %i.ge = sub nsw i64 %.0150.us.1, %.0129189.us.1
  %i.gf = and i64 %i.ge, -2
  %or.cond.us.1 = icmp eq i64 %i.gf, 2
  br i1 %or.cond.us.1, label %bb.ad, label %.loopexit145.us.1

bb.ad:                                            ; preds = %.critedge.thread.us.1
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0129189.us.1
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !63 ; 2 uses
  %i.gi = add nsw i64 %.0129189.us.1, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.0127.us.1 = phi i64 [ %i.gi, %bb.ad ], [ %i.go, %bb.af ] ; 2 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0127.us.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !63
  %i.gl = xor i16 %i.gk, %i.gh
  %i.gm = and i16 %i.gl, 255
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %.loopexit145.us.1

bb.af:                                            ; preds = %bb.ae
  %i.go = add nsw i64 %.0127.us.1, 1              ; 2 uses
  %i.gp = icmp eq i64 %i.go, %.0150.us.1
  br i1 %i.gp, label %.loopexit145.us.1.thread, label %bb.ae

.loopexit145.us.1.thread:                         ; preds = %bb.af
  %i.gq = xor i64 %.0129189.us.1, -1
  %reass.sub.1 = add i64 %.0150.us.1, %i.gq
  %i.gr = trunc i64 %reass.sub.1 to i8
  %i.gs = add i8 %i.gr, 127
  %i.gt = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 1
  store i8 %i.gs, ptr %.2121.us.1, align 1, !tbaa !9
  %i.gu = trunc i16 %i.gh to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 2
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !9
  %i.gw = add nsw i64 %.2114.us.1, -2
  br label %._crit_edge.us.1

.loopexit145.us.1:                                ; preds = %bb.ae, %.critedge.thread.us.1
  %i.gx = icmp slt i64 %.0129189.us.1, %.0150.us.1
  br i1 %i.gx, label %.lr.ph185.us.1, label %._crit_edge.us.1

.lr.ph185.us.1:                                   ; preds = %.loopexit145.us.1, %.loopexit.us.1
  %.4116184.us.1 = phi i64 [ %i.jc, %.loopexit.us.1 ], [ %.2114.us.1, %.loopexit145.us.1 ] ; 3 uses
  %.4123183.us.1 = phi ptr [ %.6125.us.1.lcssa, %.loopexit.us.1 ], [ %.2121.us.1, %.loopexit145.us.1 ] ; 2 uses
  %.2131182.us.1 = phi i64 [ %.lcssa288, %.loopexit.us.1 ], [ %.0129189.us.1, %.loopexit145.us.1 ] ; 10 uses
  %i.gy = sub nsw i64 %.0150.us.1, %.2131182.us.1
  %spec.store.select.us.1 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 127) ; 16 uses
  %i.gz = add nuw nsw i64 %spec.store.select.us.1, 3
  %i.ha = icmp slt i64 %.4116184.us.1, %i.gz
  br i1 %i.ha, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph185.us.1
  store ptr %.4123183.us.1, ptr %i.q, align 8, !tbaa !58
  %i.hb = load i64, ptr %i.s, align 8, !tbaa !65
  %i.hc = sub nsw i64 %i.hb, %.4116184.us.1
  store i64 %i.hc, ptr %i.u, align 8, !tbaa !59
  %i.hd = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not142.us.1 = icmp eq i32 %i.hd, 0
  br i1 %.not142.us.1, label %.loopexit144, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.he = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.hf = load i64, ptr %i.s, align 8, !tbaa !65
  %i.hg = load i64, ptr %i.u, align 8, !tbaa !59
  %i.hh = sub nsw i64 %i.hf, %i.hg
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph185.us.1
  %.5124.us.1 = phi ptr [ %i.he, %bb.ah ], [ %.4123183.us.1, %.lr.ph185.us.1 ] ; 3 uses
  %.5117.us.1 = phi i64 [ %i.hh, %bb.ah ], [ %.4116184.us.1, %.lr.ph185.us.1 ]
  %i.hi = trunc i64 %spec.store.select.us.1 to i8
  store i8 %i.hi, ptr %.5124.us.1, align 1, !tbaa !9
  %.6125171.us.1 = getelementptr i8, ptr %.5124.us.1, i64 1 ; 8 uses
  %.6172.us.1 = add i64 %.5117.us.1, -1           ; 2 uses
  %.not143173.us.1 = icmp eq i64 %.0150.us.1, %.2131182.us.1
  br i1 %.not143173.us.1, label %._crit_edge.us.1, label %iter.check331

iter.check331:                                    ; preds = %bb.ai
  %min.iters.check318 = icmp ult i64 %spec.store.select.us.1, 4
  br i1 %min.iters.check318, label %.lr.ph178.us.1.preheader, label %vector.memcheck310

vector.memcheck310:                               ; preds = %iter.check331
  %scevgep311 = getelementptr i8, ptr %.5124.us.1, i64 1
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %spec.store.select.us.1
  %i.hj = shl i64 %.2131182.us.1, 1
  %scevgep313 = getelementptr i8, ptr %.0118, i64 %i.hj
  %i.hk = add i64 %.2131182.us.1, %spec.store.select.us.1
  %i.hl = shl i64 %i.hk, 1
  %scevgep314 = getelementptr i8, ptr %.0118, i64 %i.hl
  %bound0315 = icmp ult ptr %.6125171.us.1, %scevgep314
  %bound1316 = icmp ult ptr %scevgep313, %scevgep312
  %found.conflict317 = and i1 %bound0315, %bound1316
  br i1 %found.conflict317, label %.lr.ph178.us.1.preheader, label %vector.main.loop.iter.check319

vector.main.loop.iter.check319:                   ; preds = %vector.memcheck310
  %min.iters.check320 = icmp ult i64 %spec.store.select.us.1, 16
  br i1 %min.iters.check320, label %vec.epilog.ph335, label %vector.ph321

vector.ph321:                                     ; preds = %vector.main.loop.iter.check319
  %i.hm = and i64 %spec.store.select.us.1, 12
  %n.vec322 = and i64 %spec.store.select.us.1, -16 ; 5 uses
  %i.hn = getelementptr i8, ptr %.6125171.us.1, i64 %n.vec322 ; 2 uses
  %i.ho = and i64 %spec.store.select.us.1, 15
  %i.hp = add i64 %.2131182.us.1, %n.vec322       ; 2 uses
  %i.hq = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us.1
  br label %vector.body323

vector.body323:                                   ; preds = %vector.ph321, %vector.body323
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next328, %vector.body323 ] ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.6125171.us.1, i64 %index324 ; 2 uses
  %i.hr = getelementptr [2 x i8], ptr %i.hq, i64 %index324 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load326 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !63, !alias.scope !173
  %wide.load327 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !63, !alias.scope !173
  %i.ht = trunc <8 x i16> %wide.load326 to <8 x i8>
  %i.hu = trunc <8 x i16> %wide.load327 to <8 x i8>
  %i.hv = getelementptr i8, ptr %next.gep325, i64 8
  store <8 x i8> %i.ht, ptr %next.gep325, align 1, !tbaa !9, !alias.scope !174, !noalias !173
  store <8 x i8> %i.hu, ptr %i.hv, align 1, !tbaa !9, !alias.scope !174, !noalias !173
  %index.next328 = add nuw i64 %index324, 16      ; 2 uses
  %i.hw = icmp eq i64 %index.next328, %n.vec322
  br i1 %i.hw, label %middle.block329, label %vector.body323, !llvm.loop !167

middle.block329:                                  ; preds = %vector.body323
  %cmp.n330 = icmp eq i64 %spec.store.select.us.1, %n.vec322
  br i1 %cmp.n330, label %.loopexit.us.1, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block329
  %min.epilog.iters.check334 = icmp eq i64 %i.hm, 0
  br i1 %min.epilog.iters.check334, label %.lr.ph178.us.1.preheader, label %vec.epilog.ph335, !prof !64

vec.epilog.ph335:                                 ; preds = %vector.main.loop.iter.check319, %vec.epilog.iter.check332
  %vec.epilog.resume.val336 = phi i64 [ %n.vec322, %vec.epilog.iter.check332 ], [ 0, %vector.main.loop.iter.check319 ]
  %n.vec337 = and i64 %spec.store.select.us.1, -4 ; 4 uses
  %i.hx = getelementptr i8, ptr %.6125171.us.1, i64 %n.vec337 ; 2 uses
  %i.hy = and i64 %spec.store.select.us.1, 3
  %i.hz = add i64 %.2131182.us.1, %n.vec337       ; 2 uses
  %i.ia = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us.1
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph335
  %index339 = phi i64 [ %vec.epilog.resume.val336, %vec.epilog.ph335 ], [ %index.next342, %vec.epilog.vector.body338 ] ; 3 uses
  %next.gep340 = getelementptr i8, ptr %.6125171.us.1, i64 %index339
  %i.ib = getelementptr [2 x i8], ptr %i.ia, i64 %index339
  %wide.load341 = load <4 x i16>, ptr %i.ib, align 2, !tbaa !63, !alias.scope !173
  %i.ic = trunc <4 x i16> %wide.load341 to <4 x i8>
  store <4 x i8> %i.ic, ptr %next.gep340, align 1, !tbaa !9, !alias.scope !174, !noalias !173
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next342, %n.vec337
  br i1 %i.id, label %vec.epilog.middle.block343, label %vec.epilog.vector.body338, !llvm.loop !168

vec.epilog.middle.block343:                       ; preds = %vec.epilog.vector.body338
  %cmp.n344 = icmp eq i64 %spec.store.select.us.1, %n.vec337
  br i1 %cmp.n344, label %.loopexit.us.1, label %.lr.ph178.us.1.preheader

.lr.ph178.us.1.preheader:                         ; preds = %iter.check331, %vector.memcheck310, %vec.epilog.iter.check332, %vec.epilog.middle.block343
  %.6125176.us.1.ph = phi ptr [ %.6125171.us.1, %iter.check331 ], [ %.6125171.us.1, %vector.memcheck310 ], [ %i.hn, %vec.epilog.iter.check332 ], [ %i.hx, %vec.epilog.middle.block343 ] ; 2 uses
  %.1128175.us.1.ph = phi i64 [ %spec.store.select.us.1, %iter.check331 ], [ %spec.store.select.us.1, %vector.memcheck310 ], [ %i.ho, %vec.epilog.iter.check332 ], [ %i.hy, %vec.epilog.middle.block343 ] ; 4 uses
  %.3132174.us.1.ph = phi i64 [ %.2131182.us.1, %iter.check331 ], [ %.2131182.us.1, %vector.memcheck310 ], [ %i.hp, %vec.epilog.iter.check332 ], [ %i.hz, %vec.epilog.middle.block343 ] ; 2 uses
  %i.ie = add nsw i64 %.1128175.us.1.ph, -1
  %xtraiter376 = and i64 %.1128175.us.1.ph, 3     ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph178.us.1.prol.loopexit, label %.lr.ph178.us.1.prol

.lr.ph178.us.1.prol:                              ; preds = %.lr.ph178.us.1.preheader, %.lr.ph178.us.1.prol
  %.6125176.us.1.prol = phi ptr [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ], [ %.6125176.us.1.ph, %.lr.ph178.us.1.preheader ] ; 2 uses
  %.1128175.us.1.prol = phi i64 [ %i.if, %.lr.ph178.us.1.prol ], [ %.1128175.us.1.ph, %.lr.ph178.us.1.preheader ]
  %.3132174.us.1.prol = phi i64 [ %i.ig, %.lr.ph178.us.1.prol ], [ %.3132174.us.1.ph, %.lr.ph178.us.1.preheader ] ; 2 uses
  %prol.iter378 = phi i64 [ %prol.iter378.next, %.lr.ph178.us.1.prol ], [ 0, %.lr.ph178.us.1.preheader ]
  %i.if = add nsw i64 %.1128175.us.1.prol, -1     ; 2 uses
  %i.ig = add nsw i64 %.3132174.us.1.prol, 1      ; 3 uses
  %i.ih = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.1.prol
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !63
  %i.ij = trunc i16 %i.ii to i8
  store i8 %i.ij, ptr %.6125176.us.1.prol, align 1, !tbaa !9
  %.6125.us.1.prol = getelementptr inbounds nuw i8, ptr %.6125176.us.1.prol, i64 1 ; 3 uses
  %prol.iter378.next = add i64 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i64 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %.lr.ph178.us.1.prol.loopexit, label %.lr.ph178.us.1.prol, !llvm.loop !169

.lr.ph178.us.1.prol.loopexit:                     ; preds = %.lr.ph178.us.1.prol, %.lr.ph178.us.1.preheader
  %.lcssa356.unr = phi i64 [ poison, %.lr.ph178.us.1.preheader ], [ %i.ig, %.lr.ph178.us.1.prol ]
  %.6125.us.1.lcssa355.unr = phi ptr [ poison, %.lr.ph178.us.1.preheader ], [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ]
  %.6125176.us.1.unr = phi ptr [ %.6125176.us.1.ph, %.lr.ph178.us.1.preheader ], [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ]
  %.1128175.us.1.unr = phi i64 [ %.1128175.us.1.ph, %.lr.ph178.us.1.preheader ], [ %i.if, %.lr.ph178.us.1.prol ]
  %.3132174.us.1.unr = phi i64 [ %.3132174.us.1.ph, %.lr.ph178.us.1.preheader ], [ %i.ig, %.lr.ph178.us.1.prol ]
  %i.ik = icmp ult i64 %i.ie, 3
  br i1 %i.ik, label %.loopexit.us.1, label %.lr.ph178.us.1

.lr.ph178.us.1:                                   ; preds = %.lr.ph178.us.1.prol.loopexit, %.lr.ph178.us.1
  %.6125176.us.1 = phi ptr [ %.6125.us.1.3, %.lr.ph178.us.1 ], [ %.6125176.us.1.unr, %.lr.ph178.us.1.prol.loopexit ] ; 5 uses
  %.1128175.us.1 = phi i64 [ %i.iw, %.lr.ph178.us.1 ], [ %.1128175.us.1.unr, %.lr.ph178.us.1.prol.loopexit ]
  %.3132174.us.1 = phi i64 [ %i.ix, %.lr.ph178.us.1 ], [ %.3132174.us.1.unr, %.lr.ph178.us.1.prol.loopexit ] ; 5 uses
  %i.il = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.im = load i16, ptr %i.il, align 2, !tbaa !63
  %i.in = trunc i16 %i.im to i8
  store i8 %i.in, ptr %.6125176.us.1, align 1, !tbaa !9
  %.6125.us.1 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 1
  %i.io = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.ip = getelementptr i8, ptr %i.io, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !63
  %i.ir = trunc i16 %i.iq to i8
  store i8 %i.ir, ptr %.6125.us.1, align 1, !tbaa !9
  %.6125.us.1.1 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 2
  %i.is = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.it = getelementptr i8, ptr %i.is, i64 4
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !63
  %i.iv = trunc i16 %i.iu to i8
  store i8 %i.iv, ptr %.6125.us.1.1, align 1, !tbaa !9
  %.6125.us.1.2 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 3
  %i.iw = add nsw i64 %.1128175.us.1, -4          ; 2 uses
  %i.ix = add nsw i64 %.3132174.us.1, 4           ; 2 uses
  %i.iy = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.iz = getelementptr i8, ptr %i.iy, i64 6
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = trunc i16 %i.ja to i8
  store i8 %i.jb, ptr %.6125.us.1.2, align 1, !tbaa !9
  %.6125.us.1.3 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 4 ; 2 uses
  %.not143.us.1.3 = icmp eq i64 %i.iw, 0
  br i1 %.not143.us.1.3, label %.loopexit.us.1, label %.lr.ph178.us.1, !llvm.loop !170

.loopexit.us.1:                                   ; preds = %.lr.ph178.us.1.prol.loopexit, %.lr.ph178.us.1, %vec.epilog.middle.block343, %middle.block329
  %.lcssa288 = phi i64 [ %i.hz, %vec.epilog.middle.block343 ], [ %i.hp, %middle.block329 ], [ %.lcssa356.unr, %.lr.ph178.us.1.prol.loopexit ], [ %i.ix, %.lr.ph178.us.1 ] ; 3 uses
  %.6125.us.1.lcssa = phi ptr [ %i.hx, %vec.epilog.middle.block343 ], [ %i.hn, %middle.block329 ], [ %.6125.us.1.lcssa355.unr, %.lr.ph178.us.1.prol.loopexit ], [ %.6125.us.1.3, %.lr.ph178.us.1 ] ; 2 uses
  %i.jc = sub i64 %.6172.us.1, %spec.store.select.us.1 ; 2 uses
  %i.jd = icmp slt i64 %.lcssa288, %.0150.us.1
  br i1 %i.jd, label %.lr.ph185.us.1, label %._crit_edge.us.1

._crit_edge.us.1:                                 ; preds = %bb.ai, %.loopexit.us.1, %.loopexit145.us.1.thread, %.loopexit145.us.1
  %.2131.lcssa.us.1 = phi i64 [ %.0129189.us.1, %.loopexit145.us.1 ], [ %.0150.us.1, %.loopexit145.us.1.thread ], [ %.0150.us.1, %bb.ai ], [ %.lcssa288, %.loopexit.us.1 ]
  %.4123.lcssa.us.1 = phi ptr [ %.2121.us.1, %.loopexit145.us.1 ], [ %i.gv, %.loopexit145.us.1.thread ], [ %.6125171.us.1, %bb.ai ], [ %.6125.us.1.lcssa, %.loopexit.us.1 ] ; 4 uses
  %.4116.lcssa.us.1 = phi i64 [ %.2114.us.1, %.loopexit145.us.1 ], [ %i.gw, %.loopexit145.us.1.thread ], [ %.6172.us.1, %bb.ai ], [ %i.jc, %.loopexit.us.1 ] ; 2 uses
  %i.je = icmp sgt i32 %.4.us.1, 3
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.us.1
  %i.jf = trunc i32 %.4.us.1 to i8
  %i.jg = add i8 %i.jf, 126
  %i.jh = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us.1, i64 1
  store i8 %i.jg, ptr %.4123.lcssa.us.1, align 1, !tbaa !9
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0150.us.1
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !63
  %i.jk = trunc i16 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us.1, i64 2
  store i8 %i.jk, ptr %i.jh, align 1, !tbaa !9
  %i.jm = add nsw i64 %.4116.lcssa.us.1, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.us.1
  %.7126.us.1 = phi ptr [ %i.jl, %bb.aj ], [ %.4123.lcssa.us.1, %._crit_edge.us.1 ] ; 2 uses
  %.7.us.1 = phi i64 [ %i.jm, %bb.aj ], [ %.4116.lcssa.us.1, %._crit_edge.us.1 ] ; 2 uses
  %.5.us.1 = phi i32 [ %.4.us.1, %bb.aj ], [ 0, %._crit_edge.us.1 ] ; 2 uses
  %i.jn = zext nneg i32 %.5.us.1 to i64
  %i.jo = add nsw i64 %.2131.lcssa.us.1, %i.jn    ; 2 uses
  %i.jp = icmp slt i64 %i.jo, %i.f
  br i1 %i.jp, label %._crit_edge195.us, label %._crit_edge195.us.1

._crit_edge195.us.1:                              ; preds = %bb.ak
  %.pre = load i64, ptr %i.s, align 8, !tbaa !65
  br label %.split204.us

.split204.us:                                     ; preds = %bb.e, %._crit_edge195.us.1
  %i.jq = phi i64 [ %.pre, %._crit_edge195.us.1 ], [ %i.t, %bb.e ]
  %.us-phi = phi ptr [ %.7126.us.1, %._crit_edge195.us.1 ], [ %i.r, %bb.e ]
  %.us-phi205 = phi i64 [ %.7.us.1, %._crit_edge195.us.1 ], [ %i.w, %bb.e ]
  store ptr %.us-phi, ptr %i.q, align 8, !tbaa !58
  %i.jr = sub nsw i64 %i.jq, %.us-phi205
  store i64 %i.jr, ptr %i.u, align 8, !tbaa !59
  br label %.loopexit144

.loopexit144:                                     ; preds = %bb.f, %bb.q, %bb.v, %bb.ag, %.split204.us, %bb.c
  %.0134 = phi i32 [ 0, %bb.q ], [ 0, %bb.c ], [ 1, %.split204.us ], [ 0, %bb.ag ], [ 0, %bb.v ], [ 0, %bb.f ]
  ret i32 %.0134
}

; Function Attrs: nounwind uwtable
define internal void @L16fromY(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.058 = phi ptr [ %i.c, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.067 = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = add nsw i64 %.067, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 4
  %i.g = load float, ptr %.09, align 4, !tbaa !8
  %i.h = fpext float %i.g to double
  %i.i = load i32, ptr %i.d, align 8, !tbaa !37
  %i.j = tail call i32 @LogL16fromY(double noundef %i.h, i32 noundef %i.i)
  %i.k = trunc i32 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %.058, i64 2
  store i16 %i.k, ptr %.058, align 2, !tbaa !63
  %i.m = icmp samesign ugt i64 %.067, 1
  br i1 %i.m, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #10

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #10

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #10

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"", !7, i64 0, !10, i64 4, !10, i64 6}
!12 = !{!11, !7, i64 0}
!13 = !{!11, !10, i64 4}
!14 = !{!11, !10, i64 6}
!15 = !{!"double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"long", !4, i64 0}
!20 = !{!"p1 _ZTS12_TIFFHashSet", !17, i64 0}
!21 = !{!"p1 double", !17, i64 0}
!22 = !{!"p1 short", !17, i64 0}
!23 = !{!"p1 long", !17, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 2, !19, i64 8, !4, i64 16, !4, i64 24}
!25 = !{!"p1 float", !17, i64 0}
!26 = !{!"", !4, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !10, i64 44, !10, i64 46, !10, i64 48, !10, i64 50, !10, i64 52, !10, i64 54, !10, i64 56, !10, i64 58, !5, i64 60, !10, i64 64, !10, i64 66, !21, i64 72, !21, i64 80, !7, i64 88, !7, i64 92, !10, i64 96, !10, i64 98, !7, i64 100, !7, i64 104, !4, i64 108, !4, i64 112, !4, i64 136, !10, i64 140, !22, i64 144, !5, i64 152, !5, i64 156, !23, i64 160, !23, i64 168, !5, i64 176, !24, i64 184, !24, i64 216, !10, i64 248, !23, i64 256, !4, i64 264, !10, i64 268, !4, i64 272, !25, i64 296, !5, i64 304, !18, i64 312, !10, i64 320, !5, i64 324, !17, i64 328, !4, i64 336, !4, i64 337, !19, i64 344, !19, i64 352, !5, i64 360, !17, i64 368}
!27 = !{!"any p2 pointer", !17, i64 0}
!28 = !{!"p2 _ZTS10_TIFFField", !27, i64 0}
!29 = !{!"p1 _ZTS10_TIFFField", !17, i64 0}
!30 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!31 = !{!"p1 _ZTS11client_info", !17, i64 0}
!32 = !{!"p1 _ZTS15_TIFFFieldArray", !17, i64 0}
!33 = !{!"tiff", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !20, i64 48, !20, i64 56, !5, i64 64, !26, i64 72, !26, i64 448, !4, i64 824, !10, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !5, i64 856, !19, i64 864, !19, i64 872, !19, i64 880, !10, i64 888, !19, i64 896, !5, i64 904, !5, i64 908, !19, i64 912, !5, i64 920, !17, i64 928, !17, i64 936, !17, i64 944, !17, i64 952, !5, i64 960, !17, i64 968, !17, i64 976, !17, i64 984, !17, i64 992, !17, i64 1000, !17, i64 1008, !17, i64 1016, !17, i64 1024, !17, i64 1032, !17, i64 1040, !17, i64 1048, !17, i64 1056, !17, i64 1064, !18, i64 1072, !19, i64 1080, !19, i64 1088, !18, i64 1096, !19, i64 1104, !19, i64 1112, !19, i64 1120, !18, i64 1128, !19, i64 1136, !18, i64 1144, !19, i64 1152, !17, i64 1160, !17, i64 1168, !17, i64 1176, !17, i64 1184, !17, i64 1192, !17, i64 1200, !17, i64 1208, !17, i64 1216, !17, i64 1224, !28, i64 1232, !19, i64 1240, !29, i64 1248, !30, i64 1256, !31, i64 1280, !32, i64 1288, !19, i64 1296, !17, i64 1304, !17, i64 1312, !17, i64 1320, !17, i64 1328, !19, i64 1336, !19, i64 1344, !19, i64 1352, !5, i64 1360}
!34 = !{!33, !18, i64 1072}
!35 = !{!"logLuvState", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !18, i64 16, !19, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!36 = !{!35, !5, i64 4}
!37 = !{!35, !5, i64 8}
!38 = !{!35, !17, i64 32}
!39 = !{!17, !17, i64 0}
!40 = !{!33, !18, i64 0}
!41 = !{!26, !10, i64 50}
!42 = !{!26, !10, i64 48}
!43 = !{!33, !17, i64 984}
!44 = !{!33, !17, i64 992}
!45 = !{!35, !5, i64 0}
!46 = !{!26, !10, i64 58}
!47 = !{!26, !10, i64 44}
!48 = !{!26, !10, i64 46}
!49 = !{!35, !18, i64 16}
!50 = !{!33, !5, i64 16}
!51 = !{!35, !5, i64 12}
!52 = !{!26, !5, i64 28}
!53 = !{!26, !5, i64 32}
!54 = !{!35, !19, i64 24}
!55 = !{!26, !5, i64 60}
!56 = !{!26, !5, i64 20}
!57 = !{!26, !5, i64 16}
!58 = !{!33, !18, i64 1128}
!59 = !{!33, !19, i64 1136}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!33, !5, i64 844}
!63 = !{!10, !10, i64 0}
!64 = !{!"branch_weights", i32 4, i32 12}
!65 = !{!33, !19, i64 1104}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!33, !17, i64 928}
!68 = !{!33, !17, i64 936}
!69 = !{!33, !17, i64 1000}
!70 = !{!33, !17, i64 1016}
!71 = !{!33, !17, i64 952}
!72 = !{!33, !17, i64 1008}
!73 = !{!33, !17, i64 1024}
!74 = !{!33, !17, i64 1032}
!75 = !{!33, !17, i64 1048}
!76 = !{!33, !17, i64 1264}
!77 = !{!33, !17, i64 1256}
!78 = !{!33, !17, i64 1224}
!79 = !{!"p1 int", !17, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!35, !17, i64 40}
!82 = !{!33, !19, i64 912}
!83 = !{!33, !19, i64 1080}
!84 = !{!35, !17, i64 48}
!85 = !{!26, !10, i64 98}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !60, !61}
!90 = distinct !{!90, !60}
!91 = !{!87}
!92 = !{!88}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !60, !61}
!97 = distinct !{!97, !60}
!98 = distinct !{!98, !60, !61}
!99 = distinct !{!99, !61, !60}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !60, !61}
!104 = distinct !{!104, !60}
!105 = distinct !{!105, !60, !61}
!106 = distinct !{!106, !61, !60}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !60, !61}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !60, !61}
!113 = distinct !{!113, !61, !60}
!114 = distinct !{!114, i1 false, !"LVerDomain"}
!115 = distinct !{!115, !114}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !60, !61}
!118 = distinct !{!118, !60, !61}
!119 = distinct !{!119, !61, !60}
!120 = distinct !{!120, !60}
!121 = !{!94}
!122 = !{!95}
!123 = !{!101}
!124 = !{!102}
!125 = !{!108}
!126 = !{!109}
!127 = !{!115}
!128 = !{!116}
!129 = distinct !{!129, !60, !61}
!130 = distinct !{!130, i1 false, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !60, !61}
!134 = distinct !{!134, !60}
!135 = distinct !{!135, !60, !61}
!136 = distinct !{!136, !61, !60}
!137 = distinct !{!137, i1 false, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !60, !61}
!141 = distinct !{!141, !60, !61}
!142 = distinct !{!142, !61, !60}
!143 = distinct !{!143, !60}
!144 = !{!131}
!145 = !{!132}
!146 = !{!138}
!147 = !{!139}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !60, !61}
!152 = distinct !{!152, !66}
!153 = distinct !{!153, !60}
!154 = !{!149}
!155 = !{!150}
!156 = distinct !{!156, !60, !61}
!157 = distinct !{!157, i1 false, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !60, !61}
!161 = distinct !{!161, !60, !61}
!162 = distinct !{!162, !66}
!163 = distinct !{!163, !60}
!164 = distinct !{!164, i1 false, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !60, !61}
!168 = distinct !{!168, !60, !61}
!169 = distinct !{!169, !66}
!170 = distinct !{!170, !60}
!171 = !{!158}
!172 = !{!159}
!173 = !{!165}
!174 = !{!166}
end_hunk_2
