Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN14tetgenbehavior17parse_commandlineEiPPc:bb.a
  %i.aaq = or i32 %i.aap, %i.zn
  %brmerge1480.not = icmp eq i32 %i.aaq, 0
  br i1 %brmerge1480.not, label %bb.gn, label %.thread1441

bb.gn:                                            ; preds = %bb.gm
  store i32 1, ptr %0, align 8, !tbaa !117
  br label %.thread1441

bb.go:                                            ; preds = %bb.gk
  %.not1346 = icmp eq i32 %i.zf, 0
  br i1 %.not1346, label %bb.gp, label %.thread1441

bb.gp:                                            ; preds = %bb.go
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !173
  %i.aat = fcmp oeq double %i.aas, 1.770000e+02
  br i1 %i.aat, label %bb.gq, label %.thread1441

bb.gq:                                            ; preds = %bb.gp
  store double 1.799000e+02, ptr %i.aar, align 8, !tbaa !173
  br label %.thread1441

.thread1441:                                      ; preds = %bb.gn, %bb.gl, %bb.gm, %bb.gp, %bb.gq, %bb.go
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !183
  %i.aaw = icmp sgt i32 %i.aav, 0
  br i1 %i.aaw, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %.thread1441
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.aax, align 4, !tbaa !185
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.thread1441
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 5 uses
  %i.aaz = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.aay) #40 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %bb.gu, %bb.gs
  %indvars.iv1744.ph = phi i64 [ %i.abc, %bb.gu ], [ 1, %bb.gs ]
  %.01205.ph = phi i32 [ %spec.select, %bb.gu ], [ 0, %bb.gs ] ; 5 uses
  br label %bb.gt

bb.gt:                                            ; preds = %.outer, %._crit_edge1782
  %indvars.iv1744 = phi i64 [ %.pre1783, %._crit_edge1782 ], [ %indvars.iv1744.ph, %.outer ] ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1744
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !50
  switch i8 %i.abb, label %._crit_edge1782 [
    i8 0, label %bb.gv
    i8 46, label %bb.gu
  ]

._crit_edge1782:                                  ; preds = %bb.gt
  %.pre1783 = add nuw nsw i64 %indvars.iv1744, 1
  br label %bb.gt, !llvm.loop !545

bb.gu:                                            ; preds = %bb.gt
  %i.abc = add nuw nsw i64 %indvars.iv1744, 1     ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !50
  %.not1356 = icmp eq i8 %i.abe, 0
  %i.abf = trunc nuw i64 %i.abc to i32
  %spec.select = select i1 %.not1356, i32 %.01205.ph, i32 %i.abf
  br label %.outer, !llvm.loop !545

bb.gv:                                            ; preds = %bb.gt
  %i.abg = icmp sgt i32 %.01205.ph, 0
  br i1 %i.abg, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.gv
  %i.abh = zext nneg i32 %.01205.ph to i64        ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abh
  %.pre1762 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.abi = phi i8 [ %.pre1762, %.preheader.preheader ], [ %i.abo, %.preheader ]
  %indvars.iv1748 = phi i64 [ %i.abh, %.preheader.preheader ], [ %indvars.iv.next1749, %.preheader ]
  %.21207 = phi i32 [ %.01205.ph, %.preheader.preheader ], [ %.31208, %.preheader ]
  %.01202 = phi i32 [ 0, %.preheader.preheader ], [ %.11203, %.preheader ] ; 2 uses
  %i.abj = add i8 %i.abi, -48                     ; 2 uses
  %or.cond1431 = icmp ult i8 %i.abj, 10           ; 2 uses
  %i.abk = mul nsw i32 %.01202, 10
  %i.abl = sext i8 %i.abj to i32
  %i.abm = add nsw i32 %i.abk, %i.abl
  %.31208 = select i1 %or.cond1431, i32 %.21207, i32 0 ; 2 uses
  %.11203 = select i1 %or.cond1431, i32 %i.abm, i32 %.01202 ; 2 uses
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next1749
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !50 ; 2 uses
  %.not1348 = icmp eq i8 %i.abo, 0
  br i1 %.not1348, label %.loopexit.loopexit, label %.preheader, !llvm.loop !546

.loopexit.loopexit:                               ; preds = %.preheader
  %i.abp = add nsw i32 %.11203, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.gv
  %.41209 = phi i32 [ %.01205.ph, %bb.gv ], [ %.31208, %.loopexit.loopexit ] ; 2 uses
  %.21204 = phi i32 [ 1, %bb.gv ], [ %i.abp, %.loopexit.loopexit ]
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !170
  %.not1349 = icmp eq i32 %i.abr, 0
  br i1 %.not1349, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %.loopexit
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.abt = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.abs, ptr noundef nonnull dereferenceable(1) %i.aay) #40 ; 0 uses
  br label %bb.ha

bb.gx:                                            ; preds = %.loopexit
  %i.abu = icmp eq i32 %.41209, 0
  br i1 %i.abu, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 3 uses
  %i.abw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.abv, ptr noundef nonnull dereferenceable(1) %i.aay) #40 ; 0 uses
  %strlen1350 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.abv)
  %endptr1351 = getelementptr inbounds i8, ptr %i.abv, i64 %strlen1350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr1351, ptr noundef nonnull align 1 dereferenceable(3) @.str.249, i64 3, i1 false)
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.abx = sext i32 %.41209 to i64
  %i.aby = getelementptr inbounds i8, ptr %i.a, i64 %i.abx ; 3 uses
  store i8 37, ptr %i.aby, align 1, !tbaa !50
  %i.abz = getelementptr i8, ptr %i.aby, i64 1
  store i8 100, ptr %i.abz, align 1, !tbaa !50
  %i.aca = getelementptr i8, ptr %i.aby, i64 2
  store i8 0, ptr %i.aca, align 1, !tbaa !50
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.acc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.acb, ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef %.21204) #40 ; 0 uses
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gy, %bb.gz, %bb.gw
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 3 uses
  %i.ace = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.acd, ptr noundef nonnull dereferenceable(1) %i.aay) #40 ; 0 uses
  %strlen1352 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.acd)
  %endptr1353 = getelementptr inbounds i8, ptr %i.acd, i64 %strlen1352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr1353, ptr noundef nonnull align 1 dereferenceable(3) @.str.250, i64 3, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 4488 ; 3 uses
  %i.acg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.acf, ptr noundef nonnull dereferenceable(1) %i.aay) #40 ; 0 uses
  %strlen1354 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.acf)
  %endptr1355 = getelementptr inbounds i8, ptr %i.acf, i64 %strlen1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr1355, ptr noundef nonnull align 1 dereferenceable(3) @.str.251, i64 3, i1 false)
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gb
  %.01211 = phi i1 [ false, %bb.gb ], [ true, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.01211
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh10inittablesEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #18 align 2 {
.preheader135:
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr @_ZN10tetgenmesh7bondtblE, align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 16), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 32), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 48), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 64), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 80), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 96), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 112), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 128), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 144), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 160), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 176), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 192), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 208), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 224), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 240), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 256), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 272), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 288), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 304), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 320), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 336), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 352), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 368), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 384), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 400), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 416), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 432), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 448), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 464), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 480), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 496), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 512), align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 528), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 544), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7bondtblE, i64 560), align 16, !tbaa !59
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader135, %.preheader133
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.preheader133 ], [ 0, %.preheader135 ] ; 3 uses
  %i.a = trunc i64 %indvars.iv156 to i32
  %i.b = getelementptr inbounds nuw [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %indvars.iv156 ; 6 uses
  %.186139.not = and i32 %i.a, 12                 ; 9 uses
  %1 = insertelement <4 x i32> poison, i32 %.186139.not, i64 0
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %3 = xor <4 x i32> %2, <i32 0, i32 13, i32 14, i32 15> ; 2 uses
  %4 = xor <4 x i32> %2, <i32 12, i32 poison, i32 poison, i32 poison>
  %5 = sub nsw <4 x i32> <i32 poison, i32 1, i32 2, i32 3>, %2
  %6 = shufflevector <4 x i32> %4, <4 x i32> %5, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %7 = icmp samesign ult <4 x i32> %3, <i32 1, i32 12, i32 12, i32 12>
  %8 = insertelement <4 x i32> %3, i32 0, i64 0
  %9 = select <4 x i1> %7, <4 x i32> %8, <4 x i32> %6
  store <4 x i32> %9, ptr %i.b, align 16, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = icmp samesign ugt <4 x i32> %2, <i32 4, i32 5, i32 6, i32 7>
  %i.e = select <4 x i1> %i.d, <4 x i32> <i32 16, i32 17, i32 18, i32 19>, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.f = sub nsw <4 x i32> %i.e, %2
  store <4 x i32> %i.f, ptr %i.c, align 16, !tbaa !59
  %.cmp98.8 = icmp samesign ugt i32 %.186139.not, 8
  %.v205 = select i1 %.cmp98.8, i32 20, i32 8
  %i.g = sub nsw i32 %.v205, %.186139.not
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.g, ptr %i.h, align 16, !tbaa !59
  %.cmp98.9 = icmp samesign ugt i32 %.186139.not, 9
  %.v206 = select i1 %.cmp98.9, i32 21, i32 9
  %i.i = sub nsw i32 %.v206, %.186139.not
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.i, ptr %i.j, align 4, !tbaa !59
  %.cmp98.10 = icmp samesign ugt i32 %.186139.not, 10
  %.v207 = select i1 %.cmp98.10, i32 22, i32 10
  %i.k = sub nsw i32 %.v207, %.186139.not
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !59
  %.urem97.11 = sub nsw i32 11, %.186139.not
  %.cmp98.11 = icmp eq i32 %.186139.not, 12
  %i.m = select i1 %.cmp98.11, i32 11, i32 %.urem97.11
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.m, ptr %i.n, align 4, !tbaa !59
  %indvars.iv.next157 = add i64 %indvars.iv156, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 12
  br i1 %exitcond159.not, label %.preheader132.preheader, label %.preheader133, !llvm.loop !549

.preheader132.preheader:                          ; preds = %.preheader133
  %i.o = load <4 x i32>, ptr @_ZN10tetgenmesh7esymtblE, align 16, !tbaa !59 ; 5 uses
  %i.p = and <4 x i32> %i.o, splat (i32 3)
  store <4 x i32> %i.p, ptr @_ZN10tetgenmesh10facepivot1E, align 16, !tbaa !59
  %i.q = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 16), align 16, !tbaa !59 ; 6 uses
  %i.r = and <4 x i32> %i.q, splat (i32 3)
  store <4 x i32> %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot1E, i64 16), align 16, !tbaa !59
  %i.s = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 32), align 16, !tbaa !59 ; 7 uses
  %i.t = and <4 x i32> %i.s, splat (i32 3)
  store <4 x i32> %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot1E, i64 32), align 16, !tbaa !59
  %i.u = extractelement <4 x i32> %i.o, i64 0
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @_ZN10tetgenmesh10facepivot2E, ptr noundef nonnull align 16 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa !59
  %i.x = extractelement <4 x i32> %i.o, i64 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 48), ptr noundef nonnull align 16 dereferenceable(48) %i.z, i64 48, i1 false), !tbaa !59
  %i.aa = extractelement <4 x i32> %i.o, i64 2
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 96), ptr noundef nonnull align 16 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa !59
  %i.ad = extractelement <4 x i32> %i.o, i64 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 144), ptr noundef nonnull align 16 dereferenceable(48) %i.af, i64 48, i1 false), !tbaa !59
  %i.ag = extractelement <4 x i32> %i.q, i64 0
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 192), ptr noundef nonnull align 16 dereferenceable(48) %i.ai, i64 48, i1 false), !tbaa !59
  %i.aj = extractelement <4 x i32> %i.q, i64 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 240), ptr noundef nonnull align 16 dereferenceable(48) %i.al, i64 48, i1 false), !tbaa !59
  %i.am = extractelement <4 x i32> %i.q, i64 2
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 288), ptr noundef nonnull align 16 dereferenceable(48) %i.ao, i64 48, i1 false), !tbaa !59
  %i.ap = extractelement <4 x i32> %i.q, i64 3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 336), ptr noundef nonnull align 16 dereferenceable(48) %i.ar, i64 48, i1 false), !tbaa !59
  %i.as = extractelement <4 x i32> %i.s, i64 0
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 384), ptr noundef nonnull align 16 dereferenceable(48) %i.au, i64 48, i1 false), !tbaa !59
  %i.av = extractelement <4 x i32> %i.s, i64 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 432), ptr noundef nonnull align 16 dereferenceable(48) %i.ax, i64 48, i1 false), !tbaa !59
  %i.ay = extractelement <4 x i32> %i.s, i64 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 480), ptr noundef nonnull align 16 dereferenceable(48) %i.ba, i64 48, i1 false), !tbaa !59
  %i.bb = extractelement <4 x i32> %i.s, i64 3
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh10facepivot2E, i64 528), ptr noundef nonnull align 16 dereferenceable(48) %i.bd, i64 48, i1 false), !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr @_ZN10tetgenmesh8enexttblE, align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr @_ZN10tetgenmesh8eprevtblE, align 16, !tbaa !59
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8enexttblE, i64 16), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8eprevtblE, i64 16), align 16, !tbaa !59
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8enexttblE, i64 32), align 16, !tbaa !59
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8eprevtblE, i64 32), align 16, !tbaa !59
  store <4 x i32> %i.q, ptr @_ZN10tetgenmesh12enextesymtblE, align 16, !tbaa !59
  store <4 x i32> %i.s, ptr @_ZN10tetgenmesh12eprevesymtblE, align 16, !tbaa !59
  %i.be = load i32, ptr @_ZN10tetgenmesh7esymtblE, align 16, !tbaa !59 ; 3 uses
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 16), align 16, !tbaa !59
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 4), align 4, !tbaa !59 ; 3 uses
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 20), align 4, !tbaa !59
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 8), align 8, !tbaa !59 ; 3 uses
  store i32 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 24), align 8, !tbaa !59
  store <4 x i32> %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12enextesymtblE, i64 16), align 16, !tbaa !59
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 12), align 4, !tbaa !59 ; 2 uses
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 28), align 4, !tbaa !59
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12enextesymtblE, i64 32), align 16, !tbaa !59
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 16), align 16, !tbaa !59 ; 2 uses
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 32), align 16, !tbaa !59
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12enextesymtblE, i64 36), align 4, !tbaa !59
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 20), align 4, !tbaa !59 ; 2 uses
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 36), align 4, !tbaa !59
  store i32 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12enextesymtblE, i64 40), align 8, !tbaa !59
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 24), align 8, !tbaa !59 ; 2 uses
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 40), align 8, !tbaa !59
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12enextesymtblE, i64 44), align 4, !tbaa !59
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 28), align 4, !tbaa !59 ; 2 uses
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 44), align 4, !tbaa !59
  %i.bm = sext i32 %i.bi to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59
  store i32 %i.bo, ptr @_ZN10tetgenmesh11eorgoppotblE, align 16, !tbaa !59
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 32), align 16, !tbaa !59
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !59
  store i32 %i.bs, ptr @_ZN10tetgenmesh12edestoppotblE, align 16, !tbaa !59
  %i.bt = sext i32 %i.bj to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59
  store i32 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 4), align 4, !tbaa !59
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 36), align 4, !tbaa !59
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !59
  store i32 %i.bz, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 4), align 4, !tbaa !59
  %i.ca = sext i32 %i.bk to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59
  store i32 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 8), align 8, !tbaa !59
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 40), align 8, !tbaa !59
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 8), align 8, !tbaa !59
  %i.ch = sext i32 %i.bl to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 12), align 4, !tbaa !59
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 44), align 4, !tbaa !59
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !59
  store i32 %i.cn, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 12), align 4, !tbaa !59
  %i.co = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bq
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !59
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 16), align 16, !tbaa !59
  %i.cq = sext i32 %i.be to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !59
  store i32 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 16), align 16, !tbaa !59
  %i.ct = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bx
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !59
  store i32 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 20), align 4, !tbaa !59
  %i.cv = sext i32 %i.bf to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 20), align 4, !tbaa !59
  %i.cy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.ce
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59
  store i32 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 24), align 8, !tbaa !59
  %i.da = sext i32 %i.bg to i64
  %i.db = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !59
  store i32 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 24), align 8, !tbaa !59
  %i.dd = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.cl
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !59
  store i32 %i.de, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 28), align 4, !tbaa !59
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8eprevtblE, i64 28), align 4, !tbaa !59
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !59
  store i32 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 28), align 4, !tbaa !59
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8enexttblE, i64 32), align 16, !tbaa !59
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !59
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !59
  store i32 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh11eorgoppotblE, i64 32), align 16, !tbaa !59
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8eprevtblE, i64 32), align 16, !tbaa !59
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !59
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !59
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12edestoppotblE, i64 32), align 16, !tbaa !59
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8enexttblE, i64 36), align 4, !tbaa !59
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !59
end_hunk_0
