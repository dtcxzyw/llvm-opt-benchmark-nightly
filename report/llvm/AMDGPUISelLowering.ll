Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelLowering?download=true
inline.NumInlined: 5945
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZL9CC_AMDGPUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 44
  br i1 %exitcond.not.i.1, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread, label %bb.g, !llvm.loop !467

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i: ; preds = %bb.h, %bb.g
  %.lcssa67 = phi i16 [ %i.o, %bb.g ], [ %i.z, %bb.h ]
  %.lcssa65 = phi i32 [ %i.p, %bb.g ], [ %i.aa, %bb.h ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa67) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.ai, align 8, !tbaa !469, !alias.scope !471
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.aj, align 8, !tbaa !474, !alias.scope !471
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4, !alias.scope !471
  %i.am = and i8 %i.al, -128
  %i.an = trunc i32 %.019.i to i8
  %i.ao = shl i8 %i.an, 1
  %i.ap = and i8 %i.ao, 126
  %i.aq = or disjoint i8 %i.am, %i.ap
  store i8 %i.aq, ptr %i.ak, align 4, !alias.scope !471
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.ar, align 2, !tbaa !64, !alias.scope !471
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %.sroa.029.0.i, ptr %i.as, align 8, !tbaa !64, !alias.scope !471
  store i32 %.lcssa65, ptr %8, align 8, !tbaa !81, !alias.scope !471
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !484 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !485
  %.not.i.i23.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not.i.i23.i, label %bb.k, label %bb.j, !prof !486

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  %i.az = zext i32 %i.aw to i64
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !484
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !484
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.thread53.i:                                      ; preds = %bb.e
  switch i16 %.sroa.029.0.i, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread [
    i16 14, label %.critedge2.i
    i16 7, label %.critedge2.i
    i16 13, label %.critedge2.i
    i16 6, label %.critedge2.i
    i16 56, label %.critedge2.i
    i16 106, label %.critedge2.i
    i16 12, label %.critedge2.i
    i16 121, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.thread53.i, %.thread53.i, %.thread53.i, %.thread53.i, %.thread53.i, %.thread53.i, %.thread53.i, %.thread53.i
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.critedge2.i
  %indvars.iv69.i = phi i64 [ 0, %.critedge2.i ], [ %indvars.iv.next70.i.1, %bb.o ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv69.i
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !66 ; 2 uses
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  %i.bj = lshr i32 %i.bi, 5
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !81
  %i.bn = and i32 %i.bi, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bo, %i.bm
  %.not.i.i25.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i25.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit28.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv69.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !66 ; 2 uses
  %i.bt = zext i16 %i.bs to i32                   ; 3 uses
  %i.bu = lshr i32 %i.bt, 5
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !81
  %i.by = and i32 %i.bt, 31
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = and i32 %i.bz, %i.bx
  %.not.i.i25.i.1 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i25.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit28.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond72.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, 136
  br i1 %exitcond72.not.i.1, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread, label %bb.m, !llvm.loop !467

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit28.i: ; preds = %bb.n, %bb.m
  %.lcssa62 = phi i16 [ %i.bh, %bb.m ], [ %i.bs, %bb.n ]
  %.lcssa = phi i32 [ %i.bi, %bb.m ], [ %i.bt, %bb.n ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa62) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cb, align 8, !tbaa !469, !alias.scope !487
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.cc, align 8, !tbaa !474, !alias.scope !487
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 4, !alias.scope !487
  %i.cf = and i8 %i.ce, -128
  %i.cg = trunc i32 %.019.i to i8
  %i.ch = shl i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 126
  %i.cj = or disjoint i8 %i.cf, %i.ci
  store i8 %i.cj, ptr %i.cd, align 4, !alias.scope !487
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.ck, align 2, !tbaa !64, !alias.scope !487
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.029.0.i, ptr %i.cl, align 8, !tbaa !64, !alias.scope !487
  store i32 %.lcssa, ptr %9, align 8, !tbaa !81, !alias.scope !487
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !484 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !485
  %.not.i.i29.i = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i.i29.i, label %bb.q, label %bb.p, !prof !486

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit28.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit28.i
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !484
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.co, align 8, !tbaa !484
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread: ; preds = %bb.i, %bb.o, %bb.f, %.thread53.i
  %i.cx = load i32, ptr %7, align 8, !tbaa !490
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.s, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread44

bb.s:                                             ; preds = %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread
  %i.cz = tail call noundef zeroext i1 @_ZL14CC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.cz, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread44, label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread44: ; preds = %bb.a, %bb.s, %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread
  br label %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit: ; preds = %bb.r, %bb.l, %bb.s, %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread44
  %.0 = phi i1 [ true, %_ZL12CC_SI_SHADERjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.thread44 ], [ false, %bb.s ], [ false, %bb.l ], [ false, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL18CC_AMDGPU_CS_CHAINjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 8
  %.not84 = icmp eq i64 %i.a, 0
  br i1 %.not84, label %.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %.thread76 [
    i16 14, label %.critedge
    i16 7, label %.critedge
    i16 13, label %.critedge
    i16 6, label %.critedge
    i16 56, label %.critedge
    i16 106, label %.critedge
    i16 12, label %.critedge
    i16 121, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18CC_AMDGPU_CS_CHAINjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %i.e = load i16, ptr %i.d, align 4, !tbaa !66   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 3 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv, 104
  br i1 %exitcond.not, label %.thread76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %10 = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18CC_AMDGPU_CS_CHAINjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.n = load i16, ptr %11, align 2, !tbaa !66    ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = lshr i32 %i.o, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81
  %i.t = and i32 %i.o, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not.i.i.1 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.c

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.e, %bb.c
  %.lcssa119 = phi i16 [ %i.e, %bb.c ], [ %i.n, %bb.e ]
  %.lcssa117 = phi i32 [ %i.f, %bb.c ], [ %i.o, %bb.e ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa119) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !469, !alias.scope !491
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.x, align 8, !tbaa !474, !alias.scope !491
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !alias.scope !491
  %i.aa = and i8 %i.z, -128
  %i.ab = trunc i32 %3 to i8
  %i.ac = shl i8 %i.ab, 1
  %i.ad = and i8 %i.ac, 126
  %i.ae = or disjoint i8 %i.aa, %i.ad
  store i8 %i.ae, ptr %i.y, align 4, !alias.scope !491
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.af, align 2, !tbaa !64, !alias.scope !491
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.ag, align 8, !tbaa !64, !alias.scope !491
  store i32 %.lcssa117, ptr %8, align 8, !tbaa !81, !alias.scope !491
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !484 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !485
  %.not.i.i22 = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i22, label %bb.h, label %bb.g, !prof !486

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.an = zext i32 %i.ak to i64
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !484
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !484
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.thread76

.thread77:                                        ; preds = %bb.a
  switch i16 %2, label %.thread76 [
    i16 14, label %.critedge2
    i16 7, label %.critedge2
    i16 13, label %.critedge2
    i16 6, label %.critedge2
    i16 56, label %.critedge2
    i16 106, label %.critedge2
    i16 12, label %.critedge2
    i16 121, label %.critedge2
  ]

.critedge2:                                       ; preds = %.thread77, %.thread77, %.thread77, %.thread77, %.thread77, %.thread77, %.thread77, %.thread77
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.critedge2
  %indvars.iv92 = phi i64 [ 0, %.critedge2 ], [ %indvars.iv.next93.1, %bb.m ] ; 4 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18CC_AMDGPU_CS_CHAINjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %indvars.iv92
  %i.av = load i16, ptr %i.au, align 4, !tbaa !66 ; 2 uses
  %i.aw = zext i16 %i.av to i32                   ; 3 uses
  %i.ax = lshr i32 %i.aw, 5
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !81
  %i.bb = and i32 %i.aw, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %i.ba
  %.not.i.i24 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond95.not = icmp eq i64 %indvars.iv92, 246
  br i1 %exitcond95.not, label %.thread76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %12 = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18CC_AMDGPU_CS_CHAINjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %indvars.iv92
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 2
  %i.be = load i16, ptr %13, align 2, !tbaa !66   ; 2 uses
  %i.bf = zext i16 %i.be to i32                   ; 3 uses
  %i.bg = lshr i32 %i.bf, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !81
  %i.bk = and i32 %i.bf, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not.i.i24.1 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i24.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv92, 2
  br label %bb.j

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27: ; preds = %bb.l, %bb.j
  %.lcssa114 = phi i16 [ %i.av, %bb.j ], [ %i.be, %bb.l ]
  %.lcssa = phi i32 [ %i.aw, %bb.j ], [ %i.bf, %bb.l ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa114) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bn, align 8, !tbaa !469, !alias.scope !494
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.bo, align 8, !tbaa !474, !alias.scope !494
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 4, !alias.scope !494
  %i.br = and i8 %i.bq, -128
  %i.bs = trunc i32 %3 to i8
  %i.bt = shl i8 %i.bs, 1
  %i.bu = and i8 %i.bt, 126
  %i.bv = or disjoint i8 %i.br, %i.bu
  store i8 %i.bv, ptr %i.bp, align 4, !alias.scope !494
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bw, align 2, !tbaa !64, !alias.scope !494
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.bx, align 8, !tbaa !64, !alias.scope !494
  store i32 %.lcssa, ptr %9, align 8, !tbaa !81, !alias.scope !494
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !484 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !485
  %.not.i.i28 = icmp ult i32 %i.cb, %i.cd
  br i1 %.not.i.i28, label %bb.o, label %bb.n, !prof !486

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27
  %i.ce = zext i32 %i.cb to i64
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.ch = load i32, ptr %i.ca, align 8, !tbaa !484
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.ca, align 8, !tbaa !484
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread76

.thread76:                                        ; preds = %bb.d, %bb.k, %.thread77, %bb.b, %bb.p, %bb.i
  %.3 = phi i1 [ false, %bb.i ], [ false, %bb.p ], [ true, %bb.b ], [ true, %bb.k ], [ true, %.thread77 ], [ true, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL14CC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 32
  %.not171 = icmp eq i64 %i.a, 0
  br i1 %.not171, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %8, align 8, !tbaa !26
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #25
  br label %.thread155

bb.c:                                             ; preds = %bb.a
  switch i16 %2, label %.thread139 [
    i16 2, label %bb.d
    i16 5, label %.critedge
    i16 6, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = and i64 %4, 2
  %.not173 = icmp eq i64 %i.b, 0
  br i1 %.not173, label %bb.e, label %.thread139

bb.e:                                             ; preds = %bb.d
  %i.c = trunc i64 %4 to i1
  %. = select i1 %i.c, i32 2, i32 3
  br label %.thread139

.critedge:                                        ; preds = %bb.c, %bb.c
  %i.d = and i64 %4, 2
  %.not172 = icmp eq i64 %i.d, 0
  br i1 %.not172, label %bb.f, label %.thread139

bb.f:                                             ; preds = %.critedge
  %i.e = trunc i64 %4 to i1                       ; 2 uses
  %spec.select = select i1 %i.e, i16 7, i16 %2
  %spec.select175 = select i1 %i.e, i32 2, i32 %3
  br label %.thread139

.thread139:                                       ; preds = %bb.f, %bb.c, %.critedge, %bb.d, %bb.e
  %.sroa.0100.1 = phi i16 [ 7, %bb.d ], [ 7, %.critedge ], [ %spec.select, %bb.f ], [ %2, %bb.c ], [ 7, %bb.e ] ; 6 uses
  %.138 = phi i32 [ 1, %bb.d ], [ 1, %.critedge ], [ %spec.select175, %bb.f ], [ %3, %bb.c ], [ %., %bb.e ] ; 3 uses
  %i.f = and i64 %4, 8
  %.not174 = icmp eq i64 %i.f, 0
  br i1 %.not174, label %.thread147, label %bb.g

bb.g:                                             ; preds = %.thread139
  switch i16 %.sroa.0100.1, label %.thread155 [
    i16 14, label %.critedge2
    i16 7, label %.critedge2
    i16 13, label %.critedge2
    i16 6, label %.critedge2
    i16 56, label %.critedge2
    i16 106, label %.critedge2
    i16 12, label %.critedge2
    i16 121, label %.critedge2
    i16 2, label %.critedge4
  ]

.critedge2:                                       ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81   ; 28 uses
  %i.k = and i32 %i.j, 16
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge2
  %i.l = and i32 %i.j, 32
  %.not.i.i.1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.j, 64
  %.not.i.i.2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = and i32 %i.j, 128
  %.not.i.i.3 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = and i32 %i.j, 256
  %.not.i.i.4 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i32 %i.j, 512
  %.not.i.i.5 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = and i32 %i.j, 1024
  %.not.i.i.6 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = and i32 %i.j, 2048
  %.not.i.i.7 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = and i32 %i.j, 4096
  %.not.i.i.8 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = and i32 %i.j, 8192
  %.not.i.i.9 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = and i32 %i.j, 16384
  %.not.i.i.10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = and i32 %i.j, 32768
  %.not.i.i.11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = and i32 %i.j, 65536
  %.not.i.i.12 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = and i32 %i.j, 131072
  %.not.i.i.13 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = and i32 %i.j, 262144
  %.not.i.i.14 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = and i32 %i.j, 524288
  %.not.i.i.15 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = and i32 %i.j, 1048576
  %.not.i.i.16 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = and i32 %i.j, 2097152
  %.not.i.i.17 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ac = and i32 %i.j, 4194304
  %.not.i.i.18 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ad = and i32 %i.j, 8388608
  %.not.i.i.19 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ae = and i32 %i.j, 16777216
  %.not.i.i.20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.af = and i32 %i.j, 33554432
  %.not.i.i.21 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ag = and i32 %i.j, 67108864
  %.not.i.i.22 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ah = and i32 %i.j, 134217728
  %.not.i.i.23 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ai = and i32 %i.j, 268435456
  %.not.i.i.24 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aj = and i32 %i.j, 536870912
  %.not.i.i.25 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ak = and i32 %i.j, 1073741824
  %.not.i.i.26 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.26, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.27 = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.27, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !81 ; 2 uses
  %i.an = and i32 %i.am, 1
  %.not.i.i.28 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.28, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ao = and i32 %i.am, 2
  %.not.i.i.29 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.29, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread147

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.critedge2
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 8, %bb.o ], [ 9, %bb.p ], [ 10, %bb.q ], [ 11, %bb.r ], [ 12, %bb.s ], [ 13, %bb.t ], [ 14, %bb.u ], [ 15, %bb.v ], [ 16, %bb.w ], [ 17, %bb.x ], [ 18, %bb.y ], [ 19, %bb.z ], [ 20, %bb.aa ], [ 21, %bb.ab ], [ 22, %bb.ac ], [ 23, %bb.ad ], [ 24, %bb.ae ], [ 25, %bb.af ], [ 26, %bb.ag ], [ 27, %bb.ah ], [ 28, %bb.ai ], [ 29, %bb.aj ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !66 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.aq) #25
  %i.ar = zext i16 %i.aq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.as, align 8, !tbaa !469, !alias.scope !497
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.at, align 8, !tbaa !474, !alias.scope !497
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !alias.scope !497
  %i.aw = and i8 %i.av, -128
  %i.ax = trunc i32 %.138 to i8
  %i.ay = shl i8 %i.ax, 1
  %i.az = and i8 %i.ay, 126
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.au, align 4, !alias.scope !497
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bb, align 2, !tbaa !64, !alias.scope !497
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.0100.1, ptr %i.bc, align 8, !tbaa !64, !alias.scope !497
  store i32 %i.ar, ptr %9, align 8, !tbaa !81, !alias.scope !497
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !484 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !485
  %.not.i.i43 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i43, label %bb.al, label %bb.ak, !prof !486

bb.ak:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.am

bb.al:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !484
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !484
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread155

.thread147:                                       ; preds = %bb.aj, %.thread139
  switch i16 %.sroa.0100.1, label %.thread155 [
    i16 121, label %.critedge4
    i16 106, label %.critedge4
    i16 56, label %.critedge4
    i16 14, label %.critedge4
    i16 13, label %.critedge4
    i16 12, label %.critedge4
    i16 7, label %.critedge4
    i16 6, label %.critedge4
    i16 2, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.g, %.thread147, %.thread147, %.thread147, %.thread147, %.thread147, %.thread147, %.thread147, %.thread147, %.thread147
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !81 ; 26 uses
  %i.bs = and i32 %i.br, 64
  %.not.i.i45 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i45, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.an

bb.an:                                            ; preds = %.critedge4
  %i.bt = and i32 %i.br, 128
  %.not.i.i45.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i45.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bu = and i32 %i.br, 256
  %.not.i.i45.2 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i45.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bv = and i32 %i.br, 512
  %.not.i.i45.3 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i45.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = and i32 %i.br, 1024
  %.not.i.i45.4 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i45.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bx = and i32 %i.br, 2048
  %.not.i.i45.5 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i45.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.by = and i32 %i.br, 4096
  %.not.i.i45.6 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i45.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = and i32 %i.br, 8192
  %.not.i.i45.7 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i45.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ca = and i32 %i.br, 16384
  %.not.i.i45.8 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i45.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cb = and i32 %i.br, 32768
  %.not.i.i45.9 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i45.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cc = and i32 %i.br, 65536
  %.not.i.i45.10 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i45.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cd = and i32 %i.br, 131072
  %.not.i.i45.11 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i45.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = and i32 %i.br, 262144
  %.not.i.i45.12 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i45.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cf = and i32 %i.br, 524288
  %.not.i.i45.13 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i45.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cg = and i32 %i.br, 1048576
  %.not.i.i45.14 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i45.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ch = and i32 %i.br, 2097152
  %.not.i.i45.15 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i45.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ci = and i32 %i.br, 4194304
  %.not.i.i45.16 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i45.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cj = and i32 %i.br, 8388608
  %.not.i.i45.17 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i45.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ck = and i32 %i.br, 16777216
  %.not.i.i45.18 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i45.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cl = and i32 %i.br, 33554432
  %.not.i.i45.19 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i45.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cm = and i32 %i.br, 67108864
  %.not.i.i45.20 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i45.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cn = and i32 %i.br, 134217728
  %.not.i.i45.21 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i45.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.co = and i32 %i.br, 268435456
  %.not.i.i45.22 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i45.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cp = and i32 %i.br, 536870912
  %.not.i.i45.23 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i45.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cq = and i32 %i.br, 1073741824
  %.not.i.i45.24 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i45.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i45.25 = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i45.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !81 ; 6 uses
  %i.ct = and i32 %i.cs, 1
end_hunk_0
begin_hunk_1_@_ZL14CC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.eq = shl i8 %i.ep, 1
  %i.er = and i8 %i.eq, 126
  %i.es = or disjoint i8 %i.eo, %i.er
  store i8 %i.es, ptr %i.em, align 4, !alias.scope !505
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.et, align 2, !tbaa !64, !alias.scope !505
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %.sroa.0100.1, ptr %i.eu, align 8, !tbaa !64, !alias.scope !505
  store i8 1, ptr %i.ek, align 8, !tbaa !469, !alias.scope !505
  store i64 %.0.i, ptr %11, align 8, !tbaa !508, !alias.scope !505
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !484 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !485
  %.not.i.i51 = icmp ult i32 %i.ey, %i.fa
  br i1 %.not.i.i51, label %bb.by, label %bb.bx, !prof !486

bb.bx:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit52

bb.by:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.fb = zext i32 %i.ey to i64
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.fe = load i32, ptr %i.ex, align 8, !tbaa !484
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.ex, align 8, !tbaa !484
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit52

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit52: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.thread155

.thread155:                                       ; preds = %bb.g, %.thread147, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48.thread, %bb.bu, %bb.am, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit52, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit52 ], [ false, %bb.am ], [ false, %bb.bu ], [ true, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit48.thread ], [ true, %.thread147 ], [ true, %bb.g ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL9CC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 8
  %.not116 = icmp eq i64 %i.a, 0
  br i1 %.not116, label %.thread109, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %bb.bq [
    i16 14, label %.critedge
    i16 7, label %.critedge
    i16 13, label %.critedge
    i16 6, label %.critedge
    i16 56, label %.critedge
    i16 106, label %.critedge
    i16 12, label %.critedge
    i16 121, label %.critedge
    i16 2, label %.critedge4
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81   ; 24 uses
  %i.f = and i32 %i.e, 256
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = and i32 %i.e, 512
  %.not.i.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 1024
  %.not.i.i.2 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.e, 2048
  %.not.i.i.3 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %i.e, 4096
  %.not.i.i.4 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.e, 8192
  %.not.i.i.5 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i32 %i.e, 16384
  %.not.i.i.6 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.e, 32768
  %.not.i.i.7 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = and i32 %i.e, 65536
  %.not.i.i.8 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = and i32 %i.e, 131072
  %.not.i.i.9 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i32 %i.e, 262144
  %.not.i.i.10 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = and i32 %i.e, 524288
  %.not.i.i.11 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = and i32 %i.e, 1048576
  %.not.i.i.12 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = and i32 %i.e, 2097152
  %.not.i.i.13 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = and i32 %i.e, 4194304
  %.not.i.i.14 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = and i32 %i.e, 8388608
  %.not.i.i.15 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = and i32 %i.e, 16777216
  %.not.i.i.16 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = and i32 %i.e, 33554432
  %.not.i.i.17 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = and i32 %i.e, 67108864
  %.not.i.i.18 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = and i32 %i.e, 134217728
  %.not.i.i.19 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = and i32 %i.e, 268435456
  %.not.i.i.20 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = and i32 %i.e, 536870912
  %.not.i.i.21 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = and i32 %i.e, 1073741824
  %.not.i.i.22 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i.23 = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81 ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i.i.24 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.af = and i32 %i.ad, 2
  %.not.i.i.25 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread108

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ]
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @_ZZL9CC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !66 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ah) #25
  %i.ai = zext i16 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.aj, align 8, !tbaa !469, !alias.scope !509
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.ak, align 8, !tbaa !474, !alias.scope !509
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !alias.scope !509
  %i.an = and i8 %i.am, -128
  %i.ao = trunc i32 %3 to i8
  %i.ap = shl i8 %i.ao, 1
  %i.aq = and i8 %i.ap, 126
  %i.ar = or disjoint i8 %i.an, %i.aq
  store i8 %i.ar, ptr %i.al, align 4, !alias.scope !509
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.as, align 2, !tbaa !64, !alias.scope !509
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.at, align 8, !tbaa !64, !alias.scope !509
  store i32 %i.ai, ptr %8, align 8, !tbaa !81, !alias.scope !509
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !484 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !485
  %.not.i.i32 = icmp ult i32 %i.ax, %i.az
  br i1 %.not.i.i32, label %bb.ac, label %bb.ab, !prof !486

bb.ab:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !484
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !484
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bq

.thread109:                                       ; preds = %bb.a
  switch i16 %2, label %bb.bq [
    i16 14, label %.critedge2
    i16 7, label %.critedge2
    i16 13, label %.critedge2
    i16 6, label %.critedge2
    i16 56, label %.critedge2
    i16 106, label %.critedge2
    i16 12, label %.critedge2
    i16 121, label %.critedge2
    i16 2, label %.critedge4
  ]

.critedge2:                                       ; preds = %.thread109, %.thread109, %.thread109, %.thread109, %.thread109, %.thread109, %.thread109, %.thread109
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81 ; 26 uses
  %i.bj = and i32 %i.bi, 64
  %.not.i.i34 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i34, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ae

bb.ae:                                            ; preds = %.critedge2
  %i.bk = and i32 %i.bi, 128
  %.not.i.i34.1 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i34.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = and i32 %i.bi, 256
  %.not.i.i34.2 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i34.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = and i32 %i.bi, 512
  %.not.i.i34.3 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i34.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = and i32 %i.bi, 1024
  %.not.i.i34.4 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i34.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bo = and i32 %i.bi, 2048
  %.not.i.i34.5 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i34.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = and i32 %i.bi, 4096
  %.not.i.i34.6 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i34.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = and i32 %i.bi, 8192
  %.not.i.i34.7 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i34.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.br = and i32 %i.bi, 16384
  %.not.i.i34.8 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i34.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bs = and i32 %i.bi, 32768
  %.not.i.i34.9 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i34.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bt = and i32 %i.bi, 65536
  %.not.i.i34.10 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i34.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bu = and i32 %i.bi, 131072
  %.not.i.i34.11 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i34.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bv = and i32 %i.bi, 262144
  %.not.i.i34.12 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i34.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = and i32 %i.bi, 524288
  %.not.i.i34.13 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i34.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bx = and i32 %i.bi, 1048576
  %.not.i.i34.14 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i34.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.by = and i32 %i.bi, 2097152
  %.not.i.i34.15 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i34.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = and i32 %i.bi, 4194304
  %.not.i.i34.16 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i34.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ca = and i32 %i.bi, 8388608
  %.not.i.i34.17 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i34.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cb = and i32 %i.bi, 16777216
  %.not.i.i34.18 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i34.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cc = and i32 %i.bi, 33554432
  %.not.i.i34.19 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i34.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cd = and i32 %i.bi, 67108864
  %.not.i.i34.20 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i34.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = and i32 %i.bi, 134217728
  %.not.i.i34.21 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i34.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cf = and i32 %i.bi, 268435456
  %.not.i.i34.22 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i34.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cg = and i32 %i.bi, 536870912
  %.not.i.i34.23 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i34.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ch = and i32 %i.bi, 1073741824
  %.not.i.i34.24 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i34.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i34.25 = icmp sgt i32 %i.bi, -1
  br i1 %.not.i.i34.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81 ; 6 uses
  %i.ck = and i32 %i.cj, 1
end_hunk_1
begin_hunk_2_@_ZL9CC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.cu, align 8, !tbaa !474, !alias.scope !512
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !alias.scope !512
  %i.cx = and i8 %i.cw, -128
  %i.cy = trunc i32 %3 to i8
  %i.cz = shl i8 %i.cy, 1
  %i.da = and i8 %i.cz, 126
  %i.db = or disjoint i8 %i.cx, %i.da
  store i8 %i.db, ptr %i.cv, align 4, !alias.scope !512
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.dc, align 2, !tbaa !64, !alias.scope !512
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.dd, align 8, !tbaa !64, !alias.scope !512
  store i32 %i.cs, ptr %9, align 8, !tbaa !81, !alias.scope !512
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !484 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !485
  %.not.i.i38 = icmp ult i32 %i.dh, %i.dj
  br i1 %.not.i.i38, label %bb.bk, label %bb.bj, !prof !486

bb.bj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.bl

bb.bk:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  %i.dk = zext i32 %i.dh to i64
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.dn = load i32, ptr %i.dg, align 8, !tbaa !484
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dg, align 8, !tbaa !484
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bq

.thread108:                                       ; preds = %bb.bi, %bb.aa
  switch i16 %2, label %bb.bq [
    i16 7, label %.critedge4
    i16 14, label %.critedge4
    i16 56, label %.critedge4
    i16 106, label %.critedge4
    i16 6, label %.critedge4
    i16 13, label %.critedge4
    i16 121, label %.critedge4
    i16 12, label %.critedge4
  ]

.critedge4:                                       ; preds = %.thread108, %.thread109, %bb.b, %.thread108, %.thread108, %.thread108, %.thread108, %.thread108, %.thread108, %.thread108
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !503, !range !18, !noundef !19
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !504 ; 2 uses
  br i1 %i.dr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.critedge4
  %i.du = add i64 %i.dt, 7
  %i.dv = and i64 %i.du, -4                       ; 2 uses
  %i.dw = sub i64 0, %i.dv
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.bn:                                            ; preds = %.critedge4
  %i.dx = add i64 %i.dt, 3
  %i.dy = and i64 %i.dx, -4                       ; 2 uses
  %i.dz = add nsw i64 %i.dy, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.bm, %bb.bn
  %.sink = phi i64 [ %i.dv, %bb.bm ], [ %i.dz, %bb.bn ]
  %.0.i = phi i64 [ %i.dw, %bb.bm ], [ %i.dy, %bb.bn ]
  store i64 %.sink, ptr %i.ds, align 8, !tbaa !504
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ea, align 8, !tbaa !26
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 2)
  store i8 %.sroa.speculated.i, ptr %i.ea, align 8, !tbaa !26
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.ec, align 8, !tbaa !474, !alias.scope !515
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !515
  %i.ef = and i8 %i.ee, -128
  %i.eg = trunc i32 %3 to i8
  %i.eh = shl i8 %i.eg, 1
  %i.ei = and i8 %i.eh, 126
  %i.ej = or disjoint i8 %i.ef, %i.ei
  store i8 %i.ej, ptr %i.ed, align 4, !alias.scope !515
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.ek, align 2, !tbaa !64, !alias.scope !515
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.el, align 8, !tbaa !64, !alias.scope !515
  store i8 1, ptr %i.eb, align 8, !tbaa !469, !alias.scope !515
  store i64 %.0.i, ptr %10, align 8, !tbaa !508, !alias.scope !515
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !484 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !485
  %.not.i.i40 = icmp ult i32 %i.ep, %i.er
  br i1 %.not.i.i40, label %bb.bp, label %bb.bo, !prof !486

bb.bo:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41

bb.bp:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.es = zext i32 %i.ep to i64
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.ev = load i32, ptr %i.eo, align 8, !tbaa !484
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !484
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bq

bb.bq:                                            ; preds = %.thread109, %bb.b, %.thread108, %bb.bl, %bb.ad, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41
  %.3 = phi i1 [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41 ], [ false, %bb.ad ], [ false, %bb.bl ], [ true, %.thread109 ], [ true, %.thread108 ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm18AMDGPUCallLowering19CCAssignFnForReturnEjb(i32 noundef %0, i1 zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 9, label %bb.c
    i32 8, label %bb.c
    i32 87, label %bb.e
    i32 88, label %bb.e
    i32 89, label %bb.e
    i32 90, label %bb.e
    i32 104, label %bb.e
    i32 105, label %bb.e
    i32 93, label %bb.e
    i32 96, label %bb.e
    i32 95, label %bb.e
    i32 100, label %bb.b
    i32 124, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ @_ZL17RetCC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.c ], [ @_ZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.b ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ], [ @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readonly captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread97 [
    i16 2, label %.critedge
    i16 6, label %.critedge
    i16 7, label %.critedge2
    i16 56, label %.critedge2.fold.split105
  ]

.critedge:                                        ; preds = %bb.a, %bb.a
  %i.a = and i64 %4, 2
  %.not107 = icmp eq i64 %i.a, 0
  br i1 %.not107, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %.critedge
  %i.b = trunc i64 %4 to i1
  br i1 %i.b, label %.critedge2, label %.thread86

.thread86:                                        ; preds = %bb.b
  %cond = icmp eq i16 %2, 6
  br i1 %cond, label %.critedge2, label %.thread97

.critedge2.fold.split105:                         ; preds = %bb.a
  br label %.critedge2

.critedge2:                                       ; preds = %.thread86, %bb.b, %bb.a, %.critedge2.fold.split105, %.critedge
  %i.c = phi i1 [ true, %bb.b ], [ true, %.critedge ], [ true, %bb.a ], [ false, %.critedge2.fold.split105 ], [ false, %.thread86 ] ; 4 uses
  %.02383 = phi i32 [ 2, %bb.b ], [ 1, %.critedge ], [ %3, %bb.a ], [ %3, %.critedge2.fold.split105 ], [ %3, %.thread86 ] ; 5 uses
  %.sroa.062.081 = phi i16 [ 7, %bb.b ], [ 7, %.critedge ], [ %2, %bb.a ], [ %2, %.critedge2.fold.split105 ], [ 6, %.thread86 ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, 254
  %spec.select.i.i = icmp eq i32 %i.f, 18
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type13getScalarTypeEv.exit, label %_ZNK4llvm4Type13getScalarTypeEv.exit.thread

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %.critedge2
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !518
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %.thread97, label %_ZNK4llvm4Type13getScalarTypeEv.exit29

_ZNK4llvm4Type13getScalarTypeEv.exit.thread:      ; preds = %.critedge2
  %i.n = and i32 %i.e, 255                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %.thread97, label %_ZNK4llvm4Type13getScalarTypeEv.exit29

_ZNK4llvm4Type13getScalarTypeEv.exit29:           ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread
  %.pre-phi = phi i32 [ %i.n, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread ], [ %i.l, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.p = icmp eq i32 %.pre-phi, 0
  br i1 %i.p, label %.thread97, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit29
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 4, !tbaa !66   ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 3 uses
  %i.v = lshr i32 %i.u, 5
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = and i32 %i.u, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.aa, %i.y
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %10 = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_SI_ShaderjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.ac = load i16, ptr %11, align 2, !tbaa !66   ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = lshr i32 %i.ad, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.ai = and i32 %i.ad, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, %i.ah
  %.not.i.i.1 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 44
  br i1 %exitcond.not.1, label %.thread97, label %bb.d, !llvm.loop !467

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.e, %bb.d
  %.lcssa139 = phi i16 [ %i.t, %bb.d ], [ %i.ac, %bb.e ]
  %.lcssa137 = phi i32 [ %i.u, %bb.d ], [ %i.ad, %bb.e ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa139) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.al, align 8, !tbaa !469, !alias.scope !522
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.am, align 8, !tbaa !474, !alias.scope !522
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !alias.scope !522
  %i.ap = and i8 %i.ao, -128
  %i.aq = trunc i32 %.02383 to i8
  %i.ar = shl i8 %i.aq, 1
  %i.as = and i8 %i.ar, 126
  %i.at = or disjoint i8 %i.ap, %i.as
  store i8 %i.at, ptr %i.an, align 4, !alias.scope !522
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.au, align 2, !tbaa !64, !alias.scope !522
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %.sroa.062.081, ptr %i.av, align 8, !tbaa !64, !alias.scope !522
  store i32 %.lcssa137, ptr %8, align 8, !tbaa !81, !alias.scope !522
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !484 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !485
  %.not.i.i30 = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i30, label %bb.h, label %bb.g, !prof !486

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !484
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !484
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.thread103

.thread97:                                        ; preds = %bb.f, %.thread86, %bb.a, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread, %_ZNK4llvm4Type13getScalarTypeEv.exit, %_ZNK4llvm4Type13getScalarTypeEv.exit29
  %12 = phi i1 [ %i.c, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread ], [ %i.c, %_ZNK4llvm4Type13getScalarTypeEv.exit ], [ %i.c, %_ZNK4llvm4Type13getScalarTypeEv.exit29 ], [ false, %bb.a ], [ false, %.thread86 ], [ %i.c, %bb.f ]
  %.02385 = phi i32 [ %.02383, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread ], [ %.02383, %_ZNK4llvm4Type13getScalarTypeEv.exit ], [ %.02383, %_ZNK4llvm4Type13getScalarTypeEv.exit29 ], [ %3, %bb.a ], [ %3, %.thread86 ], [ %.02383, %bb.f ]
  %.sroa.062.080 = phi i16 [ %.sroa.062.081, %_ZNK4llvm4Type13getScalarTypeEv.exit.thread ], [ %.sroa.062.081, %_ZNK4llvm4Type13getScalarTypeEv.exit ], [ %.sroa.062.081, %_ZNK4llvm4Type13getScalarTypeEv.exit29 ], [ %2, %bb.a ], [ %2, %.thread86 ], [ %.sroa.062.081, %bb.f ] ; 3 uses
  switch i16 %.sroa.062.080, label %bb.j [
    i16 14, label %.critedge4
    i16 13, label %.critedge4
    i16 106, label %.critedge4
    i16 12, label %.critedge4
    i16 121, label %.critedge4
  ]

bb.j:                                             ; preds = %.thread97
  br i1 %12, label %.critedge4, label %switch.early.test

switch.early.test:                                ; preds = %bb.j
  switch i16 %.sroa.062.080, label %.thread103 [
    i16 56, label %.critedge4
    i16 6, label %.critedge4
  ]

.critedge4:                                       ; preds = %switch.early.test, %switch.early.test, %bb.j, %.thread97, %.thread97, %.thread97, %.thread97, %.thread97
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.critedge4
  %indvars.iv113 = phi i64 [ 0, %.critedge4 ], [ %indvars.iv.next114.1, %bb.m ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv113
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !66 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 3 uses
  %i.bm = lshr i32 %i.bl, 5
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !81
  %i.bq = and i32 %i.bl, 31
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = and i32 %i.br, %i.bp
  %.not.i.i32 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i32, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit35, label %bb.l

bb.l:                                             ; preds = %bb.k
  %13 = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv113
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.bt = load i16, ptr %14, align 2, !tbaa !66   ; 2 uses
  %i.bu = zext i16 %i.bt to i32                   ; 3 uses
  %i.bv = lshr i32 %i.bu, 5
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !81
  %i.bz = and i32 %i.bu, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.by
  %.not.i.i32.1 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i32.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit35, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond116.not.1 = icmp eq i64 %indvars.iv.next114.1, 136
  br i1 %exitcond116.not.1, label %.thread103, label %bb.k, !llvm.loop !467

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit35: ; preds = %bb.l, %bb.k
  %.lcssa135 = phi i16 [ %i.bk, %bb.k ], [ %i.bt, %bb.l ]
  %.lcssa = phi i32 [ %i.bl, %bb.k ], [ %i.bu, %bb.l ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa135) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !469, !alias.scope !525
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.cd, align 8, !tbaa !474, !alias.scope !525
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4, !alias.scope !525
  %i.cg = and i8 %i.cf, -128
  %i.ch = trunc i32 %.02385 to i8
  %i.ci = shl i8 %i.ch, 1
  %i.cj = and i8 %i.ci, 126
  %i.ck = or disjoint i8 %i.cg, %i.cj
  store i8 %i.ck, ptr %i.ce, align 4, !alias.scope !525
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.cl, align 2, !tbaa !64, !alias.scope !525
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.062.080, ptr %i.cm, align 8, !tbaa !64, !alias.scope !525
  store i32 %.lcssa, ptr %9, align 8, !tbaa !81, !alias.scope !525
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !484 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !485
  %.not.i.i36 = icmp ult i32 %i.cq, %i.cs
  br i1 %.not.i.i36, label %bb.o, label %bb.n, !prof !486

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit35
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit35
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !484
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cp, align 8, !tbaa !484
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread103

.thread103:                                       ; preds = %bb.m, %switch.early.test, %bb.p, %bb.i
  %.3 = phi i1 [ false, %bb.i ], [ false, %bb.p ], [ true, %switch.early.test ], [ true, %bb.m ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread [
    i16 2, label %bb.b
    i16 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %4, 2
  %.not61 = icmp eq i64 %i.a, 0
  br i1 %.not61, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.b = trunc i64 %4 to i1
  %. = select i1 %i.b, i32 2, i32 3
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.c = and i64 %4, 2
  %.not60 = icmp eq i64 %i.c, 0
  br i1 %.not60, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.d = trunc i64 %4 to i1                       ; 2 uses
  %spec.select = select i1 %i.d, i16 7, i16 6
  %spec.select63 = select i1 %i.d, i32 2, i32 %3
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.037.1 = phi i16 [ 7, %bb.c ], [ 7, %bb.d ], [ %spec.select, %bb.e ], [ %2, %bb.a ], [ 7, %bb.b ] ; 2 uses
  %.112 = phi i32 [ %., %bb.c ], [ 1, %bb.d ], [ %spec.select63, %bb.e ], [ %3, %bb.a ], [ 1, %bb.b ]
  %i.e = and i64 %4, 8
  %.not62 = icmp eq i64 %i.e, 0
  br i1 %.not62, label %bb.f, label %.thread58

bb.f:                                             ; preds = %.thread
  switch i16 %.sroa.037.1, label %.thread58 [
    i16 14, label %.critedge2
    i16 7, label %.critedge2
    i16 13, label %.critedge2
    i16 6, label %.critedge2
    i16 56, label %.critedge2
    i16 106, label %.critedge2
    i16 12, label %.critedge2
    i16 121, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.critedge2
  %indvars.iv = phi i64 [ 0, %.critedge2 ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %i.i = load i16, ptr %i.h, align 4, !tbaa !66   ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = lshr i32 %i.j, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !81
  %i.o = and i32 %i.j, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.n
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = getelementptr inbounds nuw [2 x i8], ptr @_ZZL12RetCC_SI_GfxjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %indvars.iv
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.r = load i16, ptr %10, align 2, !tbaa !66    ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.y, %i.w
  %.not.i.i.1 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 136
  br i1 %exitcond.not.1, label %.thread58, label %bb.g, !llvm.loop !467

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.h, %bb.g
  %.lcssa74 = phi i16 [ %i.i, %bb.g ], [ %i.r, %bb.h ]
  %.lcssa = phi i32 [ %i.j, %bb.g ], [ %i.s, %bb.h ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa74) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !469, !alias.scope !528
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.ab, align 8, !tbaa !474, !alias.scope !528
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !528
  %i.ae = and i8 %i.ad, -128
  %i.af = trunc i32 %.112 to i8
  %i.ag = shl i8 %i.af, 1
  %i.ah = and i8 %i.ag, 126
  %i.ai = or disjoint i8 %i.ae, %i.ah
  store i8 %i.ai, ptr %i.ac, align 4, !alias.scope !528
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.aj, align 2, !tbaa !64, !alias.scope !528
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %.sroa.037.1, ptr %i.ak, align 8, !tbaa !64, !alias.scope !528
  store i32 %.lcssa, ptr %8, align 8, !tbaa !81, !alias.scope !528
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !483, !nonnull !19, !align !231 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !484 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !485
  %.not.i.i14 = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i.i14, label %bb.k, label %bb.j, !prof !486

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ar = zext i32 %i.ao to i64
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.au = load i32, ptr %i.an, align 8, !tbaa !484
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.an, align 8, !tbaa !484
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.thread58

.thread58:                                        ; preds = %bb.i, %bb.f, %.thread, %bb.l
  %.1 = phi i1 [ false, %bb.l ], [ true, %.thread ], [ true, %bb.f ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL17RetCC_AMDGPU_FuncjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread78 [
    i16 2, label %bb.b
    i16 6, label %bb.d
    i16 7, label %.critedge2
    i16 14, label %.critedge2
    i16 13, label %.critedge2
    i16 56, label %.critedge2
    i16 106, label %.critedge2
    i16 12, label %.critedge2
    i16 121, label %.critedge2
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %4, 2
  %.not86 = icmp eq i64 %i.a, 0
  br i1 %.not86, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.b = trunc i64 %4 to i1
  %. = select i1 %i.b, i32 2, i32 3
  br label %.critedge2

bb.d:                                             ; preds = %bb.a
  %i.c = and i64 %4, 2
  %.not85 = icmp eq i64 %i.c, 0
  br i1 %.not85, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.d = trunc i64 %4 to i1                       ; 2 uses
  %spec.select = select i1 %i.d, i32 2, i32 %3
  %spec.select87 = select i1 %i.d, i16 7, i16 6
  br label %.critedge2

.critedge2:                                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.a, %bb.d, %bb.c, %bb.b
  %.11259 = phi i32 [ %3, %bb.a ], [ %spec.select, %bb.e ], [ %3, %bb.a ], [ 1, %bb.d ], [ %., %bb.c ], [ 1, %bb.b ], [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ]
  %.sroa.036.157 = phi i16 [ %2, %bb.a ], [ %spec.select87, %bb.e ], [ %2, %bb.a ], [ 7, %bb.d ], [ 7, %bb.c ], [ 7, %bb.b ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81   ; 26 uses
  %i.i = and i32 %i.h, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.j = and i32 %i.h, 128
  %.not.i.i.1 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.h, 256
  %.not.i.i.2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i32 %i.h, 512
  %.not.i.i.3 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.h, 1024
  %.not.i.i.4 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = and i32 %i.h, 2048
  %.not.i.i.5 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = and i32 %i.h, 4096
  %.not.i.i.6 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i32 %i.h, 8192
  %.not.i.i.7 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = and i32 %i.h, 16384
  %.not.i.i.8 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = and i32 %i.h, 32768
  %.not.i.i.9 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = and i32 %i.h, 65536
  %.not.i.i.10 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = and i32 %i.h, 131072
  %.not.i.i.11 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = and i32 %i.h, 262144
  %.not.i.i.12 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = and i32 %i.h, 524288
  %.not.i.i.13 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = and i32 %i.h, 1048576
  %.not.i.i.14 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = and i32 %i.h, 2097152
  %.not.i.i.15 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = and i32 %i.h, 4194304
  %.not.i.i.16 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = and i32 %i.h, 8388608
  %.not.i.i.17 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = and i32 %i.h, 16777216
  %.not.i.i.18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = and i32 %i.h, 33554432
  %.not.i.i.19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ac = and i32 %i.h, 67108864
  %.not.i.i.20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ad = and i32 %i.h, 134217728
  %.not.i.i.21 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ae = and i32 %i.h, 268435456
  %.not.i.i.22 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.af = and i32 %i.h, 536870912
  %.not.i.i.23 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.23, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ag = and i32 %i.h, 1073741824
  %.not.i.i.24 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.24, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.25 = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i.25, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !81 ; 6 uses
  %i.aj = and i32 %i.ai, 1
  %.not.i.i.26 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.26, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ak = and i32 %i.ai, 2
  %.not.i.i.27 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.27, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.al = and i32 %i.ai, 4
  %.not.i.i.28 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.28, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.am = and i32 %i.ai, 8
  %.not.i.i.29 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.29, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.an = and i32 %i.ai, 16
  %.not.i.i.30 = icmp eq i32 %i.an, 0
end_hunk_2
