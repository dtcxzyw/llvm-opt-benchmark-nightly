Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86CallingConv?download=true
inline.NumInlined: 4000
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZL23CC_X86_32_Vector_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
    i16 112, label %.critedge
    i16 124, label %.critedge
    i16 136, label %.critedge
    i16 154, label %.critedge
    i16 49, label %.critedge2
    i16 63, label %.critedge2
    i16 77, label %.critedge2
    i16 96, label %.critedge2
    i16 113, label %.critedge2
    i16 125, label %.critedge2
    i16 140, label %.critedge2
    i16 156, label %.critedge2
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !323, !range !299, !noundef !300
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !324  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.f = add i64 %i.e, 31
  %i.g = and i64 %i.f, -16                        ; 2 uses
  %i.h = sub i64 0, %i.g
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.c:                                             ; preds = %.critedge
  %i.i = add i64 %i.e, 15
  %i.j = and i64 %i.i, -16                        ; 2 uses
  %i.k = add nsw i64 %i.j, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  store i64 %.sink, ptr %i.d, align 8, !tbaa !324
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.l, align 8, !tbaa !325
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 4)
  store i8 %.sroa.speculated.i, ptr %i.l, align 8, !tbaa !325
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %4, i8 4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %0, ptr %i.n, align 8, !tbaa !316, !alias.scope !909
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !alias.scope !909
  %i.q = and i8 %i.p, -128
  %i.r = trunc i32 %3 to i8
  %i.s = shl i8 %i.r, 1
  %i.t = and i8 %i.s, 126
  %i.u = or disjoint i8 %i.q, %i.t
  store i8 %i.u, ptr %i.o, align 4, !alias.scope !909
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %1, ptr %i.v, align 2, !tbaa !317, !alias.scope !909
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2, ptr %i.w, align 8, !tbaa !317, !alias.scope !909
  store i8 1, ptr %i.m, align 8, !tbaa !305, !alias.scope !909
  store i64 %.0.i, ptr %5, align 8, !tbaa !326, !alias.scope !909
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !320 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !321
  %.not.i.i = icmp ult i32 %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !322

bb.d:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(26) %5)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.e:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.ad = zext i32 %i.aa to i64
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !301
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !320
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !320
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.f

.critedge2:                                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ai = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %4, i32 noundef 32, i8 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.ak, align 8, !tbaa !316, !alias.scope !910
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !alias.scope !910
  %i.an = and i8 %i.am, -128
  %i.ao = trunc i32 %3 to i8
  %i.ap = shl i8 %i.ao, 1
  %i.aq = and i8 %i.ap, 126
  %i.ar = or disjoint i8 %i.an, %i.aq
  store i8 %i.ar, ptr %i.al, align 4, !alias.scope !910
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.as, align 2, !tbaa !317, !alias.scope !910
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %2, ptr %i.at, align 8, !tbaa !317, !alias.scope !910
  store i8 1, ptr %i.aj, align 8, !tbaa !305, !alias.scope !910
  store i64 %i.ai, ptr %6, align 8, !tbaa !326, !alias.scope !910
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %4, ptr noundef nonnull align 8 dereferenceable(26) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.f

.critedge4:                                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.au = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %4, i32 noundef 64, i8 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.aw, align 8, !tbaa !316, !alias.scope !911
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !alias.scope !911
  %i.az = and i8 %i.ay, -128
  %i.ba = trunc i32 %3 to i8
  %i.bb = shl i8 %i.ba, 1
  %i.bc = and i8 %i.bb, 126
  %i.bd = or disjoint i8 %i.az, %i.bc
  store i8 %i.bd, ptr %i.ax, align 4, !alias.scope !911
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.be, align 2, !tbaa !317, !alias.scope !911
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %2, ptr %i.bf, align 8, !tbaa !317, !alias.scope !911
  store i8 1, ptr %i.av, align 8, !tbaa !305, !alias.scope !911
  store i64 %i.au, ptr %7, align 8, !tbaa !326, !alias.scope !911
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %4, ptr noundef nonnull align 8 dereferenceable(26) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.critedge4, %.critedge2, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit
  %.0 = phi i1 [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit ], [ false, %.critedge2 ], [ false, %.critedge4 ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11CC_X86_IntrRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %.0.val, i16 %.0.val1, i16 %.0.val3, i32 %.0.val5, ptr noundef nonnull align 8 dereferenceable(420) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330, !nonnull !300, !align !319
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !935  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 522
  %i.i = load i8, ptr %i.h, align 2, !tbaa !298, !range !299, !noundef !300
  %i.j = trunc nuw i8 %i.i to i1                  ; 4 uses
  switch i32 %i.e, label %.critedge [
    i32 1, label %bb.b
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %.0.val, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = select i1 %i.j, i32 40, i32 20           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i8, ptr %i.m, align 8, !tbaa !323, !range !299, !noundef !300
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !324  ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or disjoint i32 %i.l, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %i.q, %i.s
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %i.v = sub i64 0, %i.u
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %i.q, 3
  %i.x = and i64 %i.w, -4                         ; 2 uses
  %i.y = zext nneg i32 %i.l to i64
  %i.z = add nsw i64 %i.x, %i.y
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %i.u, %bb.d ], [ %i.z, %bb.e ]
  %.0.i = phi i64 [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  store i64 %.sink, ptr %i.p, align 8, !tbaa !324
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %2 = select i1 %i.j, i64 8, i64 4
  switch i32 %.0.val, label %.critedge [
    i32 0, label %bb.j
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = select i1 %i.j, i32 48, i32 24          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !323, !range !299, !noundef !300
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !324 ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = or disjoint i32 %i.aa, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %i.af, %i.ah
  %i.aj = and i64 %i.ai, -4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit29

bb.i:                                             ; preds = %bb.g
  %i.ak = add i64 %i.af, 3
  %i.al = and i64 %i.ak, -4
  %i.am = zext nneg i32 %i.aa to i64
  %i.an = add nsw i64 %i.al, %i.am
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit29

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit29: ; preds = %bb.h, %bb.i
  %storemerge = phi i64 [ %i.an, %bb.i ], [ %i.aj, %bb.h ]
  store i64 %storemerge, ptr %i.ae, align 8, !tbaa !324
  br label %.sink.split

.critedge:                                        ; preds = %bb.f, %bb.a, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext true) #9
  unreachable

.sink.split:                                      ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit29
  %.0.ph = phi i64 [ 0, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit29 ], [ %.0.i, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i27 = load i8, ptr %i.ao, align 8, !tbaa !325
  %.sroa.speculated.i28 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i27, i8 2)
  store i8 %.sroa.speculated.i28, ptr %i.ao, align 8, !tbaa !325
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 2) #8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  %.0 = phi i64 [ %2, %bb.f ], [ %.0.ph, %.sink.split ]
  %i.ap = icmp eq i32 %i.e, 2
  %or.cond = and i1 %i.ap, %i.j
  %3 = select i1 %or.cond, i64 8, i64 0
  %spec.select = add i64 %.0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %4 = and i64 %spec.select, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.0.val, ptr %i.ar, align 8, !tbaa !316, !alias.scope !936
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !alias.scope !936
  %i.au = and i8 %i.at, -128
  %i.av = trunc i32 %.0.val5 to i8
  %i.aw = shl i8 %i.av, 1
  %i.ax = and i8 %i.aw, 126
  %i.ay = or disjoint i8 %i.au, %i.ax
  store i8 %i.ay, ptr %i.as, align 4, !alias.scope !936
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %.0.val1, ptr %i.az, align 2, !tbaa !317, !alias.scope !936
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %.0.val3, ptr %i.ba, align 8, !tbaa !317, !alias.scope !936
  store i8 1, ptr %i.aq, align 8, !tbaa !305, !alias.scope !936
  store i64 %4, ptr %1, align 8, !tbaa !326, !alias.scope !936
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !320 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !321
  %.not.i.i = icmp ult i32 %i.be, %i.bg
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !322

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = zext i32 %i.be to i64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !301
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !320
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !320
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18CC_X86_32_FastCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = icmp eq i16 %2, 2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %4, 2
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %4 to i1
  %. = select i1 %i.c, i32 2, i32 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.025.0 = phi i16 [ 5, %bb.b ], [ 5, %bb.c ], [ %2, %bb.a ] ; 5 uses
  %.043 = phi i32 [ 1, %bb.b ], [ %., %bb.c ], [ %3, %bb.a ] ; 5 uses
  %i.d = and i64 %4, 128
  %.not62 = icmp eq i64 %i.d, 0
  br i1 %.not62, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301
  %i.g = load i32, ptr %i.f, align 4, !tbaa !302
  %i.h = and i32 %i.g, 4194304
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread39

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 22) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !305, !alias.scope !945
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.j, align 8, !tbaa !316, !alias.scope !945
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !945
  %i.m = and i8 %i.l, -128
  %i.n = trunc i32 %.043 to i8
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 126
  %i.q = or disjoint i8 %i.m, %i.p
  store i8 %i.q, ptr %i.k, align 4, !alias.scope !945
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.r, align 2, !tbaa !317, !alias.scope !945
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %.sroa.025.0, ptr %i.s, align 8, !tbaa !317, !alias.scope !945
  store i32 22, ptr %7, align 8, !tbaa !302, !alias.scope !945
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !320  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !321
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !322

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.h:                                             ; preds = %bb.f
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !301
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !320
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.y

_ZN4llvm7CCState11AllocateRegEt.exit.thread39:    ; preds = %bb.e, %bb.d
  %i.ae = and i64 %4, 8
  %.not63 = icmp eq i64 %i.ae, 0
  br i1 %.not63, label %.thread54, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread39
  switch i16 %.sroa.025.0, label %.thread54 [
    i16 5, label %bb.j
    i16 6, label %bb.o
    i16 7, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !301
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !302 ; 2 uses
  %i.ai = and i32 %i.ah, 2048
  %.not.i.i52 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i52, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ah, 524288
  %.not.i.i52.1 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i52.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread54

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.k, %bb.j
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18CC_X86_32_FastCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !303 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.al) #8
  %i.am = zext i16 %i.al to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !305, !alias.scope !946
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !316, !alias.scope !946
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !946
  %i.ar = and i8 %i.aq, -128
  %i.as = trunc i32 %.043 to i8
  %i.at = shl i8 %i.as, 1
  %i.au = and i8 %i.at, 126
  %i.av = or disjoint i8 %i.ar, %i.au
  store i8 %i.av, ptr %i.ap, align 4, !alias.scope !946
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.aw, align 2, !tbaa !317, !alias.scope !946
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 5, ptr %i.ax, align 8, !tbaa !317, !alias.scope !946
  store i32 %i.am, ptr %8, align 8, !tbaa !302, !alias.scope !946
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !321
  %.not.i.i53 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i53, label %bb.m, label %bb.l, !prof !322

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !301
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !320
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !320
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.y

bb.o:                                             ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !301
  %.pre73 = load i32, ptr %.pre, align 4, !tbaa !302 ; 2 uses
  %i.bj = and i32 %.pre73, 8192
  %.not.i.i56 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i56, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = and i32 %.pre73, 2097152
  %.not.i.i56.1 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i56.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %.thread54

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59: ; preds = %bb.p, %bb.o
end_hunk_0
