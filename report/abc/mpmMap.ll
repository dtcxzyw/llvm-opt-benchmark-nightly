Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmMap?download=true
inline.NumInlined: 277
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Mpm_ManDeriveCuts:bb.a
  %i.aih = getelementptr i8, ptr %i.aig, i64 124
  %.val4.i.i.i = load i32, ptr %i.aih, align 4, !tbaa !78
  %i.aii = icmp eq i32 %.val4.i.i.i, 0
  br i1 %i.aii, label %Mig_ObjSibl.exit.thread.i, label %Mig_ObjSiblId.exit.i.i

Mig_ObjSiblId.exit.i.i:                           ; preds = %.critedge.i
  %i.aij = getelementptr i8, ptr %i.aig, i64 128
  %.val3.i.i.i = load ptr, ptr %i.aij, align 8, !tbaa !17
  %i.aik = zext nneg i32 %i.aia to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i.i, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !12 ; 3 uses
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %Mig_ObjSibl.exit.thread.i, label %Mig_ObjSibl.exit.i

Mig_ObjSibl.exit.i:                               ; preds = %Mig_ObjSiblId.exit.i.i
  %i.aio = getelementptr i8, ptr %i.aig, i64 32
  %.val.i.i31.i = load ptr, ptr %i.aio, align 8, !tbaa !21
  %i.aip = ashr i32 %i.aim, 12
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [8 x i8], ptr %.val.i.i31.i, i64 %i.aiq
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !22 ; 2 uses
  %.not22.i = icmp eq ptr %i.ais, null
  br i1 %.not22.i, label %Mig_ObjSibl.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %Mig_ObjSibl.exit.i
  %i.ait = and i32 %i.aim, 4095
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.ais, i64 %i.aiu
  %.val24.i = load ptr, ptr %i.aby, align 8, !tbaa !17
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 12   ; 3 uses
  %.val25.i = load i32, ptr %i.aiw, align 4
  %i.aix = lshr i32 %.val25.i, 1
  %i.aiy = zext nneg i32 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %i.aiy ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !12
  %i.ajb = add nsw i32 %i.aja, -1                 ; 2 uses
  store i32 %i.ajb, ptr %i.aiz, align 4, !tbaa !12
  %i.ajc = icmp eq i32 %i.ajb, 0
  br i1 %i.ajc, label %bb.bb, label %Mig_ObjSibl.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  %.val.i32.i = load ptr, ptr %i.gd, align 8, !tbaa !17 ; 2 uses
  %.val12.i33.i = load i32, ptr %i.aiw, align 4
  %i.ajd = lshr i32 %.val12.i33.i, 1
  %i.aje = zext nneg i32 %i.ajd to i64            ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.val.i32.i, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !12 ; 2 uses
  %.not16.i34.i = icmp eq i32 %i.ajg, 0
  br i1 %.not16.i34.i, label %Mpm_ObjRecycleCuts.exit48.i, label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %bb.bb, %bb.bc
  %.017.i36.i = phi i32 [ %i.aka, %bb.bc ], [ %i.ajg, %bb.bb ] ; 3 uses
  %.val13.i37.i = load ptr, ptr %i.ge, align 8, !tbaa !59 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.val13.i37.i, i64 24
  %i.aji = getelementptr inbounds nuw i8, ptr %.val13.i37.i, i64 4
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !61
  %i.ajk = and i32 %i.ajj, %.017.i36.i
  %i.ajl = sext i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds [56 x i8], ptr %i.ajh, i64 %i.ajl ; 3 uses
  %i.ajn = load i32, ptr %.val13.i37.i, align 8, !tbaa !62
  %i.ajo = ashr i32 %.017.i36.i, %i.ajn           ; 2 uses
  %i.ajp = load i32, ptr %i.ajm, align 8, !tbaa !64
  %i.ajq = ashr i32 %i.ajo, %i.ajp
  %i.ajr = getelementptr i8, ptr %i.ajm, i64 32
  %.val.i.i.i.i38.i = load ptr, ptr %i.ajr, align 8, !tbaa !21
  %i.ajs = sext i32 %i.ajq to i64
  %i.ajt = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i38.i, i64 %i.ajs
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !22 ; 2 uses
  %.not11.i39.i = icmp eq ptr %i.aju, null
  br i1 %.not11.i39.i, label %.critedge.loopexit.i41.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i35.i
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !65
  %i.ajx = and i32 %i.ajw, %i.ajo
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.aju, i64 %i.ajy
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !66 ; 2 uses
  tail call fastcc void @Mmr_StepRecycle(ptr noundef nonnull %.val13.i37.i, i32 noundef %.017.i36.i)
  %.not.i40.i = icmp eq i32 %i.aka, 0
  br i1 %.not.i40.i, label %.critedge.loopexit.i41.i, label %.lr.ph.i35.i, !llvm.loop !113

.critedge.loopexit.i41.i:                         ; preds = %bb.bc, %.lr.ph.i35.i
  %.val14.pre.i42.i = load ptr, ptr %i.gd, align 8, !tbaa !17
  %.val15.pre.i43.i = load i32, ptr %i.aiw, align 4
  %.pre.i44.i = lshr i32 %.val15.pre.i43.i, 1
  %.pre21.i45.i = zext nneg i32 %.pre.i44.i to i64
  br label %Mpm_ObjRecycleCuts.exit48.i

Mpm_ObjRecycleCuts.exit48.i:                      ; preds = %.critedge.loopexit.i41.i, %bb.bb
  %.pre-phi22.i46.i = phi i64 [ %.pre21.i45.i, %.critedge.loopexit.i41.i ], [ %i.aje, %bb.bb ]
  %.val14.i47.i = phi ptr [ %.val14.pre.i42.i, %.critedge.loopexit.i41.i ], [ %.val.i32.i, %bb.bb ]
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %.val14.i47.i, i64 %.pre-phi22.i46.i
  store i32 0, ptr %i.akb, align 4, !tbaa !12
  br label %Mig_ObjSibl.exit.thread.i

Mig_ObjSibl.exit.thread.i:                        ; preds = %Mpm_ObjRecycleCuts.exit48.i, %bb.ba, %Mig_ObjSibl.exit.i, %Mig_ObjSiblId.exit.i.i, %.critedge.i
  %.val28.i = load ptr, ptr %i.aby, align 8, !tbaa !17
  %.val29.i = load i32, ptr %i.c, align 4
  %i.akc = lshr i32 %.val29.i, 1
  %i.akd = zext nneg i32 %i.akc to i64            ; 3 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !12
  %i.akg = icmp eq i32 %i.akf, 0
  br i1 %i.akg, label %bb.bd, label %Mpm_ObjDerefFaninCuts.exit

bb.bd:                                            ; preds = %Mig_ObjSibl.exit.thread.i
  %.val.i49.i = load ptr, ptr %i.gd, align 8, !tbaa !17 ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.val.i49.i, i64 %i.akd
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !12 ; 2 uses
  %.not16.i51.i = icmp eq i32 %i.aki, 0
  br i1 %.not16.i51.i, label %Mpm_ObjRecycleCuts.exit65.i, label %.lr.ph.i52.i

.lr.ph.i52.i:                                     ; preds = %bb.bd, %bb.be
  %.017.i53.i = phi i32 [ %i.alc, %bb.be ], [ %i.aki, %bb.bd ] ; 3 uses
  %.val13.i54.i = load ptr, ptr %i.ge, align 8, !tbaa !59 ; 4 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.val13.i54.i, i64 24
  %i.akk = getelementptr inbounds nuw i8, ptr %.val13.i54.i, i64 4
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !61
  %i.akm = and i32 %i.akl, %.017.i53.i
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [56 x i8], ptr %i.akj, i64 %i.akn ; 3 uses
  %i.akp = load i32, ptr %.val13.i54.i, align 8, !tbaa !62
  %i.akq = ashr i32 %.017.i53.i, %i.akp           ; 2 uses
  %i.akr = load i32, ptr %i.ako, align 8, !tbaa !64
  %i.aks = ashr i32 %i.akq, %i.akr
  %i.akt = getelementptr i8, ptr %i.ako, i64 32
  %.val.i.i.i.i55.i = load ptr, ptr %i.akt, align 8, !tbaa !21
  %i.aku = sext i32 %i.aks to i64
  %i.akv = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i55.i, i64 %i.aku
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !22 ; 2 uses
  %.not11.i56.i = icmp eq ptr %i.akw, null
  br i1 %.not11.i56.i, label %.critedge.loopexit.i58.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i52.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !65
  %i.akz = and i32 %i.aky, %i.akq
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.akw, i64 %i.ala
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !66 ; 2 uses
  tail call fastcc void @Mmr_StepRecycle(ptr noundef nonnull %.val13.i54.i, i32 noundef %.017.i53.i)
  %.not.i57.i = icmp eq i32 %i.alc, 0
  br i1 %.not.i57.i, label %.critedge.loopexit.i58.i, label %.lr.ph.i52.i, !llvm.loop !113

.critedge.loopexit.i58.i:                         ; preds = %bb.be, %.lr.ph.i52.i
  %.val14.pre.i59.i = load ptr, ptr %i.gd, align 8, !tbaa !17
  %.val15.pre.i60.i = load i32, ptr %i.c, align 4
  %.pre.i61.i = lshr i32 %.val15.pre.i60.i, 1
  %.pre21.i62.i = zext nneg i32 %.pre.i61.i to i64
  br label %Mpm_ObjRecycleCuts.exit65.i

Mpm_ObjRecycleCuts.exit65.i:                      ; preds = %.critedge.loopexit.i58.i, %bb.bd
  %.pre-phi22.i63.i = phi i64 [ %.pre21.i62.i, %.critedge.loopexit.i58.i ], [ %i.akd, %bb.bd ]
  %.val14.i64.i = phi ptr [ %.val14.pre.i59.i, %.critedge.loopexit.i58.i ], [ %.val.i49.i, %bb.bd ]
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %.val14.i64.i, i64 %.pre-phi22.i63.i
  store i32 0, ptr %i.ald, align 4, !tbaa !12
  br label %Mpm_ObjDerefFaninCuts.exit

Mpm_ObjDerefFaninCuts.exit:                       ; preds = %Mig_ObjSibl.exit.thread.i, %Mpm_ObjRecycleCuts.exit65.i
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Mpm_ManExploreNewCut(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %i.b, 27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = lshr i32 %i.e, 27
  %.not = icmp samesign ult i32 %i.c, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @Mpm_ManMergeCuts(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4) ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %.not66 = icmp eq i32 %i.l, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val74 = load i32, ptr %1, align 4             ; 2 uses
  %i.m = and i32 %.val74, 1
  %i.n = getelementptr i8, ptr %1, i64 4
  %.val78 = load i32, ptr %i.n, align 4           ; 3 uses
  %i.o = and i32 %.val78, 1
  %i.p = getelementptr i8, ptr %1, i64 8
  %.val82 = load i32, ptr %i.p, align 4           ; 2 uses
  %i.q = and i32 %.val82, 1
  %i.r = icmp ugt i32 %.val78, -3
  %i.s = icmp ult i32 %.val82, -2
  %or.cond108 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond108, label %Mig_ObjIsXor.exit.thread.i, label %Mig_ObjIsAnd.exit.i

Mig_ObjIsAnd.exit.i:                              ; preds = %bb.d
  %i.t = lshr i32 %.val74, 1                      ; 2 uses
  %i.u = lshr i32 %.val78, 1                      ; 2 uses
  %.not.i = icmp samesign ult i32 %i.t, %i.u
  br i1 %.not.i, label %Mig_ObjNodeType.exit, label %Mig_ObjIsXor.exit.i

Mig_ObjIsXor.exit.i:                              ; preds = %Mig_ObjIsAnd.exit.i
  %6 = icmp samesign ule i32 %i.t, %i.u
  %cond.fr.i = freeze i1 %6
  br i1 %cond.fr.i, label %Mig_ObjIsXor.exit.thread.i, label %Mig_ObjNodeType.exit

Mig_ObjIsXor.exit.thread.i:                       ; preds = %Mig_ObjIsXor.exit.i, %bb.d
  br label %Mig_ObjNodeType.exit

Mig_ObjNodeType.exit:                             ; preds = %Mig_ObjIsAnd.exit.i, %Mig_ObjIsXor.exit.i, %Mig_ObjIsXor.exit.thread.i
  %i.v = phi i32 [ 1, %Mig_ObjIsAnd.exit.i ], [ 3, %Mig_ObjIsXor.exit.thread.i ], [ 2, %Mig_ObjIsXor.exit.i ]
  %i.w = tail call i32 @Mpm_CutComputeTruth(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.v) #21 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !69
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val73 = load i32, ptr %1, align 4             ; 2 uses
  %i.z = and i32 %.val73, 1
  %i.aa = getelementptr i8, ptr %1, i64 4
  %.val77 = load i32, ptr %i.aa, align 4          ; 3 uses
  %i.ab = and i32 %.val77, 1
  %i.ac = getelementptr i8, ptr %1, i64 8
  %.val81 = load i32, ptr %i.ac, align 4          ; 2 uses
  %i.ad = and i32 %.val81, 1
  %i.ae = icmp ugt i32 %.val77, -3
  %i.af = icmp ult i32 %.val81, -2
  %or.cond109 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond109, label %Mig_ObjIsXor.exit.thread.i89, label %Mig_ObjIsAnd.exit.i85

Mig_ObjIsAnd.exit.i85:                            ; preds = %bb.f
  %i.ag = lshr i32 %.val73, 1                     ; 2 uses
  %i.ah = lshr i32 %.val77, 1                     ; 2 uses
  %.not.i86 = icmp samesign ult i32 %i.ag, %i.ah
  br i1 %.not.i86, label %Mig_ObjNodeType.exit90, label %Mig_ObjIsXor.exit.i87

Mig_ObjIsXor.exit.i87:                            ; preds = %Mig_ObjIsAnd.exit.i85
  %7 = icmp samesign ule i32 %i.ag, %i.ah
  %cond.fr.i88 = freeze i1 %7
  br i1 %cond.fr.i88, label %Mig_ObjIsXor.exit.thread.i89, label %Mig_ObjNodeType.exit90

Mig_ObjIsXor.exit.thread.i89:                     ; preds = %Mig_ObjIsXor.exit.i87, %bb.f
  br label %Mig_ObjNodeType.exit90

Mig_ObjNodeType.exit90:                           ; preds = %Mig_ObjIsAnd.exit.i85, %Mig_ObjIsXor.exit.i87, %Mig_ObjIsXor.exit.thread.i89
  %i.ai = phi i32 [ 1, %Mig_ObjIsAnd.exit.i85 ], [ 3, %Mig_ObjIsXor.exit.thread.i89 ], [ 2, %Mig_ObjIsXor.exit.i87 ]
  %i.aj = tail call i32 @Mpm_CutComputeDsd6(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.ai) #21
  %.not68 = icmp eq i32 %i.aj, 0
  br i1 %.not68, label %bb.o, label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ak = tail call fastcc ptr @Mpm_ManMergeCuts(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %4) ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !67
  %.not63 = icmp eq i32 %i.ap, 0
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %1, i64 4
  %.val76 = load i32, ptr %i.aq, align 4          ; 3 uses
  %i.ar = and i32 %.val76, 1
  %.val72 = load i32, ptr %1, align 4             ; 2 uses
  %i.as = and i32 %.val72, 1
  %i.at = getelementptr i8, ptr %1, i64 8
  %.val80 = load i32, ptr %i.at, align 4          ; 2 uses
  %i.au = and i32 %.val80, 1
  %i.av = xor i32 %i.au, 1
  %i.aw = icmp ugt i32 %.val76, -3
  %i.ax = icmp ult i32 %.val80, -2
  %or.cond110 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond110, label %Mig_ObjIsXor.exit.thread.i97, label %Mig_ObjIsAnd.exit.i93

Mig_ObjIsAnd.exit.i93:                            ; preds = %bb.i
  %i.ay = lshr i32 %.val72, 1                     ; 2 uses
  %i.az = lshr i32 %.val76, 1                     ; 2 uses
  %.not.i94 = icmp samesign ult i32 %i.ay, %i.az
  br i1 %.not.i94, label %Mig_ObjNodeType.exit98, label %Mig_ObjIsXor.exit.i95

Mig_ObjIsXor.exit.i95:                            ; preds = %Mig_ObjIsAnd.exit.i93
  %8 = icmp samesign ule i32 %i.ay, %i.az
  %cond.fr.i96 = freeze i1 %8
  br i1 %cond.fr.i96, label %Mig_ObjIsXor.exit.thread.i97, label %Mig_ObjNodeType.exit98

Mig_ObjIsXor.exit.thread.i97:                     ; preds = %Mig_ObjIsXor.exit.i95, %bb.i
  br label %Mig_ObjNodeType.exit98

Mig_ObjNodeType.exit98:                           ; preds = %Mig_ObjIsAnd.exit.i93, %Mig_ObjIsXor.exit.i95, %Mig_ObjIsXor.exit.thread.i97
  %i.ba = phi i32 [ 1, %Mig_ObjIsAnd.exit.i93 ], [ 3, %Mig_ObjIsXor.exit.thread.i97 ], [ 2, %Mig_ObjIsXor.exit.i95 ]
  %i.bb = tail call i32 @Mpm_CutComputeTruth(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.av, i32 noundef %i.ba) #21 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !69
  %.not64 = icmp eq i32 %i.bd, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %1, i64 4
  %.val75 = load i32, ptr %i.be, align 4          ; 3 uses
  %i.bf = and i32 %.val75, 1
  %.val71 = load i32, ptr %1, align 4             ; 2 uses
  %i.bg = and i32 %.val71, 1
  %i.bh = getelementptr i8, ptr %1, i64 8
  %.val79 = load i32, ptr %i.bh, align 4          ; 2 uses
  %i.bi = and i32 %.val79, 1
  %i.bj = xor i32 %i.bi, 1
  %i.bk = icmp ugt i32 %.val75, -3
  %i.bl = icmp ult i32 %.val79, -2
  %or.cond111 = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond111, label %Mig_ObjIsXor.exit.thread.i105, label %Mig_ObjIsAnd.exit.i101

Mig_ObjIsAnd.exit.i101:                           ; preds = %bb.k
  %i.bm = lshr i32 %.val71, 1                     ; 2 uses
  %i.bn = lshr i32 %.val75, 1                     ; 2 uses
  %.not.i102 = icmp samesign ult i32 %i.bm, %i.bn
  br i1 %.not.i102, label %Mig_ObjNodeType.exit106, label %Mig_ObjIsXor.exit.i103

Mig_ObjIsXor.exit.i103:                           ; preds = %Mig_ObjIsAnd.exit.i101
  %9 = icmp samesign ule i32 %i.bm, %i.bn
  %cond.fr.i104 = freeze i1 %9
  br i1 %cond.fr.i104, label %Mig_ObjIsXor.exit.thread.i105, label %Mig_ObjNodeType.exit106

Mig_ObjIsXor.exit.thread.i105:                    ; preds = %Mig_ObjIsXor.exit.i103, %bb.k
  br label %Mig_ObjNodeType.exit106

Mig_ObjNodeType.exit106:                          ; preds = %Mig_ObjIsAnd.exit.i101, %Mig_ObjIsXor.exit.i103, %Mig_ObjIsXor.exit.thread.i105
  %i.bo = phi i32 [ 1, %Mig_ObjIsAnd.exit.i101 ], [ 3, %Mig_ObjIsXor.exit.thread.i105 ], [ 2, %Mig_ObjIsXor.exit.i103 ]
  %i.bp = tail call i32 @Mpm_CutComputeDsd6(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bo) #21
  %.not65 = icmp eq i32 %i.bp, 0
  br i1 %.not65, label %bb.o, label %bb.l

bb.l:                                             ; preds = %Mig_ObjNodeType.exit98, %Mig_ObjNodeType.exit106, %bb.j, %Mig_ObjNodeType.exit, %Mig_ObjNodeType.exit90, %bb.e
  %.0 = phi ptr [ %i.g, %Mig_ObjNodeType.exit ], [ %i.g, %Mig_ObjNodeType.exit90 ], [ %i.g, %bb.e ], [ %i.ak, %Mig_ObjNodeType.exit98 ], [ %i.ak, %Mig_ObjNodeType.exit106 ], [ %i.ak, %bb.j ] ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.br = getelementptr i8, ptr %0, i64 11440
  %.val70 = load ptr, ptr %i.br, align 8, !tbaa !17 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 68
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 27                      ; 4 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 3 uses
  %i.bx = getelementptr inbounds nuw [52 x i8], ptr %i.bs, i64 %i.bw ; 3 uses
  %.not.i107 = icmp eq i32 %i.bv, 0
  br i1 %.not.i107, label %Mpm_CutGetArrTime.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %xtraiter = and i64 %i.bw, 1
  %i.bz = icmp eq i32 %i.bv, 1
  br i1 %i.bz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bw, 30
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.m ] ; 4 uses
  %.02.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ct, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.m ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12
  %i.cc = ashr i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12
  %i.ci = add nsw i32 %i.ch, %i.cf
  %i.cj = tail call noundef i32 @llvm.smax.i32(i32 %.02.i, i32 %i.ci)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12
  %i.cs = add nsw i32 %i.cr, %i.cp
  %i.ct = tail call noundef i32 @llvm.smax.i32(i32 %i.cj, i32 %i.cs) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !1

Mpm_CutGetArrTime.exit.loopexit.unr-lcssa:        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Mpm_CutGetArrTime.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ct, %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = ashr i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.epil.init
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12
  %i.dc = add nsw i32 %i.db, %i.cz
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %.02.i.epil.init, i32 %i.dc)
  br label %Mpm_CutGetArrTime.exit

Mpm_CutGetArrTime.exit:                           ; preds = %.epil.preheader, %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ct, %Mpm_CutGetArrTime.exit.loopexit.unr-lcssa ], [ %i.dd, %.epil.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load i32, ptr %i.de, align 8, !tbaa !52
  %.not69 = icmp ne i32 %i.df, 0
  %i.dg = icmp sgt i32 %.0.lcssa.i, %5
  %or.cond = and i1 %i.dg, %.not69
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Mpm_CutGetArrTime.exit
  %i.dh = tail call i32 @Mpm_ObjAddCutToStore(ptr noundef nonnull %0, ptr noundef nonnull %.0, i32 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %Mpm_CutGetArrTime.exit, %Mig_ObjNodeType.exit106, %bb.g, %Mig_ObjNodeType.exit90, %bb.b, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Mmr_StepRecycle(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = and i32 %i.f, %1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [56 x i8], ptr %i.d, i64 %i.h ; 10 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !62
  %i.k = ashr i32 %1, %i.j                        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !82
  %i.o = load i32, ptr %i.i, align 8, !tbaa !64
  %i.p = ashr i32 %i.k, %i.o
  %i.q = getelementptr i8, ptr %i.i, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65
  %i.w = and i32 %i.v, %i.k
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !83
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 -1, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !78 ; 7 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !84
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.b, label %Mmr_FixedRecycle.exit

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp slt i32 %i.af, 16
  br i1 %i.ai, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.am = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.e, %bb.d
  %i.an = phi ptr [ %i.al, %bb.d ], [ %i.am, %bb.e ]
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !17
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  %i.ao = icmp samesign ult i32 %i.af, 1073741823
  %i.ap = shl nuw nsw i32 %i.af, 1
  %spec.select.i.i = select i1 %i.ao, i32 %i.ap, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.af, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.g, label %Mmr_FixedRecycle.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ar, null
  %i.as = zext nneg i32 %spec.select.i.i to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = tail call ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef %i.at) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = phi ptr [ %i.au, %bb.h ], [ %i.av, %bb.i ]
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !17
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.j, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ad, align 8, !tbaa !84
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !78
  br label %Mmr_FixedRecycle.exit

Mmr_FixedRecycle.exit:                            ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i.i
  %i.ax = phi i32 [ %i.af, %bb.a ], [ %i.af, %bb.f ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 48
end_hunk_0
