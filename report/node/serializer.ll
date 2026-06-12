inline.NumInlined: 3219
inline.NumDeleted: 1086
begin_hunk_0_@_ZN2v88internal10Serializer16OutputStatisticsEPKc:bb.a
  br i1 %.not3393.1, label %bb.wl, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.1

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.1: ; preds = %bb.wk
  %i.hyu = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hyv = load ptr, ptr %i.hyu, align 8
  %i.hyw = getelementptr inbounds nuw i8, ptr %i.hyv, i64 17240
  %i.hyx = load i64, ptr %i.hyw, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.hyt, i64 noundef %i.hyx, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.311) #22
  br label %bb.wl

bb.wl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.1, %bb.wk
  %i.hyy = load ptr, ptr %i.x, align 8
  %i.hyz = getelementptr inbounds nuw i8, ptr %i.hyy, i64 8620
  %i.hza = load i32, ptr %i.hyz, align 4          ; 2 uses
  %.not3393.2 = icmp eq i32 %i.hza, 0
  br i1 %.not3393.2, label %.preheader4312, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.2

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.2: ; preds = %bb.wl
  %i.hzb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hzc = load ptr, ptr %i.hzb, align 8
  %i.hzd = getelementptr inbounds nuw i8, ptr %i.hzc, i64 17240
  %i.hze = load i64, ptr %i.hzd, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.hza, i64 noundef %i.hze, ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.311) #22
  br label %.preheader4312

.preheader4312:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4304.2, %bb.wl
  %i.hzf = load ptr, ptr %i.l, align 8
  %i.hzg = getelementptr inbounds nuw i8, ptr %i.hzf, i64 8624
  %i.hzh = load i32, ptr %i.hzg, align 4          ; 2 uses
  %.not3392 = icmp eq i32 %i.hzh, 0
  br i1 %.not3392, label %bb.wm, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306: ; preds = %.preheader4312
  %i.hzi = load ptr, ptr %i.m, align 8
  %i.hzj = getelementptr inbounds nuw i8, ptr %i.hzi, i64 17248
  %i.hzk = load i64, ptr %i.hzj, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.hzh, i64 noundef %i.hzk, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.312) #22
  br label %bb.wm

bb.wm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306, %.preheader4312
  %i.hzl = load ptr, ptr %i.r, align 8
  %i.hzm = getelementptr inbounds nuw i8, ptr %i.hzl, i64 8624
  %i.hzn = load i32, ptr %i.hzm, align 4          ; 2 uses
  %.not3392.1 = icmp eq i32 %i.hzn, 0
  br i1 %.not3392.1, label %bb.wn, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.1

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.1: ; preds = %bb.wm
  %i.hzo = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hzp = load ptr, ptr %i.hzo, align 8
  %i.hzq = getelementptr inbounds nuw i8, ptr %i.hzp, i64 17248
  %i.hzr = load i64, ptr %i.hzq, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.hzn, i64 noundef %i.hzr, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.312) #22
  br label %bb.wn

bb.wn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.1, %bb.wm
  %i.hzs = load ptr, ptr %i.x, align 8
  %i.hzt = getelementptr inbounds nuw i8, ptr %i.hzs, i64 8624
  %i.hzu = load i32, ptr %i.hzt, align 4          ; 2 uses
  %.not3392.2 = icmp eq i32 %i.hzu, 0
  br i1 %.not3392.2, label %.preheader4311, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.2

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.2: ; preds = %bb.wn
  %i.hzv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hzw = load ptr, ptr %i.hzv, align 8
  %i.hzx = getelementptr inbounds nuw i8, ptr %i.hzw, i64 17248
  %i.hzy = load i64, ptr %i.hzx, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.hzu, i64 noundef %i.hzy, ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.312) #22
  br label %.preheader4311

.preheader4311:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4306.2, %bb.wn
  %i.hzz = load ptr, ptr %i.l, align 8
  %i.iaa = getelementptr inbounds nuw i8, ptr %i.hzz, i64 8628
  %i.iab = load i32, ptr %i.iaa, align 4          ; 2 uses
  %.not3391 = icmp eq i32 %i.iab, 0
  br i1 %.not3391, label %bb.wo, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308: ; preds = %.preheader4311
  %i.iac = load ptr, ptr %i.m, align 8
  %i.iad = getelementptr inbounds nuw i8, ptr %i.iac, i64 17256
  %i.iae = load i64, ptr %i.iad, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.iab, i64 noundef %i.iae, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.313) #22
  br label %bb.wo

bb.wo:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308, %.preheader4311
  %i.iaf = load ptr, ptr %i.r, align 8
  %i.iag = getelementptr inbounds nuw i8, ptr %i.iaf, i64 8628
  %i.iah = load i32, ptr %i.iag, align 4          ; 2 uses
  %.not3391.1 = icmp eq i32 %i.iah, 0
  br i1 %.not3391.1, label %bb.wp, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.1

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.1: ; preds = %bb.wo
  %i.iai = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.iaj = load ptr, ptr %i.iai, align 8
  %i.iak = getelementptr inbounds nuw i8, ptr %i.iaj, i64 17256
  %i.ial = load i64, ptr %i.iak, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.iah, i64 noundef %i.ial, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.313) #22
  br label %bb.wp

bb.wp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.1, %bb.wo
  %i.iam = load ptr, ptr %i.x, align 8
  %i.ian = getelementptr inbounds nuw i8, ptr %i.iam, i64 8628
  %i.iao = load i32, ptr %i.ian, align 4          ; 2 uses
  %.not3391.2 = icmp eq i32 %i.iao, 0
  br i1 %.not3391.2, label %.preheader, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.2

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.2: ; preds = %bb.wp
  %i.iap = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.iaq = load ptr, ptr %i.iap, align 8
  %i.iar = getelementptr inbounds nuw i8, ptr %i.iaq, i64 17256
  %i.ias = load i64, ptr %i.iar, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.iao, i64 noundef %i.ias, ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.313) #22
  br label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4308.2, %bb.wp
  %i.iat = load ptr, ptr %i.l, align 8
  %i.iau = getelementptr inbounds nuw i8, ptr %i.iat, i64 8632
  %i.iav = load i32, ptr %i.iau, align 4          ; 2 uses
  %.not3390 = icmp eq i32 %i.iav, 0
  br i1 %.not3390, label %bb.wq, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310: ; preds = %.preheader
  %i.iaw = load ptr, ptr %i.m, align 8
  %i.iax = getelementptr inbounds nuw i8, ptr %i.iaw, i64 17264
  %i.iay = load i64, ptr %i.iax, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.iav, i64 noundef %i.iay, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.314) #22
  br label %bb.wq

bb.wq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310, %.preheader
  %i.iaz = load ptr, ptr %i.r, align 8
  %i.iba = getelementptr inbounds nuw i8, ptr %i.iaz, i64 8632
  %i.ibb = load i32, ptr %i.iba, align 4          ; 2 uses
  %.not3390.1 = icmp eq i32 %i.ibb, 0
  br i1 %.not3390.1, label %bb.wr, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.1

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.1: ; preds = %bb.wq
  %i.ibc = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ibd = load ptr, ptr %i.ibc, align 8
  %i.ibe = getelementptr inbounds nuw i8, ptr %i.ibd, i64 17264
  %i.ibf = load i64, ptr %i.ibe, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.ibb, i64 noundef %i.ibf, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.314) #22
  br label %bb.wr

bb.wr:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.1, %bb.wq
  %i.ibg = load ptr, ptr %i.x, align 8
  %i.ibh = getelementptr inbounds nuw i8, ptr %i.ibg, i64 8632
  %i.ibi = load i32, ptr %i.ibh, align 4          ; 2 uses
  %.not3390.2 = icmp eq i32 %i.ibi, 0
  br i1 %.not3390.2, label %.sink.split, label %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.2

_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.2: ; preds = %bb.wr
  %i.ibj = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ibk = load ptr, ptr %i.ibj, align 8
  %i.ibl = getelementptr inbounds nuw i8, ptr %i.ibk, i64 17264
  %i.ibm = load i64, ptr %i.ibl, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.ibi, i64 noundef %i.ibm, ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.314) #22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.wr, %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.2, %bb.b
  %.str.4.sink = phi ptr [ @.str.1, %bb.b ], [ @.str.4, %_ZN2v88internal12_GLOBAL__N_18ToStringENS0_13SnapshotSpaceE.exit4310.2 ], [ @.str.4, %bb.wr ]
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull %.str.4.sink) #22
  br label %bb.ws

bb.ws:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10Serializer24SerializeDeferredObjectsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 7 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.315) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = icmp eq ptr %i.d, null
  %2 = insertelement <4 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr poison, ptr poison, ptr poison>, ptr %0, i64 2
  br label %.backedge

._crit_edge:                                      ; preds = %bb.i, %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i8 11, ptr %i.u, align 1
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.t, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.e:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 8 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775807
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.403) #24
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 9223372036854775807)
  %i.ah = select i1 %i.af, i64 9223372036854775807, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac ; 2 uses
  store i8 11, ptr %i.aj, align 1
  %i.ak = icmp sgt i64 %i.ac, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %i.s, align 8
  store ptr %i.al, ptr %i.t, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store ptr %i.am, ptr %i.v, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph15
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ap = load i32, ptr %i.l, align 8
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.l, align 8
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit
  br i1 %i.r, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.critedge.thread, !prof !13

.critedge.thread:                                 ; preds = %.backedge, %.critedge
  %.lcssa25 = phi i1 [ %i.bx, %.critedge ], [ true, %.backedge ] ; 2 uses
  store ptr %i.an, ptr %i.j, align 8
  %i.au = load i32, ptr %i.l, align 8
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.l, align 8
  %i.aw = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !14

bb.i:                                             ; preds = %.critedge.thread
  store ptr %i.ao, ptr %i.k, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.d) #22
  br i1 %.lcssa25, label %._crit_edge, label %.backedge.backedge

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.critedge.thread, %.critedge
  %.lcssa26 = phi i1 [ %i.bx, %.critedge ], [ %.lcssa25, %.critedge.thread ]
  br i1 %.lcssa26, label %._crit_edge, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.i
  br label %.backedge, !llvm.loop !15

.lr.ph:                                           ; preds = %.backedge, %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit
  %i.ax = phi ptr [ %i.bw, %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit ], [ %i.as, %.backedge ]
  %.1714 = phi i32 [ %i.bu, %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit ], [ 0, %.backedge ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  store ptr %i.ay, ptr %i.g, align 8
  %i.ba = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 560 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 568
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !17

bb.j:                                             ; preds = %.lr.ph
  %i.bg = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ba) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.lr.ph, %bb.j
  %.0.i8 = phi ptr [ %i.bg, %bb.j ], [ %i.bc, %.lr.ph ] ; 4 uses
  %i.bh = ptrtoint ptr %.0.i8 to i64
  %i.bi = add i64 %i.bh, 8
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %i.bb, align 8
  store i64 %i.az, ptr %.0.i8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = insertelement <4 x ptr> %2, ptr %i.bk, i64 1
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %.0.i8, i64 3
  store <4 x ptr> %i.bm, ptr %1, align 8
  store ptr %i.m, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  %i.bn = load i64, ptr %.0.i8, align 8
  %i.bo = call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.q, i64 noundef %i.bn) #22
  %.not.i9 = icmp eq ptr %i.bo, null
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !5, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  br i1 %.not.i9, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br i1 %i.bq, label %bb.l, label %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.365) #22
  %i.br = load ptr, ptr %i.n, align 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64 %i.bs, ptr noundef %i.bt) #22
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.366) #22
  br label %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.367) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %1, i32 noundef 0)
  br label %_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit

_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv.exit: ; preds = %bb.k, %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.bu = add nuw nsw i32 %.1714, 1
  %i.bv = load ptr, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw                ; 3 uses
  %i.by = icmp samesign ugt i32 %.1714, 1022
  %or.cond.not = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.not, label %.critedge, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10Serializer16ObjectSerializer17SerializeDeferredEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8
  %i.e = load i64, ptr %.sroa.02.0.copyload, align 8
  %i.f = tail call noundef ptr @_ZNK2v88internal15IdentityMapBase9FindEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.c, i64 noundef %i.e) #22
  %.not = icmp eq ptr %i.f, null
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.365) #22
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64 %i.j, ptr noundef %i.k) #22
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.366) #22
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.367) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10Serializer15SerializeObjectENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 6 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 272
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.a to i32
  %i.l = and i32 %i.k, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %i.p = and i32 %i.l, %i.o
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %.loopexit, !prof !19

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.w = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.d ] ; 2 uses
  %.014.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.d ]
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.a, %i.y
  br i1 %i.z, label %_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i64 %.014.i.i.i.i.i, 1
  %i.ab = and i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %.loopexit, !prof !19, !llvm.loop !20

_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = trunc i32 %i.ah to i16
  tail call void @_ZN2v88internal10Serializer7PutRootENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(600) %0, i16 noundef zeroext %i.ai)
  br label %bb.n

.loopexit:                                        ; preds = %bb.d, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp ult i16 %i.an, 128
  br i1 %i.ao, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.e
  %i.ap = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = and i16 %i.as, -121
  %i.au = icmp eq i16 %i.at, 5
  br i1 %i.au, label %bb.f, label %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 568
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ax) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.f, %bb.g
  %.0.i11 = phi ptr [ %i.bd, %bb.g ], [ %i.az, %bb.f ] ; 3 uses
  %i.be = ptrtoint ptr %.0.i11 to i64
  %i.bf = add i64 %i.be, 8
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ay, align 8
  store i64 %i.aw, ptr %.0.i11, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_10HeapObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit

_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.e, %_ZN2v88internal12IsThinStringENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit
  %i.bh = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
end_hunk_0
