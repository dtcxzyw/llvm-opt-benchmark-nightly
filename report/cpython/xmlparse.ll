inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@accountingReportStats:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %getRootParserOf.exit, label %bb.b, !llvm.loop !37

getRootParserOf.exit:                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.07.i, i64 992
  %i.d = load i64, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %getRootParserOf.exit
  %i.f = getelementptr i8, ptr %.07.i, i64 976
  %.val = load i64, ptr %i.f, align 8, !tbaa !41  ; 4 uses
  %i.g = getelementptr i8, ptr %.07.i, i64 984
  %.val8 = load i64, ptr %i.g, align 8, !tbaa !235 ; 3 uses
  %.not.i9 = icmp eq i64 %.val, 0
  br i1 %.not.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %.val8, %.val
  %i.i = uitofp i64 %i.h to float
  %i.j = uitofp i64 %.val to float
  %i.k = fdiv float %i.i, %i.j
  br label %accountingGetCurrentAmplification.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add i64 %.val8, 22
  %i.m = uitofp i64 %i.l to float
  %i.n = fdiv float %i.m, 2.200000e+01
  br label %accountingGetCurrentAmplification.exit

accountingGetCurrentAmplification.exit:           ; preds = %bb.d, %bb.e
  %i.o = phi float [ %i.k, %bb.d ], [ %i.n, %bb.e ]
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.q = fpext float %i.o to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.317, ptr noundef nonnull %.07.i, i64 noundef %.val, i64 noundef %.val8, double noundef %i.q, ptr noundef %1) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %getRootParserOf.exit, %accountingGetCurrentAmplification.exit
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @accountingReportDiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 3208, 6799) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.b = icmp eq i32 %6, 0
  %i.c = select i1 %i.b, ptr @.str.319, ptr @.str.320
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.318, i64 noundef %4, ptr noundef nonnull %i.c, i32 noundef %1, i32 noundef %5, i32 noundef 10, ptr noundef nonnull @.str.316) #25 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 992
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = icmp ugt i64 %i.f, 2
  %i.h = ptrtoint ptr %3 to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 25
  %or.cond = or i1 %i.k, %i.g
  br i1 %or.cond, label %.preheader, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  %i.l = getelementptr i8, ptr %2, i64 10
  %i.m = icmp ult ptr %2, %i.l
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader26
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.o = load i8, ptr %2, align 1, !tbaa !10
  %i.p = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.o)
  %fputs20 = tail call i32 @fputs(ptr nonnull %i.p, ptr %i.n) #26 ; 0 uses
  %i.q = getelementptr i8, ptr %2, i64 1
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.s = load i8, ptr %i.q, align 1, !tbaa !10
  %i.t = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.s)
  %fputs20.1 = tail call i32 @fputs(ptr nonnull %i.t, ptr %i.r) #26 ; 0 uses
  %i.u = getelementptr i8, ptr %2, i64 2
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.w = load i8, ptr %i.u, align 1, !tbaa !10
  %i.x = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.w)
  %fputs20.2 = tail call i32 @fputs(ptr nonnull %i.x, ptr %i.v) #26 ; 0 uses
  %i.y = getelementptr i8, ptr %2, i64 3
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !10
  %i.ab = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.aa)
  %fputs20.3 = tail call i32 @fputs(ptr nonnull %i.ab, ptr %i.z) #26 ; 0 uses
  %i.ac = getelementptr i8, ptr %2, i64 4
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.af = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ae)
  %fputs20.4 = tail call i32 @fputs(ptr nonnull %i.af, ptr %i.ad) #26 ; 0 uses
  %i.ag = getelementptr i8, ptr %2, i64 5
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.aj = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ai)
  %fputs20.5 = tail call i32 @fputs(ptr nonnull %i.aj, ptr %i.ah) #26 ; 0 uses
  %i.ak = getelementptr i8, ptr %2, i64 6
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.an = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.am)
  %fputs20.6 = tail call i32 @fputs(ptr nonnull %i.an, ptr %i.al) #26 ; 0 uses
  %i.ao = getelementptr i8, ptr %2, i64 7
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.ar = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.aq)
  %fputs20.7 = tail call i32 @fputs(ptr nonnull %i.ar, ptr %i.ap) #26 ; 0 uses
  %i.as = getelementptr i8, ptr %2, i64 8
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.au = load i8, ptr %i.as, align 1, !tbaa !10
  %i.av = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.au)
  %fputs20.8 = tail call i32 @fputs(ptr nonnull %i.av, ptr %i.at) #26 ; 0 uses
  %i.aw = getelementptr i8, ptr %2, i64 9
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.az = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ay)
  %fputs20.9 = tail call i32 @fputs(ptr nonnull %i.az, ptr %i.ax) #26 ; 0 uses
  br label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.ba = icmp ult ptr %2, %3
  br i1 %i.ba, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader, %.lr.ph32
  %.031 = phi ptr [ %i.be, %.lr.ph32 ], [ %2, %.preheader ] ; 2 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bc = load i8, ptr %.031, align 1, !tbaa !10
  %i.bd = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.bc)
  %fputs21 = tail call i32 @fputs(ptr nonnull %i.bd, ptr %i.bb) #26 ; 0 uses
  %i.be = getelementptr i8, ptr %.031, i64 1      ; 2 uses
  %exitcond.not = icmp eq ptr %i.be, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph32, !llvm.loop !326

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader26
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bg = tail call i64 @fwrite(ptr nonnull @__const.accountingReportDiff.ellipis, i64 4, i64 1, ptr %i.bf) #26 ; 0 uses
  %i.bh = getelementptr i8, ptr %3, i64 -10       ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %3
  br i1 %i.bi, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %._crit_edge
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !10
  %i.bl = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.bk)
  %fputs = tail call i32 @fputs(ptr nonnull %i.bl, ptr %i.bj) #26 ; 0 uses
  %i.bm = getelementptr i8, ptr %3, i64 -9
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bp = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.bo)
  %fputs.1 = tail call i32 @fputs(ptr nonnull %i.bp, ptr %i.bn) #26 ; 0 uses
  %i.bq = getelementptr i8, ptr %3, i64 -8
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bt = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.bs)
  %fputs.2 = tail call i32 @fputs(ptr nonnull %i.bt, ptr %i.br) #26 ; 0 uses
  %i.bu = getelementptr i8, ptr %3, i64 -7
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bx = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.bw)
  %fputs.3 = tail call i32 @fputs(ptr nonnull %i.bx, ptr %i.bv) #26 ; 0 uses
  %i.by = getelementptr i8, ptr %3, i64 -6
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cb = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ca)
  %fputs.4 = tail call i32 @fputs(ptr nonnull %i.cb, ptr %i.bz) #26 ; 0 uses
  %i.cc = getelementptr i8, ptr %3, i64 -5
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.cf = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ce)
  %fputs.5 = tail call i32 @fputs(ptr nonnull %i.cf, ptr %i.cd) #26 ; 0 uses
  %i.cg = getelementptr i8, ptr %3, i64 -4
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.cj = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.ci)
  %fputs.6 = tail call i32 @fputs(ptr nonnull %i.cj, ptr %i.ch) #26 ; 0 uses
  %i.ck = getelementptr i8, ptr %3, i64 -3
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cn = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.cm)
  %fputs.7 = tail call i32 @fputs(ptr nonnull %i.cn, ptr %i.cl) #26 ; 0 uses
  %i.co = getelementptr i8, ptr %3, i64 -2
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cr = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.cq)
  %fputs.8 = tail call i32 @fputs(ptr nonnull %i.cr, ptr %i.cp) #26 ; 0 uses
  %i.cs = getelementptr i8, ptr %3, i64 -1
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cv = tail call ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %i.cu)
  %fputs.9 = tail call i32 @fputs(ptr nonnull %i.cv, ptr %i.ct) #26 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph32, %.lr.ph30.preheader, %._crit_edge, %.preheader
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !211
  %i.cx = tail call i64 @fwrite(ptr nonnull @.str.322, i64 2, i64 1, ptr %i.cw) #26 ; 0 uses
  ret void
}

declare i32 @PyExpat_XmlParseXmlDeclNS(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyExpat_XmlParseXmlDecl(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.siphash, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i.i.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.a = getelementptr i8, ptr %.07.i.i.i, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %copy_salt_to_sipkey.exit, label %bb.b, !llvm.loop !37

copy_salt_to_sipkey.exit:                         ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.07.i.i.i, i64 968
  %i.d = load i64, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  store i64 8317987319222330741, ptr %2, align 8, !tbaa !327
  %i.e = xor i64 %i.d, 7237128888997146477
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !329
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 7816392313619706465, ptr %i.g, align 8, !tbaa !330
  %i.h = xor i64 %i.d, 8387220255154660723
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !331
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !332
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !333
  %i.m = load i8, ptr %1, align 1, !tbaa !10
  %.not4.i = icmp eq i8 %i.m, 0
  br i1 %.not4.i, label %keylen.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %copy_salt_to_sipkey.exit
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i)
  %i.n = add i64 %strlen.i, 1
  br label %keylen.exit

keylen.exit:                                      ; preds = %copy_salt_to_sipkey.exit, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %copy_salt_to_sipkey.exit ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %3 = ptrtoaddr ptr %1 to i64
  %i.o = getelementptr i8, ptr %1, i64 %.0.lcssa.i
  br label %bb.c

bb.c:                                             ; preds = %sip_round.exit.i, %keylen.exit
  %.0.i = phi ptr [ %1, %keylen.exit ], [ %.1.lcssa.i15, %sip_round.exit.i ] ; 4 uses
  %i.p = icmp ult ptr %.0.i, %i.o
  br i1 %i.p, label %.lr.ph.preheader.i4, label %sip24_update.exit

.lr.ph.preheader.i4:                              ; preds = %bb.c
  %.043.i = ptrtoaddr ptr %.0.i to i64
  %i.q = getelementptr i8, ptr %.0.i, i64 %.0.lcssa.i
  %scevgep.i5 = getelementptr i8, ptr %i.q, i64 %3
  %i.r = sub i64 0, %.043.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i5, i64 %i.r ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i4
  %.134.i = phi ptr [ %i.t, %bb.d ], [ %.0.i, %.lr.ph.preheader.i4 ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !332  ; 3 uses
  %.not.i.not.not = icmp ult ptr %i.s, %i.k       ; 2 uses
  br i1 %.not.i.not.not, label %bb.d, label %sip_round.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr i8, ptr %.134.i, i64 1     ; 2 uses
  %i.u = load i8, ptr %.134.i, align 1, !tbaa !10
  %i.v = getelementptr i8, ptr %i.s, i64 1
  store ptr %i.v, ptr %i.k, align 8, !tbaa !332
  store i8 %i.u, ptr %i.s, align 1, !tbaa !10
  %exitcond.not.i = icmp eq ptr %i.t, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !334

.critedge.i:                                      ; preds = %bb.d
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !332
  %i.w = icmp ult ptr %.pre.pre, %i.k
  br i1 %i.w, label %sip24_update.exit, label %sip_round.exit.i

sip_round.exit.i:                                 ; preds = %.lr.ph.i, %.critedge.i
  %.1.lcssa.i15 = phi ptr [ %scevgep44.i, %.critedge.i ], [ %.134.i, %.lr.ph.i ]
  %i.x = load i64, ptr %i.j, align 8              ; 2 uses
  %i.y = load i64, ptr %i.i, align 8, !tbaa !331
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8, !tbaa !329 ; 3 uses
  %.promoted36.i.i = load i64, ptr %2, align 8, !tbaa !327
  %.promoted40.i.i = load i64, ptr %i.g, align 8, !tbaa !330
  %i.aa = add i64 %.promoted36.i.i, %.promoted.i.i ; 3 uses
  %i.ab = call i64 @llvm.fshl.i64(i64 %.promoted.i.i, i64 %.promoted.i.i, i64 13)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ae = add i64 %.promoted40.i.i, %i.z          ; 2 uses
  %i.af = call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ag = xor i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = add i64 %i.ag, %i.ad                    ; 2 uses
  %i.ai = call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 21)
  %i.aj = xor i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.al = call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 17)
  %i.am = xor i64 %i.ak, %i.al                    ; 3 uses
  %i.an = call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ao = add i64 %i.ah, %i.am                    ; 3 uses
  %i.ap = call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.aq = xor i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.as = add i64 %i.aj, %i.an                    ; 2 uses
  %i.at = call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.au = xor i64 %i.as, %i.at                    ; 3 uses
  %i.av = add i64 %i.au, %i.ar                    ; 2 uses
  %i.aw = call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 21)
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = add i64 %i.as, %i.aq                    ; 3 uses
  %i.az = call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ba = xor i64 %i.ay, %i.az
  %i.bb = call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !329
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !331
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !330
  %i.bc = xor i64 %i.av, %i.x
  store i64 %i.bc, ptr %2, align 8, !tbaa !327
  store ptr %i.j, ptr %i.k, align 8, !tbaa !332
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !333
  %i.be = add i64 %i.bd, 8
  store i64 %i.be, ptr %i.l, align 8, !tbaa !333
  br i1 %.not.i.not.not, label %sip24_update.exit, label %bb.c, !llvm.loop !335

sip24_update.exit:                                ; preds = %bb.c, %.critedge.i, %sip_round.exit.i
  %i.bf = call fastcc i64 @sip24_final(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.bf
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @sip24_update(ptr noundef nonnull returned %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64
  %i.a = getelementptr i8, ptr %1, i64 %2
  %i.b = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sip_round.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %sip_round.exit ] ; 5 uses
  %i.h = icmp ult ptr %.0, %i.a
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.043 = ptrtoaddr ptr %.0 to i64
  %i.i = getelementptr i8, ptr %.0, i64 %2
  %scevgep = getelementptr i8, ptr %i.i, i64 %3
  %i.j = sub i64 0, %.043
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %i.j ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.134 = phi ptr [ %i.l, %bb.c ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !332  ; 3 uses
  %.not.not = icmp uge ptr %i.k, %i.b             ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.134, i64 1       ; 2 uses
  %i.m = load i8, ptr %.134, align 1, !tbaa !10
  %i.n = getelementptr i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.b, align 8, !tbaa !332
  store i8 %i.m, ptr %i.k, align 1, !tbaa !10
  %exitcond.not = icmp eq ptr %i.l, %scevgep44
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !334

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.1.lcssa = phi ptr [ %.0, %bb.b ], [ %scevgep44, %bb.c ], [ %.134, %.lr.ph ]
  %.lcssa = phi i1 [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph ]
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !332
  %i.p = icmp ult ptr %i.o, %i.b
  br i1 %i.p, label %bb.d, label %sip_round.exit

sip_round.exit:                                   ; preds = %.critedge
  %i.q = load i64, ptr %i.c, align 8              ; 2 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !331
  %i.s = xor i64 %i.r, %i.q                       ; 3 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %.promoted36.i = load i64, ptr %0, align 8, !tbaa !327
  %.promoted40.i = load i64, ptr %i.f, align 8, !tbaa !330
  %i.t = add i64 %.promoted36.i, %.promoted.i     ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %.promoted.i, i64 %.promoted.i, i64 13)
  %i.v = xor i64 %i.t, %i.u                       ; 3 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.x = add i64 %.promoted40.i, %i.s             ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 16)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = add i64 %i.z, %i.w                      ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ac = xor i64 %i.ab, %i.aa                    ; 3 uses
  %i.ad = add i64 %i.x, %i.v                      ; 3 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 17)
  %i.af = xor i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ah = add i64 %i.aa, %i.af                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 13)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.ag, %i.ac                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 16)
  %i.an = xor i64 %i.al, %i.am                    ; 3 uses
  %i.ao = add i64 %i.an, %i.ak                    ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 21)
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = add i64 %i.al, %i.aj                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 17)
  %i.at = xor i64 %i.ar, %i.as
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  store i64 %i.at, ptr %i.e, align 8, !tbaa !329
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !331
  store i64 %i.au, ptr %i.f, align 8, !tbaa !330
  %i.av = xor i64 %i.ao, %i.q
  store i64 %i.av, ptr %0, align 8, !tbaa !327
  store ptr %i.c, ptr %i.b, align 8, !tbaa !332
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !333
  %i.ax = add i64 %i.aw, 8
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !333
  br i1 %.lcssa, label %bb.b, label %bb.d, !llvm.loop !335

bb.d:                                             ; preds = %.critedge, %sip_round.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @sip24_final(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i8
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !333
  %i.j = add i64 %i.f, %i.i
  %i.k = shl i64 %i.j, 56                         ; 8 uses
  switch i8 %i.g, label %sip_round.exit [
    i8 7, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.d
    i8 4, label %bb.e
    i8 3, label %bb.f
    i8 2, label %bb.g
    i8 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 38
  %i.m = load i8, ptr %i.l, align 2, !tbaa !10
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 48
  %i.p = or disjoint i64 %i.o, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.p, %bb.b ], [ %i.k, %bb.a ]
  %i.q = getelementptr i8, ptr %0, i64 37
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = or i64 %i.t, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1 = phi i64 [ %i.u, %bb.c ], [ %i.k, %bb.a ]
  %i.v = getelementptr i8, ptr %0, i64 36
  %i.w = load i8, ptr %i.v, align 4, !tbaa !10
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or i64 %i.y, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.2 = phi i64 [ %i.z, %bb.d ], [ %i.k, %bb.a ]
  %i.aa = getelementptr i8, ptr %0, i64 35
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 24
  %i.ae = or i64 %i.ad, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.3 = phi i64 [ %i.ae, %bb.e ], [ %i.k, %bb.a ]
  %i.af = getelementptr i8, ptr %0, i64 34
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !10
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = or i64 %i.ai, %.3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.4 = phi i64 [ %i.aj, %bb.f ], [ %i.k, %bb.a ]
  %i.ak = getelementptr i8, ptr %0, i64 33
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = or i64 %i.an, %.4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.5 = phi i64 [ %i.ao, %bb.g ], [ %i.k, %bb.a ]
  %i.ap = load i8, ptr %i.c, align 8, !tbaa !10
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or i64 %.5, %i.aq
  br label %sip_round.exit

sip_round.exit:                                   ; preds = %bb.h, %bb.a
  %.6 = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.h ] ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !331
  %i.au = xor i64 %i.at, %.6                      ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.promoted.i = load i64, ptr %i.av, align 8, !tbaa !329 ; 3 uses
  %.promoted36.i = load i64, ptr %0, align 8, !tbaa !327
  %.promoted40.i = load i64, ptr %i.aw, align 8, !tbaa !330
  %i.ax = add i64 %.promoted36.i, %.promoted.i    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %.promoted.i, i64 %.promoted.i, i64 13)
  %i.az = xor i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.bb = add i64 %.promoted40.i, %i.au           ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bd = xor i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = add i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 21)
  %i.bg = xor i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 17)
  %i.bj = xor i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bl = add i64 %i.be, %i.bj                    ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bn = xor i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = add i64 %i.bk, %i.bg                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 16)
  %i.br = xor i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = add i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bu = xor i64 %i.bt, %i.bs                    ; 3 uses
  %i.bv = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 17)
  %i.bx = xor i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 32)
end_hunk_0
