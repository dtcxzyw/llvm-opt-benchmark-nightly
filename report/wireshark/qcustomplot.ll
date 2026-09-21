Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN13QCPAxisTicker8generateERK8QCPRangeRK7QLocale5QChariR5QListIdEPS8_PS7_I7QStringE:bb.a
  %i.ad = getelementptr i8, ptr %6, i64 16
  store i64 %i.aa, ptr %i.ad, align 8
  %.not.i.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i25, label %_ZN5QListIdEaSEOS0_.exit28, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i26

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i26:   ; preds = %bb.e
  %i.ae = atomicrmw sub ptr %i.ac, i32 1 acq_rel, align 4
  %.not.i.i.i27 = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i.i27, label %bb.f, label %_ZN5QListIdEaSEOS0_.exit28

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i26
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ac, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdEaSEOS0_.exit28

_ZN5QListIdEaSEOS0_.exit28:                       ; preds = %bb.e, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i26, %bb.f
  %i.af = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i29, label %_ZN5QListIdED2Ev.exit32, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i30

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i30:     ; preds = %_ZN5QListIdEaSEOS0_.exit28
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i31 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i31, label %bb.g, label %_ZN5QListIdED2Ev.exit32

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i30
  %i.ah = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit32

_ZN5QListIdED2Ev.exit32:                          ; preds = %_ZN5QListIdEaSEOS0_.exit28, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i30, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @_ZNK13QCPAxisTicker9trimTicksERK8QCPRangeR5QListIdEb(ptr align 8 poison, ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false)
  br label %_ZN5QListIdED2Ev.exit40

bb.h:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i33, label %_ZN5QListIdED2Ev.exit40, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i34

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i34:   ; preds = %bb.h
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %.not.i.i.i35 = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i.i35, label %bb.i, label %_ZN5QListIdED2Ev.exit40

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i34
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ai, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit40

_ZN5QListIdED2Ev.exit40:                          ; preds = %bb.h, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i34, %bb.i, %_ZN5QListIdED2Ev.exit32, %_ZN5QListIdED2Ev.exit
  call void @_ZNK13QCPAxisTicker9trimTicksERK8QCPRangeR5QListIdEb(ptr align 8 poison, ptr noundef align 8 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(24) %5, i1 noundef zeroext false)
  %.not23 = icmp eq ptr %7, null
  br i1 %.not23, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN5QListIdED2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%class.QList.62) align 8 %10, ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(8) %2, i16 %3, i32 noundef %4)
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 16
  %i.aq = getelementptr i8, ptr %7, i64 8
  %i.ar = load <2 x ptr>, ptr %10, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.as = load ptr, ptr %7, align 8               ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8            ; 2 uses
  store <2 x ptr> %i.ar, ptr %7, align 8
  %i.au = getelementptr i8, ptr %7, i64 16        ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.ap, ptr %i.au, align 8
  %.not.i.i.i.i41 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i41, label %_ZN5QListI7QStringEaSEOS1_.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i: ; preds = %bb.j
  %i.aw = atomicrmw sub ptr %i.as, i32 1 acq_rel, align 4
  %.not.i.i.i42 = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i.i42, label %bb.k, label %_ZN5QListI7QStringEaSEOS1_.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i
  %.idx.i.i.i.i = mul i64 %i.av, 24               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i ], [ %i.at, %bb.k ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ba = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ba, i64 noundef 2, i64 noundef 8) #51
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i:   ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bb = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ax
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, %bb.k
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.as, i64 noundef 24, i64 noundef 8) #51
  br label %_ZN5QListI7QStringEaSEOS1_.exit

_ZN5QListI7QStringEaSEOS1_.exit:                  ; preds = %bb.j, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i
  %i.bc = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i43, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %_ZN5QListI7QStringEaSEOS1_.exit
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %.not.i.i44 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i44, label %bb.m, label %_ZN5QListI7QStringED2Ev.exit

bb.m:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.be = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bf = load i64, ptr %i.ao, align 16
  %.idx.i.i.i = mul i64 %i.bf, 24                 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.be, %bb.m ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i45, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bi = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.bj = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #51
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bk = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.m
  %i.bl = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 24, i64 noundef 8) #51
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %_ZN5QListI7QStringEaSEOS1_.exit, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.o

bb.o:                                             ; preds = %_ZN5QListI7QStringED2Ev.exit, %_ZN5QListIdED2Ev.exit40
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZNK13QCPAxisTicker9trimTicksERK8QCPRangeR5QListIdEb(ptr nofree readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 10 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load double, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.i = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.c ]
  %.03266 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp oge double %i.k, %i.h               ; 3 uses
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %.03266, 1                       ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp sgt i64 %i.d, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !442

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ], [ %i.l, %bb.c ]
  %.034 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.03266, %bb.b ]
  %i.p = trunc i64 %i.d to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = and i64 %i.d, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.s, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.t = and i64 %indvars.iv.next, 2147483648
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.v = and i64 %indvars.iv.next, 2147483647
  %4 = load ptr, ptr %i.q, align 8                ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %4, i64 %i.v
  %5 = load double, ptr %i.w, align 8
  %i.x = load double, ptr %i.r, align 8
  %i.y = fcmp ugt double %5, %i.x
  br i1 %i.y, label %bb.d, label %bb.f, !llvm.loop !443

bb.f:                                             ; preds = %bb.e
  br i1 %.lcssa, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw i64 %indvars.iv to i32
  %.neg = sext i1 %3 to i32
  %i.aa = add i32 %.034, %.neg                    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %.neg38 = select i1 %3, i32 -2, i32 -1
  %i.ac = add i32 %.neg38, %i.p
  %reass.sub = sub i32 %i.ac, %i.z                ; 2 uses
  %i.ad = add i32 %reass.sub, 1
  %i.ae = icmp ult i32 %reass.sub, 2147483647
  %or.cond3 = or i1 %i.ab, %i.ae
  br i1 %or.cond3, label %bb.h, label %_ZN5QListIdED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0) ; 2 uses
  %i.af = zext nneg i32 %.sroa.speculated51 to i64 ; 3 uses
  %i.ag = icmp slt i64 %i.d, %i.af
  br i1 %i.ag, label %_ZNK5QListIdE3midExx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %narrow = add nuw i32 %.sroa.speculated, %.sroa.speculated51
  %i.ah = zext i32 %narrow to i64
  %i.ai = sub nsw i64 %i.d, %i.ah
  %i.aj = sub nuw nsw i64 %i.d, %i.af
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 4 uses
  %i.ak = icmp slt i32 %i.aa, 1
  %i.al = icmp eq i64 %spec.select.i, %i.d
  %or.cond62 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not, label %_ZNK5QListIdE3midExx.exit, label %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIdED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = atomicrmw add ptr %i.am, i32 1 acq_rel, align 4, !noalias !446 ; 0 uses
  br label %_ZNK5QListIdE3midExx.exit

_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51, !noalias !446
  %i.ao = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8, i64 noundef %spec.select.i, i32 noundef 1) #51, !noalias !446 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 8) ]
  %i.ap = load ptr, ptr %i.b, align 8, !noalias !446 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51, !noalias !446
  %.idx.i = shl i64 %spec.select.i, 3             ; 3 uses
  %i.aq = icmp eq i64 %.idx.i, 0
  br i1 %i.aq, label %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i
  %i.ar = load ptr, ptr %i.q, align 8, !noalias !446
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.af
  %i.at = ashr exact i64 %.idx.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 %i.ao, ptr noundef align 1 %i.as, i64 noundef %.idx.i, i1 noundef false) #51
  br label %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i

_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i: ; preds = %bb.m, %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i
  %.sroa.10.0.i = phi i64 [ 0, %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i ], [ %i.at, %bb.m ] ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i2.i, label %_ZNK5QListIdE3midExx.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i:       ; preds = %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i
  %i.au = atomicrmw add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !446 ; 0 uses
  %i.av = atomicrmw sub ptr %i.ap, i32 1 acq_rel, align 4, !noalias !446
  %.not.i3.i = icmp eq i32 %i.av, 1
  br i1 %.not.i3.i, label %bb.n, label %_ZNK5QListIdE3midExx.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ap, i64 noundef 8, i64 noundef 8) #51, !noalias !446
  br label %_ZNK5QListIdE3midExx.exit

_ZNK5QListIdE3midExx.exit:                        ; preds = %bb.h, %bb.j, %bb.l, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i, %bb.n
  %.sroa.0.0.ph = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ %i.ap, %bb.n ], [ null, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %i.am, %bb.l ], [ %i.ap, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.sroa.9.0.ph = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ %i.ao, %bb.n ], [ %i.ao, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %4, %bb.l ], [ %i.ao, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.sroa.12.0.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ %.sroa.10.0.i, %bb.n ], [ %.sroa.10.0.i, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %i.d, %bb.l ], [ %.sroa.10.0.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  store ptr %.sroa.0.0.ph, ptr %2, align 8
  store ptr %.sroa.9.0.ph, ptr %i.q, align 8
  store i64 %.sroa.12.0.ph, ptr %i.c, align 8
  %.not.i.i.i.i39 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i39, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i:     ; preds = %_ZNK5QListIdE3midExx.exit
  %i.aw = atomicrmw sub ptr %.pr, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i.i, label %bb.o, label %_ZN5QListIdED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %.pr, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit

.thread:                                          ; preds = %bb.d, %bb.f
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5QListIdED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.ax = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i43, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i: ; preds = %bb.p
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i
  %i.ba = getelementptr i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i: ; preds = %bb.q, %bb.p
  %i.bc = phi i64 [ %i.bb, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.bd = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.bc, i32 noundef 1) #51 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bd, i64 8) ]
  %i.be = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  %i.bf = load ptr, ptr %2, align 8               ; 3 uses
  store ptr %i.be, ptr %2, align 8
  store ptr %i.bd, ptr %i.q, align 8
  store i64 0, ptr %i.c, align 8
  %.not.i.i.i44 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i44, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i2.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i2.i, label %bb.r, label %_ZN5QListIdED2Ev.exit

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bf, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit

bb.s:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i
  store i64 0, ptr %i.c, align 8
  br label %_ZN5QListIdED2Ev.exit

_ZN5QListIdED2Ev.exit:                            ; preds = %bb.k, %bb.s, %bb.r, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i, %.thread, %_ZNK5QListIdE3midExx.exit, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i, %bb.o, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #51
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
end_hunk_0
