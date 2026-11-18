Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/getcoluj?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 29
begin_hunk_0_@ffgsfuj:bb.a
  %i.fi = getelementptr inbounds i8, ptr %8, i64 %.8177.us
  %i.fj = call i32 @ffgcluj(ptr noundef %0, i32 noundef %.0, i64 noundef %.0131428, i64 noundef %.reass.us, i64 noundef %.0126, i64 noundef %.0125, i32 noundef 2, i64 noundef 0, ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef nonnull %i.h, ptr noundef %10)
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.split.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = add nsw i64 %.8177.us, %.0126           ; 7 uses
  %i.fm = add nsw i64 %i.dl, %.0139178.us         ; 2 uses
  %.not160.us = icmp sgt i64 %i.fm, %i.db
  br i1 %.not160.us, label %._crit_edge181.split.us, label %bb.u, !llvm.loop !41

._crit_edge181.split.us:                          ; preds = %bb.v
  %i.fn = add nsw i64 %i.dm, %.0138193            ; 2 uses
  %.not159 = icmp sgt i64 %i.fn, %i.cz
  br i1 %.not159, label %._crit_edge196.split.split, label %.lr.ph180, !llvm.loop !42

.split.us:                                        ; preds = %bb.q, %bb.u
  %i.fo = load i32, ptr %10, align 4, !tbaa !11
  br label %bb.w

._crit_edge196.split.split:                       ; preds = %._crit_edge181.split.us
  %i.fp = add nsw i64 %i.dn, %.0137218            ; 2 uses
  %.not158 = icmp sgt i64 %i.fp, %i.cx
  br i1 %.not158, label %._crit_edge221.split.split.split, label %.lr.ph195, !llvm.loop !43

._crit_edge221.split.split.split:                 ; preds = %._crit_edge196.split.split
  %i.fq = add nsw i64 %i.do, %.0136241            ; 2 uses
  %.not157 = icmp sgt i64 %i.fq, %i.cv
  br i1 %.not157, label %._crit_edge244.split.split.split.split, label %.lr.ph220, !llvm.loop !44

._crit_edge244.split.split.split.split:           ; preds = %._crit_edge221.split.split.split
  %i.fr = add nsw i64 %i.dp, %.0135270            ; 2 uses
  %.not156 = icmp sgt i64 %i.fr, %i.ct
  br i1 %.not156, label %._crit_edge273.split.split.split.split.split, label %.lr.ph243, !llvm.loop !45

._crit_edge273.split.split.split.split.split:     ; preds = %._crit_edge244.split.split.split.split
  %i.fs = add nsw i64 %i.dq, %.0134305            ; 2 uses
  %.not155 = icmp sgt i64 %i.fs, %i.cr
  br i1 %.not155, label %._crit_edge308.split.split.split.split.split, label %.lr.ph272, !llvm.loop !46

._crit_edge308.split.split.split.split.split:     ; preds = %._crit_edge273.split.split.split.split.split.us.us, %._crit_edge273.split.split.split.split.split
  %.us-phi344 = phi i64 [ %i.fl, %._crit_edge273.split.split.split.split.split ], [ %i.eo, %._crit_edge273.split.split.split.split.split.us.us ] ; 2 uses
  %i.ft = add nsw i64 %i.dr, %.0133347            ; 2 uses
  %.not154 = icmp sgt i64 %i.ft, %i.cp
  br i1 %.not154, label %._crit_edge350.split.split.split.split.split, label %.lr.ph307, !llvm.loop !47

._crit_edge350.split.split.split.split.split:     ; preds = %._crit_edge308.split.split.split.split.split, %.lr.ph349
  %.us-phi385 = phi i64 [ %.1141387, %.lr.ph349 ], [ %.us-phi344, %._crit_edge308.split.split.split.split.split ] ; 2 uses
  %i.fu = add nsw i64 %i.ds, %.0132388            ; 2 uses
  %.not153 = icmp sgt i64 %i.fu, %i.cn
  br i1 %.not153, label %._crit_edge391.split.split.split.split.split.split, label %.lr.ph349, !llvm.loop !48

._crit_edge391.split.split.split.split.split.split: ; preds = %._crit_edge350.split.split.split.split.split
  %i.fv = add nsw i64 %.0131428, %.0127           ; 2 uses
  %.not152 = icmp sgt i64 %i.fv, %.2
  br i1 %.not152, label %._crit_edge437, label %.lr.ph390, !llvm.loop !49

._crit_edge437:                                   ; preds = %._crit_edge391.split.split.split.split.split.split, %.lr.ph436, %bb.p
  %i.fw = load i32, ptr %10, align 4, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge437, %.split.us, %bb.k, %bb.e, %._crit_edge, %bb.b
  %.0146 = phi i32 [ 320, %bb.b ], [ %i.p, %._crit_edge ], [ %i.s, %bb.e ], [ 321, %bb.k ], [ %i.fo, %.split.us ], [ %i.fw, %._crit_edge437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0146
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffggpuj(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %i.d = call i32 @ffgcluj(ptr noundef %0, i32 noundef 1, i64 noundef %i.c, i64 noundef %2, i64 noundef %3, i64 noundef 1, i32 noundef 1, i64 noundef 0, ptr noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %5) ; 0 uses
  %i.e = load i32, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcvuj(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 @ffgcluj(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 1, i64 noundef %5, ptr noundef %6, ptr noundef nonnull %i.a, ptr noundef %7, ptr noundef %8) ; 0 uses
  %i.c = load i32, ptr %8, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcfuj(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ffgcluj(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 2, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 0 uses
  %i.b = load i32, ptr %8, align 4, !tbaa !11
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ffgcprll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffasfm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgi4b(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @fffi4u4(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = fcmp oeq double %2, 1.000000e+00         ; 3 uses
  %i.c = fcmp oeq double %3, f0x41E0000000000000
  %or.cond = and i1 %i.b, %i.c                    ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph147.preheader, label %.loopexit

.lr.ph147.preheader:                              ; preds = %.preheader
  %min.iters.check263 = icmp ult i64 %1, 4
  br i1 %min.iters.check263, label %.lr.ph147.preheader276, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph147.preheader
  %n.vec265 = and i64 %1, 9223372036854775804     ; 3 uses
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next270, %vector.body266 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index267 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load268 = load <2 x i32>, ptr %i.e, align 4, !tbaa !11
  %wide.load269 = load <2 x i32>, ptr %i.f, align 4, !tbaa !11
  %i.g = xor <2 x i32> %wide.load268, splat (i32 -2147483648)
  %i.h = xor <2 x i32> %wide.load269, splat (i32 -2147483648)
  %i.i = zext <2 x i32> %i.g to <2 x i64>
  %i.j = zext <2 x i32> %i.h to <2 x i64>
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index267 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.i, ptr %i.k, align 8, !tbaa !10
  store <2 x i64> %i.j, ptr %i.l, align 8, !tbaa !10
  %index.next270 = add nuw i64 %index267, 4       ; 2 uses
  %i.m = icmp eq i64 %index.next270, %n.vec265
  br i1 %i.m, label %middle.block271, label %vector.body266, !llvm.loop !50

middle.block271:                                  ; preds = %vector.body266
  %cmp.n272 = icmp eq i64 %1, %n.vec265
  br i1 %cmp.n272, label %.loopexit, label %.lr.ph147.preheader276

.lr.ph147.preheader276:                           ; preds = %.lr.ph147.preheader, %middle.block271
  %.0146.ph = phi i64 [ 0, %.lr.ph147.preheader ], [ %n.vec265, %middle.block271 ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader276, %.lr.ph147
  %.0146 = phi i64 [ %i.s, %.lr.ph147 ], [ %.0146.ph, %.lr.ph147.preheader276 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0146
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = xor i32 %i.o, -2147483648
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.0146
  store i64 %i.q, ptr %i.r, align 8, !tbaa !10
  %i.s = add nuw nsw i64 %.0146, 1                ; 2 uses
  %exitcond159.not = icmp eq i64 %i.s, %1
  br i1 %exitcond159.not, label %.loopexit, label %.lr.ph147, !llvm.loop !51

bb.c:                                             ; preds = %bb.b
  %i.t = fcmp oeq double %3, 0.000000e+00
  %or.cond3 = and i1 %i.b, %i.t
  %i.u = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %or.cond3, label %.preheader127, label %.preheader129

.preheader129:                                    ; preds = %bb.c
  br i1 %i.u, label %.lr.ph143, label %.loopexit

.preheader127:                                    ; preds = %bb.c
  br i1 %i.u, label %.lr.ph145.preheader, label %.loopexit

.lr.ph145.preheader:                              ; preds = %.preheader127
  %min.iters.check229 = icmp ult i64 %1, 28
  br i1 %min.iters.check229, label %.lr.ph145.preheader277, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph145.preheader
  %i.v = getelementptr i8, ptr %10, i64 4         ; 2 uses
  %i.w = shl i64 %1, 3
  %i.x = getelementptr i8, ptr %9, i64 %i.w       ; 2 uses
  %11 = shl i64 %1, 2
  %12 = getelementptr i8, ptr %0, i64 %11         ; 2 uses
  %bound0231 = icmp ult ptr %10, %i.x
  %bound1232 = icmp ult ptr %9, %i.v
  %found.conflict233 = and i1 %bound0231, %bound1232
  %bound0234 = icmp ult ptr %10, %12
  %bound1235 = icmp ult ptr %0, %i.v
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %found.conflict233, %found.conflict236
  %bound0238 = icmp ult ptr %9, %12
  %bound1239 = icmp ult ptr %0, %i.x
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  br i1 %conflict.rdx241, label %.lr.ph145.preheader277, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck230
  %n.vec243 = and i64 %1, 9223372036854775804     ; 3 uses
  br label %vector.body244

vector.body244:                                   ; preds = %bb.e, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next258, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index245 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load246 = load <2 x i32>, ptr %i.y, align 4, !tbaa !11, !alias.scope !68 ; 2 uses
  %wide.load247 = load <2 x i32>, ptr %i.z, align 4, !tbaa !11, !alias.scope !68 ; 2 uses
  %i.aa = shufflevector <2 x i32> %wide.load247, <2 x i32> %wide.load246, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = icmp slt <4 x i32> %i.aa, zeroinitializer
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %.not275 = icmp eq i4 %i.ac, 0
  br i1 %.not275, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body244
  store i32 -11, ptr %10, align 4, !tbaa !11, !alias.scope !69, !noalias !70
  br label %bb.e

bb.e:                                             ; preds = %vector.body244, %bb.d
  %narrow = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load246, <2 x i32> zeroinitializer)
  %predphi256 = zext nneg <2 x i32> %narrow to <2 x i64>
  %narrow274 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load247, <2 x i32> zeroinitializer)
  %predphi257 = zext nneg <2 x i32> %narrow274 to <2 x i64>
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index245 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %predphi256, ptr %i.ad, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  store <2 x i64> %predphi257, ptr %i.ae, align 8, !tbaa !10, !alias.scope !71, !noalias !68
  %index.next258 = add nuw i64 %index245, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next258, %n.vec243
  br i1 %i.af, label %middle.block259, label %vector.body244, !llvm.loop !56

middle.block259:                                  ; preds = %bb.e
  %cmp.n260 = icmp eq i64 %1, %n.vec243
  br i1 %cmp.n260, label %.loopexit, label %.lr.ph145.preheader277

.lr.ph145.preheader277:                           ; preds = %vector.memcheck230, %.lr.ph145.preheader, %middle.block259
  %.1144.ph = phi i64 [ 0, %vector.memcheck230 ], [ 0, %.lr.ph145.preheader ], [ %n.vec243, %middle.block259 ] ; 5 uses
  %.neg290 = or disjoint i64 %.1144.ph, 1
  %xtraiter288 = and i64 %1, 1
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph145.prol.loopexit, label %.lr.ph145.prol

.lr.ph145.prol:                                   ; preds = %.lr.ph145.preheader277
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1144.ph
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph145.prol
  %i.aj = zext nneg i32 %i.ah to i64
  br label %.lr.ph145.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.lr.ph145.prol
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.lr.ph145.prol.loopexit.unr-lcssa

.lr.ph145.prol.loopexit.unr-lcssa:                ; preds = %bb.g, %bb.f
  %.sink.prol = phi i64 [ 0, %bb.g ], [ %i.aj, %bb.f ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1144.ph
  store i64 %.sink.prol, ptr %i.ak, align 8, !tbaa !10
  %i.al = or disjoint i64 %.1144.ph, 1
  br label %.lr.ph145.prol.loopexit

.lr.ph145.prol.loopexit:                          ; preds = %.lr.ph145.prol.loopexit.unr-lcssa, %.lr.ph145.preheader277
  %.1144.unr = phi i64 [ %.1144.ph, %.lr.ph145.preheader277 ], [ %i.al, %.lr.ph145.prol.loopexit.unr-lcssa ]
  %i.am = icmp eq i64 %1, %.neg290
  br i1 %i.am, label %.loopexit, label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.prol.loopexit, %bb.l
  %.1144 = phi i64 [ %i.ay, %bb.l ], [ %.1144.unr, %.lr.ph145.prol.loopexit ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1144
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph145
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.lr.ph145.1

bb.i:                                             ; preds = %.lr.ph145
  %i.aq = zext nneg i32 %i.ao to i64
  br label %.lr.ph145.1

.lr.ph145.1:                                      ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ 0, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1144
  store i64 %.sink, ptr %i.ar, align 8, !tbaa !10
  %i.as = add nuw nsw i64 %.1144, 1               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph145.1
  %i.aw = zext nneg i32 %i.au to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph145.1
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.1 = phi i64 [ 0, %bb.k ], [ %i.aw, %bb.j ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.as
  store i64 %.sink.1, ptr %i.ax, align 8, !tbaa !10
  %i.ay = add nuw nsw i64 %.1144, 2               ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %i.ay, %1
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph145, !llvm.loop !57

.lr.ph143:                                        ; preds = %.preheader129, %bb.q
  %.2142 = phi i64 [ %i.bh, %bb.q ], [ 0, %.preheader129 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2142
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !11
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %2, double %3) ; 3 uses
  %i.bd = fcmp olt double %i.bc, -4.900000e-01
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.2142
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph143
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph143
  %i.bf = fcmp ogt double %i.bc, f0x43EFFFFFFFFFFFFF
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bg = fptoui double %i.bc to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o
  %.sink181 = phi i64 [ 0, %bb.m ], [ %i.bg, %bb.p ], [ -1, %bb.o ]
  store i64 %.sink181, ptr %i.be, align 8, !tbaa !10
  %i.bh = add nuw nsw i64 %.2142, 1               ; 2 uses
  %exitcond157.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond157.not, label %.loopexit, label %.lr.ph143, !llvm.loop !58

bb.r:                                             ; preds = %bb.a
  br i1 %or.cond, label %.preheader131, label %bb.ag

.preheader131:                                    ; preds = %bb.r
  %i.bi = icmp sgt i64 %1, 0
  br i1 %i.bi, label %.lr.ph141, label %.loopexit

.lr.ph141:                                        ; preds = %.preheader131
  %i.bj = icmp eq i32 %4, 1
  br i1 %i.bj, label %.lr.ph141.split.us.preheader, label %.lr.ph141.split.preheader

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %xtraiter = and i64 %1, 1
  %i.bk = icmp eq i64 %1, 1
  br i1 %i.bk, label %.lr.ph141.split.epil.preheader, label %.lr.ph141.split.preheader.new

.lr.ph141.split.preheader.new:                    ; preds = %.lr.ph141.split.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph141.split

.lr.ph141.split.us.preheader:                     ; preds = %.lr.ph141
  %min.iters.check = icmp ult i64 %1, 28
  br i1 %min.iters.check, label %.lr.ph141.split.us.preheader280, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph141.split.us.preheader
  %i.bl = getelementptr i8, ptr %8, i64 4         ; 2 uses
  %i.bm = shl i64 %1, 3
  %i.bn = getelementptr i8, ptr %9, i64 %i.bm     ; 2 uses
  %13 = shl i64 %1, 2
  %14 = getelementptr i8, ptr %0, i64 %13         ; 2 uses
  %bound0 = icmp ult ptr %8, %i.bn
  %bound1 = icmp ult ptr %9, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %bound0197 = icmp ult ptr %8, %14
  %bound1198 = icmp ult ptr %0, %i.bl
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx = or i1 %found.conflict, %found.conflict199
  %bound0200 = icmp ult ptr %9, %14
  %bound1201 = icmp ult ptr %0, %i.bn
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx, %found.conflict202
  br i1 %conflict.rdx203, label %.lr.ph141.split.us.preheader280, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %6, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.t, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.t ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load = load <2 x i32>, ptr %i.bo, align 4, !tbaa !11, !alias.scope !72 ; 2 uses
  %wide.load206 = load <2 x i32>, ptr %i.bp, align 4, !tbaa !11, !alias.scope !72 ; 2 uses
  %i.bq = icmp eq <2 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.br = icmp eq <2 x i32> %wide.load206, %broadcast.splat ; 2 uses
  %i.bs = xor <2 x i32> %wide.load, splat (i32 -2147483648)
  %i.bt = xor <2 x i32> %wide.load206, splat (i32 -2147483648)
  %i.bu = zext <2 x i32> %i.bs to <2 x i64>
  %i.bv = zext <2 x i32> %i.bt to <2 x i64>
  %i.bw = shufflevector <2 x i1> %i.br, <2 x i1> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bx = bitcast <4 x i1> %i.bw to i4
  %.not = icmp eq i4 %i.bx, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %vector.body
  store i32 1, ptr %8, align 4, !tbaa !11, !alias.scope !73, !noalias !74
  br label %bb.t

bb.t:                                             ; preds = %vector.body, %bb.s
  %predphi = select <2 x i1> %i.bq, <2 x i64> %broadcast.splat205, <2 x i64> %i.bu
  %predphi213 = select <2 x i1> %i.br, <2 x i64> %broadcast.splat205, <2 x i64> %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x i64> %predphi, ptr %i.by, align 8, !tbaa !10, !alias.scope !75, !noalias !72
  store <2 x i64> %predphi213, ptr %i.bz, align 8, !tbaa !10, !alias.scope !75, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %bb.t
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph141.split.us.preheader280

.lr.ph141.split.us.preheader280:                  ; preds = %vector.memcheck, %.lr.ph141.split.us.preheader, %middle.block
  %.3140.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph141.split.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.3140.us.ph, 1
  %xtraiter286 = and i64 %1, 1
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.lr.ph141.split.us.prol.loopexit, label %.lr.ph141.split.us.prol

.lr.ph141.split.us.prol:                          ; preds = %.lr.ph141.split.us.preheader280
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3140.us.ph
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, %5
  br i1 %i.cd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph141.split.us.prol
  %i.ce = xor i32 %i.cc, -2147483648
  %i.cf = zext i32 %i.ce to i64
  br label %.lr.ph141.split.us.prol.loopexit.unr-lcssa

bb.v:                                             ; preds = %.lr.ph141.split.us.prol
  store i32 1, ptr %8, align 4, !tbaa !11
  br label %.lr.ph141.split.us.prol.loopexit.unr-lcssa

.lr.ph141.split.us.prol.loopexit.unr-lcssa:       ; preds = %bb.v, %bb.u
  %.sink160.prol = phi i64 [ %6, %bb.v ], [ %i.cf, %bb.u ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.3140.us.ph
  store i64 %.sink160.prol, ptr %i.cg, align 8, !tbaa !10
  %i.ch = or disjoint i64 %.3140.us.ph, 1
  br label %.lr.ph141.split.us.prol.loopexit

.lr.ph141.split.us.prol.loopexit:                 ; preds = %.lr.ph141.split.us.prol.loopexit.unr-lcssa, %.lr.ph141.split.us.preheader280
  %.3140.us.unr = phi i64 [ %.3140.us.ph, %.lr.ph141.split.us.preheader280 ], [ %i.ch, %.lr.ph141.split.us.prol.loopexit.unr-lcssa ]
  %i.ci = icmp eq i64 %1, %.neg
  br i1 %i.ci, label %.loopexit, label %.lr.ph141.split.us

.lr.ph141.split.us:                               ; preds = %.lr.ph141.split.us.prol.loopexit, %bb.aa
  %.3140.us = phi i64 [ %i.cw, %bb.aa ], [ %.3140.us.unr, %.lr.ph141.split.us.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3140.us
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, %5
  br i1 %i.cl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph141.split.us
  %i.cm = xor i32 %i.ck, -2147483648
  %i.cn = zext i32 %i.cm to i64
  br label %.lr.ph141.split.us.1

bb.x:                                             ; preds = %.lr.ph141.split.us
  store i32 1, ptr %8, align 4, !tbaa !11
  br label %.lr.ph141.split.us.1

.lr.ph141.split.us.1:                             ; preds = %bb.x, %bb.w
  %.sink160 = phi i64 [ %6, %bb.x ], [ %i.cn, %bb.w ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.3140.us
  store i64 %.sink160, ptr %i.co, align 8, !tbaa !10
  %i.cp = add nuw nsw i64 %.3140.us, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !11 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, %5
  br i1 %i.cs, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph141.split.us.1
  %i.ct = xor i32 %i.cr, -2147483648
  %i.cu = zext i32 %i.ct to i64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph141.split.us.1
  store i32 1, ptr %8, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink160.1 = phi i64 [ %6, %bb.z ], [ %i.cu, %bb.y ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cp
  store i64 %.sink160.1, ptr %i.cv, align 8, !tbaa !10
  %i.cw = add nuw nsw i64 %.3140.us, 2            ; 2 uses
  %exitcond156.not.1 = icmp eq i64 %i.cw, %1
  br i1 %exitcond156.not.1, label %.loopexit, label %.lr.ph141.split.us, !llvm.loop !64

.lr.ph141.split:                                  ; preds = %bb.af, %.lr.ph141.split.preheader.new
  %.3140 = phi i64 [ 0, %.lr.ph141.split.preheader.new ], [ %i.dm, %bb.af ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph141.split.preheader.new ], [ %niter.next.1, %bb.af ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3140
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !11 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, %5
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph141.split
  store i32 1, ptr %8, align 4, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 %.3140
  store i8 1, ptr %i.da, align 1, !tbaa !18
  br label %.lr.ph141.split.1

bb.ac:                                            ; preds = %.lr.ph141.split
  %i.db = xor i32 %i.cy, -2147483648
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.3140
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !10
  br label %.lr.ph141.split.1

.lr.ph141.split.1:                                ; preds = %bb.ac, %bb.ab
  %i.de = or disjoint i64 %.3140, 1               ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !11 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, %5
  br i1 %i.dh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph141.split.1
  %i.di = xor i32 %i.dg, -2147483648
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.de
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !10
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph141.split.1
  store i32 1, ptr %8, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 %i.de
  store i8 1, ptr %i.dl, align 1, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dm = add nuw nsw i64 %.3140, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit282.unr-lcssa, label %.lr.ph141.split, !llvm.loop !65

bb.ag:                                            ; preds = %bb.r
  %i.dn = fcmp oeq double %3, 0.000000e+00
  %or.cond7 = and i1 %i.b, %i.dn
  %i.do = icmp sgt i64 %1, 0                      ; 2 uses
  br i1 %or.cond7, label %.preheader133, label %.preheader135

.preheader135:                                    ; preds = %bb.ag
  br i1 %i.do, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader135
  %i.dp = icmp eq i32 %4, 1
  br label %bb.ap

.preheader133:                                    ; preds = %bb.ag
  br i1 %i.do, label %.lr.ph139, label %.loopexit

.lr.ph139:                                        ; preds = %.preheader133
  %i.dq = icmp eq i32 %4, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph139, %bb.ao
  %.4138 = phi i64 [ 0, %.lr.ph139 ], [ %i.dz, %bb.ao ] ; 5 uses
end_hunk_0
begin_hunk_1_@fffi8u8:bb.a
bb.x:                                             ; preds = %.lr.ph139, %bb.ae
  %.4138 = phi i64 [ 0, %.lr.ph139 ], [ %i.db, %bb.ae ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.4138
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !15 ; 3 uses
  %i.cv = icmp eq i64 %i.cu, %5
  br i1 %i.cv, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %8, align 4, !tbaa !11
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.4138
  store i64 %6, ptr %i.cw, align 8, !tbaa !15
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 %.4138
  store i8 1, ptr %i.cx, align 1, !tbaa !18
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.cy = icmp slt i64 %i.cu, 0
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -11, ptr %10, align 4, !tbaa !11
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.4138
  store i64 0, ptr %i.cz, align 8, !tbaa !15
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.4138
  store i64 %i.cu, ptr %i.da, align 8, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.z, %bb.ad, %bb.ac
  %i.db = add nuw nsw i64 %.4138, 1               ; 2 uses
  %exitcond154.not = icmp eq i64 %i.db, %1
  br i1 %exitcond154.not, label %.loopexit, label %bb.x, !llvm.loop !142

bb.af:                                            ; preds = %.lr.ph, %bb.ao
  %.5137 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.ao ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.5137
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !15 ; 2 uses
  %i.de = icmp eq i64 %i.dd, %5
  br i1 %i.de, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %8, align 4, !tbaa !11
  br i1 %i.cr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.5137
  store i64 %6, ptr %i.df, align 8, !tbaa !15
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 %.5137
  store i8 1, ptr %i.dg, align 1, !tbaa !18
  br label %bb.ao

bb.aj:                                            ; preds = %bb.af
  %i.dh = sitofp i64 %i.dd to double
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %2, double %3) ; 3 uses
  %i.dj = fcmp olt double %i.di, 0.000000e+00
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.5137 ; 3 uses
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 -11, ptr %10, align 4, !tbaa !11
  store i64 0, ptr %i.dk, align 8, !tbaa !15
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.dl = fcmp ogt double %i.di, f0x43F0000000000000
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 -11, ptr %10, align 4, !tbaa !11
  store i64 -1, ptr %i.dk, align 8, !tbaa !15
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dm = fptoui double %i.di to i64
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.am, %bb.an, %bb.ak
  %i.dn = add nuw nsw i64 %.5137, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.af, !llvm.loop !143

.loopexit.loopexit191.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.loopexit, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %.loopexit.loopexit191.unr-lcssa, %.lr.ph145.preheader
  %.1144.epil.init = phi i64 [ 0, %.lr.ph145.preheader ], [ %i.bb, %.loopexit.loopexit191.unr-lcssa ] ; 2 uses
  %lcmp.mod205 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1144.epil.init
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %bb.ap, label %.loopexit.loopexit191.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph145.epil.preheader
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.loopexit.loopexit191.epilog-lcssa

.loopexit.loopexit191.epilog-lcssa:               ; preds = %bb.ap, %.lr.ph145.epil.preheader
  %.sink.epil = phi i64 [ 0, %bb.ap ], [ %i.dp, %.lr.ph145.epil.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1144.epil.init
  store i64 %.sink.epil, ptr %i.dr, align 8, !tbaa !15
  br label %.loopexit

.loopexit.loopexit193.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.loopexit, label %.lr.ph141.split.us.epil.preheader

.lr.ph141.split.us.epil.preheader:                ; preds = %.loopexit.loopexit193.unr-lcssa, %.lr.ph141.split.us.preheader
  %.3140.us.epil.init = phi i64 [ 0, %.lr.ph141.split.us.preheader ], [ %i.ca, %.loopexit.loopexit193.unr-lcssa ] ; 2 uses
  %lcmp.mod200 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3140.us.epil.init
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15 ; 2 uses
  %i.du = icmp eq i64 %i.dt, %5
  br i1 %i.du, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph141.split.us.epil.preheader
  %i.dv = xor i64 %i.dt, -9223372036854775808
  br label %.loopexit.loopexit193.epilog-lcssa

bb.ar:                                            ; preds = %.lr.ph141.split.us.epil.preheader
  store i32 1, ptr %8, align 4, !tbaa !11
  br label %.loopexit.loopexit193.epilog-lcssa

.loopexit.loopexit193.epilog-lcssa:               ; preds = %bb.ar, %bb.aq
  %.sink160.epil = phi i64 [ %6, %bb.ar ], [ %i.dv, %bb.aq ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.3140.us.epil.init
  store i64 %.sink160.epil, ptr %i.dw, align 8, !tbaa !15
  br label %.loopexit

.loopexit.loopexit194.unr-lcssa:                  ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph141.split.epil.preheader

.lr.ph141.split.epil.preheader:                   ; preds = %.loopexit.loopexit194.unr-lcssa, %.lr.ph141.split.preheader
  %.3140.epil.init = phi i64 [ 0, %.lr.ph141.split.preheader ], [ %i.co, %.loopexit.loopexit194.unr-lcssa ] ; 3 uses
  %lcmp.mod197 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3140.epil.init
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, %5
  br i1 %i.dz, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph141.split.epil.preheader
  %i.ea = xor i64 %i.dy, -9223372036854775808
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.3140.epil.init
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !15
  br label %.loopexit

bb.at:                                            ; preds = %.lr.ph141.split.epil.preheader
  store i32 1, ptr %8, align 4, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 %.3140.epil.init
  store i8 1, ptr %i.ec, align 1, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %bb.ae, %.loopexit.loopexit194.unr-lcssa, %bb.at, %bb.as, %.loopexit.loopexit193.epilog-lcssa, %.loopexit.loopexit193.unr-lcssa, %bb.k, %.loopexit.loopexit191.epilog-lcssa, %.loopexit.loopexit191.unr-lcssa, %.lr.ph147.prol.loopexit, %.lr.ph147, %middle.block, %.preheader135, %.preheader133, %.preheader131, %.preheader129, %.preheader127, %.preheader
  %i.ed = load i32, ptr %10, align 4, !tbaa !11
  ret i32 %i.ed
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @fffi4u8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = fcmp oeq double %2, 1.000000e+00
  %i.c = fcmp oeq double %3, 0.000000e+00
  %or.cond = and i1 %i.b, %i.c                    ; 2 uses
  %i.d = icmp sgt i64 %1, 0                       ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond, label %.preheader, label %.preheader94

.preheader94:                                     ; preds = %bb.b
  br i1 %i.d, label %.lr.ph104, label %.loopexit

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 28
  br i1 %min.iters.check, label %.lr.ph106.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.e = getelementptr i8, ptr %10, i64 4         ; 2 uses
  %i.f = shl i64 %1, 3
  %i.g = getelementptr i8, ptr %9, i64 %i.f       ; 2 uses
  %11 = shl i64 %1, 2
  %12 = getelementptr i8, ptr %0, i64 %11         ; 2 uses
  %bound0 = icmp ult ptr %10, %i.g
  %bound1 = icmp ult ptr %9, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound0146 = icmp ult ptr %10, %12
  %bound1147 = icmp ult ptr %0, %i.e
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx = or i1 %found.conflict, %found.conflict148
  %bound0149 = icmp ult ptr %9, %12
  %bound1150 = icmp ult ptr %0, %i.g
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx, %found.conflict151
  br i1 %conflict.rdx152, label %.lr.ph106.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.d, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %wide.load = load <2 x i32>, ptr %i.h, align 4, !tbaa !11, !alias.scope !153 ; 2 uses
  %wide.load153 = load <2 x i32>, ptr %i.i, align 4, !tbaa !11, !alias.scope !153 ; 2 uses
  %i.j = shufflevector <2 x i32> %wide.load153, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = icmp slt <4 x i32> %i.j, zeroinitializer
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not = icmp eq i4 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %vector.body
  store i32 -11, ptr %10, align 4, !tbaa !11, !alias.scope !154, !noalias !155
  br label %bb.d

bb.d:                                             ; preds = %vector.body, %bb.c
  %narrow = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load, <2 x i32> zeroinitializer)
  %predphi = zext nneg <2 x i32> %narrow to <2 x i64>
  %narrow161 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load153, <2 x i32> zeroinitializer)
  %predphi160 = zext nneg <2 x i32> %narrow161 to <2 x i64>
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %predphi, ptr %i.m, align 8, !tbaa !15, !alias.scope !156, !noalias !153
  store <2 x i64> %predphi160, ptr %i.n, align 8, !tbaa !15, !alias.scope !156, !noalias !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %bb.d
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph106.preheader162

.lr.ph106.preheader162:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block
  %.0105.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph106.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0105.ph, 1
  %xtraiter168 = and i64 %1, 1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph106.prol.loopexit, label %.lr.ph106.prol

.lr.ph106.prol:                                   ; preds = %.lr.ph106.preheader162
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0105.ph
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph106.prol
  %i.s = zext nneg i32 %i.q to i64
  br label %.lr.ph106.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %.lr.ph106.prol
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.lr.ph106.prol.loopexit.unr-lcssa

.lr.ph106.prol.loopexit.unr-lcssa:                ; preds = %bb.f, %bb.e
  %.sink.prol = phi i64 [ 0, %bb.f ], [ %i.s, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.0105.ph
  store i64 %.sink.prol, ptr %i.t, align 8, !tbaa !15
  %i.u = or disjoint i64 %.0105.ph, 1
  br label %.lr.ph106.prol.loopexit

.lr.ph106.prol.loopexit:                          ; preds = %.lr.ph106.prol.loopexit.unr-lcssa, %.lr.ph106.preheader162
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph106.preheader162 ], [ %i.u, %.lr.ph106.prol.loopexit.unr-lcssa ]
  %i.v = icmp eq i64 %1, %.neg
  br i1 %i.v, label %.loopexit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.prol.loopexit, %bb.k
  %.0105 = phi i64 [ %i.ah, %bb.k ], [ %.0105.unr, %.lr.ph106.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0105
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11   ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph106
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.lr.ph106.1

bb.h:                                             ; preds = %.lr.ph106
  %i.z = zext nneg i32 %i.x to i64
  br label %.lr.ph106.1

.lr.ph106.1:                                      ; preds = %bb.g, %bb.h
  %.sink = phi i64 [ 0, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.0105
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !15
  %i.ab = add nuw nsw i64 %.0105, 1               ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph106.1
  %i.af = zext nneg i32 %i.ad to i64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph106.1
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.1 = phi i64 [ 0, %bb.j ], [ %i.af, %bb.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ab
  store i64 %.sink.1, ptr %i.ag, align 8, !tbaa !15
  %i.ah = add nuw nsw i64 %.0105, 2               ; 2 uses
  %exitcond114.not.1 = icmp eq i64 %i.ah, %1
  br i1 %exitcond114.not.1, label %.loopexit, label %.lr.ph106, !llvm.loop !149

.lr.ph104:                                        ; preds = %.preheader94, %bb.p
  %.1103 = phi i64 [ %i.aq, %bb.p ], [ 0, %.preheader94 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1103
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11
  %i.ak = sitofp i32 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %2, double %3) ; 3 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1103
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph104
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph104
  %i.ao = fcmp ogt double %i.al, f0x43F0000000000000
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = fptosi double %i.al to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n
  %.sink131 = phi i64 [ 0, %bb.l ], [ %i.ap, %bb.o ], [ -1, %bb.n ]
  store i64 %.sink131, ptr %i.an, align 8, !tbaa !15
  %i.aq = add nuw nsw i64 %.1103, 1               ; 2 uses
  %exitcond113.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph104, !llvm.loop !150

bb.q:                                             ; preds = %bb.a
  br i1 %or.cond, label %.preheader96, label %.preheader98

.preheader98:                                     ; preds = %bb.q
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader98
  %i.ar = icmp eq i32 %4, 1
  br label %bb.af

.preheader96:                                     ; preds = %bb.q
  br i1 %i.d, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %.preheader96
  %i.as = icmp eq i32 %4, 1
  br i1 %i.as, label %.lr.ph102.split.us.preheader, label %.lr.ph102.split

.lr.ph102.split.us.preheader:                     ; preds = %.lr.ph102
  %xtraiter = and i64 %1, 1
  %i.at = icmp eq i64 %1, 1
  br i1 %i.at, label %.lr.ph102.split.us.epil.preheader, label %.lr.ph102.split.us.preheader.new

.lr.ph102.split.us.preheader.new:                 ; preds = %.lr.ph102.split.us.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph102.split.us

.lr.ph102.split.us:                               ; preds = %bb.z, %.lr.ph102.split.us.preheader.new
  %.2101.us = phi i64 [ 0, %.lr.ph102.split.us.preheader.new ], [ %i.bh, %bb.z ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph102.split.us.preheader.new ], [ %niter.next.1, %bb.z ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2101.us
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11 ; 3 uses
  %i.aw = icmp eq i32 %i.av, %5
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.2101.us
  br i1 %i.aw, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph102.split.us
  %i.ay = icmp slt i32 %i.av, 0
  br i1 %i.ay, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = zext nneg i32 %i.av to i64
  br label %.lr.ph102.split.us.1

bb.t:                                             ; preds = %bb.r
  store i32 -11, ptr %10, align 4, !tbaa !11
  br label %.lr.ph102.split.us.1
end_hunk_1
