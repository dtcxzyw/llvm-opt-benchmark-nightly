Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN13QCPAxisTicker8generateERK8QCPRangeRK7QLocale5QChariR5QListIdEPS8_PS7_I7QStringE:bb.a
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
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

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
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !271

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
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !272

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
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load double, ptr %i.x, align 8
  %i.z = load double, ptr %i.r, align 8
  %i.aa = fcmp ugt double %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.f, !llvm.loop !273

bb.f:                                             ; preds = %bb.e
  br i1 %.lcssa, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc nuw i64 %indvars.iv to i32
  %.neg = sext i1 %3 to i32
  %i.ac = add i32 %.034, %.neg                    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %.neg38 = select i1 %3, i32 -2, i32 -1
  %i.ae = add i32 %.neg38, %i.p
  %reass.sub = sub i32 %i.ae, %i.ab               ; 2 uses
  %i.af = add i32 %reass.sub, 1
  %i.ag = icmp ult i32 %reass.sub, 2147483647
  %or.cond3 = or i1 %i.ad, %i.ag
  br i1 %or.cond3, label %bb.h, label %_ZN5QListIdED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 2 uses
  %i.ah = zext nneg i32 %.sroa.speculated51 to i64 ; 3 uses
  %i.ai = icmp slt i64 %i.d, %i.ah
  br i1 %i.ai, label %_ZNK5QListIdE3midExx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %narrow = add nuw i32 %.sroa.speculated, %.sroa.speculated51
  %i.aj = zext i32 %narrow to i64
  %i.ak = sub nsw i64 %i.d, %i.aj
  %i.al = sub nuw nsw i64 %i.d, %i.ah
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al) ; 4 uses
  %i.am = icmp slt i32 %i.ac, 1
  %i.an = icmp eq i64 %spec.select.i, %i.d
  %or.cond62 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not, label %_ZNK5QListIdE3midExx.exit, label %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIdED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = atomicrmw add ptr %i.ao, i32 1 acq_rel, align 4, !noalias !274 ; 0 uses
  br label %_ZNK5QListIdE3midExx.exit

_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51, !noalias !274
  %i.aq = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8, i64 noundef %spec.select.i, i32 noundef 1) #51, !noalias !274 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 8) ]
  %i.ar = load ptr, ptr %i.b, align 8, !noalias !274 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51, !noalias !274
  %.idx.i = shl i64 %spec.select.i, 3             ; 3 uses
  %i.as = icmp eq i64 %.idx.i, 0
  br i1 %i.as, label %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i
  %i.at = load ptr, ptr %i.q, align 8, !noalias !274
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.ah
  %i.av = ashr exact i64 %.idx.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 %i.aq, ptr noundef align 1 %i.au, i64 noundef %.idx.i, i1 noundef false) #51
  br label %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i

_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i: ; preds = %bb.m, %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i
  %.sroa.10.0.i = phi i64 [ 0, %_ZN9QtPrivate20QContainerImplHelper3midExPxS1_.exit.i ], [ %i.av, %bb.m ] ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2.i, label %_ZNK5QListIdE3midExx.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i:       ; preds = %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i
  %i.aw = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !274 ; 0 uses
  %i.ax = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4, !noalias !274
  %.not.i3.i = icmp eq i32 %i.ax, 1
  br i1 %.not.i3.i, label %bb.n, label %_ZNK5QListIdE3midExx.exit

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ar, i64 noundef 8, i64 noundef 8) #51, !noalias !274
  br label %_ZNK5QListIdE3midExx.exit

_ZNK5QListIdE3midExx.exit:                        ; preds = %bb.h, %bb.j, %bb.l, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i, %bb.n
  %.sroa.0.0.ph = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ %i.ar, %bb.n ], [ null, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %i.ao, %bb.l ], [ %i.ar, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.sroa.9.0.ph = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ %i.aq, %bb.n ], [ %i.aq, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %i.w, %bb.l ], [ %i.aq, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.sroa.12.0.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ %.sroa.10.0.i, %bb.n ], [ %.sroa.10.0.i, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit.i ], [ %i.d, %bb.l ], [ %.sroa.10.0.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i ]
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  store ptr %.sroa.0.0.ph, ptr %2, align 8
  store ptr %.sroa.9.0.ph, ptr %i.q, align 8
  store i64 %.sroa.12.0.ph, ptr %i.c, align 8
  %.not.i.i.i.i39 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i39, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i:     ; preds = %_ZNK5QListIdE3midExx.exit
  %i.ay = atomicrmw sub ptr %.pr, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i.i, label %bb.o, label %_ZN5QListIdED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %.pr, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit

.thread:                                          ; preds = %bb.d, %bb.f
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5QListIdED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.az = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.az, null
  br i1 %.not.i.i43, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i: ; preds = %bb.p
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i: ; preds = %bb.q, %bb.p
  %i.be = phi i64 [ %i.bd, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.bf = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.be, i32 noundef 1) #51 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 8) ]
  %i.bg = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  %i.bh = load ptr, ptr %2, align 8               ; 3 uses
  store ptr %i.bg, ptr %2, align 8
  store ptr %i.bf, ptr %i.q, align 8
  store i64 0, ptr %i.c, align 8
  %.not.i.i.i44 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i44, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i
  %i.bi = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %.not.i2.i = icmp eq i32 %i.bi, 1
  br i1 %.not.i2.i, label %bb.r, label %_ZN5QListIdED2Ev.exit

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i45
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bh, i64 noundef 8, i64 noundef 8) #51
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
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !271

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #51
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZN13QCPAxisTicker11getTickStepERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(24) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8
  %i.c = load double, ptr %1, align 8
  %i.d = fsub double %i.b, %i.c
  %i.e = getelementptr i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sitofp i32 %i.f to double
  %i.h = fadd double %i.g, 1.000000e-10
  %i.i = fdiv double %i.d, %i.h
  %i.j = tail call noundef double @_ZNK13QCPAxisTicker13cleanMantissaEd(ptr noundef align 8 dereferenceable_or_null(24) %0, double noundef %i.i)
  ret double %i.j
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK13QCPAxisTicker13cleanMantissaEd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(24) %0, double noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %2 = alloca %class.QList.58, align 8            ; 25 uses
  %i.f = tail call double @log10(double noundef %1) #51
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = tail call double @pow(double noundef 1.000000e+01, double noundef %i.g) #51 ; 4 uses
  %i.i = fdiv double %1, %i.h                     ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8
  switch i32 %i.k, label %bb.t [
    i32 0, label %bb.b
    i32 1, label %bb.q
  ]

end_hunk_0
begin_hunk_1_@_ZN28QCPColorScaleAxisRectPrivate19updateGradientImageEv:bb.a
bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.ah

bb.h:                                             ; preds = %.lr.ph102, %bb.j
  %.040100 = phi i32 [ 0, %.lr.ph102 ], [ %i.ay, %bb.j ] ; 3 uses
  %i.at = invoke noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %i.af, i32 noundef %.040100)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.at, ptr %i.a, align 8
  %i.au = load i64, ptr %i.am, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIPjE7emplaceIJRS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.k

.noexc62:                                         ; preds = %bb.i
  %i.av = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc62
  %i.aw = load atomic i32, ptr %i.av monotonic, align 4
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.j

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i, %.noexc62
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = add nuw nsw i32 %.040100, 1
  %exitcond117.not = icmp eq i32 %.040100, %reass.sub
  br i1 %exitcond117.not, label %._crit_edge103, label %bb.h, !llvm.loop !951

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.i, %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %._crit_edge103
  %i.ba = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i64, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, label %bb.m

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i, %bb.l
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void @_ZN16QCPColorGradient8colorizeEPKdRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.ao, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bf, i32 noundef %i.i, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.bg = icmp sgt i32 %i.ae, 1
  br i1 %i.bg, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.n
  %i.bh = shl nsw i64 %i.j, 2
  %wide.trip.count121 = zext nneg i32 %i.ae to i64
  br label %bb.q

._crit_edge107:                                   ; preds = %bb.r, %bb.n
  %i.bi = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN5QListIPjED2Ev.exit, label %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i

_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i:      ; preds = %._crit_edge107
  %i.bj = atomicrmw sub ptr %i.bi, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i, label %bb.o, label %_ZN5QListIPjED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i
  %i.bk = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bk, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPjED2Ev.exit

_ZN5QListIPjED2Ev.exit:                           ; preds = %._crit_edge107, %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.loopexit

bb.p:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, %bb.m, %._crit_edge103
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph106, %bb.r
  %indvars.iv118 = phi i64 [ 1, %.lr.ph106 ], [ %indvars.iv.next119, %bb.r ] ; 2 uses
  %i.bm = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv118
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i66, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67: ; preds = %bb.q
  %i.bq = load atomic i32, ptr %i.bp monotonic, align 4
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68, label %bb.r

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67, %bb.q
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge unwind label %bb.s

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68
  %.pre = load ptr, ptr %i.bd, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67
  %i.bs = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge ], [ %i.bm, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67 ]
  %i.bt = load ptr, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bo, ptr noundef align 1 %i.bt, i64 noundef %i.bh, i1 noundef false) #51
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge107, label %bb.q, !llvm.loop !952

bb.s:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.k
  %.pn52 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %i.bu, %bb.s ], [ %i.bl, %bb.p ]
  %i.bv = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i71, label %_ZN5QListIPjED2Ev.exit74, label %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72

_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72:    ; preds = %bb.t
  %i.bw = atomicrmw sub ptr %i.bv, i32 1 acq_rel, align 4
  %.not.i.i73 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i73, label %bb.u, label %_ZN5QListIPjED2Ev.exit74

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72
  %i.bx = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPjED2Ev.exit74

_ZN5QListIPjED2Ev.exit74:                         ; preds = %bb.t, %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.ah

bb.v:                                             ; preds = %._crit_edge
  %.sroa.4.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i77 to i32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i75 to i32
  %reass.sub115 = sub i32 %.sroa.4.8.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.by = add i32 %reass.sub115, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  invoke void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef %i.by, i32 noundef %i.i, i32 noundef 6)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %1, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  store ptr null, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  store ptr %i.cc, ptr %i.cd, align 8
  store ptr %i.ce, ptr %i.ca, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %1) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br i1 %i.p, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %bb.w
  %i.cf = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = icmp ult i32 %reass.sub115, 2147483647
  %wide.trip.count131 = zext nneg i32 %i.i to i64
  %wide.trip.count126 = zext i32 %i.by to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.by, 8
  %n.vec = and i64 %wide.trip.count126, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count126
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph114, %._crit_edge111
  %indvars.iv128 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next129, %._crit_edge111 ] ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ck = invoke noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %i.bz, i32 noundef %i.cj)
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.f, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 200
  %9 = trunc i64 %indvars.iv128 to i32
  %i.cn = sub i32 %i.cf, %9
  %10 = zext nneg i32 %i.cn to i64
  %i.co = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i80, label %_ZN5QListIdE6detachEv.exit.i84, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81: ; preds = %bb.z
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %_ZN5QListIdE6detachEv.exit.i84, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82

_ZN5QListIdE6detachEv.exit.i84:                   ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81, %bb.z
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc87 unwind label %bb.ae

.noexc87:                                         ; preds = %_ZN5QListIdE6detachEv.exit.i84
  %.pre.i85 = load ptr, ptr %3, align 8           ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %.pre.i85, null
  br i1 %.not.i.i.i.i.i86, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82: ; preds = %.noexc87, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81
  %i.cr = phi ptr [ %.pre.i85, %.noexc87 ], [ %i.co, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81 ]
  %i.cs = load atomic i32, ptr %i.cr monotonic, align 4
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, label %bb.aa

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82, %.noexc87
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83
  %i.cu = load ptr, ptr %i.m, align 8
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %10
  %i.cw = load double, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %8, double noundef 0.000000e+00, double noundef %i.cg)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cx = invoke noundef i32 @_ZN16QCPColorGradient5colorEdRK8QCPRangeb(ptr noundef align 8 dereferenceable_or_null(73) %i.cm, double noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.af     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br i1 %i.ch, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.ac
  br i1 %min.iters.check, label %.lr.ph110.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !953

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader144

.lr.ph110.preheader144:                           ; preds = %.lr.ph110.preheader, %middle.block
  %indvars.iv123.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110, %middle.block, %bb.ac
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %bb.y, !llvm.loop !954

bb.ad:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, %_ZN5QListIdE6detachEv.exit.i84
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab, %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ah

.lr.ph110:                                        ; preds = %.lr.ph110.preheader144, %.lr.ph110
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.lr.ph110 ], [ %indvars.iv123.ph, %.lr.ph110.preheader144 ] ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv123
  store i32 %i.cx, ptr %i.de, align 4
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge111, label %.lr.ph110, !llvm.loop !955

.loopexit:                                        ; preds = %._crit_edge111, %bb.w, %_ZN5QListIPjED2Ev.exit
  %i.df = getelementptr i8, ptr %0, i64 464
  store i8 0, ptr %i.df, align 8
  %i.dg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i90, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i:       ; preds = %.loopexit
  %i.dh = atomicrmw sub ptr %i.dg, i32 1 acq_rel, align 4
  %.not.i.i91 = icmp eq i32 %i.dh, 1
  br i1 %.not.i.i91, label %bb.ag, label %_ZN5QListIdED2Ev.exit

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i
  %i.di = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.di, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit

_ZN5QListIdED2Ev.exit:                            ; preds = %.loopexit, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZNK5QRect7isEmptyEv.exit.thread

_ZNK5QRect7isEmptyEv.exit.thread:                 ; preds = %bb.a, %_ZNK5QRect7isEmptyEv.exit, %_ZN5QListIdED2Ev.exit
  ret void

bb.ah:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %bb.x, %_ZN5QListIPjED2Ev.exit74, %bb.g, %bb.d
  %.pn54 = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn52, %_ZN5QListIPjED2Ev.exit74 ], [ %i.as, %bb.g ], [ %i.ci, %bb.x ], [ %i.db, %bb.ad ], [ %i.dd, %bb.af ], [ %i.dc, %bb.ae ]
  %i.dj = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i92, label %_ZN5QListIdED2Ev.exit95, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93:     ; preds = %bb.ah
  %i.dk = atomicrmw sub ptr %i.dj, i32 1 acq_rel, align 4
  %.not.i.i94 = icmp eq i32 %i.dk, 1
  br i1 %.not.i.i94, label %bb.ai, label %_ZN5QListIdED2Ev.exit95

bb.ai:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93
  %i.dl = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dl, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit95

_ZN5QListIdED2Ev.exit95:                          ; preds = %bb.ah, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  resume { ptr, i32 } %.pn54
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(24) ptr @_ZN6QImageaSEOS_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %class.QImage, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.e, ptr %i.a, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPColorScaleAxisRectPrivate20axisSelectionChangedE6QFlagsIN7QCPAxis14SelectablePartEE(ptr noundef align 8 dereferenceable_or_null(465) %0, i32 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.QList.211, align 8           ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 8, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %bb.b

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 4, ptr %i.c, align 4
  %i.i = load i64, ptr %i.e, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc23 unwind label %bb.q

.noexc23:                                         ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21: ; preds = %.noexc23
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %bb.c

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22: ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21, %.noexc23
  invoke void @_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21, %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4
  %i.m = load i64, ptr %i.e, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.c
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
end_hunk_1
