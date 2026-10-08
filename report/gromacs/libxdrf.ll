Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/libxdrf?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_Z11xdr3dfcoordP3XDRPfPiS1_i:bb.a
  %i.aba = shl i32 %.1.i539, 8
  %i.abb = load ptr, ptr %i.yw, align 8, !tbaa !17
  %i.abc = load i64, ptr %5, align 8, !tbaa !23   ; 2 uses
  %i.abd = add i64 %i.abc, 1
  store i64 %i.abd, ptr %5, align 8, !tbaa !23
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abc
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !24
  %i.abg = zext i8 %i.abf to i32
  %i.abh = or disjoint i32 %i.aba, %i.abg
  br label %_ZL11receivebitsP10DataBufferi.exit544

_ZL11receivebitsP10DataBufferi.exit544:           ; preds = %bb.gt, %bb.gu
  %.031.i542 = phi i32 [ %i.aaz, %bb.gu ], [ %i.aav, %bb.gt ]
  %.1.i543 = phi i32 [ %i.abh, %bb.gu ], [ %.1.i539, %bb.gt ] ; 2 uses
  %i.abi = add nsw i32 %.031.i542, -5             ; 2 uses
  %i.abj = lshr i32 %.1.i543, %i.abi
  %i.abk = and i32 %i.abj, 31                     ; 2 uses
  store i32 %i.abi, ptr %i.vu, align 8, !tbaa !21
  store i32 %.1.i543, ptr %i.vv, align 4, !tbaa !22
  %.lhs.trunc = trunc nuw nsw i32 %i.abk to i8
  %i.abl = urem i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.abl to i32             ; 2 uses
  %i.abm = sub nsw i32 %i.abk, %.zext
  %i.abn = add nsw i32 %.zext, -1
  br label %bb.gv

bb.gv:                                            ; preds = %_ZL11receivebitsP10DataBufferi.exit544, %_ZL11receivebitsP10DataBufferi.exit
  %.3398 = phi i32 [ %i.abn, %_ZL11receivebitsP10DataBufferi.exit544 ], [ 0, %_ZL11receivebitsP10DataBufferi.exit ] ; 3 uses
  %.2394 = phi i32 [ %i.abm, %_ZL11receivebitsP10DataBufferi.exit544 ], [ %.1393641, %_ZL11receivebitsP10DataBufferi.exit ] ; 4 uses
  %i.abo = icmp sgt i32 %.2394, 0
  br i1 %i.abo, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.abp = getelementptr inbounds nuw i8, ptr %i.zs, i64 12 ; 6 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zs, i64 20 ; 4 uses
  %i.abr = load i32, ptr %i.e, align 4, !tbaa !14
  call fastcc void @_ZL11receiveintsP10DataBufferiiPKjPi(ptr noundef %5, i32 noundef %i.abr, ptr noundef %i.g, ptr noundef %i.abp)
  %i.abs = load i32, ptr %i.h, align 4, !tbaa !14
  %i.abt = add nsw i32 %i.abs, 1                  ; 2 uses
  store i32 %i.abt, ptr %i.h, align 4, !tbaa !14
  %i.abu = insertelement <2 x i32> poison, i32 %.3410639, i64 0
  %i.abv = shufflevector <2 x i32> %i.abu, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abw = sub nsw <2 x i32> %i.aaf, %i.abv
  %i.abx = load <2 x i32>, ptr %i.abp, align 4, !tbaa !14
  %i.aby = add nsw <2 x i32> %i.abx, %i.abw       ; 2 uses
  %i.abz = sub nsw i32 %i.aai, %.3410639
  %i.aca = load i32, ptr %i.abq, align 4, !tbaa !14
  %i.acb = add nsw i32 %i.aca, %i.abz             ; 2 uses
  store <2 x i32> %i.aaf, ptr %i.abp, align 4, !tbaa !14
  store i32 %i.aai, ptr %i.abq, align 4, !tbaa !14
  %i.acc = getelementptr inbounds nuw i8, ptr %.1386642, i64 16
  %i.acd = shufflevector <2 x i32> %i.aby, <2 x i32> %i.aaf, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ace = insertelement <4 x i32> %i.acd, i32 %i.acb, i64 2
  %i.acf = sitofp <4 x i32> %i.ace to <4 x float>
  %i.acg = fmul <4 x float> %i.zn, %i.acf
  store <4 x float> %i.acg, ptr %.1386642, align 4, !tbaa !19
  %i.ach = getelementptr inbounds nuw i8, ptr %.1386642, i64 24 ; 2 uses
  %i.aci = shufflevector <2 x i32> %i.aaf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.acj = insertelement <2 x i32> %i.aci, i32 %i.aai, i64 1
  %i.ack = sitofp <2 x i32> %i.acj to <2 x float>
  %i.acl = fmul <2 x float> %i.zp, %i.ack
  store <2 x float> %i.acl, ptr %i.acc, align 4, !tbaa !19
  %i.acm = icmp samesign ugt i32 %.2394, 3
  br i1 %i.acm, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.gw, %.peel.next
  %.sroa.30.2636 = phi i32 [ %i.acw, %.peel.next ], [ %i.acb, %bb.gw ]
  %.2387635 = phi ptr [ %i.ada, %.peel.next ], [ %i.ach, %bb.gw ] ; 3 uses
  %.1413634 = phi i32 [ %i.adb, %.peel.next ], [ 3, %bb.gw ]
  %i.acn = phi <2 x i32> [ %i.act, %.peel.next ], [ %i.aby, %bb.gw ]
  %i.aco = load i32, ptr %i.e, align 4, !tbaa !14
  call fastcc void @_ZL11receiveintsP10DataBufferiiPKjPi(ptr noundef %5, i32 noundef %i.aco, ptr noundef %i.g, ptr noundef %i.abp)
  %i.acp = load i32, ptr %i.h, align 4, !tbaa !14
  %i.acq = add nsw i32 %i.acp, 1                  ; 2 uses
  store i32 %i.acq, ptr %i.h, align 4, !tbaa !14
  %i.acr = sub nsw <2 x i32> %i.acn, %i.abv
  %i.acs = load <2 x i32>, ptr %i.abp, align 4, !tbaa !14
  %i.act = add nsw <2 x i32> %i.acs, %i.acr       ; 3 uses
  store <2 x i32> %i.act, ptr %i.abp, align 4, !tbaa !14
  %i.acu = sub nsw i32 %.sroa.30.2636, %.3410639
  %i.acv = load i32, ptr %i.abq, align 4, !tbaa !14
  %i.acw = add nsw i32 %i.acv, %i.acu             ; 3 uses
  store i32 %i.acw, ptr %i.abq, align 4, !tbaa !14
  %.pre719 = sitofp i32 %i.acw to float
  %.pre721 = fmul float %i.zi, %.pre719
  %i.acx = getelementptr inbounds nuw i8, ptr %.2387635, i64 8
  %i.acy = sitofp <2 x i32> %i.act to <2 x float>
  %i.acz = fmul <2 x float> %i.zp, %i.acy
  store <2 x float> %i.acz, ptr %.2387635, align 4, !tbaa !19
  %i.ada = getelementptr inbounds nuw i8, ptr %.2387635, i64 12 ; 2 uses
  store float %.pre721, ptr %i.acx, align 4, !tbaa !19
  %i.adb = add nuw nsw i32 %.1413634, 3           ; 2 uses
  %i.adc = icmp slt i32 %i.adb, %.2394
  br i1 %i.adc, label %.peel.next, label %.loopexit, !llvm.loop !38

bb.gx:                                            ; preds = %bb.gv
  %i.add = getelementptr inbounds nuw i8, ptr %.1386642, i64 8
  %i.ade = sitofp <2 x i32> %i.aaf to <2 x float>
  %i.adf = fmul <2 x float> %i.zp, %i.ade
  store <2 x float> %i.adf, ptr %.1386642, align 4, !tbaa !19
  %i.adg = sitofp i32 %i.aai to float
  %i.adh = fmul float %i.zi, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %.1386642, i64 12
  store float %i.adh, ptr %i.add, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %bb.gw, %bb.gx
  %i.adj = phi i32 [ %i.aad, %bb.gx ], [ %i.abt, %bb.gw ], [ %i.acq, %.peel.next ] ; 2 uses
  %.4389 = phi ptr [ %i.adi, %bb.gx ], [ %i.ach, %bb.gw ], [ %i.ada, %.peel.next ]
  %i.adk = load i32, ptr %i.e, align 4, !tbaa !14
  %i.adl = add nsw i32 %i.adk, %.3398             ; 5 uses
  store i32 %i.adl, ptr %i.e, align 4, !tbaa !14
  %i.adm = icmp slt i32 %.3398, 0
  br i1 %i.adm, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %.loopexit
  %i.adn = icmp sgt i32 %i.adl, 9
  br i1 %i.adn, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.ado = zext nneg i32 %i.adl to i64
  %i.adp = getelementptr [4 x i8], ptr @_ZL9magicints, i64 %i.ado
  %i.adq = getelementptr i8, ptr %i.adp, i64 -4
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !14
  %i.ads = sdiv i32 %i.adr, 2
  br label %bb.hc

bb.ha:                                            ; preds = %.loopexit
  %.not458 = icmp eq i32 %.3398, 0
  br i1 %.not458, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.adt = sext i32 %i.adl to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr @_ZL9magicints, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !14
  %i.adw = sdiv i32 %i.adv, 2
  br label %bb.hc

bb.hc:                                            ; preds = %bb.gy, %bb.ha, %bb.hb, %bb.gz
  %.4411 = phi i32 [ %.3405640, %bb.gz ], [ %.3410639, %bb.ha ], [ %i.adw, %bb.hb ], [ %.3405640, %bb.gy ]
  %.4406 = phi i32 [ %i.ads, %bb.gz ], [ %.3405640, %bb.ha ], [ %.3410639, %bb.hb ], [ 0, %bb.gy ]
  %i.adx = sext i32 %i.adl to i64
  %i.ady = getelementptr inbounds [4 x i8], ptr @_ZL9magicints, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !14 ; 3 uses
  store i32 %i.adz, ptr %i.ym, align 4, !tbaa !14
  store i32 %i.adz, ptr %i.yn, align 4, !tbaa !14
  store i32 %i.adz, ptr %i.g, align 4, !tbaa !14
  %i.aea = load i32, ptr %i.j, align 4, !tbaa !14
  %i.aeb = icmp slt i32 %i.adj, %i.aea
  br i1 %i.aeb, label %bb.go, label %._crit_edge645, !llvm.loop !39

._crit_edge645:                                   ; preds = %bb.hc, %bb.gn
  br i1 %i.vh, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %._crit_edge645
  call void @free(ptr noundef nonnull %.1423) #16
  %i.aec = load ptr, ptr %i.yw, align 8, !tbaa !17
  call void @free(ptr noundef %i.aec) #16
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge645, %bb.hd, %bb.gl, %bb.gm, %bb.gg, %bb.gh, %bb.ga, %bb.gb, %bb.fv, %bb.fw, %bb.fk, %bb.fe, %bb.fc, %bb.fd, %bb.ey, %bb.ez, %bb.cx, %bb.cy, %bb.ae, %bb.af, %bb.i, %bb.f, %bb.fj, %bb.h
  %.0424 = phi i32 [ %i.ur, %bb.fc ], [ %i.ve, %bb.fj ], [ 0, %bb.fe ], [ 0, %bb.fk ], [ 0, %bb.fv ], [ 0, %bb.ga ], [ 0, %bb.gg ], [ 0, %bb.gl ], [ 0, %bb.ey ], [ %i.aa, %bb.h ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.ae ], [ 0, %bb.cx ], [ 0, %bb.af ], [ 0, %bb.cy ], [ 0, %bb.ez ], [ %i.ur, %bb.fd ], [ 0, %bb.fw ], [ 0, %bb.gb ], [ 0, %bb.gh ], [ 0, %bb.gm ], [ 1, %bb.hd ], [ 1, %._crit_edge645 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0424
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z10xdr_vectorP3XDRPcjjPFiS0_PvzE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL10sizeofintsiPKj(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
.preheader:
  %i.a = alloca [32 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr %0, align 4, !tbaa !14     ; 4 uses
  %i.c = and i32 %i.b, 255
  store i32 %i.c, ptr %i.a, align 16, !tbaa !14
  %i.d = lshr i32 %i.b, 8                         ; 2 uses
  %.not3035 = icmp eq i32 %i.d, 0
  br i1 %.not3035, label %.lr.ph.1, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %i.e = and i32 %i.d, 255
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !14
  %i.g = lshr i32 %i.b, 16                        ; 2 uses
  %.not30 = icmp eq i32 %i.g, 0
  br i1 %.not30, label %.lr.ph.1, label %.lr.ph38.19

.lr.ph38.19:                                      ; preds = %.lr.ph38
  %i.h = and i32 %i.g, 255
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !14
  %i.j = lshr i32 %i.b, 24                        ; 2 uses
  %.not30.18 = icmp eq i32 %i.j, 0
  br i1 %.not30.18, label %.lr.ph.1, label %.lr.ph38.214

.lr.ph38.214:                                     ; preds = %.lr.ph38.19
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !14
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph38, %.lr.ph38.19, %.lr.ph38.214, %.preheader
  %.125.lcssa = phi i32 [ 1, %.preheader ], [ 2, %.lr.ph38 ], [ 3, %.lr.ph38.19 ], [ 4, %.lr.ph38.214 ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 5 uses
  %i.n = load i32, ptr %i.a, align 16, !tbaa !14
  %i.o = mul i32 %i.m, %i.n                       ; 2 uses
  %i.p = and i32 %i.o, 255
  store i32 %i.p, ptr %i.a, align 16, !tbaa !14
  %i.q = lshr i32 %i.o, 8                         ; 2 uses
  %exitcond.1.not = icmp eq i32 %.125.lcssa, 1
  br i1 %exitcond.1.not, label %.preheader.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = mul i32 %i.m, %i.s
  %i.u = add i32 %i.t, %i.q                       ; 2 uses
  %i.v = and i32 %i.u, 255
  store i32 %i.v, ptr %i.r, align 4, !tbaa !14
  %i.w = lshr i32 %i.u, 8                         ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %.125.lcssa, 2
  br i1 %exitcond.1.not.1, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14
  %i.z = mul i32 %i.m, %i.y
  %i.aa = add i32 %i.z, %i.w                      ; 2 uses
  %i.ab = and i32 %i.aa, 255
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !14
  %i.ac = lshr i32 %i.aa, 8                       ; 2 uses
  %exitcond.1.not.2 = icmp eq i32 %.125.lcssa, 3
  br i1 %exitcond.1.not.2, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = mul i32 %i.m, %i.ae
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = and i32 %i.ag, 255
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !14
  %i.ai = lshr i32 %i.ag, 8                       ; 2 uses
  %exitcond.1.not.3 = icmp eq i32 %.125.lcssa, 4
  br i1 %exitcond.1.not.3, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !14
  %i.al = mul i32 %i.m, %i.ak
  %i.am = add i32 %i.al, %i.ai                    ; 2 uses
  %i.an = and i32 %i.am, 255
  store i32 %i.an, ptr %i.aj, align 16, !tbaa !14
  %i.ao = lshr i32 %i.am, 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %.lr.ph.1
  %.lcssa4 = phi i32 [ %i.q, %.lr.ph.1 ], [ %i.w, %bb.a ], [ %i.ac, %bb.b ], [ %i.ai, %bb.c ], [ %i.ao, %bb.d ] ; 4 uses
  %.not3035.1 = icmp eq i32 %.lcssa4, 0
  br i1 %.not3035.1, label %.lr.ph.2, label %.lr.ph38.preheader.1

.lr.ph38.preheader.1:                             ; preds = %.preheader.1
  %i.ap = zext i32 %.125.lcssa to i64             ; 4 uses
  %i.aq = and i32 %.lcssa4, 255
  %indvars.iv.next55.1 = add nuw nsw i64 %i.ap, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ap
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !14
  %i.as = lshr i32 %.lcssa4, 8                    ; 2 uses
  %.not30.1 = icmp eq i32 %i.as, 0
  br i1 %.not30.1, label %._crit_edge.loopexit.1, label %.lr.ph38.1.1

.lr.ph38.1.1:                                     ; preds = %.lr.ph38.preheader.1
  %i.at = and i32 %i.as, 255
  %indvars.iv.next55.1.1 = add nuw nsw i64 %i.ap, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next55.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !14
  %i.av = lshr i32 %.lcssa4, 16                   ; 2 uses
  %.not30.1.1 = icmp eq i32 %i.av, 0
  br i1 %.not30.1.1, label %._crit_edge.loopexit.1, label %.lr.ph38.1.2

.lr.ph38.1.2:                                     ; preds = %.lr.ph38.1.1
  %indvars.iv.next55.1.2 = add nuw nsw i64 %i.ap, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next55.1.1
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !14
  br label %._crit_edge.loopexit.1

._crit_edge.loopexit.1:                           ; preds = %.lr.ph38.1.2, %.lr.ph38.1.1, %.lr.ph38.preheader.1
  %indvars.iv.next55.1.lcssa = phi i64 [ %indvars.iv.next55.1, %.lr.ph38.preheader.1 ], [ %indvars.iv.next55.1.1, %.lr.ph38.1.1 ], [ %indvars.iv.next55.1.2, %.lr.ph38.1.2 ]
  %i.ax = trunc nuw i64 %indvars.iv.next55.1.lcssa to i32
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.1, %._crit_edge.loopexit.1
  %.125.lcssa.1 = phi i32 [ %.125.lcssa, %.preheader.1 ], [ %i.ax, %._crit_edge.loopexit.1 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14 ; 5 uses
  %wide.trip.count.2 = zext i32 %.125.lcssa.1 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.2, 3       ; 3 uses
  %i.ba = add i32 %.125.lcssa.1, -1
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.2.new

.lr.ph.2.new:                                     ; preds = %.lr.ph.2
  %unroll_iter = and i64 %wide.trip.count.2, 4294967292
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.2.new
  %indvars.iv.2 = phi i64 [ 0, %.lr.ph.2.new ], [ %indvars.iv.next.2.3, %bb.e ] ; 5 uses
  %.033.2 = phi i32 [ 0, %.lr.ph.2.new ], [ %i.cc, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.2.new ], [ %niter.next.3, %bb.e ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.2 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !14
  %i.be = mul i32 %i.az, %i.bd
  %i.bf = add i32 %i.be, %.033.2                  ; 2 uses
  %i.bg = and i32 %i.bf, 255
  store i32 %i.bg, ptr %i.bc, align 16, !tbaa !14
  %i.bh = lshr i32 %i.bf, 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = mul i32 %i.az, %i.bk
  %i.bm = add i32 %i.bl, %i.bh                    ; 2 uses
  %i.bn = and i32 %i.bm, 255
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  %i.bo = lshr i32 %i.bm, 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %i.bs = mul i32 %i.az, %i.br
  %i.bt = add i32 %i.bs, %i.bo                    ; 2 uses
  %i.bu = and i32 %i.bt, 255
  store i32 %i.bu, ptr %i.bq, align 8, !tbaa !14
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = mul i32 %i.az, %i.by
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = and i32 %i.ca, 255
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !14
  %i.cc = lshr i32 %i.ca, 8                       ; 3 uses
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.2.unr-lcssa, label %bb.e, !llvm.loop !45

.preheader.2.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.2.unr-lcssa, %.lr.ph.2
  %indvars.iv.2.epil.init = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next.2.3, %.preheader.2.unr-lcssa ]
  %.033.2.epil.init = phi i32 [ 0, %.lr.ph.2 ], [ %i.cc, %.preheader.2.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.2.epil.init, %.epil.preheader ], [ %indvars.iv.next.2.epil, %bb.f ] ; 2 uses
  %.033.2.epil = phi i32 [ %.033.2.epil.init, %.epil.preheader ], [ %i.ci, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.2.epil ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %i.cf = mul i32 %i.az, %i.ce
  %i.cg = add i32 %i.cf, %.033.2.epil             ; 2 uses
  %i.ch = and i32 %i.cg, 255
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !14
  %i.ci = lshr i32 %i.cg, 8                       ; 2 uses
  %indvars.iv.next.2.epil = add nuw nsw i64 %indvars.iv.2.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.2, label %bb.f, !llvm.loop !46

.preheader.2:                                     ; preds = %bb.f, %.preheader.2.unr-lcssa
  %.lcssa3 = phi i32 [ %i.cc, %.preheader.2.unr-lcssa ], [ %i.ci, %bb.f ] ; 2 uses
  %.not3035.2 = icmp eq i32 %.lcssa3, 0
  br i1 %.not3035.2, label %._crit_edge.2, label %.lr.ph38.preheader.2

.lr.ph38.preheader.2:                             ; preds = %.preheader.2
  %i.cj = zext i32 %.125.lcssa.1 to i64
  br label %.lr.ph38.2

.lr.ph38.2:                                       ; preds = %.lr.ph38.2, %.lr.ph38.preheader.2
  %indvars.iv54.2 = phi i64 [ %i.cj, %.lr.ph38.preheader.2 ], [ %indvars.iv.next55.2.a, %.lr.ph38.2 ] ; 2 uses
  %.137.2 = phi i32 [ %.lcssa3, %.lr.ph38.preheader.2 ], [ %i.cm, %.lr.ph38.2 ] ; 2 uses
  %i.ck = and i32 %.137.2, 255
  %indvars.iv.next55.2.a = add nuw nsw i64 %indvars.iv54.2, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv54.2
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !14
  %i.cm = lshr i32 %.137.2, 8                     ; 2 uses
  %.not30.2.a = icmp eq i32 %i.cm, 0
  br i1 %.not30.2.a, label %._crit_edge.loopexit.2, label %.lr.ph38.2, !llvm.loop !47

._crit_edge.loopexit.2:                           ; preds = %.lr.ph38.2
  %i.cn = trunc nuw i64 %indvars.iv.next55.2.a to i32
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %.preheader.2
  %.125.lcssa.2 = phi i32 [ %.125.lcssa.1, %.preheader.2 ], [ %i.cn, %._crit_edge.loopexit.2 ]
  %i.co = add i32 %.125.lcssa.2, -1               ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14 ; 2 uses
  %.not42 = icmp slt i32 %i.cr, 1
  br i1 %.not42, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %._crit_edge.2, %.lr.ph46
  %.02644 = phi i32 [ %i.cs, %.lr.ph46 ], [ 0, %._crit_edge.2 ]
  %.02843 = phi i32 [ %i.ct, %.lr.ph46 ], [ 1, %._crit_edge.2 ]
  %i.cs = add i32 %.02644, 1                      ; 2 uses
  %i.ct = shl nsw i32 %.02843, 1                  ; 2 uses
  %.not = icmp slt i32 %i.cr, %i.ct
  br i1 %.not, label %._crit_edge47, label %.lr.ph46, !llvm.loop !48

._crit_edge47:                                    ; preds = %.lr.ph46, %._crit_edge.2
  %.026.lcssa = phi i32 [ 0, %._crit_edge.2 ], [ %i.cs, %.lr.ph46 ]
  %i.cu = shl nuw i32 %i.co, 3
  %i.cv = add i32 %.026.lcssa, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.cv
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL8sendintsP10DataBufferiiPjS1_(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr %3, align 4, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.052 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = and i32 %.052, 255
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.c, ptr %i.d, align 4, !tbaa !14
  %i.e = lshr i32 %.052, 8                        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader98.preheader, label %bb.b, !llvm.loop !49

.preheader98.preheader:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 7 uses
  %.not67 = icmp ult i32 %i.g, %i.i
  br i1 %.not67, label %.lr.ph.preheader, label %bb.c

.lr.ph.preheader:                                 ; preds = %.preheader98.preheader
  %xtraiter = and i64 %indvars.iv.next, 3         ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv, 3
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv.next, 9223372036854775804
  br label %.lr.ph

bb.c:                                             ; preds = %._crit_edge, %.preheader98.preheader
  %.lcssa136 = phi i32 [ %i.g, %.preheader98.preheader ], [ %i.ax, %._crit_edge ]
  %.lcssa134 = phi i32 [ %i.i, %.preheader98.preheader ], [ %i.az, %._crit_edge ]
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.10, i32 noundef %.lcssa136, i32 noundef %.lcssa134) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

.preheader96.unr-lcssa:                           ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader96, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader96.unr-lcssa, %.lr.ph.preheader
  %indvars.iv140.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next141.3, %.preheader96.unr-lcssa ]
  %.153112.epil.init = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.as, %.preheader96.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv140.epil = phi i64 [ %indvars.iv.next141.epil, %.lr.ph.epil ], [ %indvars.iv140.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.153112.epil = phi i32 [ %i.r, %.lr.ph.epil ], [ %.153112.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.epil ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = mul i32 %i.n, %i.i
  %i.p = add i32 %i.o, %.153112.epil              ; 2 uses
  %i.q = and i32 %i.p, 255
  store i32 %i.q, ptr %i.m, align 4, !tbaa !14
  %i.r = lshr i32 %i.p, 8                         ; 2 uses
  %indvars.iv.next141.epil = add nuw nsw i64 %indvars.iv140.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader96, label %.lr.ph.epil, !llvm.loop !50

.preheader96:                                     ; preds = %.lr.ph.epil, %.preheader96.unr-lcssa
  %.lcssa14 = phi i32 [ %i.as, %.preheader96.unr-lcssa ], [ %i.r, %.lr.ph.epil ] ; 2 uses
  %.not68114 = icmp eq i32 %.lcssa14, 0
  br i1 %.not68114, label %._crit_edge, label %.lr.ph117.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv140 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next141.3, %.lr.ph ] ; 5 uses
  %.153112 = phi i32 [ %i.g, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140 ; 2 uses
  %i.t = load i32, ptr %i.s, align 16, !tbaa !14
  %i.u = mul i32 %i.t, %i.i
  %i.v = add i32 %i.u, %.153112                   ; 2 uses
  %i.w = and i32 %i.v, 255
  store i32 %i.w, ptr %i.s, align 16, !tbaa !14
  %i.x = lshr i32 %i.v, 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = mul i32 %i.aa, %i.i
  %i.ac = add i32 %i.ab, %i.x                     ; 2 uses
  %i.ad = and i32 %i.ac, 255
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !14
  %i.ae = lshr i32 %i.ac, 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !14
  %i.ai = mul i32 %i.ah, %i.i
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = and i32 %i.aj, 255
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !14
  %i.al = lshr i32 %i.aj, 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = mul i32 %i.ao, %i.i
  %i.aq = add i32 %i.ap, %i.al                    ; 2 uses
  %i.ar = and i32 %i.aq, 255
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !14
  %i.as = lshr i32 %i.aq, 8                       ; 3 uses
  %indvars.iv.next141.3 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader96.unr-lcssa, label %.lr.ph, !llvm.loop !51

.lr.ph117.a:                                      ; preds = %.preheader96, %.lr.ph117.a
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.a, %.lr.ph117.a ], [ %indvars.iv.next, %.preheader96 ] ; 2 uses
  %.254116 = phi i32 [ %i.av, %.lr.ph117.a ], [ %.lcssa14, %.preheader96 ] ; 2 uses
  %i.at = and i32 %.254116, 255
  %indvars.iv.next144.a = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv143
  store i32 %i.at, ptr %i.au, align 4, !tbaa !14
  %i.av = lshr i32 %.254116, 8                    ; 2 uses
  %.not68.a = icmp eq i32 %i.av, 0
  br i1 %.not68.a, label %._crit_edge, label %.lr.ph117.a, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph117.a, %.preheader96
  %.156.lcssa.in = phi i64 [ %indvars.iv.next, %.preheader96 ], [ %indvars.iv.next144.a, %.lr.ph117.a ] ; 4 uses
  %.156.lcssa = trunc i64 %.156.lcssa.in to i32   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14 ; 7 uses
  %.not67.1 = icmp ult i32 %i.ax, %i.az
  br i1 %.not67.1, label %.preheader97.1, label %bb.c

.preheader97.1:                                   ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %.156.lcssa, 0
  br i1 %i.ba, label %.lr.ph.preheader.1, label %.preheader96.1

.lr.ph.preheader.1:                               ; preds = %.preheader97.1
  %xtraiter21 = and i64 %.156.lcssa.in, 3         ; 3 uses
  %i.bb = icmp ult i64 %.156.lcssa.in, 4
  br i1 %i.bb, label %.lr.ph.1.epil.preheader, label %.lr.ph.preheader.1.new

.lr.ph.preheader.1.new:                           ; preds = %.lr.ph.preheader.1
  %unroll_iter26 = and i64 %.156.lcssa.in, -2147483652
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1.new
  %indvars.iv140.1 = phi i64 [ 0, %.lr.ph.preheader.1.new ], [ %indvars.iv.next141.1.3, %.lr.ph.1 ] ; 5 uses
  %.153112.1 = phi i32 [ %i.ax, %.lr.ph.preheader.1.new ], [ %i.cc, %.lr.ph.1 ]
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.1.new ], [ %niter27.next.3, %.lr.ph.1 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.1 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !14
  %i.be = mul i32 %i.bd, %i.az
  %i.bf = add i32 %i.be, %.153112.1               ; 2 uses
  %i.bg = and i32 %i.bf, 255
  store i32 %i.bg, ptr %i.bc, align 16, !tbaa !14
  %i.bh = lshr i32 %i.bf, 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = mul i32 %i.bk, %i.az
  %i.bm = add i32 %i.bl, %i.bh                    ; 2 uses
  %i.bn = and i32 %i.bm, 255
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  %i.bo = lshr i32 %i.bm, 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %i.bs = mul i32 %i.br, %i.az
  %i.bt = add i32 %i.bs, %i.bo                    ; 2 uses
  %i.bu = and i32 %i.bt, 255
  store i32 %i.bu, ptr %i.bq, align 8, !tbaa !14
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = mul i32 %i.by, %i.az
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = and i32 %i.ca, 255
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !14
  %i.cc = lshr i32 %i.ca, 8                       ; 3 uses
  %indvars.iv.next141.1.3 = add nuw nsw i64 %indvars.iv140.1, 4 ; 2 uses
  %niter27.next.3 = add nuw nsw i64 %niter27, 4   ; 2 uses
  %niter27.ncmp.3 = icmp eq i64 %niter27.next.3, %unroll_iter26
  br i1 %niter27.ncmp.3, label %.preheader96.1.loopexit.unr-lcssa, label %.lr.ph.1, !llvm.loop !51

.preheader96.1.loopexit.unr-lcssa:                ; preds = %.lr.ph.1
  %lcmp.mod23.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod23.not, label %.preheader96.1, label %.lr.ph.1.epil.preheader

.lr.ph.1.epil.preheader:                          ; preds = %.preheader96.1.loopexit.unr-lcssa, %.lr.ph.preheader.1
  %indvars.iv140.1.epil.init = phi i64 [ 0, %.lr.ph.preheader.1 ], [ %indvars.iv.next141.1.3, %.preheader96.1.loopexit.unr-lcssa ]
  %.153112.1.epil.init = phi i32 [ %i.ax, %.lr.ph.preheader.1 ], [ %i.cc, %.preheader96.1.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter21, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.1.epil

.lr.ph.1.epil:                                    ; preds = %.lr.ph.1.epil, %.lr.ph.1.epil.preheader
  %indvars.iv140.1.epil = phi i64 [ %indvars.iv140.1.epil.init, %.lr.ph.1.epil.preheader ], [ %indvars.iv.next141.1.epil, %.lr.ph.1.epil ] ; 2 uses
  %.153112.1.epil = phi i32 [ %.153112.1.epil.init, %.lr.ph.1.epil.preheader ], [ %i.ci, %.lr.ph.1.epil ]
  %epil.iter22 = phi i64 [ 0, %.lr.ph.1.epil.preheader ], [ %epil.iter22.next, %.lr.ph.1.epil ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.1.epil ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %i.cf = mul i32 %i.ce, %i.az
  %i.cg = add i32 %i.cf, %.153112.1.epil          ; 2 uses
  %i.ch = and i32 %i.cg, 255
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !14
  %i.ci = lshr i32 %i.cg, 8                       ; 2 uses
  %indvars.iv.next141.1.epil = add nuw nsw i64 %indvars.iv140.1.epil, 1
  %epil.iter22.next = add i64 %epil.iter22, 1     ; 2 uses
  %epil.iter22.cmp.not = icmp eq i64 %epil.iter22.next, %xtraiter21
  br i1 %epil.iter22.cmp.not, label %.preheader96.1, label %.lr.ph.1.epil, !llvm.loop !53

.preheader96.1:                                   ; preds = %.preheader96.1.loopexit.unr-lcssa, %.lr.ph.1.epil, %.preheader97.1
  %.055.lcssa.1 = phi i32 [ 0, %.preheader97.1 ], [ %.156.lcssa, %.lr.ph.1.epil ], [ %.156.lcssa, %.preheader96.1.loopexit.unr-lcssa ] ; 2 uses
  %.153.lcssa.1 = phi i32 [ %i.ax, %.preheader97.1 ], [ %i.cc, %.preheader96.1.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph.1.epil ] ; 2 uses
  %.not68114.1 = icmp eq i32 %.153.lcssa.1, 0
  br i1 %.not68114.1, label %._crit_edge.1, label %.lr.ph117.preheader.1

.lr.ph117.preheader.1:                            ; preds = %.preheader96.1
  %i.cj = zext nneg i32 %.055.lcssa.1 to i64
  br label %.lr.ph117.1

.lr.ph117.1:                                      ; preds = %.lr.ph117.1, %.lr.ph117.preheader.1
  %indvars.iv143.1 = phi i64 [ %i.cj, %.lr.ph117.preheader.1 ], [ %indvars.iv.next144.1, %.lr.ph117.1 ] ; 2 uses
  %.254116.1 = phi i32 [ %.153.lcssa.1, %.lr.ph117.preheader.1 ], [ %i.cm, %.lr.ph117.1 ] ; 2 uses
  %i.ck = and i32 %.254116.1, 255
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143.1, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv143.1
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !14
  %i.cm = lshr i32 %.254116.1, 8                  ; 2 uses
  %.not68.1 = icmp eq i32 %i.cm, 0
  br i1 %.not68.1, label %._crit_edge.loopexit.1, label %.lr.ph117.1, !llvm.loop !52

._crit_edge.loopexit.1:                           ; preds = %.lr.ph117.1
  %i.cn = trunc nuw i64 %indvars.iv.next144.1 to i32
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %.preheader96.1
  %.156.lcssa.1 = phi i32 [ %.055.lcssa.1, %.preheader96.1 ], [ %i.cn, %._crit_edge.loopexit.1 ] ; 7 uses
  %i.co = shl nsw i32 %.156.lcssa.1, 3            ; 2 uses
  %.not66 = icmp slt i32 %1, %i.co
  br i1 %.not66, label %.preheader, label %.preheader95

.preheader95:                                     ; preds = %._crit_edge.1
  %i.cp = icmp sgt i32 %.156.lcssa.1, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  br i1 %i.cp, label %.lr.ph122, label %.preheader95.._crit_edge123_crit_edge

.preheader95.._crit_edge123_crit_edge:            ; preds = %.preheader95
  %.pre163 = load i32, ptr %i.cq, align 8, !tbaa !21
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre165 = load i32, ptr %.phi.trans.insert164, align 4, !tbaa !22
  br label %._crit_edge123

.lr.ph122:                                        ; preds = %.preheader95
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %wide.trip.count = zext nneg i32 %.156.lcssa.1 to i64 ; 2 uses
  %.pre159 = load i32, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %.pre161 = load i32, ptr %i.cr, align 4, !tbaa !22 ; 2 uses
  %xtraiter28 = and i64 %wide.trip.count, 1
  %i.ct = icmp eq i32 %.156.lcssa.1, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph122.new

.lr.ph122.new:                                    ; preds = %.lr.ph122
  %unroll_iter36 = and i64 %wide.trip.count, 2147483646
  br label %bb.d

.preheader:                                       ; preds = %._crit_edge.1
  %i.cu = add nsw i32 %.156.lcssa.1, -1           ; 5 uses
  %i.cv = icmp sgt i32 %.156.lcssa.1, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  br i1 %i.cv, label %.lr.ph125, label %.preheader.._crit_edge126_crit_edge

.preheader.._crit_edge126_crit_edge:              ; preds = %.preheader
  %.pre172 = load i32, ptr %i.cw, align 8, !tbaa !21
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre174 = load i32, ptr %.phi.trans.insert173, align 4, !tbaa !22
  br label %._crit_edge126

.lr.ph125:                                        ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %wide.trip.count157 = zext i32 %i.cu to i64     ; 2 uses
  %.pre167 = load i32, ptr %i.cw, align 8, !tbaa !21 ; 2 uses
  %.pre169 = load i32, ptr %i.cx, align 4, !tbaa !22 ; 2 uses
  %xtraiter39 = and i64 %wide.trip.count157, 1
  %i.cz = icmp eq i32 %i.cu, 1
  br i1 %i.cz, label %.epil.preheader38, label %.lr.ph125.new

.lr.ph125.new:                                    ; preds = %.lr.ph125
  %unroll_iter49 = and i64 %wide.trip.count157, 4294967294
  br label %bb.l

bb.d:                                             ; preds = %_ZL8sendbitsP10DataBufferii.exit.1, %.lr.ph122.new
  %i.da = phi i32 [ %.pre161, %.lr.ph122.new ], [ %i.en, %_ZL8sendbitsP10DataBufferii.exit.1 ]
  %i.db = phi i32 [ %.pre159, %.lr.ph122.new ], [ %i.eo, %_ZL8sendbitsP10DataBufferii.exit.1 ] ; 5 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph122.new ], [ %indvars.iv.next151.1, %_ZL8sendbitsP10DataBufferii.exit.1 ] ; 3 uses
  %niter37 = phi i64 [ 0, %.lr.ph122.new ], [ %niter37.next.1, %_ZL8sendbitsP10DataBufferii.exit.1 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv150
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !14 ; 2 uses
  %i.de = shl i32 %i.da, 8
  %i.df = or i32 %i.dd, %i.de                     ; 3 uses
  %i.dg = lshr i32 %i.df, %i.db
  %i.dh = trunc i32 %i.dg to i8
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.dj = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %0, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !24
  store i32 %i.db, ptr %i.cq, align 8, !tbaa !21
  store i32 %i.df, ptr %i.cr, align 4, !tbaa !22
  %i.dm = icmp sgt i32 %i.db, 0
  br i1 %i.dm, label %bb.e, label %_ZL8sendbitsP10DataBufferii.exit

bb.e:                                             ; preds = %bb.d
  %i.dn = sub nsw i32 8, %i.db
  %i.do = shl i32 %i.dd, %i.dn
  %i.dp = trunc i32 %i.do to i8
  %i.dq = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.dr = load i64, ptr %0, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 %i.dp, ptr %i.ds, align 1, !tbaa !24
  %.pre = load i32, ptr %i.cq, align 8, !tbaa !21
  %.pre160 = load i32, ptr %i.cr, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit

_ZL8sendbitsP10DataBufferii.exit:                 ; preds = %bb.d, %bb.e
  %i.dt = phi i32 [ %i.df, %bb.d ], [ %.pre160, %bb.e ]
  %i.du = phi i32 [ %i.db, %bb.d ], [ %.pre, %bb.e ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv150
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !14 ; 2 uses
  %i.dy = shl i32 %i.dt, 8
  %i.dz = or i32 %i.dx, %i.dy                     ; 3 uses
  %i.ea = lshr i32 %i.dz, %i.du
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.ed = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %0, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  store i8 %i.eb, ptr %i.ef, align 1, !tbaa !24
  store i32 %i.du, ptr %i.cq, align 8, !tbaa !21
  store i32 %i.dz, ptr %i.cr, align 4, !tbaa !22
  %i.eg = icmp sgt i32 %i.du, 0
  br i1 %i.eg, label %bb.f, label %_ZL8sendbitsP10DataBufferii.exit.1

bb.f:                                             ; preds = %_ZL8sendbitsP10DataBufferii.exit
  %i.eh = sub nsw i32 8, %i.du
  %i.ei = shl i32 %i.dx, %i.eh
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.el = load i64, ptr %0, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  store i8 %i.ej, ptr %i.em, align 1, !tbaa !24
  %.pre.1 = load i32, ptr %i.cq, align 8, !tbaa !21
  %.pre160.1 = load i32, ptr %i.cr, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit.1

_ZL8sendbitsP10DataBufferii.exit.1:               ; preds = %bb.f, %_ZL8sendbitsP10DataBufferii.exit
  %i.en = phi i32 [ %i.dz, %_ZL8sendbitsP10DataBufferii.exit ], [ %.pre160.1, %bb.f ] ; 3 uses
  %i.eo = phi i32 [ %i.du, %_ZL8sendbitsP10DataBufferii.exit ], [ %.pre.1, %bb.f ] ; 3 uses
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge123.loopexit.unr-lcssa, label %bb.d, !llvm.loop !54

._crit_edge123.loopexit.unr-lcssa:                ; preds = %_ZL8sendbitsP10DataBufferii.exit.1
  %lcmp.mod32.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod32.not, label %._crit_edge123, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge123.loopexit.unr-lcssa, %.lr.ph122
  %.epil.init = phi i32 [ %.pre161, %.lr.ph122 ], [ %i.en, %._crit_edge123.loopexit.unr-lcssa ]
  %.epil.init31 = phi i32 [ %.pre159, %.lr.ph122 ], [ %i.eo, %._crit_edge123.loopexit.unr-lcssa ] ; 5 uses
  %indvars.iv150.epil.init = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next151.1, %._crit_edge123.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %.156.lcssa.1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv150.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14 ; 2 uses
  %i.er = shl i32 %.epil.init, 8
  %i.es = or i32 %i.eq, %i.er                     ; 3 uses
  %i.et = lshr i32 %i.es, %.epil.init31
  %i.eu = trunc i32 %i.et to i8
  %i.ev = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.ew = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %0, align 8, !tbaa !23
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  store i8 %i.eu, ptr %i.ey, align 1, !tbaa !24
  store i32 %.epil.init31, ptr %i.cq, align 8, !tbaa !21
  store i32 %i.es, ptr %i.cr, align 4, !tbaa !22
  %i.ez = icmp sgt i32 %.epil.init31, 0
  br i1 %i.ez, label %bb.g, label %._crit_edge123

bb.g:                                             ; preds = %.epil.preheader
  %i.fa = sub nsw i32 8, %.epil.init31
  %i.fb = shl i32 %i.eq, %i.fa
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.fe = load i64, ptr %0, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !24
  %.pre.epil = load i32, ptr %i.cq, align 8, !tbaa !21
  %.pre160.epil = load i32, ptr %i.cr, align 4, !tbaa !22
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %.preheader95.._crit_edge123_crit_edge
  %i.fg = phi i32 [ %.pre165, %.preheader95.._crit_edge123_crit_edge ], [ %i.en, %._crit_edge123.loopexit.unr-lcssa ], [ %i.es, %.epil.preheader ], [ %.pre160.epil, %bb.g ] ; 2 uses
  %i.fh = phi i32 [ %.pre163, %.preheader95.._crit_edge123_crit_edge ], [ %i.eo, %._crit_edge123.loopexit.unr-lcssa ], [ %.epil.init31, %.epil.preheader ], [ %.pre.epil, %bb.g ] ; 3 uses
  %i.fi = sub nsw i32 %1, %i.co                   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fl = icmp sgt i32 %i.fi, 7
  br i1 %i.fl, label %.lr.ph.i, label %._crit_edge.i69

.lr.ph.i:                                         ; preds = %._crit_edge123
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.03136.i72 = phi i32 [ %i.fg, %.lr.ph.i ], [ %i.fn, %bb.h ]
  %.03235.i73 = phi i32 [ %i.fi, %.lr.ph.i ], [ %i.fo, %bb.h ] ; 2 uses
  %i.fn = shl i32 %.03136.i72, 8                  ; 3 uses
  %i.fo = add nsw i32 %.03235.i73, -8             ; 2 uses
  %i.fp = lshr i32 %i.fn, %i.fh
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !17
  %i.fs = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %0, align 8, !tbaa !23
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  store i8 %i.fq, ptr %i.fu, align 1, !tbaa !24
  %i.fv = icmp samesign ugt i32 %.03235.i73, 15
  br i1 %i.fv, label %bb.h, label %._crit_edge.i69, !llvm.loop !0

._crit_edge.i69:                                  ; preds = %bb.h, %._crit_edge123
  %.032.lcssa.i = phi i32 [ %i.fi, %._crit_edge123 ], [ %i.fo, %bb.h ] ; 3 uses
  %.031.lcssa.i = phi i32 [ %i.fg, %._crit_edge123 ], [ %i.fn, %bb.h ] ; 2 uses
  %i.fw = icmp sgt i32 %.032.lcssa.i, 0
  br i1 %i.fw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge.i69
  %i.fx = shl i32 %.031.lcssa.i, %.032.lcssa.i    ; 3 uses
  %i.fy = add nsw i32 %.032.lcssa.i, %i.fh        ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 7
  br i1 %i.fz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ga = add nsw i32 %i.fy, -8                   ; 2 uses
  %i.gb = lshr i32 %i.fx, %i.ga
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gf = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %0, align 8, !tbaa !23
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  store i8 %i.gc, ptr %i.gh, align 1, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i69
  %.1.i70 = phi i32 [ %i.fx, %bb.j ], [ %i.fx, %bb.i ], [ %.031.lcssa.i, %._crit_edge.i69 ] ; 2 uses
  %.0.i71 = phi i32 [ %i.ga, %bb.j ], [ %i.fy, %bb.i ], [ %i.fh, %._crit_edge.i69 ] ; 3 uses
  store i32 %.0.i71, ptr %i.fj, align 8, !tbaa !21
  store i32 %.1.i70, ptr %i.fk, align 4, !tbaa !22
  %i.gi = icmp sgt i32 %.0.i71, 0
  br i1 %i.gi, label %_ZL8sendbitsP10DataBufferii.exit74.sink.split, label %_ZL8sendbitsP10DataBufferii.exit74

bb.l:                                             ; preds = %_ZL8sendbitsP10DataBufferii.exit83.1, %.lr.ph125.new
  %i.gj = phi i32 [ %.pre169, %.lr.ph125.new ], [ %i.hw, %_ZL8sendbitsP10DataBufferii.exit83.1 ]
  %i.gk = phi i32 [ %.pre167, %.lr.ph125.new ], [ %i.hx, %_ZL8sendbitsP10DataBufferii.exit83.1 ] ; 5 uses
  %indvars.iv154 = phi i64 [ 0, %.lr.ph125.new ], [ %indvars.iv.next155.1, %_ZL8sendbitsP10DataBufferii.exit83.1 ] ; 3 uses
  %niter50 = phi i64 [ 0, %.lr.ph125.new ], [ %niter50.next.1, %_ZL8sendbitsP10DataBufferii.exit83.1 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv154
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !14 ; 2 uses
  %i.gn = shl i32 %i.gj, 8
  %i.go = or i32 %i.gm, %i.gn                     ; 3 uses
  %i.gp = lshr i32 %i.go, %i.gk
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.gs = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %0, align 8, !tbaa !23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  store i8 %i.gq, ptr %i.gu, align 1, !tbaa !24
  store i32 %i.gk, ptr %i.cw, align 8, !tbaa !21
  store i32 %i.go, ptr %i.cx, align 4, !tbaa !22
  %i.gv = icmp sgt i32 %i.gk, 0
  br i1 %i.gv, label %bb.m, label %_ZL8sendbitsP10DataBufferii.exit83

bb.m:                                             ; preds = %bb.l
  %i.gw = sub nsw i32 8, %i.gk
  %i.gx = shl i32 %i.gm, %i.gw
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.ha = load i64, ptr %0, align 8, !tbaa !23
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  store i8 %i.gy, ptr %i.hb, align 1, !tbaa !24
  %.pre166 = load i32, ptr %i.cw, align 8, !tbaa !21
  %.pre168 = load i32, ptr %i.cx, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit83

_ZL8sendbitsP10DataBufferii.exit83:               ; preds = %bb.l, %bb.m
  %i.hc = phi i32 [ %i.go, %bb.l ], [ %.pre168, %bb.m ]
  %i.hd = phi i32 [ %i.gk, %bb.l ], [ %.pre166, %bb.m ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv154
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !14 ; 2 uses
  %i.hh = shl i32 %i.hc, 8
  %i.hi = or i32 %i.hg, %i.hh                     ; 3 uses
  %i.hj = lshr i32 %i.hi, %i.hd
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.hm = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.hn = add i64 %i.hm, 1
  store i64 %i.hn, ptr %0, align 8, !tbaa !23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  store i8 %i.hk, ptr %i.ho, align 1, !tbaa !24
  store i32 %i.hd, ptr %i.cw, align 8, !tbaa !21
  store i32 %i.hi, ptr %i.cx, align 4, !tbaa !22
  %i.hp = icmp sgt i32 %i.hd, 0
  br i1 %i.hp, label %bb.n, label %_ZL8sendbitsP10DataBufferii.exit83.1

bb.n:                                             ; preds = %_ZL8sendbitsP10DataBufferii.exit83
  %i.hq = sub nsw i32 8, %i.hd
  %i.hr = shl i32 %i.hg, %i.hq
  %i.hs = trunc i32 %i.hr to i8
  %i.ht = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.hu = load i64, ptr %0, align 8, !tbaa !23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  store i8 %i.hs, ptr %i.hv, align 1, !tbaa !24
  %.pre166.1 = load i32, ptr %i.cw, align 8, !tbaa !21
  %.pre168.1 = load i32, ptr %i.cx, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit83.1

_ZL8sendbitsP10DataBufferii.exit83.1:             ; preds = %bb.n, %_ZL8sendbitsP10DataBufferii.exit83
  %i.hw = phi i32 [ %i.hi, %_ZL8sendbitsP10DataBufferii.exit83 ], [ %.pre168.1, %bb.n ] ; 3 uses
  %i.hx = phi i32 [ %i.hd, %_ZL8sendbitsP10DataBufferii.exit83 ], [ %.pre166.1, %bb.n ] ; 3 uses
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter50.next.1 = add i64 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %._crit_edge126.loopexit.unr-lcssa, label %bb.l, !llvm.loop !55

._crit_edge126.loopexit.unr-lcssa:                ; preds = %_ZL8sendbitsP10DataBufferii.exit83.1
  %lcmp.mod45.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod45.not, label %._crit_edge126.loopexit, label %.epil.preheader38

.epil.preheader38:                                ; preds = %._crit_edge126.loopexit.unr-lcssa, %.lr.ph125
  %.epil.init42 = phi i32 [ %.pre169, %.lr.ph125 ], [ %i.hw, %._crit_edge126.loopexit.unr-lcssa ]
  %.epil.init44 = phi i32 [ %.pre167, %.lr.ph125 ], [ %i.hx, %._crit_edge126.loopexit.unr-lcssa ] ; 5 uses
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next155.1, %._crit_edge126.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv154.epil.init
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !14 ; 2 uses
  %i.ia = shl i32 %.epil.init42, 8
  %i.ib = or i32 %i.hz, %i.ia                     ; 3 uses
  %i.ic = lshr i32 %i.ib, %.epil.init44
  %i.id = trunc i32 %i.ic to i8
  %i.ie = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.if = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %0, align 8, !tbaa !23
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  store i8 %i.id, ptr %i.ih, align 1, !tbaa !24
  store i32 %.epil.init44, ptr %i.cw, align 8, !tbaa !21
  store i32 %i.ib, ptr %i.cx, align 4, !tbaa !22
  %i.ii = icmp sgt i32 %.epil.init44, 0
  br i1 %i.ii, label %bb.o, label %._crit_edge126.loopexit

bb.o:                                             ; preds = %.epil.preheader38
  %i.ij = sub nsw i32 8, %.epil.init44
  %i.ik = shl i32 %i.hz, %i.ij
  %i.il = trunc i32 %i.ik to i8
  %i.im = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.in = load i64, ptr %0, align 8, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.in
  store i8 %i.il, ptr %i.io, align 1, !tbaa !24
  %.pre166.epil = load i32, ptr %i.cw, align 8, !tbaa !21
  %.pre168.epil = load i32, ptr %i.cx, align 4, !tbaa !22
  br label %._crit_edge126.loopexit

._crit_edge126.loopexit:                          ; preds = %.epil.preheader38, %bb.o, %._crit_edge126.loopexit.unr-lcssa
  %.lcssa8 = phi i32 [ %i.hw, %._crit_edge126.loopexit.unr-lcssa ], [ %i.ib, %.epil.preheader38 ], [ %.pre168.epil, %bb.o ]
  %.lcssa = phi i32 [ %i.hx, %._crit_edge126.loopexit.unr-lcssa ], [ %.epil.init44, %.epil.preheader38 ], [ %.pre166.epil, %bb.o ]
  %i.ip = zext nneg i32 %i.cu to i64
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.preheader.._crit_edge126_crit_edge, %._crit_edge126.loopexit
  %i.iq = phi i32 [ %.pre174, %.preheader.._crit_edge126_crit_edge ], [ %.lcssa8, %._crit_edge126.loopexit ] ; 2 uses
  %i.ir = phi i32 [ %.pre172, %.preheader.._crit_edge126_crit_edge ], [ %.lcssa, %._crit_edge126.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ 0, %.preheader.._crit_edge126_crit_edge ], [ %i.ip, %._crit_edge126.loopexit ]
  %i.is = shl nsw i32 %i.cu, 3
  %i.it = sub nsw i32 %1, %i.is                   ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.iw = icmp sgt i32 %i.it, 0
  br i1 %i.iw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %._crit_edge126
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.2.lcssa
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !14
  %i.iz = shl i32 %i.iq, %i.it
  %i.ja = or i32 %i.iz, %i.iy                     ; 3 uses
  %i.jb = add nsw i32 %i.it, %i.ir                ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 7
  br i1 %i.jc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jd = add nsw i32 %i.jb, -8                   ; 2 uses
  %i.je = lshr i32 %i.ja, %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !17
  %i.ji = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.jj = add i64 %i.ji, 1
  store i64 %i.jj, ptr %0, align 8, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  store i8 %i.jf, ptr %i.jk, align 1, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge126
  %.1.i87 = phi i32 [ %i.ja, %bb.q ], [ %i.ja, %bb.p ], [ %i.iq, %._crit_edge126 ] ; 2 uses
  %.0.i88 = phi i32 [ %i.jd, %bb.q ], [ %i.jb, %bb.p ], [ %i.ir, %._crit_edge126 ] ; 3 uses
  store i32 %.0.i88, ptr %i.iu, align 8, !tbaa !21
  store i32 %.1.i87, ptr %i.iv, align 4, !tbaa !22
  %i.jl = icmp sgt i32 %.0.i88, 0
  br i1 %i.jl, label %_ZL8sendbitsP10DataBufferii.exit74.sink.split, label %_ZL8sendbitsP10DataBufferii.exit74

_ZL8sendbitsP10DataBufferii.exit74.sink.split:    ; preds = %bb.r, %bb.k
  %.0.i88.sink = phi i32 [ %.0.i71, %bb.k ], [ %.0.i88, %bb.r ]
  %.1.i87.sink = phi i32 [ %.1.i70, %bb.k ], [ %.1.i87, %bb.r ]
  %i.jm = sub nsw i32 8, %.0.i88.sink
  %i.jn = shl i32 %.1.i87.sink, %i.jm
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !17
  %i.jr = load i64, ptr %0, align 8, !tbaa !23
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr
  store i8 %i.jo, ptr %i.js, align 1, !tbaa !24
  br label %_ZL8sendbitsP10DataBufferii.exit74

_ZL8sendbitsP10DataBufferii.exit74:               ; preds = %_ZL8sendbitsP10DataBufferii.exit74.sink.split, %bb.r, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef i32 @_Z9xdr_int64P3XDRPl(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z10xdr_opaqueP3XDRPcj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZL11receivebitsP10DataBufferi(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 3 uses
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %.promoted = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.h = add nsw i32 %1, -8                       ; 2 uses
  %i.i = lshr i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %xtraiter = and i32 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.h, 24
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.j, 1073741820
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.l = phi i64 [ %.promoted, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 5 uses
  %.041 = phi i32 [ %i.d, %.lr.ph.new ], [ %i.av, %bb.b ]
  %.03340 = phi i32 [ 0, %.lr.ph.new ], [ %i.az, %bb.b ]
  %.03539 = phi i32 [ %1, %.lr.ph.new ], [ %i.ax, %bb.b ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.m = shl i32 %.041, 8
  %i.n = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.n, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q               ; 2 uses
  %i.s = lshr i32 %i.r, %i.b
  %i.t = add nsw i32 %.03539, -8
  %i.u = shl i32 %i.s, %i.t
  %i.v = or i32 %i.u, %.03340
  %i.w = shl i32 %i.r, 8
  %i.x = add i64 %i.l, 2                          ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa             ; 2 uses
  %i.ac = lshr i32 %i.ab, %i.b
  %i.ad = add nsw i32 %.03539, -16
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %i.v
  %i.ag = shl i32 %i.ab, 8
  %i.ah = add i64 %i.l, 3                         ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.x
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak            ; 2 uses
  %i.am = lshr i32 %i.al, %i.b
  %i.an = add nsw i32 %.03539, -24
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = shl i32 %i.al, 8
  %i.ar = add i64 %i.l, 4                         ; 3 uses
  store i64 %i.ar, ptr %0, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.aq, %i.au            ; 4 uses
  %i.aw = lshr i32 %i.av, %i.b
  %i.ax = add nsw i32 %.03539, -32                ; 4 uses
  %i.ay = shl i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, %i.ap                     ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.promoted, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.041.epil.init = phi i32 [ %i.d, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.03340.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.03539.epil.init = phi i32 [ %1, %.lr.ph ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.ba = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.bc, %bb.c ] ; 2 uses
  %.041.epil = phi i32 [ %.041.epil.init, %.epil.preheader ], [ %i.bg, %bb.c ]
  %.03340.epil = phi i32 [ %.03340.epil.init, %.epil.preheader ], [ %i.bk, %bb.c ]
  %.03539.epil = phi i32 [ %.03539.epil.init, %.epil.preheader ], [ %i.bi, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bb = shl i32 %.041.epil, 8
  %i.bc = add i64 %i.ba, 1                        ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bb, %i.bf            ; 3 uses
  %i.bh = lshr i32 %i.bg, %i.b
  %i.bi = add nsw i32 %.03539.epil, -8            ; 3 uses
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = or i32 %i.bj, %.03340.epil              ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.035.lcssa = phi i32 [ %1, %bb.a ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %bb.c ] ; 4 uses
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.bk, %bb.c ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ], [ %i.bg, %bb.c ] ; 3 uses
  %i.bl = icmp sgt i32 %.035.lcssa, 0
  br i1 %i.bl, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.bm = icmp slt i32 %i.b, %.035.lcssa
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = add nsw i32 %i.b, 8
  %i.bo = shl i32 %.0.lcssa, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.br = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %0, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bo, %i.bv
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.031 = phi i32 [ %i.bn, %bb.e ], [ %i.b, %bb.d ]
  %.1 = phi i32 [ %i.bw, %bb.e ], [ %.0.lcssa, %bb.d ] ; 2 uses
  %i.bx = sub nsw i32 %.031, %.035.lcssa          ; 2 uses
  %i.by = lshr i32 %.1, %i.bx
  %notmask38 = shl nsw i32 -1, %.035.lcssa
  %i.bz = xor i32 %notmask38, -1
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, %.033.lcssa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.134 = phi i32 [ %i.cb, %bb.f ], [ %.033.lcssa, %._crit_edge ]
  %.132 = phi i32 [ %i.bx, %bb.f ], [ %i.b, %._crit_edge ]
  %.2 = phi i32 [ %.1, %bb.f ], [ %.0.lcssa, %._crit_edge ]
  %notmask = shl nsw i32 -1, %1
  %i.cc = xor i32 %notmask, -1
  %i.cd = and i32 %.134, %i.cc
  store i32 %.132, ptr %i.a, align 8, !tbaa !21
  store i32 %.2, ptr %i.c, align 4, !tbaa !22
  ret i32 %i.cd
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL11receiveintsP10DataBufferiiPKjPi(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %1, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !21 ; 6 uses
  %.promoted64 = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %.promoted66 = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.g = add nsw i32 %1, -9                       ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %_ZL11receivebitsP10DataBufferi.exit.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.i, 1073741822
  br label %_ZL11receivebitsP10DataBufferi.exit

_ZL11receivebitsP10DataBufferi.exit:              ; preds = %_ZL11receivebitsP10DataBufferi.exit, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZL11receivebitsP10DataBufferi.exit ] ; 3 uses
  %i.k = phi i64 [ %.promoted66, %.lr.ph.new ], [ %i.u, %_ZL11receivebitsP10DataBufferi.exit ] ; 3 uses
  %.2.i65 = phi i32 [ %.promoted64, %.lr.ph.new ], [ %i.z, %_ZL11receivebitsP10DataBufferi.exit ]
  %.03360 = phi i32 [ %1, %.lr.ph.new ], [ %i.ae, %_ZL11receivebitsP10DataBufferi.exit ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZL11receivebitsP10DataBufferi.exit ]
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %0, align 8, !tbaa !23
  %i.m = shl i32 %.2.i65, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = lshr i32 %i.q, %.promoted
  %i.s = and i32 %i.r, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.q, ptr %i.d, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 8, !tbaa !14
  %i.u = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.u, ptr %0, align 8, !tbaa !23
  %i.v = shl i32 %i.q, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y               ; 4 uses
  %i.aa = lshr i32 %i.z, %.promoted
  %i.ab = and i32 %i.aa, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.z, ptr %i.d, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !14
  %i.ae = add nsw i32 %.03360, -16                ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.thread.unr-lcssa, label %_ZL11receivebitsP10DataBufferi.exit, !llvm.loop !58

._crit_edge.thread.unr-lcssa:                     ; preds = %_ZL11receivebitsP10DataBufferi.exit
  %i.af = and i32 %i.g, 8
  %lcmp.mod.not.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not.not, label %_ZL11receivebitsP10DataBufferi.exit.epil.preheader, label %._crit_edge.thread

_ZL11receivebitsP10DataBufferi.exit.epil.preheader: ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.thread.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ %.promoted66, %.lr.ph ], [ %i.u, %._crit_edge.thread.unr-lcssa ] ; 2 uses
  %.2.i65.epil.init = phi i32 [ %.promoted64, %.lr.ph ], [ %i.z, %._crit_edge.thread.unr-lcssa ]
  %.03360.epil.init = phi i32 [ %1, %.lr.ph ], [ %i.ae, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.ag = add i64 %.epil.init, 1
  store i64 %i.ag, ptr %0, align 8, !tbaa !23
  %i.ah = shl i32 %.2.i65.epil.init, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %.epil.init
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 2 uses
  %i.am = lshr i32 %i.al, %.promoted
  %i.an = and i32 %i.am, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.al, ptr %i.d, align 4, !tbaa !22
  %indvars.iv.next.epil = add i64 %indvars.iv.epil.init, 1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !14
  %i.ap = add nsw i32 %.03360.epil.init, -8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.unr-lcssa, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %._crit_edge.thread.unr-lcssa ], [ %indvars.iv.next.epil, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader ]
  %.lcssa4 = phi i32 [ %i.ae, %._crit_edge.thread.unr-lcssa ], [ %i.ap, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader ]
  %i.aq = trunc i64 %indvars.iv.next.lcssa to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %bb.b, label %.split.preheader

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.030.lcssa98 = phi i32 [ %i.aq, %._crit_edge.thread ], [ 0, %._crit_edge ] ; 4 uses
  %.033.lcssa97 = phi i32 [ %.lcssa4, %._crit_edge.thread ], [ %1, %._crit_edge ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !21 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22 ; 3 uses
  %i.aw = icmp samesign ugt i32 %.033.lcssa97, 7
  br i1 %i.aw, label %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge, label %._crit_edge.i34.thread

.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge: ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %.promoted.i41 = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.az = add i64 %.promoted.i41, 1
  store i64 %i.az, ptr %0, align 8, !tbaa !23
  %i.ba = shl i32 %i.av, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.promoted.i41
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd            ; 2 uses
  %i.bf = lshr i32 %i.be, %i.at
  br label %bb.e

._crit_edge.i34.thread:                           ; preds = %bb.b
  %i.bg = icmp slt i32 %i.at, %.033.lcssa97
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i34.thread
  %i.bh = add nsw i32 %i.at, 8
  %i.bi = shl i32 %i.av, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17
  %i.bl = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %0, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bi, %i.bp
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i34.thread
  %.031.i38 = phi i32 [ %i.bh, %bb.c ], [ %i.at, %._crit_edge.i34.thread ]
  %.1.i39 = phi i32 [ %i.bq, %bb.c ], [ %i.av, %._crit_edge.i34.thread ] ; 2 uses
  %i.br = sub nsw i32 %.031.i38, %.033.lcssa97    ; 2 uses
  %i.bs = lshr i32 %.1.i39, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge
  %.sink = phi i32 [ %i.bs, %bb.d ], [ %i.bf, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %.132.i36 = phi i32 [ %i.br, %bb.d ], [ %i.at, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %.2.i37 = phi i32 [ %.1.i39, %bb.d ], [ %i.be, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %notmask38.i40 = shl nsw i32 -1, %.033.lcssa97
  %i.bt = xor i32 %notmask38.i40, -1
  %i.bu = and i32 %.sink, %i.bt
  store i32 %.132.i36, ptr %i.as, align 8, !tbaa !21
  store i32 %.2.i37, ptr %i.au, align 4, !tbaa !22
  %i.bv = zext nneg i32 %.030.lcssa98 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !14
  %i.bx = icmp ult i32 %.030.lcssa98, 2147483647
  br i1 %i.bx, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %._crit_edge, %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !14
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.split75.us, label %.preheader

.split.us.preheader:                              ; preds = %bb.e
  %i.cb = add nuw nsw i32 %.030.lcssa98, 1
  %i.cc = zext nneg i32 %i.cb to i64              ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14 ; 16 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.split75.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.split.us.preheader
  %xtraiter8 = and i64 %i.cc, 3                   ; 3 uses
  %i.cg = icmp ult i32 %.030.lcssa98, 3
  br i1 %i.cg, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter12 = and i64 %i.cc, 2147483644
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv83 = phi i64 [ %i.cc, %.preheader.us.preheader.new ], [ %indvars.iv.next84.3, %.preheader.us ] ; 4 uses
  %.069.us = phi i32 [ 0, %.preheader.us.preheader.new ], [ %.recomposed25, %.preheader.us ]
  %niter13 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter13.next.3, %.preheader.us ]
  %i.ch = shl i32 %.069.us, 8
  %i.ci = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4     ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14
  %i.cl = or i32 %i.ck, %i.ch                     ; 2 uses
  %i.cm = udiv i32 %i.cl, %i.ce                   ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !14
  %i.cn = mul i32 %i.cm, %i.ce                    ; 0 uses
  %.recomposed = urem i32 %i.cl, %i.ce
  %i.co = shl i32 %.recomposed, 8
  %i.cp = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14
  %i.cs = or i32 %i.cr, %i.co                     ; 2 uses
  %i.ct = udiv i32 %i.cs, %i.ce                   ; 2 uses
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !14
  %i.cu = mul i32 %i.ct, %i.ce                    ; 0 uses
  %.recomposed23 = urem i32 %i.cs, %i.ce
  %i.cv = shl i32 %.recomposed23, 8
  %i.cw = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %i.cx = getelementptr i8, ptr %i.cw, i64 -12    ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !14
  %i.cz = or i32 %i.cy, %i.cv                     ; 2 uses
  %i.da = udiv i32 %i.cz, %i.ce                   ; 2 uses
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !14
  %i.db = mul i32 %i.da, %i.ce                    ; 0 uses
  %.recomposed24 = urem i32 %i.cz, %i.ce
  %indvars.iv.next84.3 = add nsw i64 %indvars.iv83, -4 ; 3 uses
  %i.dc = shl i32 %.recomposed24, 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84.3 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = or i32 %i.de, %i.dc                     ; 2 uses
  %i.dg = udiv i32 %i.df, %i.ce                   ; 2 uses
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !14
  %i.dh = mul i32 %i.dg, %i.ce                    ; 0 uses
  %.recomposed25 = urem i32 %i.df, %i.ce          ; 3 uses
  %niter13.next.3 = add i64 %niter13, 4           ; 2 uses
  %niter13.ncmp.3.not = icmp eq i64 %niter13.next.3, %unroll_iter12
  br i1 %niter13.ncmp.3.not, label %._crit_edge71.us.unr-lcssa, label %.preheader.us, !llvm.loop !59

._crit_edge71.us.unr-lcssa:                       ; preds = %.preheader.us
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
  br i1 %lcmp.mod9.not, label %._crit_edge71.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge71.us.unr-lcssa, %.preheader.us.preheader
  %indvars.iv83.epil.init = phi i64 [ %i.cc, %.preheader.us.preheader ], [ %indvars.iv.next84.3, %._crit_edge71.us.unr-lcssa ]
  %.069.us.epil.init = phi i32 [ 0, %.preheader.us.preheader ], [ %.recomposed25, %._crit_edge71.us.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter8, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv83.epil = phi i64 [ %indvars.iv.next84.epil, %.preheader.us.epil ], [ %indvars.iv83.epil.init, %.preheader.us.epil.preheader ]
  %.069.us.epil = phi i32 [ %.recomposed26, %.preheader.us.epil ], [ %.069.us.epil.init, %.preheader.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.epil ], [ 0, %.preheader.us.epil.preheader ]
  %indvars.iv.next84.epil = add nsw i64 %indvars.iv83.epil, -1 ; 2 uses
  %i.di = shl i32 %.069.us.epil, 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84.epil ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %i.dl = or i32 %i.dk, %i.di                     ; 2 uses
  %i.dm = udiv i32 %i.dl, %i.ce                   ; 2 uses
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !14
  %i.dn = mul i32 %i.dm, %i.ce                    ; 0 uses
  %.recomposed26 = urem i32 %i.dl, %i.ce          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter8
  br i1 %epil.iter.cmp.not, label %._crit_edge71.us, label %.preheader.us.epil, !llvm.loop !60

._crit_edge71.us:                                 ; preds = %.preheader.us.epil, %._crit_edge71.us.unr-lcssa
  %.lcssa3 = phi i32 [ %.recomposed25, %._crit_edge71.us.unr-lcssa ], [ %.recomposed26, %.preheader.us.epil ]
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.lcssa3, ptr %i.do, align 4, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !14 ; 4 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.split75.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %._crit_edge71.us, %.preheader.us.1
  %indvars.iv83.1 = phi i64 [ %indvars.iv.next84.1, %.preheader.us.1 ], [ %i.cc, %._crit_edge71.us ] ; 2 uses
  %.069.us.1 = phi i32 [ %.recomposed27, %.preheader.us.1 ], [ 0, %._crit_edge71.us ]
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83.1, -1 ; 2 uses
  %i.ds = shl i32 %.069.us.1, 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84.1 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = or i32 %i.du, %i.ds                     ; 2 uses
  %i.dw = udiv i32 %i.dv, %i.dq                   ; 2 uses
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !14
  %i.dx = mul i32 %i.dw, %i.dq                    ; 0 uses
  %.recomposed27 = urem i32 %i.dv, %i.dq          ; 2 uses
  %i.dy = icmp samesign ugt i64 %indvars.iv83.1, 1
  br i1 %i.dy, label %.preheader.us.1, label %.split77.us, !llvm.loop !59

.preheader:                                       ; preds = %.split.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.dz, align 4, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %.split75.us, label %.split77.us

.split75.us:                                      ; preds = %.split.preheader, %.preheader, %.split.us.preheader, %._crit_edge71.us
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 48, i64 1, ptr %i.ed) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

.split77.us:                                      ; preds = %.preheader.us.1, %.preheader
  %.sink104 = phi i32 [ 0, %.preheader ], [ %.recomposed27, %.preheader.us.1 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sink104, ptr %i.eh, align 4, !tbaa !14
  %i.ei = load i32, ptr %i.a, align 16, !tbaa !14
  %i.ej = load i32, ptr %i.ee, align 4, !tbaa !14
  %i.ek = shl i32 %i.ej, 8
  %i.el = or i32 %i.ek, %i.ei
  %i.em = load i32, ptr %i.ef, align 8, !tbaa !14
  %i.en = shl i32 %i.em, 16
  %i.eo = or i32 %i.el, %i.en
  %i.ep = load i32, ptr %i.eg, align 4, !tbaa !14
  %i.eq = shl i32 %i.ep, 24
  %i.er = or i32 %i.eo, %i.eq
  store i32 %i.er, ptr %3, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z18xdr_xtc_seek_frameiP8_IO_FILEP3XDRi(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 1
  %i.g = and i64 %i.f, 4611686018427387900        ; 2 uses
  %i.h = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.g, i32 noundef 0)
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.i = and i64 %i.d, 9223372036854775804
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.034 = phi i64 [ %.0..034, %bb.j ], [ 0, %.preheader.preheader ] ; 3 uses
  %.032 = phi i64 [ %.032..0, %bb.j ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.x, %bb.j ], [ %i.g, %.preheader.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.j = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.l = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %2, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.m = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.m, label %.backedge [
    i32 1, label %bb.f
    i32 -1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.j, i32 noundef 0)
  %.not13.i = icmp eq i32 %i.n, 0
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  br i1 %.not13.i, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.j, i32 noundef 0)
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %.backedge, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread

.backedge:                                        ; preds = %bb.g, %bb.e
  br label %bb.e, !llvm.loop !61

_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread: ; preds = %bb.f, %.preheader, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit
  %.not42 = icmp eq i32 %i.o, %0
  br i1 %.not42, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i64 %.034, -17
  %i.s = sub i64 %i.r, %.032
  %i.t = icmp ult i64 %i.s, -33
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = icmp slt i32 %i.o, %0                    ; 2 uses
  %.0..034 = select i1 %i.u, i64 %.0, i64 %.034   ; 2 uses
  %.032..0 = select i1 %i.u, i64 %.032, i64 %.0   ; 2 uses
  %i.v = add nuw nsw i64 %.032..0, %.0..034
  %i.w = lshr i64 %i.v, 1
  %i.x = and i64 %i.w, 9223372036854775804        ; 2 uses
  %i.y = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.x, i32 noundef 0)
  %.not45 = icmp eq i32 %i.y, 0
  br i1 %.not45, label %.preheader, label %.loopexit, !llvm.loop !62

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.z = icmp samesign ult i64 %.0, 17
  %spec.select = select i1 %i.z, i64 %.034, i64 %.0
  %i.aa = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %spec.select, i32 noundef 0)
  %.not43 = icmp eq i32 %i.aa, 0
  br i1 %.not43, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ab = call fastcc noundef i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.ab, i32 noundef 0)
  %.not44 = icmp ne i32 %i.ad, 0
  %. = sext i1 %.not44 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread, %bb.m, %bb.l, %bb.k, %bb.c, %bb.b, %bb.a
  %.036 = phi i32 [ -1, %bb.l ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %., %bb.m ], [ -1, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread ], [ -1, %bb.k ], [ -1, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit ], [ -1, %bb.j ]
  ret i32 %.036
}

declare noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -9223372036854775808, 9223372036854775804) i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.d, label %bb.b [
    i32 1, label %bb.c
    i32 -1, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.f = add nsw i64 %i.e, -4
  %i.g = icmp slt i64 %i.e, 0
  %spec.select = select i1 %i.g, i64 %i.e, i64 %i.f
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 2) i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [10 x float], align 16            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 6 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.v, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not38 = icmp eq i32 %i.e, 0
  br i1 %.not38, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.f)
  %.not38.1 = icmp eq i32 %i.g, 0
  br i1 %.not38.1, label %bb.c, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.h)
  %.not38.2 = icmp eq i32 %i.i, 0
  br i1 %.not38.2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.2
  %i.j = load i32, ptr %i.a, align 4, !tbaa !14
  switch i32 %i.j, label %bb.d [
    i32 2023, label %bb.e
    i32 1995, label %bb.e
  ]

bb.c:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.k = add nuw nsw i64 %i.c, 4
  %i.l = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.k, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.c, 4
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.m, i32 noundef 0)
  %.not37 = icmp ne i32 %i.n, 0
  %. = sext i1 %.not37 to i32
  br label %bb.v

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.o = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.b)
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.q = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.p)
  %.not36.1 = icmp eq i32 %i.q, 0
  br i1 %.not36.1, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.r)
  %.not36.2 = icmp eq i32 %i.s, 0
  br i1 %.not36.2, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.u = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.t)
  %.not36.3 = icmp eq i32 %i.u, 0
  br i1 %.not36.3, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.v)
  %.not36.4 = icmp eq i32 %i.w, 0
  br i1 %.not36.4, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.y = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.x)
  %.not36.5 = icmp eq i32 %i.y, 0
  br i1 %.not36.5, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.z)
  %.not36.6 = icmp eq i32 %i.aa, 0
  br i1 %.not36.6, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ac = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.ab)
  %.not36.7 = icmp eq i32 %i.ac, 0
  br i1 %.not36.7, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ae = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.ad)
  %.not36.8 = icmp eq i32 %i.ae, 0
  br i1 %.not36.8, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ag = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.af)
  %.not36.9 = icmp eq i32 %i.ag, 0
  br i1 %.not36.9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !14
  %i.ai = icmp eq i32 %i.ah, %2
  br i1 %i.ai, label %bb.q, label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.aj = add nuw nsw i64 %i.c, 4
  %i.ak = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.aj, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.al = load float, ptr %i.p, align 4, !tbaa !19
  %i.am = fcmp une float %i.al, 0.000000e+00      ; 2 uses
  %i.an = load float, ptr %i.z, align 8
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  %or.cond5 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not44 = xor i1 %i.am, true
  %i.ap = load float, ptr %i.x, align 4
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  %or.cond8 = select i1 %.not44, i1 %i.aq, i1 false
  %i.ar = load float, ptr %i.af, align 4
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  %or.cond11 = select i1 %or.cond8, i1 %i.as, i1 false
  br i1 %or.cond11, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = add nuw nsw i64 %i.c, 4
  %i.au = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.at, i32 noundef 0)
  %.not35 = icmp eq i32 %i.au, 0
  br i1 %.not35, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.033
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2, 1) i32 @_Z17xdr_xtc_seek_timefP8_IO_FILEP3XDRib(float noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1)
  %i.e = add nsw i64 %i.d, -16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.093 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.f = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %i.g, 9223372036854775804        ; 2 uses
  %i.j = sub nsw i64 %i.i, %.093
  %i.k = sdiv i64 %i.j, 8
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.l, i32 noundef 0)
  %.not103 = icmp eq i32 %i.m, 0
  br i1 %.not103, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.n = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.o = load i8, ptr %i.c, align 1, !tbaa !27, !range !28, !noundef !29
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.ab
  %i.q = phi float [ %i.bi, %bb.ab ], [ %i.n, %.preheader ] ; 8 uses
  %.0114 = phi i32 [ %.1, %bb.ab ], [ 0, %.preheader ] ; 3 uses
  %.088113 = phi i64 [ %.189, %bb.ab ], [ %i.l, %.preheader ] ; 7 uses
  %.090112 = phi i64 [ %.292, %bb.ab ], [ %i.i, %.preheader ] ; 5 uses
  %.194111 = phi i64 [ %.3, %bb.ab ], [ %.093, %.preheader ] ; 6 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = icmp eq i32 %.0114, -1
  br i1 %i.s, label %.loopexit, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.t = fcmp olt float %i.q, 0.000000e+00
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %.0114, 1
  br i1 %i.u, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.1 = phi i32 [ %.0114, %bb.g ], [ 1, %bb.f ], [ -1, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %2, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.y = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.b, ptr noundef %i.a)
  switch i32 %i.y, label %bb.k [
    i32 1, label %bb.l
    i32 -1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.c, align 1, !tbaa !27
  %i.z = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.v, i32 noundef 0)
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.n, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.aa = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.v, i32 noundef 0) ; 0 uses
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread

_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread: ; preds = %bb.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ab = load float, ptr %i.a, align 4, !tbaa !19 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ac = fcmp olt float %i.ab, %0                ; 3 uses
  %i.ad = icmp sgt i32 %.1, -1                    ; 2 uses
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = fcmp ogt float %i.ab, %0
  %i.af = icmp eq i32 %.1, -1
  %or.cond3 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = fsub float %i.ab, %0
  %i.ah = fcmp oge float %i.ag, %i.q
  %or.cond5 = select i1 %i.ah, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = fsub float %0, %i.ab
  %i.aj = fneg float %i.q
  %i.ak = fcmp oge float %i.ai, %i.aj
  %i.al = icmp slt i32 %.1, 0
  %or.cond7 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.am = add i64 %.194111, -17
  %i.an = sub i64 %i.am, %.090112
  %i.ao = icmp ult i64 %i.an, -33
  br i1 %i.ao, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ap = fcmp oge float %i.q, 0.000000e+00
  %i.aq = icmp ne i32 %.1, -1                     ; 2 uses
  %or.cond9 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond9, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.088..194 = select i1 %i.ac, i64 %.088113, i64 %.194111
  %.090..088 = select i1 %i.ac, i64 %.090112, i64 %.088113
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ar = fcmp ugt float %i.q, 0.000000e+00
  %or.cond11.not = select i1 %i.ar, i1 true, i1 %i.aq
  br i1 %or.cond11.not, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = fcmp ult float %i.ab, %0                ; 2 uses
  %.194..088 = select i1 %i.as, i64 %.194111, i64 %.088113
  %.088..090 = select i1 %i.as, i64 %.088113, i64 %.090112
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.295 = phi i64 [ %.088..194, %bb.t ], [ %.194..088, %bb.v ] ; 2 uses
  %.191 = phi i64 [ %.090..088, %bb.t ], [ %.088..090, %bb.v ] ; 2 uses
  %i.at = add nsw i64 %.191, %.295
  %i.au = sdiv i64 %i.at, 8
  %i.av = shl nsw i64 %i.au, 2                    ; 2 uses
  %i.aw = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.av, i32 noundef 0)
  %.not105 = icmp eq i32 %i.aw, 0
  br i1 %.not105, label %bb.ab, label %.loopexit

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.ax = add i64 %.194111, 16
  %i.ay = sub i64 %i.ax, %.090112
  %i.az = icmp ult i64 %i.ay, 33
  br i1 %i.az, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.bb = fcmp une float %i.ba, %i.q
  %i.bc = load i8, ptr %i.c, align 1, !range !28
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond13 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond13, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.be = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.096 = phi float [ %i.be, %bb.z ], [ %i.q, %bb.y ]
  %i.bf = fcmp oge float %i.ab, %0
  %i.bg = fsub float %i.ab, %0
  %i.bh = fcmp olt float %i.bg, %.096
  %or.cond107 = and i1 %i.bf, %i.bh
  br i1 %or.cond107, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.3 = phi i64 [ %.295, %bb.w ], [ %.194111, %bb.aa ]
  %.292 = phi i64 [ %.191, %bb.w ], [ %.090112, %bb.aa ]
  %.189 = phi i64 [ %i.av, %bb.w ], [ %.088113, %bb.aa ]
  %i.bi = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.bj = load i8, ptr %i.c, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.lr.ph, label %.loopexit, !llvm.loop !63

bb.ac:                                            ; preds = %bb.aa, %bb.x
  %i.bl = icmp slt i64 %.088113, 17
  %spec.select = select i1 %i.bl, i64 %.194111, i64 %.088113
  %i.bm = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %spec.select, i32 noundef 0) ; 0 uses
  %i.bn = call fastcc noundef i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.bn, i32 noundef 0)
  %.not104 = icmp ne i32 %i.bp, 0
  %. = sext i1 %.not104 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.f, %bb.h, %bb.u, %bb.w, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread, %.preheader, %bb.ad, %bb.ac, %bb.e, %bb.d, %bb.c
  %.097 = phi i32 [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ %., %bb.ad ], [ -1, %bb.ac ], [ -1, %.preheader ], [ -1, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread ], [ -1, %bb.ab ], [ -2, %bb.f ], [ -1, %bb.u ], [ -2, %bb.h ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i32 %.097
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  %i.f = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.h = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.k = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.b, ptr noundef %i.a)
  switch i32 %i.k, label %bb.e [
    i32 1, label %bb.f
    i32 -1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.l = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.h, i32 noundef 0)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

bb.h:                                             ; preds = %bb.f
  %i.m = load float, ptr %i.a, align 4, !tbaa !19
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

bb.i:                                             ; preds = %bb.e
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i
  %.0.i = phi float [ -1.000000e+00, %bb.i ], [ -1.000000e+00, %bb.g ], [ %i.m, %bb.h ], [ -1.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.o = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit
  %i.q = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.r = fsub float %.0.i, %i.e
  br label %bb.m

bb.m:                                             ; preds = %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit, %bb.b, %bb.a, %bb.l, %bb.k
  %.0 = phi float [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.k ], [ %i.r, %bb.l ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.f
  %i.e = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.e, label %bb.f [
    i32 1, label %bb.b
    i32 -1, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.f = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = load float, ptr %i.b, align 4, !tbaa !19
  br label %.loopexit

bb.e:                                             ; preds = %.preheader
  %i.h = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.preheader
  %i.i = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -8, i32 noundef 1)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi float [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.c ], [ %i.g, %bb.d ], [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z27xdr_xtc_get_last_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 {
bb.a:
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.a = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -12, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  %i.e = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.a, i32 noundef 0)
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b, %bb.a
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.0 = phi float [ %i.d, %bb.d ], [ -1.000000e+00, %bb.c ], [ -1.000000e+00, %.sink.split ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z29xdr_xtc_get_last_frame_numberP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 3 uses
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -12, i32 noundef 2)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.f = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.h
  %i.h = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.h, label %default.unreachable [
    i32 1, label %bb.d
    i32 -1, label %bb.g
    i32 0, label %bb.h
  ]

bb.d:                                             ; preds = %.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.i = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.f, i32 noundef 0)
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4, !tbaa !14
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.g:                                             ; preds = %.preheader.i
  %i.k = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.f, i32 noundef 0) ; 0 uses
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.h:                                             ; preds = %.preheader.i
  %i.l = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -8, i32 noundef 1)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.preheader.i, label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit, !llvm.loop !65

default.unreachable:                              ; preds = %.preheader.i
  unreachable

_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit: ; preds = %bb.h, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.j, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit
  %i.o = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not15 = icmp eq i32 %i.o, 0
  br i1 %.not15, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.b, %bb.a
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit
  %.0 = phi i32 [ %.0.i, %bb.i ], [ -1, %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit ], [ -1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTS10DataBuffer", !15, i64 0, !7, i64 8, !7, i64 12, !11, i64 16}
!17 = !{!16, !11, i64 16}
!18 = !{!"float", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !7, i64 8}
!22 = !{!16, !7, i64 12}
!23 = !{!16, !15, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!"bool", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!11, !11, i64 0}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20, !44}
!39 = distinct !{!39, !20}
!40 = !{!"_ZTS6xdr_op", !6, i64 0}
!41 = !{!"p1 _ZTSN3XDR7xdr_opsE", !10, i64 0}
!42 = !{!"_ZTS3XDR", !40, i64 0, !41, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40}
!43 = !{!42, !40, i64 0}
!44 = !{!"llvm.loop.peeled.count", i32 1}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
end_hunk_1
