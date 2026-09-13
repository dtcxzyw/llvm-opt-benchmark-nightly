Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtptngen?download=true
inline.NumInlined: 765
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv:bb.a

.noexc.9._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9_crit_edge: ; preds = %.noexc.9
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9: ; preds = %.noexc.9._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.8
  %i.bx = phi ptr [ %.pre21, %.noexc.9._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9_crit_edge ], [ %i.bq, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.8 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 720 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 728
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !32
  %i.cb = icmp ugt i16 %i.ca, 31
  br i1 %i.cb, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10, label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9
  %i.cc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.10 unwind label %bb.e  ; 0 uses

.noexc.10:                                        ; preds = %bb.o
  %i.cd = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.by)
          to label %.noexc.10._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10_crit_edge unwind label %bb.e ; 0 uses

.noexc.10._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10_crit_edge: ; preds = %.noexc.10
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10: ; preds = %.noexc.10._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9
  %i.ce = phi ptr [ %.pre22, %.noexc.10._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10_crit_edge ], [ %i.bx, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.9 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 784 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 792
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !32
  %i.ci = icmp ugt i16 %i.ch, 31
  br i1 %i.ci, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10
  %i.cj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.11 unwind label %bb.e  ; 0 uses

.noexc.11:                                        ; preds = %bb.p
  %i.ck = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cf)
          to label %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge unwind label %bb.e ; 0 uses

.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge: ; preds = %.noexc.11
  %.pre23 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11: ; preds = %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10
  %i.cl = phi ptr [ %.pre23, %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge ], [ %i.ce, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 848 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 856
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !32
  %i.cp = icmp ugt i16 %i.co, 31
  br i1 %i.cp, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.12 unwind label %bb.e  ; 0 uses

.noexc.12:                                        ; preds = %bb.q
  %i.cr = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cm)
          to label %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge unwind label %bb.e ; 0 uses

.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge: ; preds = %.noexc.12
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12: ; preds = %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11
  %i.cs = phi ptr [ %.pre24, %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge ], [ %i.cl, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 912 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 920
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !32
  %i.cw = icmp ugt i16 %i.cv, 31
  br i1 %i.cw, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12
  %i.cx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.13 unwind label %bb.e  ; 0 uses

.noexc.13:                                        ; preds = %bb.r
  %i.cy = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ct)
          to label %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge unwind label %bb.e ; 0 uses

.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge: ; preds = %.noexc.13
  %.pre25 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13: ; preds = %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12
  %i.cz = phi ptr [ %.pre25, %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge ], [ %i.cs, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 976 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 984
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !32
  %i.dd = icmp ugt i16 %i.dc, 31
  br i1 %i.dd, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13
  %i.de = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.14 unwind label %bb.e  ; 0 uses

.noexc.14:                                        ; preds = %bb.s
  %i.df = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.da)
          to label %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge unwind label %bb.e ; 0 uses

.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge: ; preds = %.noexc.14
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14: ; preds = %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13
  %i.dg = phi ptr [ %.pre26, %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge ], [ %i.cz, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1040 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1048
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp ugt i16 %i.dj, 31
  br i1 %i.dk, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14
  %i.dl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.15 unwind label %bb.e  ; 0 uses

.noexc.15:                                        ; preds = %bb.t
  %i.dm = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dh)
          to label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15 unwind label %bb.e ; 0 uses

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15: ; preds = %.noexc.15, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.u:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSink13fillInMissingEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113, !nonnull !110, !align !111 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.h = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %indvars.iv ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp ugt i16 %i.j, 31
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 70, ptr %i.d, align 2, !tbaa !78
  %i.l = load i16, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.r, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %indvars.iv to i16
  %i.v = or disjoint i16 %i.u, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.v, ptr %i.c, align 2, !tbaa !78
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 49, ptr %i.b, align 2, !tbaa !78
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = trunc i64 %indvars.iv to i16
  %i.z = add nuw nsw i16 %i.y, 38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.z, ptr %i.a, align 2, !tbaa !78
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h) ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.c ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 1104
  %i.ad = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !32
  %i.ag = icmp ugt i16 %i.af, 31
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
  %i.ai = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %1) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.pre27 = load ptr, ptr %i.e, align 8, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %.pre27, %bb.i ], [ %i.ac, %bb.h ]
  %3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 1104
  %i.ak = getelementptr inbounds nuw [192 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = load i16, ptr %i.al, align 8, !tbaa !32
  %i.an = icmp ugt i16 %i.am, 31
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ap)
  %i.aq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %1) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator13initHashtableER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.c, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #28 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !75
  %i.g = load i32, ptr %1, align 4, !tbaa !29
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789HashtableD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.j = invoke ptr @uhash_init_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.k = load i32, ptr %1, align 4, !tbaa !29
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.thread18, label %bb.f

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %i.e, align 8, !tbaa !75
  %i.m = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit unwind label %bb.h ; 0 uses

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %bb.c
  %i.n = load i32, ptr %1, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.f
  %.pre = load i32, ptr %1, align 4, !tbaa !29
  %i.p = icmp sgt i32 %.pre, 0
  br i1 %i.p, label %.thread18, label %.thread

.thread:                                          ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit
  store ptr %i.e, ptr %i.c, align 8, !tbaa !56
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #28
  resume { ptr, i32 } %i.q

.thread18:                                        ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit, %.noexc
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN6icu_789HashtableD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread18
  invoke void @uhash_close_78(ptr noundef nonnull %.pr)
          to label %_ZN6icu_789HashtableD2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZN6icu_789HashtableD2Ev.exit.i:                  ; preds = %bb.d, %bb.i, %.thread18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #28
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit: ; preds = %bb.g, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, %_ZN6icu_789HashtableD2Ev.exit.i, %.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator19getAppendItemFormatE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17setAppendItemNameE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getAppendItemNameE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %3 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7824DateTimePatternGenerator26getMutableFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator13getAppendNameE21UDateTimePatternFieldRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.j, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = icmp slt i16 %i.p, 0
  %i.r = ashr i16 %i.p, 5
  %i.s = sext i16 %i.r to i32
end_hunk_0
