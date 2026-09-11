Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/xmlparse?download=true
inline.NumInlined: 238
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@reportComment:bb.a
  %i.bs = load i8, ptr %.012.i, align 1           ; 2 uses
  switch i8 %i.bs, label %bb.q [
    i8 0, label %normalizeLines.exit
    i8 13, label %.preheader.i
  ]

bb.q:                                             ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %.preheader

.preheader.i:                                     ; preds = %.preheader, %bb.t
  %i.bu = phi i8 [ %i.cb, %bb.t ], [ %i.bs, %.preheader ] ; 2 uses
  %.113.i = phi ptr [ %.2.i, %bb.t ], [ %.012.i, %.preheader ] ; 3 uses
  %.0.i23 = phi ptr [ %.1.i, %bb.t ], [ %.012.i, %.preheader ] ; 3 uses
  %i.bv = icmp eq i8 %i.bu, 13
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.i
  store i8 10, ptr %.0.i23, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.113.i, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 10
  %i.bz = getelementptr inbounds nuw i8, ptr %.113.i, i64 2
  %spec.select.i = select i1 %i.by, ptr %i.bz, ptr %i.bw
  br label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.113.i, i64 1
  store i8 %i.bu, ptr %.0.i23, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.i = phi ptr [ %i.ca, %bb.s ], [ %spec.select.i, %bb.r ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.i23, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.2.i, align 1             ; 2 uses
  %.not.i24 = icmp eq i8 %i.cb, 0
  br i1 %.not.i24, label %bb.u, label %.preheader.i

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %.1.i, align 1
  br label %normalizeLines.exit

normalizeLines.exit:                              ; preds = %.preheader, %bb.u
  %i.cc = load ptr, ptr %i.d, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.cc(ptr noundef %i.ce, ptr noundef nonnull %i.br) #22
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not.i25 = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %.not.i25, label %bb.v, label %bb.w

bb.v:                                             ; preds = %normalizeLines.exit
  store ptr %i.ch, ptr %i.cf, align 8
  br label %poolClear.exit

bb.w:                                             ; preds = %normalizeLines.exit
  %.not1516.i = icmp eq ptr %i.ch, null
  br i1 %.not1516.i, label %poolClear.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %i.ci = phi ptr [ %.017.i, %.lr.ph.i ], [ %i.cg, %bb.w ]
  %.017.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %i.ch, %bb.w ] ; 4 uses
  %i.cj = load ptr, ptr %.017.i, align 8          ; 2 uses
  store ptr %i.ci, ptr %.017.i, align 8
  store ptr %.017.i, ptr %i.cf, align 8
  %.not15.i = icmp eq ptr %i.cj, null
  br i1 %.not15.i, label %poolClear.exit, label %.lr.ph.i

poolClear.exit:                                   ; preds = %.lr.ph.i, %bb.v, %bb.w
  store ptr null, ptr %i.aq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br label %poolStoreString.exit.thread

poolStoreString.exit.thread:                      ; preds = %poolAppend.exit.thread.i, %bb.p, %poolAppend.exit.i, %poolStoreString.exit, %bb.b, %reportDefault.exit, %poolClear.exit
  %.0 = phi i32 [ 1, %poolClear.exit ], [ 1, %bb.b ], [ 1, %reportDefault.exit ], [ 0, %poolStoreString.exit ], [ 0, %poolAppend.exit.i ], [ 0, %bb.p ], [ 0, %poolAppend.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @accountingReportStats(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07.i, i64 912
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %getRootParserOf.exit, label %bb.b

getRootParserOf.exit:                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.07.i, i64 960
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %getRootParserOf.exit
  %i.f = getelementptr i8, ptr %.07.i, i64 944
  %.val = load i64, ptr %i.f, align 8             ; 4 uses
  %i.g = getelementptr i8, ptr %.07.i, i64 952
  %.val8 = load i64, ptr %i.g, align 8            ; 3 uses
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
  %i.p = load ptr, ptr @stderr, align 8
  %i.q = fpext float %i.o to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.312, ptr noundef nonnull %.07.i, i64 noundef %.val, i64 noundef %.val8, double noundef %i.q, ptr noundef %1) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %getRootParserOf.exit, %accountingGetCurrentAmplification.exit
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @accountingReportDiff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 2724, 6214) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = icmp eq i32 %6, 0
  %i.c = select i1 %i.b, ptr @.str.314, ptr @.str.315
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.313, i64 noundef %4, ptr noundef nonnull %i.c, i32 noundef %1, i32 noundef %5, i32 noundef 10, ptr noundef nonnull @.str.311) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.f, 2
  %i.h = ptrtoint ptr %3 to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 25
  %or.cond = or i1 %i.k, %i.g
  br i1 %or.cond, label %.preheader, label %.preheader27.preheader

.preheader27.preheader:                           ; preds = %bb.a
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = load i8, ptr %2, align 1
  %i.n = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.m)
  %fputs20 = tail call i32 @fputs(ptr nonnull %i.n, ptr %i.l) #26 ; 0 uses
  %.1.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.o = load ptr, ptr @stderr, align 8
  %i.p = load i8, ptr %.1.ptr.1, align 1
  %i.q = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.p)
  %fputs20.1 = tail call i32 @fputs(ptr nonnull %i.q, ptr %i.o) #26 ; 0 uses
  %.1.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = load i8, ptr %.1.ptr.2, align 1
  %i.t = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.s)
  %fputs20.2 = tail call i32 @fputs(ptr nonnull %i.t, ptr %i.r) #26 ; 0 uses
  %.1.ptr.3 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = load i8, ptr %.1.ptr.3, align 1
  %i.w = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.v)
  %fputs20.3 = tail call i32 @fputs(ptr nonnull %i.w, ptr %i.u) #26 ; 0 uses
  %.1.ptr.4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load ptr, ptr @stderr, align 8
  %i.y = load i8, ptr %.1.ptr.4, align 1
  %i.z = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.y)
  %fputs20.4 = tail call i32 @fputs(ptr nonnull %i.z, ptr %i.x) #26 ; 0 uses
  %.1.ptr.5 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.aa = load ptr, ptr @stderr, align 8
  %i.ab = load i8, ptr %.1.ptr.5, align 1
  %i.ac = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.ab)
  %fputs20.5 = tail call i32 @fputs(ptr nonnull %i.ac, ptr %i.aa) #26 ; 0 uses
  %.1.ptr.6 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ad = load ptr, ptr @stderr, align 8
  %i.ae = load i8, ptr %.1.ptr.6, align 1
  %i.af = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.ae)
  %fputs20.6 = tail call i32 @fputs(ptr nonnull %i.af, ptr %i.ad) #26 ; 0 uses
  %.1.ptr.7 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ag = load ptr, ptr @stderr, align 8
  %i.ah = load i8, ptr %.1.ptr.7, align 1
  %i.ai = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.ah)
  %fputs20.7 = tail call i32 @fputs(ptr nonnull %i.ai, ptr %i.ag) #26 ; 0 uses
  %.1.ptr.8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr @stderr, align 8
  %i.ak = load i8, ptr %.1.ptr.8, align 1
  %i.al = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.ak)
  %fputs20.8 = tail call i32 @fputs(ptr nonnull %i.al, ptr %i.aj) #26 ; 0 uses
  %.1.ptr.9 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = load i8, ptr %.1.ptr.9, align 1
  %i.ao = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.an)
  %fputs20.9 = tail call i32 @fputs(ptr nonnull %i.ao, ptr %i.am) #26 ; 0 uses
  %i.ap = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @__const.accountingReportDiff.ellipis, i64 4, i64 1, ptr %i.ap) #26 ; 0 uses
  %i.aq = getelementptr inbounds i8, ptr %3, i64 -10
  br label %7

.preheader:                                       ; preds = %bb.a
  %i.ar = icmp ult ptr %2, %3
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.030 = phi ptr [ %i.av, %.lr.ph ], [ %2, %.preheader ] ; 2 uses
  %i.as = load ptr, ptr @stderr, align 8
  %i.at = load i8, ptr %.030, align 1
  %i.au = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %i.at)
  %fputs22 = tail call i32 @fputs(ptr nonnull %i.au, ptr %i.as) #26 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.030, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.av, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

7:                                                ; preds = %.preheader27.preheader, %7
  %.229 = phi ptr [ %i.aq, %.preheader27.preheader ], [ %11, %7 ] ; 2 uses
  %8 = load ptr, ptr @stderr, align 8
  %9 = load i8, ptr %.229, align 1
  %10 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %9)
  %fputs = tail call i32 @fputs(ptr nonnull %10, ptr %8) #26 ; 0 uses
  %11 = getelementptr inbounds nuw i8, ptr %.229, i64 1 ; 2 uses
  %12 = icmp ult ptr %11, %3
  br i1 %12, label %7, label %.loopexit

.loopexit:                                        ; preds = %7, %.lr.ph, %.preheader
  %i.aw = load ptr, ptr @stderr, align 8
  %fwrite21 = tail call i64 @fwrite(ptr nonnull @.str.317, i64 2, i64 1, ptr %i.aw) #26 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare i32 @XmlParseXmlDeclNS(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @XmlParseXmlDecl(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.siphash, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i, %bb.a
  %.tr.i.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 912
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %copy_salt_to_sipkey.exit, label %tailrecurse.i.i

copy_salt_to_sipkey.exit:                         ; preds = %tailrecurse.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 936
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  store i64 8317987319222330741, ptr %2, align 8
  %i.e = xor i64 %i.d, 7237128888997146477
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 7816392313619706465, ptr %i.g, align 8
  %i.h = xor i64 %i.d, 8387220255154660723
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %i.m = load i8, ptr %1, align 1
  %.not4.i = icmp eq i8 %i.m, 0
  br i1 %.not4.i, label %keylen.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %copy_salt_to_sipkey.exit
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i)
  %i.n = add i64 %strlen.i, 1
  br label %keylen.exit

keylen.exit:                                      ; preds = %copy_salt_to_sipkey.exit, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %copy_salt_to_sipkey.exit ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %i.o = ptrtoaddr ptr %1 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  br label %bb.b

bb.b:                                             ; preds = %sip_round.exit.i, %keylen.exit
  %.0.i = phi ptr [ %1, %keylen.exit ], [ %.1.lcssa.i15, %sip_round.exit.i ] ; 4 uses
  %i.q = icmp ult ptr %.0.i, %i.p
  br i1 %i.q, label %.lr.ph.preheader.i4, label %sip24_update.exit

.lr.ph.preheader.i4:                              ; preds = %bb.b
  %.043.i = ptrtoaddr ptr %.0.i to i64
  %i.r = getelementptr i8, ptr %.0.i, i64 %.0.lcssa.i
  %scevgep.i5 = getelementptr i8, ptr %i.r, i64 %i.o
  %i.s = sub i64 0, %.043.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i5, i64 %i.s ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i4
  %.134.i = phi ptr [ %i.u, %bb.c ], [ %.0.i, %.lr.ph.preheader.i4 ] ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.not.not = icmp ult ptr %i.t, %i.k       ; 2 uses
  br i1 %.not.i.not.not, label %bb.c, label %sip_round.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.134.i, i64 1 ; 2 uses
  %i.v = load i8, ptr %.134.i, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.w, ptr %i.k, align 8
  store i8 %i.v, ptr %i.t, align 1
  %exitcond.not.i = icmp eq ptr %i.u, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.k, align 8
  %i.x = icmp ult ptr %.pre.pre, %i.k
  br i1 %i.x, label %sip24_update.exit, label %sip_round.exit.i

sip_round.exit.i:                                 ; preds = %.lr.ph.i, %.critedge.i
  %.1.lcssa.i15 = phi ptr [ %scevgep44.i, %.critedge.i ], [ %.134.i, %.lr.ph.i ]
  %i.y = load i64, ptr %i.j, align 8              ; 2 uses
  %i.z = load i64, ptr %i.i, align 8
  %i.aa = xor i64 %i.z, %i.y                      ; 3 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8    ; 3 uses
  %.promoted36.i.i = load i64, ptr %2, align 8
  %.promoted40.i.i = load i64, ptr %i.g, align 8
  %i.ab = add i64 %.promoted36.i.i, %.promoted.i.i ; 3 uses
  %i.ac = call i64 @llvm.fshl.i64(i64 %.promoted.i.i, i64 %.promoted.i.i, i64 13)
  %i.ad = xor i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.af = add i64 %.promoted40.i.i, %i.aa         ; 2 uses
  %i.ag = call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.ah = xor i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ak = xor i64 %i.aj, %i.ai                    ; 3 uses
  %i.al = add i64 %i.af, %i.ad                    ; 3 uses
  %i.am = call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 17)
  %i.an = xor i64 %i.al, %i.am                    ; 3 uses
  %i.ao = call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ai, %i.an                    ; 3 uses
  %i.aq = call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.ar = xor i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.at = add i64 %i.ak, %i.ao                    ; 2 uses
  %i.au = call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 16)
  %i.av = xor i64 %i.at, %i.au                    ; 3 uses
  %i.aw = add i64 %i.av, %i.as                    ; 2 uses
  %i.ax = call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ba = call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 17)
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  store i64 %i.bb, ptr %i.f, align 8
  store i64 %i.ay, ptr %i.i, align 8
  store i64 %i.bc, ptr %i.g, align 8
  %i.bd = xor i64 %i.aw, %i.y
  store i64 %i.bd, ptr %2, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.be = load i64, ptr %i.l, align 8
  %i.bf = add i64 %i.be, 8
  store i64 %i.bf, ptr %i.l, align 8
  br i1 %.not.i.not.not, label %sip24_update.exit, label %bb.b

sip24_update.exit:                                ; preds = %bb.b, %.critedge.i, %sip_round.exit.i
  %i.bg = call fastcc i64 @sip24_final(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.bg
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @sip24_update(ptr noundef nonnull returned %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sip_round.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %sip_round.exit ] ; 5 uses
  %i.i = icmp ult ptr %.0, %i.b
  br i1 %i.i, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.043 = ptrtoaddr ptr %.0 to i64
  %i.j = getelementptr i8, ptr %.0, i64 %2
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.a
  %i.k = sub i64 0, %.043
  %scevgep44 = getelementptr i8, ptr %scevgep, i64 %i.k ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.134 = phi ptr [ %i.m, %bb.c ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.not = icmp uge ptr %i.l, %i.c             ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.134, i64 1 ; 2 uses
  %i.n = load i8, ptr %.134, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.c, align 8
  store i8 %i.n, ptr %i.l, align 1
  %exitcond.not = icmp eq ptr %i.m, %scevgep44
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.1.lcssa = phi ptr [ %.0, %bb.b ], [ %scevgep44, %bb.c ], [ %.134, %.lr.ph ]
  %.lcssa = phi i1 [ false, %bb.b ], [ %.not.not, %bb.c ], [ %.not.not, %.lr.ph ]
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = icmp ult ptr %i.p, %i.c
  br i1 %i.q, label %bb.d, label %sip_round.exit

sip_round.exit:                                   ; preds = %.critedge
  %i.r = load i64, ptr %i.d, align 8              ; 2 uses
  %i.s = load i64, ptr %i.e, align 8
  %i.t = xor i64 %i.s, %i.r                       ; 3 uses
  %.promoted.i = load i64, ptr %i.f, align 8      ; 3 uses
  %.promoted36.i = load i64, ptr %0, align 8
  %.promoted40.i = load i64, ptr %i.g, align 8
end_hunk_0
