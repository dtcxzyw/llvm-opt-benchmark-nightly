Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/rtp_analysis_dialog?download=true
inline.NumInlined: 2263
inline.NumDeleted: 804
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN17RtpAnalysisDialog11saveCsvDataEP5QFileP11QTreeWidget:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

._crit_edge296:                                   ; preds = %.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph295, %.thread
  %.0293 = phi i32 [ 0, %.lr.ph295 ], [ %i.kq, %.thread ] ; 2 uses
  %i.v = call noundef ptr @_ZNK11QTreeWidget12topLevelItemEi(ptr noundef align 8 dereferenceable_or_null(40) %2, i32 noundef %.0293) ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %.not = icmp ne i32 %i.x, 1000
  %i.y = icmp eq ptr %i.v, null
  %or.cond = or i1 %i.y, %.not
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call ptr @__dynamic_cast(ptr nonnull %i.v, ptr nonnull @_ZTI15QTreeWidgetItem, ptr nonnull @_ZTI25RtpAnalysisTreeWidgetItem, i64 0) #24 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN25RtpAnalysisTreeWidgetItem7rowDataEv(ptr dead_on_unwind nonnull writable sret(%class.QList.121) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(146) %i.z)
          to label %_ZN5QListI8QVariantED2Ev.exit unwind label %bb.f

_ZN5QListI8QVariantED2Ev.exit:                    ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ab = load ptr, ptr %9, align 8, !noalias !125 ; 2 uses
  store ptr %i.ab, ptr %8, align 8, !alias.scope !125
  %i.ac = load ptr, ptr %i.d, align 8, !noalias !125 ; 4 uses
  store ptr %i.ac, ptr %i.c, align 8, !alias.scope !125
  %i.ad = load i64, ptr %i.f, align 8, !noalias !125 ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !alias.scope !125
  store ptr %i.ac, ptr %i.g, align 8, !alias.scope !125
  %.idx = shl i64 %i.ad, 5                        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 %.idx
  store ptr %i.ae, ptr %i.h, align 8, !alias.scope !125
  store i32 1, ptr %i.i, align 8, !alias.scope !125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.not281292 = icmp eq i64 %.idx, 0
  br i1 %.not281292, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7QStringD2Ev.exit
  %.pre306 = load ptr, ptr %8, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5QListI8QVariantED2Ev.exit
  %i.af = phi ptr [ %.pre306, %._crit_edge.loopexit ], [ %i.ab, %_ZN5QListI8QVariantED2Ev.exit ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i.i43 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i.i43, label %bb.e, label %_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i.i
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ai = load i64, ptr %i.e, align 8
  %.idx.i.i.i.i = shl i64 %i.ai, 5                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ah, %bb.e ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i.i.i) #24
  %i.ak = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %i.al = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 32, i64 noundef 8) #24
  br label %_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 1, ptr nonnull @.str.51)
          to label %bb.bq unwind label %bb.by

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bp

.lr.ph:                                           ; preds = %_ZN5QListI8QVariantED2Ev.exit, %_ZN7QStringD2Ev.exit
  %i.an = phi ptr [ %i.jt, %_ZN7QStringD2Ev.exit ], [ %i.ac, %_ZN5QListI8QVariantED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN8QVariantC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %10, ptr noundef align 8 dereferenceable(32) %i.an)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ao = load i64, ptr %i.j, align 8
  %i.ap = and i64 %i.ao, -4
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %5, align 8
  %i.ar = invoke noundef zeroext i1 @_ZNK9QMetaType7isValidEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ar, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 2, ptr nonnull @.str.49)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %4, align 8               ; 6 uses
  %i.at = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.au = load i64, ptr %i.l, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.av = load i64, ptr %i.m, align 8             ; 9 uses
  %i.aw = load ptr, ptr %7, align 8               ; 7 uses
  %.not.i.i137 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i137, label %.critedge.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i: ; preds = %bb.j
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i172, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = add i64 %i.bc, 23
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = sub i64 %i.bf, %i.be
  %.neg4.i.neg.i = sdiv exact i64 %i.bg, 24
  %.neg3.i.i = sub i64 %i.ba, %i.av
  %.not.i138 = icmp eq i64 %.neg3.i.i, %.neg4.i.neg.i
  br i1 %.not.i138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i
  %i.bh = getelementptr [24 x i8], ptr %i.bb, i64 %i.av ; 3 uses
  store ptr %i.as, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.at, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.au, ptr %i.bj, align 8
  br label %.noexc

bb.l:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i
  %i.bk = icmp ne i64 %i.av, 0
  %.not14.i = icmp eq i64 %i.be, %i.bf
  %or.cond359 = or i1 %i.bk, %.not14.i
  br i1 %or.cond359, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i172, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %i.bb, i64 -24
  store ptr %i.as, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.bb, i64 -16
  store ptr %i.at, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bb, i64 -8
  store i64 %i.au, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.n, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  store ptr %i.bp, ptr %i.n, align 8
  br label %.noexc

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i172: ; preds = %bb.l, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i
  %i.bq = icmp eq i64 %i.av, 0
  %i.br = load atomic i32, ptr %i.aw monotonic, align 4
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.critedge.i, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i173

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i173: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i172
  %i.bt = getelementptr i8, ptr %i.aw, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.bw = ptrtoint ptr %i.aw to i64
  %i.bx = add i64 %i.bw, 23
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %i.bz = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ca = sub i64 %i.bz, %i.by                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.ca, -24
  %.neg3.i.i174 = sub i64 %i.bu, %i.av
  %i.cb = add i64 %.neg3.i.i174, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.cb, 1
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i, label %bb.s

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i173
  %.not.i19.i = icmp slt i64 %i.ca, 24
  br i1 %.not.i19.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i
  %i.cc = mul i64 %i.av, 3
  %i.cd = shl i64 %i.bu, 1
  %i.ce = icmp slt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %.idx.i.i.i175 = sub nsw i64 0, %i.ca
  %i.cf = getelementptr i8, ptr %i.bv, i64 %.idx.i.i.i175 ; 4 uses
  br i1 %i.bq, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %17 = icmp eq i64 %i.by, %i.bz
  %i.cg = icmp eq ptr %i.bv, null
  %or.cond.i.i.i.i = or i1 %i.cg, %17
  %i.ch = icmp eq ptr %i.cf, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.ch
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = mul i64 %i.av, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cf, ptr noundef nonnull align 1 %i.bv, i64 noundef %i.ci, i1 noundef false) #24
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  store ptr %i.cf, ptr %i.n, align 8
  br label %bb.s

.critedge.i:                                      ; preds = %bb.j, %bb.n, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i172
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 1, ptr noundef null)
          to label %.critedge.i._crit_edge unwind label %bb.r

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre = load ptr, ptr %i.n, align 8
  br label %bb.s

bb.r:                                             ; preds = %.critedge.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i.i.i17.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i17.i, label %_ZN7QStringD2Ev.exit52, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i

bb.s:                                             ; preds = %.critedge.i._crit_edge, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i173, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i
  %i.ck = phi ptr [ %.pre, %.critedge.i._crit_edge ], [ %i.bv, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i173 ], [ %i.cf, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i ]
  %i.cl = getelementptr [24 x i8], ptr %i.ck, i64 %i.av ; 5 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i64, ptr %i.m, align 8
  %i.co = sub i64 %i.cn, %i.av
  %i.cp = mul i64 %i.co, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.cm, ptr noundef align 1 %i.cl, i64 noundef %i.cp, i1 noundef false) #24
  store ptr %i.as, ptr %i.cl, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.at, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.au, ptr %i.cr, align 8
  br label %.noexc

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i:  ; preds = %bb.r
  %i.cs = atomicrmw sub ptr %i.as, i32 1 acq_rel, align 4
  %.not.i.i19.i = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i19.i, label %bb.t, label %_ZN7QStringD2Ev.exit52

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.as, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit52

.noexc:                                           ; preds = %bb.s, %bb.m, %bb.k
  %i.ct = load i64, ptr %i.m, align 8
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.m, align 8
  %i.cv = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.cw = load atomic i32, ptr %i.cv monotonic, align 4
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN7QStringD2Ev.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN7QStringD2Ev.exit unwind label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.v:                                             ; preds = %bb.aa, %bb.y, %bb.g
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit52

bb.w:                                             ; preds = %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit52

bb.x:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit52

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dc = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %10)
          to label %.noexc54 unwind label %bb.v   ; 3 uses

.noexc54:                                         ; preds = %bb.y
  store ptr %i.dc, ptr %3, align 8
  %.not.i.i.i53 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i53, label %.thread279, label %bb.z

.thread279:                                       ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ay

bb.z:                                             ; preds = %.noexc54
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load atomic i32, ptr %i.dd monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not6.not.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1.i.i.i = phi i32 [ %i.df, %bb.aa ], [ %i.de, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.dg = icmp eq i32 %.1.i.i.i, 10
  br i1 %i.dg, label %bb.ac, label %bb.ay

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store <2 x ptr> <ptr null, ptr @.str.50>, ptr %12, align 16
  store i64 4, ptr %i.o, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(32) %10)
          to label %bb.ad unwind label %bb.as

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0, i16 32)
          to label %bb.ae unwind label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i64, ptr %i.m, align 8             ; 9 uses
  %i.di = load ptr, ptr %7, align 8               ; 7 uses
  %.not.i.i139 = icmp eq ptr %i.di, null
  br i1 %.not.i.i139, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i141, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i140

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i140: ; preds = %bb.ae
  %i.dj = load atomic i32, ptr %i.di monotonic, align 4
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i148

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i148: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i140
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.do = ptrtoint ptr %i.di to i64
  %i.dp = add i64 %i.do, 23
  %i.dq = and i64 %i.dp, -8                       ; 2 uses
  %i.dr = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.ds = sub i64 %i.dr, %i.dq
  %.neg4.i.neg.i149 = sdiv exact i64 %i.ds, 24
  %.neg3.i.i150 = sub i64 %i.dm, %i.dh
  %.not.i151 = icmp eq i64 %.neg3.i.i150, %.neg4.i.neg.i149
  br i1 %.not.i151, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i148
  %i.dt = getelementptr [24 x i8], ptr %i.dn, i64 %i.dh ; 3 uses
  %i.du = load ptr, ptr %11, align 16
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.p, align 8
  store ptr %i.dw, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dy = load i64, ptr %i.q, align 16
  store i64 %i.dy, ptr %i.dx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %.noexc59

bb.ag:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i148
  %i.dz = icmp ne i64 %i.dh, 0
  %.not14.i147 = icmp eq i64 %i.dq, %i.dr
  %or.cond361 = or i1 %i.dz, %.not14.i147
  br i1 %or.cond361, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr i8, ptr %i.dn, i64 -24
  %i.eb = load ptr, ptr %11, align 16
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %i.dn, i64 -16
  %i.ed = load ptr, ptr %i.p, align 8
  store ptr %i.ed, ptr %i.ec, align 8
  %i.ee = getelementptr i8, ptr %i.dn, i64 -8
  %i.ef = load i64, ptr %i.q, align 16
  store i64 %i.ef, ptr %i.ee, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eg = load ptr, ptr %i.n, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  store ptr %i.eh, ptr %i.n, align 8
  br label %.noexc59

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i141: ; preds = %bb.ae
  %i.ei = load <2 x ptr>, ptr %11, align 16
  %i.ej = load i64, ptr %i.q, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %.critedge.i187

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180: ; preds = %bb.ag, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i140
  %i.ek = load <2 x ptr>, ptr %11, align 16       ; 5 uses
  %i.el = load i64, ptr %i.q, align 16            ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.em = icmp eq i64 %i.dh, 0
  %i.en = load atomic i32, ptr %i.di monotonic, align 4
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %.critedge.i187, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180
  %i.ep = getelementptr i8, ptr %i.di, i64 8
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.es = ptrtoint ptr %i.di to i64
  %i.et = add i64 %i.es, 23
  %i.eu = and i64 %i.et, -8                       ; 2 uses
  %i.ev = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.ew = sub i64 %i.ev, %i.eu                    ; 3 uses
  %.neg4.i.i182 = sdiv exact i64 %i.ew, -24
  %.neg3.i.i183 = sub i64 %i.eq, %i.dh
  %i.ex = add i64 %.neg3.i.i183, %.neg4.i.i182
  %.not17.i184 = icmp slt i64 %i.ex, 1
  br i1 %.not17.i184, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185, label %bb.an

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181
  %.not.i19.i186 = icmp slt i64 %i.ew, 24
  br i1 %.not.i19.i186, label %.critedge.i187, label %bb.ai

bb.ai:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185
  %i.ey = mul i64 %i.dh, 3
  %i.ez = shl i64 %i.eq, 1
  %i.fa = icmp slt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.aj, label %.critedge.i187

bb.aj:                                            ; preds = %bb.ai
  %.idx.i.i.i188 = sub nsw i64 0, %i.ew
  %i.fb = getelementptr i8, ptr %i.er, i64 %.idx.i.i.i188 ; 4 uses
  br i1 %i.em, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %18 = icmp eq i64 %i.eu, %i.ev
  %i.fc = icmp eq ptr %i.er, null
  %or.cond.i.i.i.i189 = or i1 %i.fc, %18
  %i.fd = icmp eq ptr %i.fb, null
  %or.cond3.i.i.i.i190 = or i1 %or.cond.i.i.i.i189, %i.fd
  br i1 %or.cond3.i.i.i.i190, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = mul i64 %i.dh, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.fb, ptr noundef nonnull align 1 %i.er, i64 noundef %i.fe, i1 noundef false) #24
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191: ; preds = %bb.al, %bb.ak, %bb.aj
  store ptr %i.fb, ptr %i.n, align 8
  br label %bb.an

.critedge.i187:                                   ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i141, %bb.ai, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180
  %i.ff = phi i64 [ %i.el, %bb.ai ], [ %i.el, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185 ], [ %i.el, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180 ], [ %i.ej, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i141 ]
  %i.fg = phi <2 x ptr> [ %i.ek, %bb.ai ], [ %i.ek, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i185 ], [ %i.ek, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i180 ], [ %i.ei, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i141 ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 1, ptr noundef null)
          to label %.critedge.i187._crit_edge unwind label %bb.am

.critedge.i187._crit_edge:                        ; preds = %.critedge.i187
  %.pre304 = load ptr, ptr %i.n, align 8
  br label %bb.an

bb.am:                                            ; preds = %.critedge.i187
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fi = extractelement <2 x ptr> %i.fg, i64 0   ; 3 uses
  %.not.i.i.i17.i142 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i17.i142, label %.body152, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i143

bb.an:                                            ; preds = %.critedge.i187._crit_edge, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191
  %i.fj = phi i64 [ %i.ff, %.critedge.i187._crit_edge ], [ %i.el, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181 ], [ %i.el, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191 ]
  %i.fk = phi ptr [ %.pre304, %.critedge.i187._crit_edge ], [ %i.er, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181 ], [ %i.fb, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191 ]
  %i.fl = phi <2 x ptr> [ %i.fg, %.critedge.i187._crit_edge ], [ %i.ek, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i181 ], [ %i.ek, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i191 ]
  %i.fm = getelementptr [24 x i8], ptr %i.fk, i64 %i.dh ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 24
  %i.fo = load i64, ptr %i.m, align 8
  %i.fp = sub i64 %i.fo, %i.dh
  %i.fq = mul i64 %i.fp, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.fn, ptr noundef align 1 %i.fm, i64 noundef %i.fq, i1 noundef false) #24
  store <2 x ptr> %i.fl, ptr %i.fm, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fj, ptr %i.fr, align 8
  br label %.noexc59

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i143: ; preds = %bb.am
  %i.fs = atomicrmw sub ptr %i.fi, i32 1 acq_rel, align 4
  %.not.i.i19.i144 = icmp eq i32 %i.fs, 1
  br i1 %.not.i.i19.i144, label %bb.ao, label %.body152

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i143
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.fi, i64 noundef 2, i64 noundef 8) #24
  br label %.body152

.noexc59:                                         ; preds = %bb.an, %bb.ah, %bb.af
  %i.ft = load i64, ptr %i.m, align 8
  %i.fu = add i64 %i.ft, 1
  store i64 %i.fu, ptr %i.m, align 8
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i58, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i57

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i57: ; preds = %.noexc59
  %i.fw = load atomic i32, ptr %i.fv monotonic, align 4
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i58, label %_ZN5QListI7QStringElsEOS0_.exit61

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i58: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i57, %.noexc59
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit61 unwind label %bb.au

_ZN5QListI7QStringElsEOS0_.exit61:                ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i57, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i58
  %i.fy = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i62, label %_ZN7QStringD2Ev.exit65, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63:    ; preds = %_ZN5QListI7QStringElsEOS0_.exit61
  %i.fz = atomicrmw sub ptr %i.fy, i32 1 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.fz, 1
  br i1 %.not.i.i64, label %bb.ap, label %_ZN7QStringD2Ev.exit65

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63
  %i.ga = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ga, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit65

_ZN7QStringD2Ev.exit65:                           ; preds = %_ZN5QListI7QStringElsEOS0_.exit61, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63, %bb.ap
  %i.gb = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i66, label %_ZN7QStringD2Ev.exit69, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67:    ; preds = %_ZN7QStringD2Ev.exit65
  %i.gc = atomicrmw sub ptr %i.gb, i32 1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.gc, 1
  br i1 %.not.i.i68, label %bb.aq, label %_ZN7QStringD2Ev.exit69

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67
  %i.gd = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gd, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit69

_ZN7QStringD2Ev.exit69:                           ; preds = %_ZN7QStringD2Ev.exit65, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ge = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i70, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71:    ; preds = %_ZN7QStringD2Ev.exit69
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %.not.i.i72 = icmp eq i32 %i.gf, 1
  br i1 %.not.i.i72, label %bb.ar, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71
  %i.gg = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gg, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71, %_ZN7QStringD2Ev.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZN7QStringD2Ev.exit

bb.as:                                            ; preds = %bb.ac
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit82

bb.at:                                            ; preds = %bb.ad
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit78

bb.au:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i58
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body152

.body152:                                         ; preds = %bb.am, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i143, %bb.ao, %bb.au
  %eh.lpad-body153 = phi { ptr, i32 } [ %i.gj, %bb.au ], [ %i.fh, %bb.ao ], [ %i.fh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i143 ], [ %i.fh, %bb.am ] ; 3 uses
  %i.gk = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i75, label %_ZN7QStringD2Ev.exit78, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76:    ; preds = %.body152
  %i.gl = atomicrmw sub ptr %i.gk, i32 1 acq_rel, align 4
  %.not.i.i77 = icmp eq i32 %i.gl, 1
  br i1 %.not.i.i77, label %bb.av, label %_ZN7QStringD2Ev.exit78

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76
  %i.gm = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gm, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit78

_ZN7QStringD2Ev.exit78:                           ; preds = %bb.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76, %.body152, %bb.at
  %.pn36 = phi { ptr, i32 } [ %i.gi, %bb.at ], [ %eh.lpad-body153, %.body152 ], [ %eh.lpad-body153, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76 ], [ %eh.lpad-body153, %bb.av ] ; 3 uses
  %i.gn = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i79, label %_ZN7QStringD2Ev.exit82, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80:    ; preds = %_ZN7QStringD2Ev.exit78
  %i.go = atomicrmw sub ptr %i.gn, i32 1 acq_rel, align 4
  %.not.i.i81 = icmp eq i32 %i.go, 1
  br i1 %.not.i.i81, label %bb.aw, label %_ZN7QStringD2Ev.exit82

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80
  %i.gp = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gp, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit82

_ZN7QStringD2Ev.exit82:                           ; preds = %bb.aw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80, %_ZN7QStringD2Ev.exit78, %bb.as
  %.pn36.pn = phi { ptr, i32 } [ %i.gh, %bb.as ], [ %.pn36, %_ZN7QStringD2Ev.exit78 ], [ %.pn36, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80 ], [ %.pn36, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.gq = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i83, label %_ZN17QArrayDataPointerIDsED2Ev.exit90, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84:    ; preds = %_ZN7QStringD2Ev.exit82
  %i.gr = atomicrmw sub ptr %i.gq, i32 1 acq_rel, align 4
  %.not.i.i85 = icmp eq i32 %i.gr, 1
  br i1 %.not.i.i85, label %bb.ax, label %_ZN17QArrayDataPointerIDsED2Ev.exit90

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84
  %i.gs = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gs, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit90

_ZN17QArrayDataPointerIDsED2Ev.exit90:            ; preds = %bb.ax, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84, %_ZN7QStringD2Ev.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZN7QStringD2Ev.exit52

bb.ay:                                            ; preds = %.thread279, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(32) %10)
          to label %bb.az unwind label %bb.bl

bb.az:                                            ; preds = %bb.ay
  %i.gt = load i64, ptr %i.m, align 8             ; 9 uses
  %i.gu = load ptr, ptr %7, align 8               ; 7 uses
  %.not.i.i155 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i155, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i157, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i156

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i156: ; preds = %bb.az
  %i.gv = load atomic i32, ptr %i.gu monotonic, align 4
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i164

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i164: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i156
  %i.gx = getelementptr i8, ptr %i.gu, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.ha = ptrtoint ptr %i.gu to i64
  %i.hb = add i64 %i.ha, 23
  %i.hc = and i64 %i.hb, -8                       ; 2 uses
  %i.hd = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.he = sub i64 %i.hd, %i.hc
  %.neg4.i.neg.i165 = sdiv exact i64 %i.he, 24
  %.neg3.i.i166 = sub i64 %i.gy, %i.gt
  %.not.i167 = icmp eq i64 %.neg3.i.i166, %.neg4.i.neg.i165
  br i1 %.not.i167, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i164
  %i.hf = getelementptr [24 x i8], ptr %i.gz, i64 %i.gt ; 3 uses
  %i.hg = load ptr, ptr %14, align 16
  store ptr %i.hg, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = load ptr, ptr %i.r, align 8
  store ptr %i.hi, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hk = load i64, ptr %i.s, align 16
  store i64 %i.hk, ptr %i.hj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %.noexc94

bb.bb:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i164
  %i.hl = icmp ne i64 %i.gt, 0
  %.not14.i163 = icmp eq i64 %i.hc, %i.hd
  %or.cond363 = or i1 %i.hl, %.not14.i163
  br i1 %or.cond363, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hm = getelementptr i8, ptr %i.gz, i64 -24
  %i.hn = load ptr, ptr %14, align 16
  store ptr %i.hn, ptr %i.hm, align 8
  %i.ho = getelementptr i8, ptr %i.gz, i64 -16
  %i.hp = load ptr, ptr %i.r, align 8
  store ptr %i.hp, ptr %i.ho, align 8
  %i.hq = getelementptr i8, ptr %i.gz, i64 -8
  %i.hr = load i64, ptr %i.s, align 16
  store i64 %i.hr, ptr %i.hq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.hs = load ptr, ptr %i.n, align 8
  %i.ht = getelementptr i8, ptr %i.hs, i64 -24
  store ptr %i.ht, ptr %i.n, align 8
  br label %.noexc94

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i157: ; preds = %bb.az
  %i.hu = load <2 x ptr>, ptr %14, align 16
  %i.hv = load i64, ptr %i.s, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %.critedge.i206

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199: ; preds = %bb.bb, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i156
  %i.hw = load <2 x ptr>, ptr %14, align 16       ; 5 uses
  %i.hx = load i64, ptr %i.s, align 16            ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.hy = icmp eq i64 %i.gt, 0
  %i.hz = load atomic i32, ptr %i.gu monotonic, align 4
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %.critedge.i206, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199
  %i.ib = getelementptr i8, ptr %i.gu, i64 8
  %i.ic = load i64, ptr %i.ib, align 8            ; 2 uses
  %i.id = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.ie = ptrtoint ptr %i.gu to i64
  %i.if = add i64 %i.ie, 23
  %i.ig = and i64 %i.if, -8                       ; 2 uses
  %i.ih = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.ii = sub i64 %i.ih, %i.ig                    ; 3 uses
  %.neg4.i.i201 = sdiv exact i64 %i.ii, -24
  %.neg3.i.i202 = sub i64 %i.ic, %i.gt
  %i.ij = add i64 %.neg3.i.i202, %.neg4.i.i201
  %.not17.i203 = icmp slt i64 %i.ij, 1
  br i1 %.not17.i203, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204, label %bb.bi

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200
  %.not.i19.i205 = icmp slt i64 %i.ii, 24
  br i1 %.not.i19.i205, label %.critedge.i206, label %bb.bd

bb.bd:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204
  %i.ik = mul i64 %i.gt, 3
  %i.il = shl i64 %i.ic, 1
  %i.im = icmp slt i64 %i.ik, %i.il
  br i1 %i.im, label %bb.be, label %.critedge.i206

bb.be:                                            ; preds = %bb.bd
  %.idx.i.i.i207 = sub nsw i64 0, %i.ii
  %i.in = getelementptr i8, ptr %i.id, i64 %.idx.i.i.i207 ; 4 uses
  br i1 %i.hy, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %19 = icmp eq i64 %i.ig, %i.ih
  %i.io = icmp eq ptr %i.id, null
  %or.cond.i.i.i.i208 = or i1 %i.io, %19
  %i.ip = icmp eq ptr %i.in, null
  %or.cond3.i.i.i.i209 = or i1 %or.cond.i.i.i.i208, %i.ip
  br i1 %or.cond3.i.i.i.i209, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iq = mul i64 %i.gt, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.in, ptr noundef nonnull align 1 %i.id, i64 noundef %i.iq, i1 noundef false) #24
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210: ; preds = %bb.bg, %bb.bf, %bb.be
  store ptr %i.in, ptr %i.n, align 8
  br label %bb.bi

.critedge.i206:                                   ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i157, %bb.bd, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199
  %i.ir = phi i64 [ %i.hx, %bb.bd ], [ %i.hx, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204 ], [ %i.hx, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199 ], [ %i.hv, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i157 ]
  %i.is = phi <2 x ptr> [ %i.hw, %bb.bd ], [ %i.hw, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i204 ], [ %i.hw, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i199 ], [ %i.hu, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i157 ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 1, ptr noundef null)
          to label %.critedge.i206._crit_edge unwind label %bb.bh

.critedge.i206._crit_edge:                        ; preds = %.critedge.i206
  %.pre305 = load ptr, ptr %i.n, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %.critedge.i206
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.iu = extractelement <2 x ptr> %i.is, i64 0   ; 3 uses
  %.not.i.i.i17.i158 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i17.i158, label %.body168, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i159

bb.bi:                                            ; preds = %.critedge.i206._crit_edge, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210
  %i.iv = phi i64 [ %i.ir, %.critedge.i206._crit_edge ], [ %i.hx, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200 ], [ %i.hx, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210 ]
  %i.iw = phi ptr [ %.pre305, %.critedge.i206._crit_edge ], [ %i.id, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200 ], [ %i.in, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210 ]
  %i.ix = phi <2 x ptr> [ %i.is, %.critedge.i206._crit_edge ], [ %i.hw, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i200 ], [ %i.hw, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i210 ]
  %i.iy = getelementptr [24 x i8], ptr %i.iw, i64 %i.gt ; 4 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 24
  %i.ja = load i64, ptr %i.m, align 8
  %i.jb = sub i64 %i.ja, %i.gt
  %i.jc = mul i64 %i.jb, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.iz, ptr noundef align 1 %i.iy, i64 noundef %i.jc, i1 noundef false) #24
  store <2 x ptr> %i.ix, ptr %i.iy, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 %i.iv, ptr %i.jd, align 8
  br label %.noexc94

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i159: ; preds = %bb.bh
  %i.je = atomicrmw sub ptr %i.iu, i32 1 acq_rel, align 4
  %.not.i.i19.i160 = icmp eq i32 %i.je, 1
  br i1 %.not.i.i19.i160, label %bb.bj, label %.body168

bb.bj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i159
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.iu, i64 noundef 2, i64 noundef 8) #24
  br label %.body168

.noexc94:                                         ; preds = %bb.bi, %bb.bc, %bb.ba
  %i.jf = load i64, ptr %i.m, align 8
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.m, align 8
  %i.jh = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i91 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i.i.i91, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i93, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i92

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i92: ; preds = %.noexc94
  %i.ji = load atomic i32, ptr %i.jh monotonic, align 4
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i93, label %_ZN5QListI7QStringElsEOS0_.exit96

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i93: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i92, %.noexc94
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit96 unwind label %bb.bm

_ZN5QListI7QStringElsEOS0_.exit96:                ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i92, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i93
  %i.jk = load ptr, ptr %14, align 16             ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i97, label %_ZN7QStringD2Ev.exit100, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98:    ; preds = %_ZN5QListI7QStringElsEOS0_.exit96
  %i.jl = atomicrmw sub ptr %i.jk, i32 1 acq_rel, align 4
  %.not.i.i99 = icmp eq i32 %i.jl, 1
  br i1 %.not.i.i99, label %bb.bk, label %_ZN7QStringD2Ev.exit100

bb.bk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98
  %i.jm = load ptr, ptr %14, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jm, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit100

_ZN7QStringD2Ev.exit100:                          ; preds = %_ZN5QListI7QStringElsEOS0_.exit96, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN7QStringD2Ev.exit

bb.bl:                                            ; preds = %bb.ay
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit104

bb.bm:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i93
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.body168:                                         ; preds = %bb.bh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i159, %bb.bj, %bb.bm
  %eh.lpad-body169 = phi { ptr, i32 } [ %i.jo, %bb.bm ], [ %i.it, %bb.bj ], [ %i.it, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i159 ], [ %i.it, %bb.bh ] ; 3 uses
  %i.jp = load ptr, ptr %14, align 16             ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i101, label %_ZN7QStringD2Ev.exit104, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102:   ; preds = %.body168
  %i.jq = atomicrmw sub ptr %i.jp, i32 1 acq_rel, align 4
  %.not.i.i103 = icmp eq i32 %i.jq, 1
  br i1 %.not.i.i103, label %bb.bn, label %_ZN7QStringD2Ev.exit104

bb.bn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102
  %i.jr = load ptr, ptr %14, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jr, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit104

_ZN7QStringD2Ev.exit104:                          ; preds = %bb.bn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102, %.body168, %bb.bl
  %.pn34 = phi { ptr, i32 } [ %i.jn, %bb.bl ], [ %eh.lpad-body169, %.body168 ], [ %eh.lpad-body169, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102 ], [ %eh.lpad-body169, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN7QStringD2Ev.exit52

_ZN7QStringD2Ev.exit:                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZN17QArrayDataPointerIDsED2Ev.exit, %_ZN7QStringD2Ev.exit100
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.js = load ptr, ptr %i.g, align 8
  %i.jt = getelementptr i8, ptr %i.js, i64 32     ; 3 uses
  store ptr %i.jt, ptr %i.g, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8
  %.not281 = icmp eq ptr %i.jt, %.sroa.0.0.copyload
  br i1 %.not281, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !123

_ZN7QStringD2Ev.exit52:                           ; preds = %bb.w, %bb.x, %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i, %bb.r, %_ZN7QStringD2Ev.exit104, %_ZN17QArrayDataPointerIDsED2Ev.exit90, %bb.v
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN17QArrayDataPointerIDsED2Ev.exit90 ], [ %.pn34, %_ZN7QStringD2Ev.exit104 ], [ %i.cz, %bb.v ], [ %i.da, %bb.w ], [ %i.db, %bb.x ], [ %i.cj, %bb.t ], [ %i.cj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i ], [ %i.cj, %bb.r ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %10) #24
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN7QStringD2Ev.exit52, %bb.u
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %_ZN7QStringD2Ev.exit52 ], [ %i.cy, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %8) #24
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.f
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn, %bb.bo ], [ %i.am, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.cg

bb.bq:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev.exit
  %i.ju = load ptr, ptr %6, align 8               ; 6 uses
  %i.jv = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.jw = load i64, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i105 = icmp eq ptr %i.jv, null
  %spec.select.i.i.i = select i1 %.not.i.i.i105, ptr @_ZN7QString6_emptyE, ptr %i.jv
  invoke void @_ZN9QtPrivate16QStringList_joinEPK5QListI7QStringEPK5QCharx(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, ptr noundef nonnull align 1 dereferenceable_or_null(1) %7, ptr noundef nonnull %spec.select.i.i.i, i64 noundef %i.jw)
          to label %_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit unwind label %bb.bz

_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit: ; preds = %bb.bq
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16)
          to label %_ZNO7QString6toUtf8Ev.exit unwind label %bb.ca

_ZNO7QString6toUtf8Ev.exit:                       ; preds = %_ZNK19QListSpecialMethodsI7QStringE4joinERKS0_.exit
  %i.jx = invoke noundef i64 @_ZN9QIODevice5writeERK10QByteArray(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.br unwind label %bb.cb     ; 0 uses

bb.br:                                            ; preds = %_ZNO7QString6toUtf8Ev.exit
  %i.jy = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i108, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.br
  %i.jz = atomicrmw sub ptr %i.jy, i32 1 acq_rel, align 4
  %.not.i.i109 = icmp eq i32 %i.jz, 1
  br i1 %.not.i.i109, label %bb.bs, label %_ZN10QByteArrayD2Ev.exit

bb.bs:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.ka = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ka, i64 noundef 1, i64 noundef 8) #24
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.br, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.bs
  %i.kb = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i110, label %_ZN7QStringD2Ev.exit113, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111:   ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.kc = atomicrmw sub ptr %i.kb, i32 1 acq_rel, align 4
  %.not.i.i112 = icmp eq i32 %i.kc, 1
  br i1 %.not.i.i112, label %bb.bt, label %_ZN7QStringD2Ev.exit113

bb.bt:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111
  %i.kd = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kd, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit113

_ZN7QStringD2Ev.exit113:                          ; preds = %_ZN10QByteArrayD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i111, %bb.bt
  %.not.i.i.i114 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i114, label %_ZN7QStringD2Ev.exit117, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i115:   ; preds = %_ZN7QStringD2Ev.exit113
  %i.ke = atomicrmw sub ptr %i.ju, i32 1 acq_rel, align 4
  %.not.i.i116 = icmp eq i32 %i.ke, 1
end_hunk_0
